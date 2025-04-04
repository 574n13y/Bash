#!/bin/bash

echo -e "Enter the names of the directories to create (separated by spaces): "
read -r directory_names

echo -e "Creating directories: $directory_names\n"
mkdir $directory_names
