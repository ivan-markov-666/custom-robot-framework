# Load methods.ps1
. "$PSScriptRoot\methods\methods.ps1"

# Call the Ensure-FolderExists method to check if the "report" folder exists.
$reportPath = Join-Path $PSScriptRoot -ChildPath "..\..\..\report"
Ensure-FolderExists -Path $reportPath

$reportFolder = "report/" + (Get-Date -Format "yyyy-MM-dd_HHmmss")
robot -d $reportFolder --include elements tests/