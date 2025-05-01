#!/bin/bash

# Navigate to the Desktop
cd ~/Desktop

# Find the first PNG file with "Screen Shot" in the filename
file=$(find . -name "*.png" | grep -i "Screen Shot" | head -n 1)

# Print the filename for debugging
echo "Filename: $file"

# Apply regular expression to parse the filename and extract date and time
#parsed=$(echo "$file" | sed -E 's/.*Screen Shot ([0-9]{4}-[0-9]{2}-[0-9]{2}) at ([0-9]{1,2}\.[0-9]{2} [AP]M).*/\1 \2/')

parsed=$(echo "$file" | sed -E 's/.*Screen Shot ([0-9]{4}-[0-9]{2}-[0-9]{2}) at ([0-9]{1,2}\.[0-9]{2}\.[0-9]{2} [AP]M).*/\1 \2/')


# Print the parsed result for debugging
echo "Parsed: $parsed"

# Extract date and time into separate variables
date_part=$(awk '{print $1}' <<< "$parsed")
time_part=$(awk '{print $2}' <<< "$parsed")

# Print the extracted date and time for verification
echo "Date: $date_part"
echo "Time: $time_part"
