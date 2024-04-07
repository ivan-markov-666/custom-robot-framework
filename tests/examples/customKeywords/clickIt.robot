# The "Settings" section defines configuration settings and setup instructions for the test suite or test cases.
*** Settings ***
Documentation    Verify element exist and click on it                    # "Documentation" provides an explanation of the purpose or functionality of this Robot file.
Library          SeleniumLibrary                                         # Includes the SeleniumLibrary which provides keywords for web testing
Test Setup       Start the browser                                       # Executes 'Start the browser' keyword before each test case
Test Teardown    Kill Browser Session                                    # Executes 'Kill Browser Session' keyword after each test case
Resource         ../../../PO/examples/customKeywords/clickItPage.robot   # Includes clickItPage file (Page Object Files)
Resource         ../../../PO/common_keywords/commonKeywordsPage.robot    # Includes commonKeywordsPage file (Page Object Files)
Variables        ../../../config/config.py                               # Imports variables from a Python config file

# Declare global variables section
*** Variables ***
${login_urlAddress}                    ${baseUrl}/buttons                # URL : /buttons

# Test cases section starts here
*** Test Cases ***
Verify Element Exist And Click On It
    [Tags]    examples    customKeywords    clickIt                      # Tags help categorize tests; useful for selective test execution
    Navigate to the buttons page       ${login_urlAddress}               # Navigates to a specific page using the URL stored in a variable
    Verify element exist and click on it                                 # Verifies an element exists on the page and then clicks it
