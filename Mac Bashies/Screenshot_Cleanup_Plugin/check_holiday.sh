## Warp AI Transcript (03/10/24  8:40 AM)

## Prompt: how can i make a bash file that will accurately and consistently determine if the current day or a day entered by the user is a holdiay, based off of a list of predeteremined holidays

# # Warp AI: You can create a bash script that checks if the current day or a day entered by the user is a holiday based on a list of predetermined holidays. Here's an example script that demonstrates this:

```bash
#!/bin/bash

# List of predetermined holidays
holidays=("2022-01-01" "2022-07-04" "2022-12-25")

# Function to check if a given date is a holiday
is_holiday() {
    local check_date=$1
    for holiday in "${holidays[@]}"; do
        if [ "$check_date" == "$holiday" ]; then
            echo "$check_date is a holiday"
            return 0
        fi
    done
    echo "$check_date is not a holiday"
    return 1
}

# Get the current date
current_date=$(date +"%Y-%m-%d")

# Check if the current date is a holiday
is_holiday "$current_date"

# Check if a user-entered date is a holiday
if [ ! -z "$1" ]; then
    is_holiday "$1"
fi
```

You can run this script in your terminal and pass a date as an argument to check if it's a holiday. For example:

```bash
./check_holiday.sh 2022-01-01
```

This script will output whether the given date is a holiday based on the predetermined list.

Prompt: that almost works, but holidays like thanksgiving and easter will be missed due to them being on week days or weekends rather than a certain date, can you correct this?

Warp AI: To handle holidays like Thanksgiving and Easter that are based on specific weekdays or other criteria rather than fixed dates, you can modify the script to include logic for calculating these holidays. Here's an updated version of the script that includes functions to check for Thanksgiving (fourth Thursday of November) and Easter (based on the algorithm by Gauss):

```bash
#!/bin/bash

# Function to check if a given date is a holiday
is_holiday() {
    local check_date=$1
    case $check_date in
        *-01-01) echo "$check_date is New Year's Day";;
        *-07-04) echo "$check_date is Independence Day";;
        *-12-25) echo "$check_date is Christmas Day";;
        *-11-??)
            # Check if the date is Thanksgiving (fourth Thursday of November)
            day_of_week=$(date -d "$check_date" +%u)
            day_of_month=$(date -d "$check_date" +%d)
            if [ $day_of_week -eq 4 ] && [ $day_of_month -ge 22 ] && [ $day_of_month -le 28 ]; then
                echo "$check_date is Thanksgiving Day"
            else
                echo "$check_date is not a holiday"
            fi
            ;;
        *)
            # Calculate Easter Sunday based on Gauss's algorithm
            year=$(date -d "$check_date" +%Y)
            a=$(( year % 19 ))
            b=$(( year / 100 ))
            c=$(( year % 100 ))
            d=$(( b / 4 ))
            e=$(( b % 4 ))
            f=$(( (b + 8) / 25 ))
            g=$(( (b - f + 1) / 3 ))
            h=$(( (19 * a + b - d - g + 15) % 30 ))
            i=$(( c / 4 ))
            k=$(( c % 4 ))
            l=$(( (32 + 2 * e + 2 * i - h - k) % 7 ))
            m=$(( (a + 11 * h + 22 * l) / 451 ))
            month=$(( (h + l - 7 * m + 114) / 31 ))
            day=$(( ((h + l - 7 * m + 114) % 31) + 1 ))
            easter_date="$year-$(printf "%02d" $month)-$(printf "%02d" $day)"

            if [ "$check_date" == "$easter_date" ]; then
                echo "$check_date is Easter Sunday"
            else
                echo "$check_date is not a holiday"
            fi
            ;;
    esac
}

# Get the current date
current_date=$(date +"%Y-%m-%d")

# Check if the current date is a holiday
is_holiday "$current_date"

# Check if a user-entered date is a holiday
if [ ! -z "$1" ]; then
    is_holiday "$1"
fi
```

You can run this script in your terminal and pass a date as an argument to check if it's a holiday, including Thanksgiving and Easter.