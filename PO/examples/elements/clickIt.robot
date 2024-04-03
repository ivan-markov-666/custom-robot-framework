*** Settings ***
Documentation    A resource file with reusable keywords and variables.
...
...              The system specific keywords created here for our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.
Library          SeleniumLibrary
Library          ../../../keywords/verifyElement.py
Library          ../../../keywords/clickIt.py
Library          ../../../keywords/navigateToUrlAndVerify.py


# Declare global variables
*** Variables ***
# Locators
${clickButton}           xpath=(//*[contains(text(),'Click Me')])[3]

*** Keywords ***
Open the browser
    Create Webdriver    Chrome

Navigate to the buttons page
    [Documentation]               Navigates to the login page.
    [Arguments]                   ${login_urlAddress}
    Log                           ${login_urlAddress}
    Navigate To URL And Verify    ${login_urlAddress}

Verify element exist and click on it
    Verify Element      ${clickButton}
    Click It            ${clickButton}

Close Browser Session
    Close Browser