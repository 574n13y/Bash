#!/bin/bash

# This script adds the shebang line to my_script.sh if it's not already present.

file_to_modify="my_script.sh"

if [ -f "$file_to_modify" ]; then
  # Check if the file starts with #!/bin/bash
  head -n 1 "$file_to_modify" | grep -q '^#!/bin/bash'

  if [ $? -ne 0 ]; then
    # If the shebang is not present, add it to the beginning of the file
    echo "Adding #!/bin/bash to the beginning of $file_to_modify"
    sed -i '1i#!/bin/bash' "$file_to_modify"
  else
    echo "$file_to_modify already has the #!/bin/bash shebang line."
  fi
else
  echo "Error: $file_to_modify not found. Please create the file first."
fi
