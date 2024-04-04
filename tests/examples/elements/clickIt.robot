*** Settings ***
Documentation    Verify element exist and click on it
Library          SeleniumLibrary
Test Setup       Start the browser
Test Teardown    Kill Browser Session
Resource         ../../../PO/examples/elements/clickItPage.robot
Resource         ../../../PO/common_keywords/commonKeywordsPage.robot
Variables        ../../../config/config.py

# Declare global variables
*** Variables ***
# Testing Data
${login_urlAddress}                    ${baseUrl}/buttons

*** Test Cases ***
Verify Element Exist And Click On It
    [Tags]    examples    elements    clickIt
    Navigate to the buttons page       ${login_urlAddress}
    Verify element exist and click on it