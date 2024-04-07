from robot.api.deco import keyword
from common_utils.common_utils import CommonUtils


@keyword
def send_keys(locator, text):
    CommonUtils.verify_element(locator)
    CommonUtils.fill_and_verify_text_field(locator, text)


@keyword
def send_keys_press_enter(locator, text):
    CommonUtils.verify_element(locator)
    CommonUtils.fill_and_verify_text_field(locator, text)
    CommonUtils.send_enter_to_focused_element(locator)
