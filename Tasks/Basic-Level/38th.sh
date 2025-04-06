#!/bin/bash

#echo -e "Checking if config.ini exists - Manual Way\n"

# Manual (Hardcoded) Way
#file_to_check_manual="config.ini"

#if [ -f "$file_to_check_manual" ]; then
#  echo "File exists (manual check)"
#fi

###################################################################################################
# User Input Way
##################################################################################################

echo -e "\n#####################################################################\n"
echo -e "Checking if a user-specified file exists - User Input Way\n"

while true; do
  read -p "Enter the name of the file to check (or 'q' to quit): " file_to_check_user
  if [[ "$file_to_check_user" == "q" ]]; then
    echo "Exiting."
    exit 0
  fi

  if [ -f "$file_to_check_user" ]; then
    echo "File exists (user input)"
    break # Exit after successful check (you can remove this if you want to check multiple files)
  else
    echo "File does not exist (user input)"
  fi
done

echo -e "\nScript finished."
