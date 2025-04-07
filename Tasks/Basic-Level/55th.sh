#!/bin/bash

# Check if my_script.sh exists
if [ -f "my_script.sh" ]; then
  # If it exists, try to execute it
  echo "Executing my_script.sh:"
  ./my_script.sh
else
  # If it doesn't exist, inform the user
  echo "Error: my_script.sh not found in the current directory."
  echo "Please make sure the file exists or create it."
fi
