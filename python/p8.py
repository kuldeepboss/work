def calculate_average(numbers):
    if not numbers:
        return None
    return sum(numbers) / len(numbers)

def main():
    try:
        num_list = input("Enter a list of numbers separated by spaces: ").split()
        num_list = [float(num) for num in num_list]
        average = calculate_average(num_list)
        if average is not None:
            print("Average:", average)
        else:
            print("The list is empty.")
    except ValueError:
        print("Please enter valid numbers separated by spaces.")

if __name__ == "__main__":
    main()
