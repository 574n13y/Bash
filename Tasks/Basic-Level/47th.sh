#!/bin/bash

#!/bin/bash

echo -e "Reading Lines from a File - User Input\n"

while true; do
    read -p "Enter the name of the file to read (or 'q' to quit): " file_to_read
    if [[ "$file_to_read" == "q" ]]; then
        echo "Exiting."
        exit 0
    fi

    if [[ -n "$file_to_read" ]]; then # Check if a filename was entered
        if [ -f "$file_to_read" ]; then
            echo "Reading lines from $file_to_read:"

            while IFS= read -r line; do
                echo "Line: $line"
                # Add your line processing here
            done < "$file_to_read"

            echo "End of file reached."
            break # Exit the loop after successful file read
        else
            echo "Error: File '$file_to_read' not found."
        fi
    else
        echo "Please enter a valid file name."
    fi
done

echo -e "\nScript finished.\n"
