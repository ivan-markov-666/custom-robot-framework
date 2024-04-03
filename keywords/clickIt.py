from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from common_utils.common_utils import CommonUtils

@keyword
def verify_element_click(locator):
    # Извикване на verify_element от verifyElement.py
    CommonUtils.verify_element(locator)

    # Извикване на функцията за кликване на елемент
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    selenium_lib.click_element(locator)
