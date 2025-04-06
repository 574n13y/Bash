#!/bin/bash

echo "Enter a status code:"
read status_code

if [[ "$status_code" =~ ^[0-9]+$ ]]; then  # Check if it's a number
  if [[ "$status_code" -eq 200 ]]; then
    echo "Status code: $status_code - OK"
  elif [[ "$status_code" -eq 404 ]]; then
    echo "Status code: $status_code - Not Found"
  else
    echo "Status code: $status_code - Other"
  fi
else
  echo "Invalid input. Please enter a numerical status code."
fi
