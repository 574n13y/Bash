#!/bin/bash

# Check if a filename argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  echo "This script prints the content of the specified file."
  exit 1
fi

filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi

# Print the content of the file
echo "Content of '$filename':"
cat "$filename"

exit 0
