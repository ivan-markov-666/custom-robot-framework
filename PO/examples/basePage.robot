*** Settings ***
Documentation    This test suite serves as a base class for Page Object Model files.
Library          SeleniumLibrary
Library          ../../keywords/element.py
Library          ../../keywords/click.py
Library          ../../keywords/navigateTo.py
Library          ../../keywords/sendKeys.py
Library          ../../keywords/uploadFile.py
Library          ../../keywords/randomDecision.py
Library          ../../keywords/dropDownList.py
Library          ../../keywords/browser.py
### Example Structure
Library          ../../keywords/example_structure/custom_keyword.py