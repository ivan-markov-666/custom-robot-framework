*** Settings ***
Documentation    Verify element exist and click on it
Library          SeleniumLibrary
Library          OperatingSystem
Test Setup       Start the browser
Test Teardown    Kill Browser Session
Resource         ../../../PO/examples/realExample/practiceFormPage.robot
Resource         ../../../PO/common_keywords/commonKeywordsPage.robot
Variables        ../../../config/config.py

*** Variables ***
${login_urlAddress}                    ${baseUrl}/automation-practice-form
${firstName}                           Tester
${lastName}                            Testerov
${email}                               testingemail@testing.com
${mobileNumber}                        1234567890
${dateOfBirth}                         06 Apr 2005
${imageLocation}                       ./uploadFiles/upload-image.jpg
${currentAddress}                      lorem ipsum text

*** Test Cases ***
Verify Element Exist And Click On It
    [Tags]    examples    realExample    StudentRegistrationForm
            Navigate to the 'Student Registration Form' page                                       ${login_urlAddress}
            Fill in the 'First Name' input text element with correct random data                  ${firstName}
            Fill in the 'Last Name' input text element with correct random data                   ${lastName}
            Fill in the 'Email' input text element with correct random data                       ${email}
            Select random value from the 'Gender' radio option
            Fill in the 'Mobile(10 Digits)' input text element with correct random data           ${mobileNumber}
            Select a random value from the 'Date of Birth' drop-down calendar                     ${dateOfBirth}
            Select random value from the 'Subjects' auto complete field
            Check random values from the 'Hobbies' check boxes
            Upload random 'image' using upload function                                           ${imageLocation}
            Fill in the 'Current Address' input text element with correct random data             ${currentAddress}
            Select a random value from the 'Select State' drop-down list
            Select a random value from the 'Select City' drop-down list
            Press the 'Submit' button