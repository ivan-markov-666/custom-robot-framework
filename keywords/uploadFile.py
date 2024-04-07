from robot.api.deco import keyword
from common_utils.common_utils import CommonUtils


# Define a custom keyword using the @keyword decorator
@keyword
def upload_file(locator, file_path):
    # Call the verify_element function from the CommonUtils module
    CommonUtils.verify_element(locator)
    # Call the upload_file function from the CommonUtils module
    CommonUtils.upload_file(locator, file_path)

