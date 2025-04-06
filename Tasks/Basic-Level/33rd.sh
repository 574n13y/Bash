#!/bin/bash

file_to_check="data.txt"

if [ -f "$file_to_check" ]; then
  echo "The file '$file_to_check' exists in the current directory."
else
  echo "The file '$file_to_check' does not exist in the current directory."
fi
