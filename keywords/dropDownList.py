from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from common_utils.common_utils import CommonUtils


# Keyword for clicking on an element
@keyword
def select_drop_down_list_by_text(locator, drop_down_value_locator):
    # Calling verify_element from verifyElement.py
    CommonUtils.verify_element(locator)

    # Select the dropdown by visible text
    CommonUtils.select_drop_down_option_by_text(locator, drop_down_value_locator)
