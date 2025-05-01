#!/bin/bash

# Create the screenshots folder if it doesn't exist
mkdir -p ~/Desktop/Screenshots

# Find all PNG files and filter for those with "screenshot" in the filename
find ~/Desktop -iname "*.png" -type f -exec bash -c '
    for file do
        if [[ $(basename "$file") == *"Screen Shot"* ]]; then
            mv "$file" ~/Desktop/Screenshots/
        fi
    done
' bash {} +
