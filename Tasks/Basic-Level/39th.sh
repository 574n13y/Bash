#!/bin/bash
echo "Enter a number:"
read num

if (( num > 0 )); then
  echo "$num is positive."
elif (( num == 0 )); then
  echo "$num is zero."
else
  echo "$num is negative."
fi


