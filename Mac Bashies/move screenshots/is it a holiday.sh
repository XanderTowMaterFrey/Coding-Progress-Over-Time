#!/bin/bash

holidays=("This is just a day, live everyday like a holiday" "New Years" "Martin Luther King Day" "Good Friday" "Memorial Day" "Independence Day " "Labor Day" "Veterans Day" "Thanksgiving" "Black Friday" "Christmas Eve" "Christmas")

# Function to check if today is a holiday
is_holiday() {
    # Check for New Years Day
    if [ "$(date +'%m-%d')" == "01-01" ]; then
        echo "Today is New Years Day (Holiday)"
        return ${holidays[1]}
    fi

    # Check for Martin Luther King Day (3rd Monday in January)
    if [ "$(date +'%m-%d')" == "$(date -d "jan third mon" '+%m-%d')" ]; then
        echo "Today is Martin Luther King Day (Holiday)"
        return ${holidays[2]}
    fi

    # Check for Good Friday (Two days before Easter Sunday)
    easter=$(date -d "$(date +%-Y)-03-21 +$(cal -e $(date +%-Y) | awk 'NF {DAYS = $NF}; END {print DAYS}') days" '+%m-%d')
    good_friday=$(date -d "$easter -2 days" '+%m-%d')
    if [ "$(date +'%m-%d')" == "$good_friday" ]; then
        echo "Today is Good Friday (Holiday)"
        return ${holidays[3]}
    fi

    # Check for Memorial Day (Last Monday in May)
    if [ "$(date +'%m-%d')" == "$(date -d "may last mon" '+%m-%d')" ]; then
        echo "Today is Memorial Day (Holiday)"
        return ${holidays[4]}
    fi

    # Check for Independence Day
    if [ "$(date +'%m-%d')" == "07-04" ]; then
        echo "Today is Independence Day (Holiday)"
        return ${holidays[5]}
    fi

    # Check for Labor Day (1st Monday in September)
    if [ "$(date +'%m-%d')" == "$(date -d "sep first mon" '+%m-%d')" ]; then
        echo "Today is Labor Day (Holiday)"
        return ${holidays[6]}
    fi

    # Check for Veterans Day
    if [ "$(date +'%m-%d')" == "11-11" ]; then
        echo "Today is Veterans Day (Holiday)"
        return ${holidays[7]}
    fi

    # Calculate date of Thanksgiving (4th Thursday in November)
    current_year=$(date +'%Y')
    nov_1st=$(date -d "${current_year}-11-01" '+%Y-%m-%d')
    nth_thurs=$(( $(date -d "${nov_1st} 27 days" '+%e') + 5 - $(date -d "${nov_1st} 27 days" '+%u') ))
    #nov_1st=$(date -d "${current_year}-11-01" '+%m-%d')
    #nth_thurs=$(( $(date -d "${nov_1st} 27 days" '+%e') + (5 - $(date -d "${nov_1st} 27 days" '+%u'))))
#    nth_thurs=$(($(date -d "${nov_1st} + 27 days" '+%e') + (5 - $(date -d "${nov_1st} + 27 days" '+%u'))))
    if [ "$(date +'%m-%d')" == "$(date -d "${current_year}-11-${nth_thurs}" '+%m-%d')" ]; then
        echo "Today is Thanksgiving Day (Holiday)"
        return ${holidays[8]}
    fi

    # checks for black friday
    day_after_thanksgiving=$(date -d "${current_year}-11-${nth_thurs} + 1 day" '+%m-%d')
    if [ "$(date +'%m-%d')" == "$day_after_thanksgiving" ]; then
        echo "Today is Day after Thanksgiving (Holiday)"
        return ${holidays[9]}
    fi

    # Check for Christmas Eve
    if [ "$(date +'%m-%d')" == "12-24" ]; then
        echo "Today is Christmas Eve (Holiday)"
        return ${holidays[10]}
    fi

    # Check for Christmas
    if [ "$(date +'%m-%d')" == "12-25" ]; then
        echo "Today is Christmas (Holiday)"
        return ${holidays[11]}
    fi

    echo "Today is not a holiday"
    return ${holidays[0]}
}

answer=$(is_holiday)
echo $answer