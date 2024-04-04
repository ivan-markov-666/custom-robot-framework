#!/bin/bash
reportFolder="report/$(date +%Y-%m-%d_%H%M%S)_reports"
robot -d $reportFolder tests/examples/elements/