# The "Settings" section defines configuration settings and setup instructions for the test suite or test cases.
*** Settings ***
Documentation    Verify that an element exists and it is the only one in the DOM tree  # "Documentation" provides an explanation of the purpose or functionality of this Robot file.
Library          SeleniumLibrary                                                       # Importing SeleniumLibrary for web testing
Test Setup       Start the browser                                                     # Setting up the browser before each test case
Test Teardown    Kill Browser Session                                                  # Cleaning up browser session after each test case
Resource         ../../../PO/examples/example_structure/examplePage.robot                 # Importing Page Object File for element page
Resource         ../../../PO/common_keywords/commonKeywordsPage.robot                  # Importing common keywords

# Test cases section starts here
*** Test Cases ***
Example Structure Test Case         # Test case to verify the existence and uniqueness of an element in the DOM tree
    [Tags]    examples    structure             # Tagging the test case for classification
    Example Keyword Definition