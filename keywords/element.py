from robot.api.deco import keyword
from common_utils.common_utils import CommonUtils


# Define a custom keyword using the @keyword decorator
@keyword
def verify_element(locator):
    # Call the verify_element function from the CommonUtils module
    CommonUtils.verify_element(locator)
