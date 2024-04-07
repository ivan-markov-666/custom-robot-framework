from robot.api.deco import keyword
from common_utils.common_utils import CommonUtils


@keyword
def full_screen():
    CommonUtils.maximize_browser_window()


@keyword
def scroll_down(pixels):
    CommonUtils.scroll_down(pixels)
