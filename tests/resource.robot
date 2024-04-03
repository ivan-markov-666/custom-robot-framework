*** Settings ***
Documentation    A resource file with reusable keywords and variables.
...
...              The system specific keywords created here for our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.
Library          SeleniumLibrary

# Declare Keywords
*** Keywords ***
Open the browser and navigate to the text-box form
    Create Webdriver    Chrome
    Go To               https://demoqa.com/text-box

Close Browser Session
    Close Browser