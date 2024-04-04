### Set-up:
1. Install Python
2. Add robotframework library
3. Add selenium library
4. Use VS Code or PyCharm IDE
5. Download all web drivers that you will use and add the path of folder contains the drivers into the environment variables.
6. Download and install all browsers that you will use for testing.  
That frame was tested only with Chrome and Firefox, for all other browsers you may need to make changes in following files:   
```config/config.py``` - you will need to change the config for browser that you want to use.  
```PO/common_keywords/commonKeywordsPage.robot``` - you will need to add extra code for other browsers in the "Keywords" section.

### Commands for executing the tests:
1. For executing one test:
> robot path/to/your/test.robot

example:
> robot tests/examples/elements/element.robot 

2. For executing all tests in one folder:
> robot path/to/your/folder/tests

example:
> robot tests/examples/elements/

3. For executing tests in parallel we are using "Pabot" library.
> pabot --processes 4 path/to/your/tests

In that case 4 tests will be executed at the same time.

example:
> pabot --processes 4 tests/examples/elements/

### To Do:
1. Add headless support for all browsers that can be used from Robot Framework.