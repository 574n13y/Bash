#!/bin/bash

# This script executes my_script.sh

file_to_execute="my_script.sh"

if [ -f "$file_to_execute" ]; then
  # Check if the file is executable
  if [ -x "$file_to_execute" ]; then
    echo "Executing $file_to_execute:"
    ./"$file_to_execute"
  else
    echo "Error: $file_to_execute is not executable."
    echo "Please make it executable using: chmod +x $file_to_execute"
  fi
else
  echo "Error: $file_to_execute not found. Please create the file first."
fi
