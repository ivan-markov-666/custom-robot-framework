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

    @staticmethod
    def click_and_verify_radio_button(locator):
        # Получаване на инстанцията на SeleniumLibrary
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

        # Натискане на радио бутона
        selenium_lib.click_element(locator)

        # Проверка дали радио бутона е маркиран
        is_selected = selenium_lib.is_element_selected(locator)
        if not is_selected:
            raise AssertionError(f"Radio button with locator '{locator}' is not selected.")
