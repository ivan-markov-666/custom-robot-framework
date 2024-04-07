# The "Settings" section defines configuration settings and setup instructions for the test suite or test cases.
*** Settings ***
Documentation     Page Object Model file for "clickIt"    # "Documentation" provides an explanation of the purpose or functionality of this Robot file.
Resource          ../basePage.robot                       # Includes basePage file

# Declare global variables
*** Variables ***
# Locators
${clickButton}           xpath=(//*[contains(text(),'Click Me')])[3]

# The "*** Keywords ***" section defines custom keywords used in test cases.
# These keywords encapsulate reusable functionality, allowing for modularity and easier maintenance of test cases.
*** Keywords ***
Navigate to the buttons page
    [Documentation]               Navigates to the login page.
    [Arguments]                   ${login_urlAddress}
    Log                           ${login_urlAddress}
    Navigate To URL And Verify    ${login_urlAddress}

Verify element exist and click on it
    Verify Element      ${clickButton}
    Click It            ${clickButton}