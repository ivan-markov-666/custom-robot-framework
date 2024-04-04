## About
That repository contains custom boilerplate, that uses Robot Framework. It can be used for a one good start for every one project.  

## Structure
### Custom Keywords
The project has examples for Custom Keywords (defined with Python). For more details see files inside ```./keywords``` folder.
### Page Object
The project has examples for Page Object Model implementation. For more details see files inside ```./PO``` folder.
### Tests
All tests are placed in the ```./tests``` folder.

## Set-up:
1. Clone the repo.
2. Install Python
3. Install PowerShell  
You may need to change the policy for executing the scripts in the PowerShell is you get an error. To change the policy type the following command in your terminal:
```Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned```  
If you met a problem with the permissions, execute the command in PowerShell opened with Administrator rights.
4. Add robotframework library
5. Add selenium library
6. Use VS Code or PyCharm IDE
7. Download all web drivers that you will use and add the path of folder contains the drivers into the environment variables.
8. Download and install all browsers that you will use for testing.  
That frame was tested only with Chrome and Firefox, for all other browsers you may need to make changes in following files:   
```config/config.py``` - you will need to change the config for browser that you want to use.  
```PO/common_keywords/commonKeywordsPage.robot``` - you will need to add extra code for other browsers in the "Keywords" section.
9. Go to the projects root folder and rename/copy ".env_EXAMPLE" file to ".env".  
Open the ".env" file and provide all needed data (baseURL, etc.).

## Execution

### Commands for executing the tests:
You should use a PowerShell or Bash scripts for executing the tests. You can find all scripts in ./scripts folder located in the project roots.  
For example if you want to start all tests related to the elements from examples you should execute the 'run_all_elements_tests' script.  
#### Windows Example
<ins>Execute tests NOT in parallel:</ins>
> ./scripts/PowerShell/run_all_elements_tests.ps1  

<ins>Execute tests in parallel:</ins>
> ./scripts/PowerShell/run_all_elements_tests__parallel.ps1  
#### Linux Example
<ins>Execute tests NOT in parallel:</ins>
> ./scripts/Unix/run_all_elements_tests.sh

<ins>Execute tests in parallel:</ins>
> ./scripts/Unix/run_all_elements_tests__parallel.sh
- make sure that you made the file executable before running the script file.  
To make your file executable use following command:
> chmod +x ./scripts/Unix/run_all_elements_tests  
> chmod +x ./scripts/Unix/run_all_elements_tests__parallel
#### Robot Framework approach examples
However, you still can execute the tests by the Robot Framework way.  
<ins>Execute one test:</ins>
> robot path/to/your/test.robot

<ins>example:</ins>
> robot tests/examples/elements/element.robot 

<ins>Execute tests in parallel - we are using "Pabot" library.</ins>
> pabot --processes 2 path/to/your/tests

In that case ***2*** tests will be executed at the same time. Change that number to increase the executing tests in parallel.

<ins>example:</ins>  
```robot --include elements tests``` - this command will execute all tests that have "elements" tag in their "Test Cases" section.  
```robot --exinclude elements tests``` - this command will execute all tests that DOESN'T have "elements" tag in their "Test Case" section.

### Suites
The suites are just upgraded scripts. To use suites you can add 'Tags' in the tests. You can see an examples in ```C:\Users\test657\RobotFramework\pythonProject\tests\examples\elements\element.robot``` and ```C:\Users\test657\RobotFramework\pythonProject\tests\examples\elements\clickIt.robot``` tests.  
You can define your suites by adding options "--include [tag]" and "--exclude [tag]" to your executing command.

#### Windows Example
<ins>Execute suite NOT in parallel:</ins>
> ./scripts/PowerShell/run_all_elements_tests_suite_example.ps1  

<ins>Execute tests in parallel:</ins>
> ./scripts/PowerShell/run_all_elements_tests_suite_example__parallel.ps1 

#### Linux Example
However, you still can execute the tests by the Robot Framework way. 
<ins>Execute tests NOT in parallel:</ins>
> ./scripts/Unix/run_all_elements_suite_example_tests.sh

<ins>Execute tests in parallel:</ins>
> ./scripts/Unix/run_all_elements_tests_suite_example__parallel.sh
- make sure that you made the file executable before running the script file.  
To make your file executable use following command:
> chmod +x ./scripts/Unix/run_all_elements_tests  
> chmod +x ./scripts/Unix/run_all_elements_tests_suite_example__parallel

#### Robot Framework approach example
<ins>Execute all tests in one folder:</ins>
> robot path/to/your/folder/tests

<ins>example:</ins>
> robot tests/examples/elements/

## Reports
If you are using PowerShell or Unix scripts, your reports will be generated in the "report" folder located in the projects root. Every one report will be placed in new folder named with current 'yyyy-mm-dd_hhmmss'.  
If you are using Robot Framework commands for executing the tests - the report will be generated in the projects roots folder.

## Configuration
The boilerplate is using a Python file for configuration. For more details review the ```config/config.py``` file.

## To Do:
1. Add headless support for all browsers that can be used from Robot Framework.
2. Test Unix scripts. The boilerplate was created in Windows OS.
3. ***FIX ISSUE:*** For some reason some of the tests fails, when we are using PowerShell approach for executing the tests.