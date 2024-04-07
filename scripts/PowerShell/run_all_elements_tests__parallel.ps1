# Load methods.ps1
. "$PSScriptRoot\methods\methods.ps1"

# Call the Ensure-FolderExists method to check if the "report" folder exists.
$reportPath = Join-Path $PSScriptRoot -ChildPath "..\..\..\report"
Ensure-FolderExists -Path $reportPath

# Importing the configuration file as a Python module
$pythonCode = @"
import sys
sys.path.append('C:/Users/test657/RobotFramework/pythonProject/config')
import config
print(config.parallel_processes)
"@

# Executing the Python code and storing the result in a variable
$processes = python -c $pythonCode

# Preparing the folder for the reports
$reportFolder = "report/" + (Get-Date -Format "yyyy-MM-dd_HHmmss")

# Executing pabot with the number of processes read from the configuration file
pabot --processes $processes --outputdir $reportFolder tests/examples/customKeywords/