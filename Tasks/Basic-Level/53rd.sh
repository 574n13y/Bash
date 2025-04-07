#!/bin/bash

echo -e "Script to create and execute a simple script.\n"

while true; do
  read -p "Enter the name for the script file (e.g., my_script.sh) or 'q' to quit: " script_name

  if [[ "$script_name" == "q" ]]; then
    echo "Exiting."
    exit 0
  fi

  if [[ -n "$script_name" ]]; then # Check if a script name was entered
    # Create the script file
    echo '#!/bin/bash' > "$script_name"
    echo 'echo "Script executed!"' >> "$script_name"

    # Make the script executable
    chmod +x "$script_name"

    echo "Script '$script_name' created and made executable."

    # Execute the script
    echo -e "\nExecuting the script:\n"
    ./"$script_name"

    break # Exit the loop after successful creation and execution
  else
    echo "Please enter a valid script name."
  fi
done

echo -e "\nScript finished.\n"
