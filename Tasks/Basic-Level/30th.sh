#!/bin/bash

echo -e "Printing the value of the REGION variable - Hardcore Way\n"

# Hardcore Way (Assuming REGION is already set in the environment)
if [[ -v REGION ]]; then
  region_value_hardcore="$REGION"
  echo "Value of REGION (hardcoded): $region_value_hardcore"
else
  echo "Warning: REGION variable is not set in the environment (hardcoded)."
fi

###################################################################################################
#                                          User Input ways                                        #
###################################################################################################

#echo -e "\n#####################################################################\n"
#echo -e "Printing the value of a user-specified variable - User Input Way\n"

#while true; do
#  read -p "Enter the name of the variable to print (or 'q' to quit): " var_name
#  if [[ "$var_name" == "q" ]]; then
#    echo "Exiting."
#    exit 0
#  fi

#  if [[ -v "$var_name" ]]; then
#    variable_value_user="${!var_name}" # Use indirect expansion to get the value
#    echo "Value of '$var_name': $variable_value_user"
#    break # Exit after successful print (you can remove this if you want to print multiple variables)
#  else
#    echo "Error: Variable '$var_name' is not set in the environment. Please try again."
#  fi
#done

#echo -e "\nScript finished."
