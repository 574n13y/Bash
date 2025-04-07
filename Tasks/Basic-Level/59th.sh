#!/bin/bash

# Check if exactly two arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <number1> <number2>"
  echo "This script calculates the sum of two numbers."
  exit 1
fi

# Assign the arguments to variables
num1="$1"
num2="$2"

# Check if the arguments are valid numbers
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
  echo "Error: Invalid input. Please provide two numbers."
  exit 1
fi

# Calculate the sum using arithmetic expansion
sum=$((num1 + num2))

# Print the result
echo "The sum of $num1 and $num2 is: $sum"

exit 0
