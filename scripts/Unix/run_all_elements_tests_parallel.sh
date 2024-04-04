#!/bin/bash
# Reading the number of processes from config.py
PARALLEL_PROCESSES=$(python -c "import sys; sys.path.append('/path/to/your/config'); import config; print(config.parallel_processes)")

# Generating a folder name for reports with date and time
reportFolder="report/$(date +%Y-%m-%d_%H%M%S)_reports"

# Starting pabot with the specified number of processes
pabot --processes $PARALLEL_PROCESSES --outputdir $reportFolder tests/examples/elements/
