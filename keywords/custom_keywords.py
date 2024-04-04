from robot.api.deco import keyword

# Define a custom keyword using the @keyword decorator
@keyword
def custom_keyword_example(argument):
    # Print a message indicating that the custom keyword is executed with the provided argument
    print("Custom keyword executed with argument:", argument)
