package main

import (
    "fmt"
    "time"
)

// Define holidays
var holidays = map[string]time.Time{
    "New Years":      time.Date(0, time.January, 1, 0, 0, 0, 0, time.UTC),
    "Martin Luther King Day": nthWeekday(3, time.Monday, time.January),
    "Memorial Day":   nthWeekday(-1, time.Monday, time.May),
    "Independence Day": time.Date(0, time.July, 4, 0, 0, 0, 0, time.UTC),
    "Labor Day":      nthWeekday(1, time.Monday, time.September),
    "Veterans Day":   time.Date(0, time.November, 11, 0, 0, 0, 0, time.UTC),
    "Thanksgiving":   nthWeekday(4, time.Thursday, time.November),
    "Black Friday":   nthWeekday(4, time.Friday, time.November),
    "Christmas Eve":  time.Date(0, time.December, 24, 0, 0, 0, 0, time.UTC),
    "Christmas":      time.Date(0, time.December, 25, 0, 0, 0, 0, time.UTC),
}

// Check if a given date is a holiday
func isHoliday(date time.Time) bool {
    _, month, day := date.Date()
    holidayDates := make(map[string]struct{})
    for _, v := range holidays {
        m, d, _ := v.Date()
        holidayDates[fmt.Sprintf("%d-%d", int(m), d)] = struct{}{}
    }
    _, exists := holidayDates[fmt.Sprintf("%d-%d", int(month), day)]
    return exists
}

// nthWeekday returns the nth occurrence of the given weekday in the given month
func nthWeekday(n int, weekday time.Weekday, month time.Month) time.Time {
    // Find the first day of the month
    firstOfMonth := time.Date(0, month, 1, 0, 0, 0, 0, time.UTC)
    // Find the first occurrence of the given weekday
    for firstOfMonth.Weekday() != weekday {
        firstOfMonth = firstOfMonth.AddDate(0, 0, 1)
    }
    // Add days to get to the nth occurrence
    return firstOfMonth.AddDate(0, 0, (n-1)*7)
}

func main() {
    fmt.Println("Enter a date (yyyy-mm-dd):")
    var inputDate string
    fmt.Scanln(&inputDate)
    date, _ := time.Parse("2006-01-02", inputDate)
    if isHoliday(date) {
        fmt.Println("It is a holiday")
    } else {
        fmt.Println("It's a normal day")
    }
}
