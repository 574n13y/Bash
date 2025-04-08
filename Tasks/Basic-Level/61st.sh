#!/bin/bash


# Append the current date and time to list.txt

if [ ! -f "list.txt" ]; then
  echo "Creating file list.txt"
  touch "list.txt"  # Create an empty file if it doesn't exist
fi

echo "Appending date and time to list.txt"
date >> list.txt

echo "Contents of list.txt after appending:"
cat list.txt


###################################################################
# Append the current date and time to a user-specified file

#echo "Enter the name of the file to append to:"
#read file_name

#if [ ! -f "$file_name" ]; then
#  echo "Creating file $file_name"
#  touch "$file_name"  # Create an empty file if it doesn't exist
#  echo "File $file_name has been created."
#else
#  echo "File $file_name already exists. Appending date and time."
#fi

#echo "Appending date and time to $file_name"
#date >> "$file_name"

#echo "Contents of $file_name after appending:"
#cat "$file_name"
####################################################################
