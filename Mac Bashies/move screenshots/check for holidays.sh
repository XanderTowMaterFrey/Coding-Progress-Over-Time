#!/bin/bash

# Define list of holidays
declare -a holidays=("2023-01-01" "2023-07-04" "2023-12-25")

# Function to check if a given date is a holiday
is_holiday() {
    for holiday in "${holidays[@]}"; do
        if [ "$1" == "$holiday" ]; then
            return 0
        fi
    done
    return 1
}

# Function to check if a given date is a business day
is_business_day() {
    day=$(date -d "$1" '+%u')
    if (( day < 6 )); then
        if is_holiday "$1"; then
            return 1
        else
            return 0
        fi
    else
        return 1
    fi
}

# Function to calculate if a date is within 5 business days
is_within_5_days() {
    start_date="$1"
    end_date="$2"
    business_days=0

    current_date="$start_date"

    while [ "$current "$end_date" ];_date" != do
        if is_business_day "$current_date"; then
            (( business_days++ ))
        fi
        current_date=$(date -d "$current_date + 1 day" '+%F')
    done

    if (( business_days <= 5 )); then
        return 0
    else
        return 1
    fi
}

# Perform the check for each screenshot date
# Replace file_name_date with the actual way you extract the date from file name
for screenshot in /path/to/screenshots/*; do
    file_name_date=$(basename "$screenshot" | cut -d'_' -f2)
    if is_within_5_days "$file_name_date" "$(date '+%F')"; then
        echo "$screenshot is within 5 business days."
    fi
done