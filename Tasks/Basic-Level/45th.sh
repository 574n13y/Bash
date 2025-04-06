#!/bin/bash


#  For loop to process .log files in the current directory


echo -e "\n--- For Loop: Process .log Files ---\n"

if ls *.log 1> /dev/null 2>&1; then # Check if any .log files exist
  for log_file in *.log; do
    echo "Processing: $log_file"
    #  Add your processing commands here (e.g., grep, awk, etc.)
    #  For example:
    #  grep "error" "$log_file"
  done
else
  echo "No .log files found in the current directory."
fi

echo -e "\n--- Script Finished ---\n"
