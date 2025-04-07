#!/bin/bash

# Redirect the output of the ls command to a user-specified file

read -p "Enter file name: " file_list

if [[ -n "$file_list" ]]; then  # Check if a filename was entered
  echo "Redirecting output to: $file_list"

  ls -lrth > "$file_list"
  echo "Output of 'ls -lrth' redirected to $file_list"

  pwd >> "$file_list"  # Use >> to append, not overwrite
  echo "Output of 'pwd' appended to $file_list"

  ls -l >> "$file_list"  # Use >> to append, not overwrite
  echo "Output of 'ls -l' appended to $file_list"

  # cat > "$file_list"  # This will wait for input indefinitely.  It's usually not what you want here.
  # echo "Input from 'cat' redirected to $file_list"

  echo "Script finished. Check $file_list for output."

else
  echo "Error: No file name entered."
  echo "Please provide a file name to redirect the output."
  exit 1
fi
