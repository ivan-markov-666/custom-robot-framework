from robot.libraries.BuiltIn import BuiltIn


class CommonUtils:
    @staticmethod
    def verify_element(locator):
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
        elements = selenium_lib.get_webelements(locator)

        if not elements:
            raise AssertionError(f"Element with locator '{locator}' does not exist in the DOM.")

        if len(elements) > 1:
            raise AssertionError(f"Multiple elements found with locator '{locator}' in the DOM.")
