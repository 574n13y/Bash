#!/bin/bash

#  Check if a string is empty (User Input)
echo -e "\n--- Check if String is Empty ---\n"
read -p "Enter a string: " my_string

if test -z "$my_string"; then
  echo "The string is empty."
else
  echo "The string is not empty: '$my_string'"
fi

echo -e "\n--- Script Finished ---\n"
