import random
from robot.api.deco import keyword


class RandomDecisions:
    @staticmethod
    def choose_random_value_from_list(values_list):
        return random.choice(values_list)

    @staticmethod
    def return_true_or_false_randomly():
        """Returns True or False randomly."""
        return random.choice([True, False])

    @staticmethod
    def choose_random_number_of_values_from_list(values_list):
        """Chooses a random number of values from the provided list of values."""
        # Converts the string argument back into a Python list
        values = eval(values_list)
        # Generates a random number between 1 and the number of items in the list
        number_of_values = random.randint(1, len(values))
        # Chooses that many values from the list
        chosen_values = random.sample(values, number_of_values)
        return chosen_values
