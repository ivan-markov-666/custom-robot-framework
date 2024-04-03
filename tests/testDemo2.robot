*** Settings ***
Documentation    To validate the Login form
Library          SeleniumLibrary
Test Setup       Open the browser and navigate to the text-box form
Test Teardown    Close Browser Session
Resource         resource.robot

# Declare global variables
*** Variables ***
# Locators
${fullName_inputTextElement}            id:userName
${email_inputTextElement}               id:userEmail
${currentAddress_inputTextElement}      id:currentAddress
${permanentAddress_inputTextElement}    id:permanentAddress
${submitButton}                         id:submit
${verificationMessageLocator_text}      xpath=//*[@*="name"]
${permanentAddress_text}                xpath=//*[@id="permanentAddress-label"]
# Testing Data
${fullName_data}                       Testing Username
${email_data}                          testingemail@testing.com
${currentAddress_data}                 Testing Current Address
${permanentAddress_data}               Testing Permanent Address
${permanentAddress_textValue}          Permanent Address

# Declare Test Cases
*** Test Cases ***
Validate Successful Filling The Form Example
    Fill the form correctly
    Wait until verification message is displayed
    Verify permanent address text


# Declare Keywords
*** Keywords ***
Fill the form correctly
    Input Text          ${fullName_inputTextElement}            ${fullName_data}
    Input Text          ${email_inputTextElement}               ${email_data}    
    Input Text          ${currentAddress_inputTextElement}      ${currentAddress_data}     
    Input Text          ${permanentAddress_inputTextElement}    ${permanentAddress_data}
    Click Button        ${submitButton}

Wait until verification message is displayed
    Wait Until Element Is Visible    ${verificationMessageLocator_text}

Verify permanent address text
    # Verify text example 1
    ${result}=                Get Text     ${permanentAddress_text}
    Should Be Equal           ${result}    ${permanentAddress_textValue}
    # Verify text example 2
    Element Text Should Be    ${permanentAddress_text}    ${permanentAddress_textValue}