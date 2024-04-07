# The "Settings" section defines configuration settings and setup instructions for the test suite or test cases.
*** Settings ***
Documentation     Example Structure                       # "Documentation" provides an explanation of the purpose or functionality of this Robot file.
Resource          ../basePage.robot                       # Includes basePage file

# The "*** Keywords ***" section defines custom keywords used in test cases.
# These keywords encapsulate reusable functionality, allowing for modularity and easier maintenance of test cases.
*** Keywords ***
Example Keyword Definition
    [Documentation]               Example Keyword Section
    Example Keyword Action