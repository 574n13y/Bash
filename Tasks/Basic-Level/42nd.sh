#!/bin/bash


#  Compare two numbers (User Input)
echo -e "\n--- Compare Two Numbers ---\n"
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

if test "$num1" -eq "$num2"; then
  echo "$num1 is equal to $num2."
elif test "$num1" -gt "$num2"; then
  echo "$num1 is greater than $num2."
else
  echo "$num1 is less than $num2."
fi


echo -e "\n--- Script Finished ---\n"
