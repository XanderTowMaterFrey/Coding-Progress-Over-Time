from datetime import date
import holidays

# Define the list of holidays
custom_holidays = holidays.HolidayBase()

# Add custom holidays
custom_holidays.append({"2010-01-01": "New Years",  # Example for adding New Year's Day
                        "01-01": "New Years",      # Example for adding New Year's Day for all years
                        "2010-07-04": "Independence Day",
                        "12-25": "Christmas"})    # Example for adding Christmas for all years

# Check if a given date is a holiday
def is_holiday(input_date):
    return input_date in custom_holidays

# Example usage:
today = date.today()
if is_holiday(today):
    print("Today is a holiday!")
else:
    print("Today is not a holiday.")
