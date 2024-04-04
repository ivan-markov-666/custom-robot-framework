#!/bin/bash

# Loads methods.sh to access functions
source "$(dirname "$0")/methods.sh"

# Defines the global directory 'report' and checks/creates it if necessary
globalReportFolder="$(dirname "$(dirname "$0")")/report"
ensure_folder_exists "$globalReportFolder"

# Generates the name of the reports folder with date and time
reportFolder="$globalReportFolder/$(date +%Y-%m-%d_%H%M%S)_reports"

# Reads the number of processes from config.py
PARALLEL_PROCESSES=$(python -c "import sys; sys.path.append('$(dirname "$(dirname "$0")")/config'); import config; print(config.parallel_processes)")

# Starts pabot with the specified number of processes and the specified tag
pabot --processes $PARALLEL_PROCESSES --outputdir $reportFolder --include elements tests/
