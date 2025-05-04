#!/bin/bash

# Script to recursively find and delete all .tmp files.
# USE WITH EXTREME CAUTION!

# Prompt the user for confirmation before proceeding
read -p "Are you absolutely sure you want to find and delete all .tmp files in the current directory and its subdirectories? (yes/no): " confirmation

if [[ "$confirmation" == "yes" ]]; then
  echo "Proceeding with deletion..."
  find . -type f -name "*.tmp" -print0 | while IFS= read -r -d $'\0' file; do
    echo "Deleting file: \"$file\""
    rm -f "$file"
  done
  echo "Finished searching for and deleting .tmp files."
else
  echo "Deletion cancelled by user."
fi

exit 0
