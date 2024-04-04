*** Settings ***
Documentation    A resource file with reusable keywords and variables.
...
...              The system specific keywords created here for our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.
Library          SeleniumLibrary
Variables        ../../config/config.py

# Declare global variables
*** Variables ***
# browser
${browser}           ${usedBrowser}

#*** Keywords ***
#Start the browser
#    Create Webdriver    ${browser}

*** Keywords ***
Start the browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].${browser}Options()    sys, selenium.webdriver
    Run Keyword If    '${browser}' == 'Firefox' and ${HEADLESS}    Call Method    ${options}    add_argument    -headless
    Run Keyword If    '${browser}' == 'Chrome' and ${HEADLESS}    Call Method    ${options}    add_argument    --headless
    Run Keyword If    '${browser}' == 'Chrome'    Call Method    ${options}    add_argument    --disable-gpu
    Create Webdriver    ${browser}    options=${options}

Kill Browser Session
    Close Browser
