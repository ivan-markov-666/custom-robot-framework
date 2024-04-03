*** Settings ***
Documentation    Verify element exist and it is only one in the DOM three
Library          SeleniumLibrary
Test Setup       Start the browser
Test Teardown    Kill Browser Session
Resource         ../../../PO/examples/elements/elementPage.robot
Resource         ../../../PO/common_keywords/commonKeywordsPage.robot

# Declare global variables
*** Variables ***
# Testing Data
${login_urlAddress}                    https://demoqa.com/login

*** Test Cases ***
Verify Element Exist And It Is Only One In The DOM Three
    Navigate to the login page       ${login_urlAddress}
    Verify element exist and it is only one in the DOM three