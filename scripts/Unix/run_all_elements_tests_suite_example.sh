#!/bin/bash

# Loads methods.sh to access functions
source "$(dirname "$0")/methods.sh"

# Defines the global directory 'report' and checks/creates it if necessary
globalReportFolder="$(dirname "$(dirname "$0")")/report"
ensure_folder_exists "$globalReportFolder"

# Generates the name of the reports folder with date and time
reportFolder="$globalReportFolder/$(date +%Y-%m-%d_%H%M%S)_reports"

# Starts Robot Framework with the specified tag
robot -d $reportFolder --include customKeywords tests/
