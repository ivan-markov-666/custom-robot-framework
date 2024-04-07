from robot.api.deco import keyword
from common_utils.random_decisions import RandomDecisions
from common_utils.common_utils import CommonUtils


@keyword
def choose_random_value_from_list(values_list):
    return RandomDecisions.choose_random_value_from_list(values_list)


@keyword
def return_true_or_false_randomly():
    return RandomDecisions.return_true_or_false_randomly()


@keyword
def choose_random_number_of_values_from_list(values_list):
    return RandomDecisions.choose_random_number_of_values_from_list(values_list)

@keyword
def select_random_drop_down_value(locator):
    # Получава списък с WebElement обекти
    elements_list = CommonUtils.get_elements_as_list(locator)
    # Инициализира нов списък за съхранение на текстовите стойности
    text_values_list = []

    # Итерира през всеки елемент в списъка и добавя неговия текст в новия списък
    for element in elements_list:
        text_values_list.append(element.text)

    # Използва choose_random_value_from_list за да избере произволна текстова стойност от списъка
    random_text_value = RandomDecisions.choose_random_value_from_list(text_values_list)

    # Връща произволно избраната текстова стойност
    return random_text_value
