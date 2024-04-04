#!/bin/bash

# Source point for methods.sh
source "$(dirname "$0")/../methods/methods.sh"

# Defining the global directory 'report'
projectRoot="$(dirname "$(dirname "$0")")"
globalReportFolder="$projectRoot/report"

# Checking and creating the global directory 'report', if necessary
ensure_folder_exists "$globalReportFolder"

# Creating an individual folder for the current report in the global directory 'report'
reportFolder="$globalReportFolder/$(date +%Y-%m-%d_%H%M%S)_reports"

# Executing Robot Framework tests
robot -d "$reportFolder" "$projectRoot/tests/examples/elements/"
