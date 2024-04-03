*** Settings ***
Documentation    A resource file with reusable keywords and variables.
...
...              The system specific keywords created here for our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.
Library          SeleniumLibrary

# Declare global variables
*** Variables ***
# Locators
${userName_inputTextElement}           id:userName
${password_inputTextElement}           id:password
${loginButton}                         id:login
${verifyUsername_text}                 userName-value

*** Keywords ***
Open the browser
    Create Webdriver    Chrome

Navigate to the login page
    [Documentation]  Navigates to the login page.
    [Arguments]      ${login_urlAddress}
    Log              ${login_urlAddress}
    Go To            ${login_urlAddress}

Fill the form correctly
    [Arguments]         ${usernameAndPassword_data}
    Input Text          ${userName_inputTextElement}            ${usernameAndPassword_data}
    Input Password      ${password_inputTextElement}            ${usernameAndPassword_data}

Press the Login button
    Click Button        ${loginButton}

Verify that user is logged in
    [Arguments]                      ${usernameAndPassword_data}
    Wait Until Element Is Visible    ${verifyUsername_text}
    # Verify text example 1
    ${result}=                       Get Text     ${verifyUsername_text}
    Should Be Equal                  ${result}    ${usernameAndPassword_data}
    # Verify text example 2
    Element Text Should Be           ${verifyUsername_text}    ${usernameAndPassword_data}

Close Browser Session
    Close Browser