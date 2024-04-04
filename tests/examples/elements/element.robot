# The "Settings" section defines configuration settings and setup instructions for the test suite or test cases.
*** Settings ***
Documentation    Verify that an element exists and it is the only one in the DOM tree  # "Documentation" provides an explanation of the purpose or functionality of this Robot file.
Library          SeleniumLibrary                                                       # Importing SeleniumLibrary for web testing
Test Setup       Start the browser                                                     # Setting up the browser before each test case
Test Teardown    Kill Browser Session                                                  # Cleaning up browser session after each test case
Resource         ../../../PO/examples/elements/elementPage.robot                       # Importing Page Object File for element page
Resource         ../../../PO/common_keywords/commonKeywordsPage.robot                  # Importing common keywords
Variables        ../../../config/config.py                                             # Importing variables from a Python config file

# Declare global variables
*** Variables ***
${login_urlAddress}                    ${baseUrl}/login  # URL for the login page

# Test cases section starts here
*** Test Cases ***
Verify Element Exist And It Is Only One In the DOM Three        # Test case to verify the existence and uniqueness of an element in the DOM tree
    [Tags]    examples    elements    element                   # Tagging the test case for classification
    Navigate to the login page       ${login_urlAddress}        # Navigating to the login page
    Verify element exist and it is only one in the DOM three    # Verifying the existence of an element and its uniqueness in the DOM tree