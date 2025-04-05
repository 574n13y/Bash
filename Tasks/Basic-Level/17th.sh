#!/bin/bash

echo -e "Move file to directory \n Use: mv filename destination_dir/ \n "
mv app.config infra/

echo -e "\nTo view the contents of the destination directory:\nUse: ls -lrth infra/\n"
ls -lrth infra/



############################################################################################################
#     user input
############################################################################################################

#echo -e "Move a file to a destination directory\n"

#read -p "Enter the name of the file to move: " file_name
#read -p "Enter the destination directory: " destination_dir

#if [ -f "$file_name" ]; then
#  if [ -d "$destination_dir" ]; then
#    echo -e "Moving '$file_name' to '$destination_dir'...\n"
#    mv "$file_name" "$destination_dir"/
#    if [ $? -eq 0 ]; then
#      echo -e "'$file_name' has been successfully moved to '$destination_dir'.\n"
#      echo -e "Contents of the destination directory:\n"
#      ls -lrth "$destination_dir"
#    else
#      echo -e "Error occurred while moving the file.\n"
#    fi
#  else
#    echo -e "Error: Destination directory '$destination_dir' does not exist or is not a directory.\n"
#  fi
#else
#  echo -e "Error: File '$file_name' does not exist or is not a regular file.\n"
#fi

############################################################################################################

