*** Settings ***
Documentation    To validate the Login form
Library          SeleniumLibrary
Test Setup       Start the browser
Test Teardown    Kill Browser Session
Resource         ../../../PO/examples/elements/clickIt.robot
Resource         ../../../PO/common_keywords/common_keywords.robot

# Declare global variables
*** Variables ***
# Testing Data
${login_urlAddress}                    https://demoqa.com/buttons

*** Test Cases ***
Verify Element Exist And Click On It
    Navigate to the buttons page       ${login_urlAddress}
    Verify element exist and click on it