*** Settings ***
Documentation
...
...
Resource          ../base.robot


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