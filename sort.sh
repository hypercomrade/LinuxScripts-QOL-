#!/bin/bash

input_file="$1"  # Replace with your input file name
output_file="$2"  # Replace with your desired output file name

# Use awk to extract specific columns (1-based indexing)
awk '{print $1, $2, $3, $7}' "$input_file" > "$output_file"

echo "Filtered data saved to $output_file"
