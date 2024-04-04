# The "Settings" section defines configuration settings and setup instructions for the test suite or test cases.
*** Settings ***
Documentation    A resource file with reusable keywords and variables.         # "Documentation" provides an explanation of the purpose or functionality of this Robot file.
...
...              The system specific keywords created here for our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.
Library          SeleniumLibrary                                               # Includes the SeleniumLibrary which provides keywords for web testing
Variables        ../../config/config.py                                        # Imports variables from a Python config file

# Declare global variables
*** Variables ***
${browser}           ${usedBrowser}        # browser

# The "*** Keywords ***" section defines custom keywords used in test cases.
# These keywords encapsulate reusable functionality, allowing for modularity and easier maintenance of test cases.
*** Keywords ***
Start the browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].${browser}Options()    sys, selenium.webdriver
    Run Keyword If    '${browser}' == 'Firefox' and ${HEADLESS}    Call Method    ${options}    add_argument    -headless
    Run Keyword If    '${browser}' == 'Chrome' and ${HEADLESS}    Call Method    ${options}    add_argument    --headless
    Run Keyword If    '${browser}' == 'Chrome'    Call Method    ${options}    add_argument    --disable-gpu
    Create Webdriver    ${browser}    options=${options}

Kill Browser Session
    Close Browser
