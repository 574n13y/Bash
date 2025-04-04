#!/bin/bash

echo "To create multiple files at once \n use touch (file name seprated by spaces): \n  "
touch app.config database.config
echo -e 
echo -e "To view created files \n use ls -lrth \n"
ls -lrth

######### ----------------------------------------------------------------- #####
# Using user input
#echo -e "Enter the names of the files to create (separated by spaces): "
#read -r files_names .
#echo -e "Creating directories: $files_names\n"
#touch $files_names
####-------------------------------------------------------------------------####
