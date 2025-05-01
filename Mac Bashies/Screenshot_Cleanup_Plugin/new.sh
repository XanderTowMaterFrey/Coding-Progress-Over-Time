#!/bin/bash

# Create the screenshots folder if it doesn't exist
mkdir -p ~/Desktop/Screenshots

# Find all PNG files and filter for those with "screenshot" in the filename
find ~/Desktop -iname "*.png" -type f | grep -E 'Screen Shot [0-9]{4}-[0-9]{2}-[0-9]{2} at [0-9]{1,2}\.[0-9]{2}\.[0-9]{2} [AP]M' | while read file; do
    mv "$file" ~/Desktop/Screenshots/
done
