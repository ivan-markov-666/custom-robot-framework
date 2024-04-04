from robot.api.deco import keyword
from common_utils.common_utils import CommonUtils

@keyword
def click_and_verify_radio_button(locator):
    CommonUtils.click_and_verify_radio_button(locator)
