#!/bin/bash

###################################################################################################
#     	                         Manual / Hardcoded way                                           #
###################################################################################################

#echo -e "Checking for the existence of the 'logs' directory - Manual Way\n"

#directory_to_check_manual="logs"

#if [ -d "$directory_to_check_manual" ]; then
#  echo "The directory '$directory_to_check_manual' exists in the current directory."
#else
#  echo "The directory '$directory_to_check_manual' does not exist in the current directory."
#fi

###################################################################################################
#                                              User Input Way                                     #
###################################################################################################

echo -e "\n#####################################################################\n"
echo -e "Checking for the existence of a user-specified directory - User Input Way\n"

while true; do
  read -p "Enter the name of the directory to check (or 'q' to quit): " directory_to_check_user
  if [[ "$directory_to_check_user" == "q" ]]; then
    echo "Exiting."
    exit 0
  fi

  if [ -d "$directory_to_check_user" ]; then
    echo "The directory '$directory_to_check_user' exists."
    break # Exit after successful check (you can remove this if you want to check multiple directories)
  else
    echo "The directory '$directory_to_check_user' does not exist."
  fi
done

echo -e "\nScript finished."
