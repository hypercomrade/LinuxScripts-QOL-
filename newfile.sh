#!/bin/bash
# Mikhail U.

# Prompt the user for input
read -p "Enter a filename: " filename

# Check if the filename is provided
if [ -z "$filename" ]; then
    echo "No filename provided. Exiting."
    exit 1
fi

# Create a file using the input filename
touch "$filename"

# Make the file executable
chmod +x "$filename"

# Add shebang if the filename ends with .sh
if [[ "$filename" == *.sh ]]; then
    echo "#!/bin/bash" >> "$filename"
    echo "# Mikhail Ukrainetz #" >> "$filename"
fi

# Add shebang if the filename ends with .py
if [[ "$filename" == *.py ]]; then
    echo "#!/usr/bin/env python3" >> "$filename"
    echo "# Mikhail Ukrainetz #" >> "$filename"
fi

echo "File '$filename' created and set as executable."