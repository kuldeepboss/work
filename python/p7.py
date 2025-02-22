def day_name(day_number):
    days = {
        1: "Monday",
        2: "Tuesday",
        3: "Wednesday",
        4: "Thursday",
        5: "Friday",
        6: "Saturday",
        7: "Sunday"
    }
    return days.get(day_number, "Invalid day number")

def main():
    try:
        day_number = int(input("Enter a day number (1-7): "))
        if 1 <= day_number <= 7:
            print("Day name:", day_name(day_number))
        else:
            print("Please enter a number between 1 and 7.")
    except ValueError:
        print("Please enter a valid integer.")

if __name__ == "__main__":
    main()
