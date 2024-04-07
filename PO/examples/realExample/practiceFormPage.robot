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
${selectState_values}                   xpath=//*[@*='state']//div[@id]
${selectCity_dropDownList}              id:city
${selectCity_values}                    xpath=//*[@*='city']//div[@id]
${submit_button}                        id:submit
${test}                                 id:react-select-3-option-1
# Testing Data
@{LIST_OF_GENDERS}                      Male  Female  Other


*** Keywords ***
Navigate to the 'Student Registration Form' page
    [Documentation]               Navigates to the 'Student Registration' page.
    [Arguments]                   ${url}
    Log                           ${url}
    Navigate To URL And Verify    ${url}
Fill in the 'First Name' input text element with correct random data
    [Documentation]               Fill with valid First Name data.
    [Arguments]                   ${firstName}
    Send Keys                     ${firstName_inputTextElement}    ${firstName}
Fill in the 'Last Name' input text element with correct random data
    [Documentation]               Fill with valid Last Name data.
    [Arguments]                   ${lastName}
    Send Keys                     ${lastName_inputTextElement}     ${lastName}
Fill in the 'Email' input text element with correct random data
    [Documentation]               Fill with valid email data.
    [Arguments]                   ${email}
    # Get random decision if the input will be filled.
    ${random_decision}=           Return True Or False Randomly
    # If the decision is true, the input will be entered.
    IF    ${random_decision}
        Send Keys    ${email_inputTextElement}        ${email}
    ELSE IF    not ${random_decision}
        # Skip the input if false.
        Log    Field will not be filled with data.
    ELSE
        # Validate that the 'random_decision' variable is a boolean.
        Fail    Incorrect value for "random_decision" variable found in "Fill in the 'Email' input text element with correct random data" keyword. \n Please provide boolean value.
    END
Select random value from the 'Gender' radio option
    [Documentation]               Select Random Gender.
    # Get random decision which gender will be selected.
    ${gender}=                    Choose Random Value From List  ${LIST_OF_GENDERS}
    # Select chosen gender.
    Run Keyword If    '${gender}' == 'Male'          Click Element  ${male_radioButton}
    ...    ELSE IF    '${gender}' == 'Female'        Click Element  ${female_radioButton}
    ...    ELSE IF    '${gender}' == 'Other'         Click Element  ${other_radioButton}
    ...    ELSE    Fail  Incorrect value for "gender" variable found in "Select random value from the 'Gender' radio option" keyword. \n Please provide list values.
Fill in the 'Mobile(10 Digits)' input text element with correct random data
    [Documentation]               Fill with valid mobile data.
    [Arguments]                   ${data}
    Send Keys    ${mobile_inputTextElement}                                      ${data}
Select a random value from the 'Date of Birth' drop-down calendar
    [Documentation]               Fill with valid date of birth data.
    [Arguments]                   ${data}
    Send Keys Press Enter         ${dateOfBirth_dropDownCalendar}                ${data}
Select random value from the 'Subjects' auto complete field
    # Get random decision if the input will be filled.
    ${random_decision}=           Return True Or False Randomly
    # If the decision is true, the input will be entered.
    IF         ${random_decision}
        Continue with random selection of the 'Subject' auto complete
    ELSE IF    not ${random_decision}
        # Skip the input if false.
        Log    Field will not be filled with data.
    ELSE
        # Validate that the 'random_decision' variable is a boolean.
        Fail    Incorrect value for "random_decision" variable found in "Select random value from the 'Subjects' auto complete field" keyword. \n Please provide boolean value.
    END
Continue with random selection of the 'Subject' auto complete
    [Documentation]               Select randomly values for Subject input.
    # Declare an arraylist
    ${values_list}=    Set Variable    ['Maths', 'Accounting', 'Arts', 'Social Studies', 'Physics', 'Chemistry', 'Computer Science', 'Commerce', 'Economics', 'Civics', 'Biology', 'Hindi', 'English', 'History']
    # Get random decision, which values will be added to the input.
    ${random_values}=  Choose Random Number Of Values From List    ${values_list}
    # Add chosen values in the input.
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
    [Documentation]               Select randomly values for Hobbies check boxes.
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
    [Documentation]               Continue with the Hobbies selection.
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
    [Documentation]               Continue with the uploading of the image.
    [Arguments]                   ${imageFilePath}
    Upload File                   ${selectPicture_uploadFile}               ${imageFilePath}
Fill in the 'Current Address' input text element with correct random data
    [Documentation]               Fill with valid address data.
    [Arguments]                   ${text}
    # Take a random decision if the image upload will be done.
    ${random_decision}=           Return True Or False Randomly
    Run Keyword If                '${random_decision}' == 'True'       Continue With 'Current Address'    ${text}
Continue With 'Current Address'
    [Documentation]               Continue with current address.
    [Arguments]                   ${text}
    Send Keys    ${currentAddress_textArea}    ${text}
Select a random value from the 'Select State' drop-down list
     [Documentation]              Select random value for State drop-down list.
     Scroll Down                  300
     Click It                     ${selectState_dropDownList}
     ${random_dropDownValue}=     Select Random Drop Down Value    ${selectState_values}
     Sleep                                                                                  5s
     Click It                     xpath=//div[text()='${random_dropDownValue}'][@id]
Select a random value from the 'Select City' drop-down list
     [Documentation]              Select random value for City drop-down list.
     Click It                     ${selectCity_dropDownList}
     ${random_dropDownValue}=     Select Random Drop Down Value    ${selectCity_values}
     Sleep                                                                                  5s
     Click It                     xpath=//div[text()='${random_dropDownValue}']
Press the 'Submit' button
     Click It                     ${submit_button}