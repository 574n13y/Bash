#!/bin/bash

echo -e "Create multipe directories at once \n use - mkdir (seprated by spaces \n ):"
mkdir infra monitoring deployment
echo -e ""
echo -e "To view dreated directories \n use- ls -lrth \n"
ls -lrth

######### ----------------------------------------------------------------- #####
# Using user input
#echo -e "Enter the names of the directories to create (separated by spaces): "
#mkdir 
#read -r directory_names # this is a advance way to ask use to name the directory and it will be created.
#echo -e "Creating directories: $directory_names\n"
#mkdir $directory_names
