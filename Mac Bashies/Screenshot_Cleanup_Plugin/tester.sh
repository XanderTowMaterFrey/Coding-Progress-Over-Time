#!/bin/bash

# Navigate to the Desktop
cd ~/Desktop

# Find all PNG files and filter for those with "screenshot" in the filename
find . -name "*.png" | grep -i "Screen Shot" | while read file

# do
#    mkdir -p ~/Desktop/Screenshots  # Create the screenshots folder if it doesn't exist
#    mv "$file" ~/Desktop/Screenshots  # Move the screenshot file to the screenshots folder
# done

if [ -n "$(find . -maxdepth 1 -type f -name '*.png' -o -name '*.jpg')" ]; then
    mkdir -p ~/Desktop/Screenshots  # Create the screenshots folder if it doesn't exist
    for file in *.png *.jpg; do
        mv "$file" ~/Desktop/Screenshots  # Move the screenshot file to the screenshots folder
    done
fi


cd ~/Desktop/Screenshots

parsed=$(sed -E 's/.*Screen Shot ([0-9]{4}-[0-9]{2}-[0-9]{2}) at ([0-9]{1,2}\.[0-9]{2}\.[0-9]{2} [AP]M).*/\1 \2/')

echo "$parsed yodel"