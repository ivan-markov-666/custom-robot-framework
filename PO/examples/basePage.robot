*** Settings ***
Documentation    This test suite serves as a base class for Page Object Model files.
Library          SeleniumLibrary
Library          ../../keywords/verifyElement.py
Library          ../../keywords/clickIt.py
Library          ../../keywords/navigateToUrlAndVerify.py
Library          ../../keywords/sendKeys.py
Library          ../../keywords/sendKeysAndPressEnter.py
Library          ../../keywords/uploadFile.py
Library          ../../keywords/randomDecision.py

### Example Structure
Library          ../../keywords/example_structure/custom_keyword.py