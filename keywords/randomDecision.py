from robot.api.deco import keyword
from common_utils.random_decisions import RandomDecisions


@keyword
def choose_random_value_from_list(values_list):
    return RandomDecisions.choose_random_value_from_list(values_list)


@keyword
def return_true_or_false_randomly():
    return RandomDecisions.return_true_or_false_randomly()


@keyword
def choose_random_number_of_values_from_list(values_list):
    return RandomDecisions.choose_random_number_of_values_from_list(values_list)
