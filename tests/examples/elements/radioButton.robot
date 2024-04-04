
*** Settings ***
Documentation    Verify radio button can be clicked and verified that it is selected
Library          SeleniumLibrary
Test Setup       Start the browser
Test Teardown    Kill Browser Session
Resource         ../../../PO/examples/elements/elementPage.robot
Resource         ../../../PO/common_keywords/commonKeywordsPage.robot
Variables        ../../../config/config.py

*** Variables ***
${currentPageUrlAddress}                    ${baseUrl}/radio-button

*** Test Cases ***
Verify Element Exist And It Is Only One In the DOM Three
    [Tags]    examples    elements    radio-button
    Navigate to the login page       ${currentPageUrlAddress}
