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

*** Keywords ***
Start the browser
    Create Webdriver    ${browser}

Kill Browser Session
    Close Browser
