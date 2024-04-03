*** Settings ***
Documentation
...
...
Resource          ../base.robot


# Declare global variables
*** Variables ***
# Locators
${clickButton}           xpath=(//*[contains(text(),'Click Me')])[3]

*** Keywords ***
Navigate to the buttons page
    [Documentation]               Navigates to the login page.
    [Arguments]                   ${login_urlAddress}
    Log                           ${login_urlAddress}
    Navigate To URL And Verify    ${login_urlAddress}

Verify element exist and click on it
    Verify Element      ${clickButton}
    Click It            ${clickButton}