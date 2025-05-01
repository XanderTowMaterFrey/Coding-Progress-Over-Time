#!/bin/bash

# Navigate to the Desktop
cd ~/Desktop

# Find all PNG files and filter for those with "screenshot" in the filename
find . -name "*.png" | grep -i "Screen Shot" | while read file
do
    mkdir -p ~/Desktop/Screenshots  # Create the screenshots folder if it doesn't exist
    mv "$file" ~/Desktop/Screenshots  # Move the screenshot file to the screenshots folder
#    echo "Moved $file to ~/Desktop/Screenshots"         ----- you can uncomment this line to print what it does, its not needed though
done

# do
#    mkdir -p ~/Desktop/"Last Five Business Days Screenshots"  # Create the screenshots folder if it doesn't exist
#    mkdir -p ~/Desktop/"Old Screenshots"  # Create the screenshots folder if it doesn't exist
#    mv "$file" ~/Desktop/Screenshots  # Move the screenshot file to the screenshots folder
#    echo "Moved $file to ~/Desktop/Screenshots"
# done

# if [ "$today" = "$file_date" ]; then
#    echo "Today's date matches the modification date of the file"
# else
#    echo "Today's date does not match the modification date of the file"
# fi

cd ~/Desktop/Screenshots

parsed=$(sed -E 's/.*Screen Shot ([0-9]{4}-[0-9]{2}-[0-9]{2}) at ([0-9]{1,2}\.[0-9]{2}\.[0-9]{2} [AP]M).*/\1 \2/')

echo "$parsed"