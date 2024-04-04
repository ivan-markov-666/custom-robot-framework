from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
import validators
import sys
import os

# Adding the directory where config.py is located to sys.path
sys.path.append(os.path.abspath(os.path.join(__file__, "../../config")))

# Importing the config file
import config

# Define a custom keyword using the @keyword decorator
@keyword
def navigate_to_url_and_verify(url):
    # Check if the URL is valid
    if not validators.url(url):
        raise ValueError(f"Invalid URL: {url}")

    # Get the instance of the SeleniumLibrary
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

    # Използване на стойността на implicitWait от config.py
    selenium_lib.set_selenium_implicit_wait(config.implicitWait)

    # Navigate to the specified URL
    selenium_lib.go_to(url)

    # Get the current URL after navigation
    current_url = selenium_lib.get_location()

    # Check if the current URL matches the expected URL
    if current_url != url:
        raise AssertionError(f"Expected URL: {url}, Actual URL: {current_url}")
