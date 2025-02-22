import calendar

def print_calendar():
    # Input month and year from the user
    year = int(input("Enter the year: "))
    month = int(input("Enter the month (1-12): "))

    # Print the calendar for the given month and year
    print("\n", calendar.month(year, month))

print_calendar()
