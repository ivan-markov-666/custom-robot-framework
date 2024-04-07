from robot.api.deco import keyword
from common_functions.common_functions import CommonFunctionsExample


@keyword
def example_keyword_action():
    CommonFunctionsExample.function_example()

