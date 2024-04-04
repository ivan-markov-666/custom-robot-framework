*** Settings ***
Documentation     Page Object Model file for "radioButton"
Resource          ../basePage.robot


*** Variables ***
${yes_radioButton}           id:yesRadio

*** Keywords ***
Navigate to the radio-button page
    [Documentation]               Navigates to the radio-button page.
    [Arguments]                   ${urlAddress}
    Log                           ${urlAddress}
    Navigate To URL And Verify    ${urlAddress}

Verify element exist and it is only one in the DOM three
    Verify Element                   ${yes_radioButton}
    Click And Verify Radio Button    ${yes_radioButton}