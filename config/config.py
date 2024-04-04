"""
This Python script is used for configuring settings for automated testing.

Settings:
- Browser selection: You can choose between "Chrome", "Firefox", "Ie", "Edge", "Safari", or "Remote" (for Selenium Grid).
  Make sure to download and set up the appropriate web drivers.
- Headless mode: Set to False for running the browser with GUI or True for running in headless mode.
- Parallel execution: Set the number of tests to execute simultaneously.
- Base URL: Provide the base URL for testing.

Make sure to configure these settings according to your testing requirements.
"""


# Set the browser. You can select between
# "Chrome",
# "Firefox",
# "Ie",
# "Edge",
# "Safari",
# "Remote" ("Remote" is using for Selenium Grid).
# Make sure that you downloaded web drivers that you use
# and add them to the Path value of the environment variables of your OS.
usedBrowser = "Chrome"

# Headless mode.
# Set to False if you want to run the browser with GUI.
# Set to True if you want to run the browser in headless mode.
# Just make sure that you are using boolean value (True of False).
headless = False

# Parallel execution of tests.
# If you are using parallel script for executing, you can select how many tests you want to execute at the same time.
# Just make sure that you are using a number value.
parallel_processes = 4

# BaseURL.
# Just make sure that you provide valid URL address in a string.
baseUrl = "https://demoqa.com"
