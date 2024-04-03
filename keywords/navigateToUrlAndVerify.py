from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
import validators

@keyword
def navigate_to_url_and_verify(url):
    # Проверка за валидност на URL адреса
    if not validators.url(url):
        raise ValueError(f"Invalid URL: {url}")

    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    selenium_lib.set_selenium_implicit_wait(40)  # Настройва "implicit wait" на 40 секунди
    selenium_lib.go_to(url)
    current_url = selenium_lib.get_location()
    if current_url != url:
        raise AssertionError(f"Expected URL: {url}, Actual URL: {current_url}")
