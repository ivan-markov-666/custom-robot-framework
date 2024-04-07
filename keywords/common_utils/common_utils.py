from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.keys import Keys
import os


class CommonUtils:
    @staticmethod
    def verify_element(locator):
        # Get the instance of the SeleniumLibrary
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

        # Get the web elements matching the given locator
        elements = selenium_lib.get_webelements(locator)

        # Check if no elements are found with the given locator
        if not elements:
            raise AssertionError(f"Element with locator '{locator}' does not exist in the DOM.")

        # Check if multiple elements are found with the given locator
        if len(elements) > 1:
            raise AssertionError(f"Multiple elements found with locator '{locator}' in the DOM.")

    @staticmethod
    def fill_and_verify_text_field(locator, text):
        # Get the instance of the SeleniumLibrary
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

        # Set focus on the text field
        selenium_lib.click_element(locator)

        # Get element
        element = selenium_lib.find_element(locator)

        # Send CTRL+A keys to the element
        element.send_keys(Keys.CONTROL, 'a')

        # Finding the text field and filling it with the provided text
        element.send_keys(text)

        # Extracting the text from the text field for verification
        actual_text = selenium_lib.get_value(locator)

        # Checking if the entered text matches the expected text
        if actual_text != text:
            raise AssertionError(f"The text in the field with locator '{locator}' does not match the expected text.\n"
                                 f"Expected: '{text}', but found: '{actual_text}'.")

    @staticmethod
    def send_enter_to_focused_element(locator):
        """Sends a signal to press the Enter key to the element currently in focus."""
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

        # Get element
        element = selenium_lib.find_element(locator)

        # Sending the Enter key to the active element
        element.send_keys(Keys.ENTER)

    @staticmethod
    def upload_file(locator, file_path):
        """Uploads a file to the input element specified by the locator."""
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

        # Converting relative path to absolute using os.path.abspath if necessary
        absolute_file_path = os.path.abspath(file_path)

        # Finding the element and uploading the file
        selenium_lib.find_element(locator).send_keys(absolute_file_path)

    @staticmethod
    def get_element_text(locator):
        # Get the instance of the SeleniumLibrary
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

        # Get the web element matching the given locator
        element = selenium_lib.find_element(locator)

        # Get and return the text of the element
        return element.text

    @staticmethod
    def get_elements_as_list(locator):
        # Get the instance of the SeleniumLibrary
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

        # Get the web elements matching the given locator
        elements = selenium_lib.get_webelements(locator)

        # Return the list of WebElement objects
        return elements

    @staticmethod
    def get_elements_count(locator):
        # Get the instance of the SeleniumLibrary
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

        # Get the web elements matching the given locator
        elements = selenium_lib.get_webelements(locator)

        # Return the count of elements
        return len(elements)
