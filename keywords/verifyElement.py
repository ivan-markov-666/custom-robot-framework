from robot.api.deco import keyword
from common_utils.common_utils import CommonUtils


@keyword
def verify_element(locator):
    CommonUtils.verify_element(locator)