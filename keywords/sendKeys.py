from robot.api.deco import keyword
from common_utils.common_utils import CommonUtils


@keyword
def fill_and_verify_text_field(locator, text):
    CommonUtils.verify_element(locator)
    CommonUtils.fill_and_verify_text_field(locator, text)
