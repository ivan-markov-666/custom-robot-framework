## About
That repository contains a custom boilerplate, that uses Robot Framework. It can be used as a good start for every project.  
There is one test that shows best practices for automation testing including POM design pattern, randomly selected data for checkboxes, radio buttons, drop-down lists, etc. and many more... for more details read that file.  

## Structure
### Custom Keywords
The project has examples for Custom Keywords (defined with Python). For more details see files inside ```./keywords``` folder.
### Page Object
The project has examples for Page Object Model implementation. For more details see files inside ```./PO``` folder.
### Tests
All tests are placed in the ```./tests``` folder.  
### Important
Only files related to test ```clickIt``` and ```element``` have detailed comments and descriptions. You can use those tests for learning.

## Set-up:
1. Clone the repo.
2. Install Python
3. Install PowerShell  
You may need to change the policy for executing the scripts in the PowerShell is you get an error. To change the policy type the following command in your terminal:
```Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned```  
If you met a problem with the permissions, execute the command in PowerShell opened with Administrator rights.
4. Install Anaconda  
   Create new a conda environment.  
   Activate your conda environment.
5. Add robotframework library
> pip install robotframework
6. Add selenium library
> pip install robotframework-seleniumlibrary
7. Add robotframework-seleniumlibrary
> pip install robotframework-seleniumlibrary
8. Add faker library
> pip install robotframework-faker
9. Use VS Code or PyCharm IDE
10. Download all web drivers that you will use and add the path of the folder containing the drivers into the environment variables.
11. Download and install all browsers that you will use for testing.  
That frame was tested only with Chrome and Firefox, for all other browsers you may need to make changes in the following files:   
```config/config.py``` - you will need to change the config for the browser that you want to use.  
```PO/common_keywords/commonKeywordsPage.robot``` - you will need to add extra code for other browsers in the "Keywords" section.
12. Go to the project's root folder and rename/copy ".env_EXAMPLE" file to ".env".  
=======
8. Use VS Code or PyCharm IDE
9. Download all web drivers that you will use and add the path of the folder containing the drivers into the environment variables.
10. Download and install all browsers that you will use for testing.  
That frame was tested only with Chrome and Firefox, for all other browsers you may need to make changes in the following files:   
```config/config.py``` - you will need to change the config for the browser that you want to use.  
```PO/common_keywords/commonKeywordsPage.robot``` - you will need to add extra code for other browsers in the "Keywords" section.
11. Go to the project's root folder and rename/copy ".env_EXAMPLE" file to ".env".  
Open the ".env" file and provide all needed data (baseURL, etc.).

## Execution

### Commands for executing the tests:
You should use a PowerShell or Bash script for executing the tests. You can find all scripts in the ./scripts folder located in the project roots.  
For example if you want to start all tests related to the customKeywords from examples you should execute the 'run_all_customKeywords_tests' script.  
#### Windows Example
<ins>Execute tests NOT in parallel:</ins>
> ./scripts/PowerShell/run_all_customKeywords_tests.ps1  

<ins>Execute tests in parallel:</ins>
> ./scripts/PowerShell/run_all_customKeywords_tests__parallel.ps1  
#### Linux Example
<ins>Execute tests NOT in parallel:</ins>
> ./scripts/Unix/run_all_customKeywords_tests.sh

<ins>Execute tests in parallel:</ins>
> ./scripts/Unix/run_all_customKeywords_tests__parallel.sh
- make sure that you make the file executable before running the script file.  
To make your file executable use the following command:
> chmod +x ./scripts/Unix/run_all_customKeywords_tests  
> chmod +x ./scripts/Unix/run_all_customKeywords_tests__parallel
#### Robot Framework approach examples
However, you still can execute the tests in the Robot Framework way.  
<ins>Execute one test:</ins>
> robot path/to/your/test.robot

<ins>example:</ins>
> robot tests/examples/customKeywords/element.robot 

<ins>Execute tests in parallel - we are using the "Pabot" library.</ins>
> pabot --processes 2 path/to/your/tests

In that case ***2*** tests will be executed at the same time. Change that number to increase the executing tests in parallel.

<ins>example:</ins>  
```robot --include customKeywords tests``` - this command will execute all tests that have the "customKeywords" tag in their "Test Cases" section.  
```robot --exinclude customKeywords tests``` - this command will execute all tests that DOESN'T have a "customKeywords" tag in their "Test Case" section.

### Suites
The suites are just upgraded scripts. To use suites you can add 'Tags' in the tests. You can see an examples in ```C:\Users\test657\RobotFramework\pythonProject\tests\examples\customKeywords\element.robot``` and ```C:\Users\test657\RobotFramework\pythonProject\tests\examples\customKeywords\clickIt.robot``` tests.  
You can define your suites by adding options "--include [tag]" and "--exclude [tag]" to your executing command.

#### Windows Example
<ins>Execute suite NOT in parallel:</ins>
> ./scripts/PowerShell/run_all_customKeywords_tests_suite_example.ps1  

<ins>Execute tests in parallel:</ins>
> ./scripts/PowerShell/run_all_customKeywords_tests_suite_example__parallel.ps1 

#### Linux Example
However, you still can execute the tests in the Robot Framework way. 
<ins>Execute tests NOT in parallel:</ins>
> ./scripts/Unix/run_all_customKeywords_suite_example_tests.sh

<ins>Execute tests in parallel:</ins>
> ./scripts/Unix/run_all_customKeywords_tests_suite_example__parallel.sh
- make sure that you make the file executable before running the script file.  
To make your file executable use the following command:
> chmod +x ./scripts/Unix/run_all_customKeywords_tests  
> chmod +x ./scripts/Unix/run_all_customKeywords_tests_suite_example__parallel

#### Robot Framework approach example
<ins>Execute all tests in one folder:</ins>
> robot path/to/your/folder/tests

<ins>example:</ins>
> robot tests/examples/customKeywords/

## Reports
If you are using PowerShell or Unix scripts, your reports will be generated in the "report" folder located in the project root. Every report will be placed in a new folder named with current 'yyyy-mm-dd_hhmmss'.  
If you are using Robot Framework commands for executing the tests - the report will be generated in the projects roots folder.

## Configuration
The boilerplate is using a Python file for configuration. For more details review the ```config/config.py``` file.

## Examples
There are three kinds of examples.
1. There is an example of the structure. For more details check the following files (please review that structure in a text editor, not in GitHub):  
project-root/  
├── keywords/  
│   └── example_structure/  
│       ├── common_functions/  
│       │   └── common_functions.py  
│       └── custom_keyword.py  
├── PO/  
│   └── examples/  
│       └── example_structure/  
│           └── examplePage.robot  
└── tests/  
    └── examples/  
        └── example_structure/  
            └── exampleStructureSpec.robot  
2. There is examples (with comments) how to add custom keywords. For more details check the following files:  
project-root/  
├── keywords/  
│   ├── common_utils/  
│   │   └── common_utils.py  
│   ├── click.py  
│   └── element.py  
├── PO/  
│   └── examples/  
│       └── customKeywords/  
│           ├── clickItPage.robot  
│           └── elementPage.robot  
└── tests/  
    └── examples/  
        └── customKeywords/  
            ├── clickIt.robot  
            └── element.robot  
3. There is one real example. That example shows best practices for automation testing. For more details check the following files:  
project-root/  
├── PO/  
│   └── examples/  
│       └── realExample/  
│           └── practiceFormPage.robot  
└── tests/  
    └── examples/  
        └── realExample/  
            └── practiceForm.robot  

## To Do:
1. Add headless support for all browsers that can be used from Robot Framework.
2. Test Unix scripts. The boilerplate was created in Windows OS.
3. Add more comments.
4. Add an assertion example.
5. Add Faker support.
6. Define the full-screen support in the config.py.
