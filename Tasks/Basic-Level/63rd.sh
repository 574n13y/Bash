#!/bin/bash

echo -e "Search for 'warning' in a log file:\n"

read -p "Enter the name of the log file: " file_name

if [[ -f "$file_name" ]]; then
  echo -e "\nYou have selected the file: $file_name\n"
  echo -e "Lines containing 'warning' in $file_name:\n"
  cat "$file_name" | grep -i "warning"
else
  echo "Error: File '$file_name' not found."
fi

echo -e "\nScript finished.\n"

