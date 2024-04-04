from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from config.config import implicitWait
import validators


# Define a custom keyword using the @keyword decorator
@keyword
def navigate_to_url_and_verify(url):
    # Check if the URL is valid
    if not validators.url(url):
        raise ValueError(f"Invalid URL: {url}")

    # Get the instance of the SeleniumLibrary
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

    # Set implicit wait to 40 seconds
    selenium_lib.set_selenium_implicit_wait(implicitWait)

    # Navigate to the specified URL
    selenium_lib.go_to(url)

    # Get the current URL after navigation
    current_url = selenium_lib.get_location()

    # Check if the current URL matches the expected URL
    if current_url != url:
        raise AssertionError(f"Expected URL: {url}, Actual URL: {current_url}")
