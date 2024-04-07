# The "Settings" section defines configuration settings and setup instructions for the test suite or test cases.
*** Settings ***
Documentation     Page Object Model file for "practiceForm"
Resource          ../basePage.robot

*** Variables ***
# Locators
${firstName_inputTextElement}           id:firstName
${lastName_inputTextElement}            id:lastName
${email_inputTextElement}               id:userEmail
${male_radioButton}                     xpath=//*[@id='gender-radio-1']/parent::div
${female_radioButton}                   xpath=//*[@id='gender-radio-2']/parent::div
${other_radioButton}                    xpath=//*[@id='gender-radio-3']/parent::div
${mobile_inputTextElement}              id:userNumber
${dateOfBirth_dropDownCalendar}         xpath=(//*[@id='dateOfBirth']/div)[1]/div/input
${subject_autocomplete}                 id:subjectsInput
${sports_checkBox}                      xpath=//*[@id='hobbies-checkbox-1']/parent::div
${reading_checkBox}                     xpath=//*[@id='hobbies-checkbox-2']/parent::div
${music_checkBox}                       xpath=//*[@id='hobbies-checkbox-3']/parent::div
${selectPicture_uploadFile}             id:uploadPicture
${currentAddress_textArea}              id:currentAddress
${selectState_dropDownList}             id:state
${selectCity_dropDownList}              id:city
${submit_button}                        id:submit
# Testing Data
@{LIST_OF_GENDERS}                      Male  Female  Other


*** Keywords ***
Navigate to the 'Student Registration Form' page
    [Documentation]               Navigates to the 'Student Registration' page.
    [Arguments]                   ${url}
    Log                           ${url}
    Navigate To URL And Verify    ${url}
Fill in the 'First Name' input text element with correct random data
    [Documentation]               Fill with valid data into input text element.
    [Arguments]                   ${firstName}
    Fill And Verify Text Field    ${firstName_inputTextElement}    ${firstName}
Fill in the 'Last Name' input text element with correct random data
    [Documentation]               Fill with valid data into input text element.
    [Arguments]                   ${lastName}
    Fill And Verify Text Field    ${lastName_inputTextElement}     ${lastName}
Fill in the 'Email' input text element with correct random data
    [Documentation]               Fill with valid data into input text element.
    [Arguments]                   ${email}
    # Get random decision if the input will be filled.
    ${random_decision}=           Return True Or False Randomly
    # If the decision is true, the input will be entered.
    IF    ${random_decision}
        Fill And Verify Text Field    ${email_inputTextElement}    ${email}
    ELSE IF    not ${random_decision}
        # Skip the input if false.
        Log    Field will not be filled with data.
    ELSE
        # Validate that the 'random_decision' variable is a boolean.
        Fail    Incorrect value for "random_decision" variable found in "Fill in the 'Email' input text element with correct random data" keyword. \n Please provide boolean value.
    END
Select random value from the 'Gender' radio option
    [Documentation]               Select gender.
    ${gender}=                    Choose Random Value From List  ${LIST_OF_GENDERS}
    Run Keyword If                '${gender}' == 'Male'          Click Element  ${male_radioButton}
    ...    ELSE IF                '${gender}' == 'Female'        Click Element  ${female_radioButton}
    ...    ELSE IF                '${gender}' == 'Other'         Click Element  ${other_radioButton}
    ...    ELSE                   Fail  Incorrect value for "gender" variable found in "Select random value from the 'Gender' radio option" keyword. \n Please provide list values.
Fill in the 'Mobile(10 Digits)' input text element with correct random data
    [Documentation]               Fill with valid mobile data.
    [Arguments]                   ${data}
    Fill And Verify Text Field    ${mobile_inputTextElement}         ${data}
Select a random value from the 'Date of Birth' drop-down calendar
    [Documentation]               Fill with valid date of birth data.
    [Arguments]                   ${data}
#    Click It                      ${dateOfBirth_dropDownCalendar}
    Send Keys Press Enter         ${dateOfBirth_dropDownCalendar}    ${data}
Select random value from the 'Subjects' auto complete field
    # Get random decision if the input will be filled.
    ${random_decision}=           Return True Or False Randomly
    # If the decision is true, the input will be entered.
    IF    ${random_decision}
        Continue with random selection of the 'Subject' auto complete
    ELSE IF    not ${random_decision}
        # Skip the input if false.
        Log    Field will not be filled with data.
    ELSE
        # Validate that the 'random_decision' variable is a boolean.
        Fail    Incorrect value for "random_decision" variable found in "Select random value from the 'Subjects' auto complete field" keyword. \n Please provide boolean value.
    END
Continue with random selection of the 'Subject' auto complete
    ${values_list}=    Set Variable    ['Maths', 'Accounting', 'Arts', 'Social Studies', 'Physics', 'Chemistry', 'Computer Science', 'Commerce', 'Economics', 'Civics', 'Biology', 'Hindi', 'English', 'History']
    ${random_values}=  Choose Random Number Of Values From List    ${values_list}
    FOR    ${subject}    IN    @{random_values}
        Run Keyword If    '${subject}' == 'Maths'             Send Keys Press Enter    ${subject_autocomplete}    Maths
        ...    ELSE IF    '${subject}' == 'Accounting'        Send Keys Press Enter    ${subject_autocomplete}    Accounting
        ...    ELSE IF    '${subject}' == 'Arts'              Send Keys Press Enter    ${subject_autocomplete}    Arts
        ...    ELSE IF    '${subject}' == 'Social Studies'    Send Keys Press Enter    ${subject_autocomplete}    Social Studies
        ...    ELSE IF    '${subject}' == 'Physics'           Send Keys Press Enter    ${subject_autocomplete}    Physics
        ...    ELSE IF    '${subject}' == 'Chemistry'         Send Keys Press Enter    ${subject_autocomplete}    Chemistry
        ...    ELSE IF    '${subject}' == 'Computer Science'  Send Keys Press Enter    ${subject_autocomplete}    Computer Science
        ...    ELSE IF    '${subject}' == 'Commerce'          Send Keys Press Enter    ${subject_autocomplete}    Commerce
        ...    ELSE IF    '${subject}' == 'Economics'         Send Keys Press Enter    ${subject_autocomplete}    Economics
        ...    ELSE IF    '${subject}' == 'Civics'            Send Keys Press Enter    ${subject_autocomplete}    Civics
        ...    ELSE IF    '${subject}' == 'Biology'           Send Keys Press Enter    ${subject_autocomplete}    Biology
        ...    ELSE IF    '${subject}' == 'Hindi'             Send Keys Press Enter    ${subject_autocomplete}    Hindi
        ...    ELSE IF    '${subject}' == 'English'           Send Keys Press Enter    ${subject_autocomplete}    English
        ...    ELSE IF    '${subject}' == 'History'           Send Keys Press Enter    ${subject_autocomplete}    History
    END
Check random values from the 'Hobbies' check boxes
    # Get random decision if the input will be filled.
    ${random_decision}=           Return True Or False Randomly
    # If the decision is true, the input will be entered.
    IF    ${random_decision}
        Continue with random selection of the 'Hobbies' check boxes
    ELSE IF    not ${random_decision}
        # Skip the input if false.
        Log    Field will not be filled with data.
    ELSE
        # Validate that the 'random_decision' variable is a boolean.
        Fail    Incorrect value for "random_decision" variable found in "Check random values from the 'Hobbies' check boxes" keyword. \n Please provide boolean value.
    END
Continue with random selection of the 'Hobbies' check boxes
    ${values_list}=    Set Variable    ['Sports', 'Reading', 'Music']
    ${random_values}=  Choose Random Number Of Values From List    ${values_list}
    FOR    ${subject}    IN    @{random_values}
        Run Keyword If    '${subject}' == 'Sports'             Click It    ${sports_checkBox}
        ...    ELSE IF    '${subject}' == 'Reading'            Click It    ${reading_checkBox}
        ...    ELSE IF    '${subject}' == 'Music'              Click It    ${music_checkBox}
    END
Upload random 'image' using upload function
    [Documentation]               Upload an image or skip based on a random decision.
    [Arguments]                   ${imageFilePath}
    # Take a random decision if the image upload will be done.
    ${random_decision}=           Return True Or False Randomly
    Run Keyword If                '${random_decision}' == 'True'       Continue With Upload Image    ${imageFilePath}
Continue With Upload Image
    [Arguments]                   ${imageFilePath}
    Upload File                   ${selectPicture_uploadFile}               ${imageFilePath}
Fill in the 'Current Address' input text element with correct random data
    [Documentation]               Upload an image or skip based on a random decision.
    [Arguments]                   ${text}
    # Take a random decision if the image upload will be done.
    ${random_decision}=           Return True Or False Randomly
    Run Keyword If                '${random_decision}' == 'True'       Continue With 'Current Address'    ${text}
Continue With 'Current Address'
    [Arguments]                   ${text}
    Fill And Verify Text Field    ${currentAddress_textArea}    ${text}
Select a random value from the 'Select State' drop-down list
    Verify Element                ${selectState_dropDownList}
Select a random value from the 'Select City' drop-down list
    Verify Element                ${selectCity_dropDownList}
Press the 'Submit' button
    Verify Element                ${submit_button}
Verify that all information was saved correctly