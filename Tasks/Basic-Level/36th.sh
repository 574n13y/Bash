#!/bin/bash

###################################################################################################
#     	                         Manual / Hardcoded way                                           #
###################################################################################################

#file_to_check="your_file_name_here" # Replace with the actual file name

#echo -e "Checking if '$file_to_check' is Writeable - Manual Way\n"

#if [ -w "$file_to_check" ]; then
#  echo "The file '$file_to_check' is Writeable."
#else
#  echo "The file '$file_to_check' is not Writeable (or does not exist)."
#fi

###################################################################################################
#                                              User Input Way                                     #
###################################################################################################

echo -e "\n#####################################################################\n"
echo -e "Checking if a user-specified file is writeable - User Input Way\n"

while true; do
  read -p "Enter the name of the file to check for writeability (or 'q' to quit): " file_to_check_user
  if [[ "$file_to_check_user" == "q" ]]; then
    echo "Exiting."
    exit 0
  fi

  if [ -f "$file_to_check_user" ]; then
    if [ -w "$file_to_check_user" ]; then
      echo "The file '$file_to_check_user' is Writeable."
    else
      echo "The file '$file_to_check_user' exists but is NOT Writeable."
    fi
    break # Exit after successful check (you can remove this if you want to check multiple files)
  else
    echo "Error: File '$file_to_check_user' not found. Please try again."
  fi
done

echo -e "\nScript finished."
