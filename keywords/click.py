from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from common_utils.common_utils import CommonUtils


# Keyword for clicking on an element
@keyword
def click_it(locator):
    # Calling verify_element from verifyElement.py
    CommonUtils.verify_element(locator)

    # Calling the function for clicking on an element
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    selenium_lib.click_element(locator)
