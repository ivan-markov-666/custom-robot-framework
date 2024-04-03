*** Settings ***
Documentation    A resource file with reusable keywords and variables.
...
...              The system specific keywords created here for our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.
Library          SeleniumLibrary
Library          ../../../keywords/verifyElement.py
Library          ../../../keywords/navigateToUrlAndVerify.py


# Declare global variables
*** Variables ***
# Locators
${userName_inputTextElement}           id:userName

*** Keywords ***
Navigate to the login page
    [Documentation]               Navigates to the login page.
    [Arguments]                   ${login_urlAddress}
    Log                           ${login_urlAddress}
    Navigate To URL And Verify    ${login_urlAddress}

Verify element exist and it is only one in the DOM three
    Verify Element      ${userName_inputTextElement}