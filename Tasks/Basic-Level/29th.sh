#!/bin/bash

echo -e "Creating and assigning the REGION variable - Hardcore Way\n"

# Hardcore Way
REGION="us-east-1"
echo "REGION variable created and set (hardcoded)."
echo "Value of REGION: $REGION"

###################################################################################################
#                                           User Input ways                                       #
###################################################################################################

#echo -e "\n#####################################################################\n"
#echo -e "Creating and assigning a user-specified variable - User Input Way\n"

#while true; do
#  read -p "Enter the name of the variable to create (or 'q' to quit): " var_name_create
#  if [[ "$var_name_create" == "q" ]]; then
#    echo "Exiting."
#    exit 0
#  fi

#  read -p "Enter the value for the variable '$var_name_create': " var_value

  # Assign the value to the variable using indirect assignment
#  eval "$var_name_create=\"$var_value\""

#  echo "Variable '$var_name_create' created and set to '$var_value'."
#  echo "Value of '$var_name_create': ${!var_name_create}"
#  break # Exit after successful creation (you can remove this if you want to create multiple variables)
#done

#echo -e "\nScript finished."
