#!/bin/bash

# Navigate to the Desktop
cd ~/Desktop

# today=$(date "+%Y-%m-%d %H:%M:%S")
today=$(date "+%Y-%m-%d")
time=$(date "+%H:%M:%S")

# Find the first PNG file with "Screen Shot" in the filename
file=$(find . -name "*.png" | grep -i "Screen Shot" | head -n 1)

# Apply regular expression to parse the filename
#parsed=$(echo "$file" | sed -E 's/Screen Shot ([0-9]{4}-[0-9]{2}-[0-9]{2}) at ([0-9]{1,2}\.[0-9]{2}\.{0-9]}M).*/\1 [AP,\2/')

# Apply regular expression to parse the filename and extract date and time
parsed=$(echo "$file" | sed -E 's/.*Screen Shot ([0-9]{4}-[0-9]{2}-[0-9]{2}) at ([0-9]{1,2}\.[0-9]{2}\.[0-9]{2} [AP]M).*/\1 \2/')

# Extract date and time into separate variables
date_part=$(echo "$parsed" | awk '{print $1}')
time_part=$(echo "$parsed" | awk '{print $2}')

# Echo the parsed result
echo "parsed is $parsed"
echo "today is $today"
echo "today is $time"
echo "Date: $date_part"
echo "Time: $time_part"