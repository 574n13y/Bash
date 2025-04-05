#!/bin/bash


echo -e "Copy data from one directory to another \n use cp -r directory1 directory2 \n "
cp -r cloud_scripts/ backup_scripts/
echo -e 
echo -e "To view the backup_scripts directory files \n use ls -lrth \n"
ls -lrth backup_scripts/


############################################################################################################
#                                    ***Using User input***
############################################################################################################
#echo -e "Copy data from source to destination directory \n Use: cp -r source_directory destination_directory \n"

#read -p "Enter the source directory: " source_dir
#read -p "Enter the destination directory: " destination_dir

#echo -e "Copying data from '$source_dir' to '$destination_dir' directory...\n"
#cp -r "$source_dir" "$destination_dir"

#if [ $? -eq 0 ]; then
#  echo -e "Data has been copied successfully from '$source_dir' to '$destination_dir' directory.\n"
#else
#  echo -e "Error occurred during the copy operation.\n"
#fi

#echo -e "\nTo view the contents of the destination directory:\nUse: ls -lrth \"$destination_dir\"\n"
#ls -lrth "$destination_dir"
########################################################################################################################################################################################################################

