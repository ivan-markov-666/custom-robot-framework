*** Settings ***
Documentation    To validate the Login form
Library          SeleniumLibrary
Test Setup       Open the browser
Test Teardown    Close Browser Session
Resource         ../PO/loginExamplePage.robot

# Declare global variables
*** Variables ***
# Testing Data
${login_urlAddress}                    https://demoqa.com/login
${usernameAndPassword_data}            testtesttest214ewrW!@

*** Test Cases ***
Validate Successful Login
    Example Keyword                  test1234567890
    Navigate to the login page       ${login_urlAddress}
    Fill the form correctly          ${usernameAndPassword_data}
    Press the Login button
    Verify that user is logged in    ${usernameAndPassword_data}