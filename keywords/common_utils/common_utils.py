from robot.libraries.BuiltIn import BuiltIn


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
