#!/bin/bash

file_to_read="your_file.txt"  # Replace with the actual file name

echo "Reading lines from $file_to_read until the end:"

if [ ! -f "$file_to_read" ]; then
  echo "Error: File '$file_to_read' not found."
  exit 1
fi

while IFS= read -r line; do
  echo "Line: $line"
  # You can add your processing of each line here
  # For example:
  # echo "Length: ${#line}"
  # if [[ "$line" == *'error'* ]]; then
  #   echo "Found 'error' in this line!"
  # fi
done < "$file_to_read"

echo "End of file reached."
