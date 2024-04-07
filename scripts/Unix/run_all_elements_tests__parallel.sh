#!/bin/bash

# Load methods.sh to access functions
source "$(dirname "$0")/methods.sh"

# Define the global directory 'report' and check/create it if necessary
globalReportFolder="$(dirname "$(dirname "$0")")/report"
ensure_folder_exists "$globalReportFolder"

# Generate the name of the reports folder with date and time
reportFolder="$globalReportFolder/$(date +%Y-%m-%d_%H%M%S)_reports"

# Read the number of processes from config.py
PARALLEL_PROCESSES=$(python -c "import sys; sys.path.append('$(dirname "$(dirname "$0")")/config'); import config; print(config.parallel_processes)")

# Start pabot with the specified number of processes
pabot --processes $PARALLEL_PROCESSES --outputdir $reportFolder tests/examples/customKeywords/
