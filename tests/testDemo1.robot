*** Settings ***
Documentation    To validate the Login form
Library          SeleniumLibrary
Test Teardown    Close Browser

# Declare global variables
*** Variables ***
${fullName_inputTextElement}            id:userName
${email_inputTextElement}               id:userEmail
${currentAddress_inputTextElement}      id:currentAddress
${permanentAddress_inputTextElement}    id:permanentAddress
${submitButton}                         id:submit
${verificationMessageLocator_text}      xpath=//*[@*="name"]
${permanentAddress_text}                xpath=//*[@id="permanentAddress-label"]

*** Test Cases ***
Validate Successful Login
    Open the browser and navigate to the text-box form
    Fill the form correctly
    Wait until verification message is displayed
    Verify permanent address text

*** Keywords ***
Open the browser and navigate to the text-box form
    Create Webdriver    Chrome
    Go To               https://demoqa.com/text-box

Fill the form correctly
    Input Text          ${fullName_inputTextElement}            Testing Username
    Input Text          ${email_inputTextElement}               testingemail@testing.com
    Input Text          ${currentAddress_inputTextElement}      Testing Current Address
    Input Text          ${permanentAddress_inputTextElement}    Testing Permanent Address
    Click Button        ${submitButton}
    
Wait until verification message is displayed
    Wait Until Element Is Visible    ${verificationMessageLocator_text}

Verify permanent address text
    # Verify text example 1
    ${result}=                Get Text     ${permanentAddress_text}
    Should Be Equal           ${result}    Permanent Address
    # Verify text example 2
    Element Text Should Be    ${permanentAddress_text}    Permanent Address