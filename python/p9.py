def is_armstrong(number):
    # Convert the number to a string to iterate through its digits
    num_str = str(number)
    # Calculate the number of digits
    num_digits = len(num_str)
    # Initialize sum to 0
    armstrong_sum = 0
    
    # Calculate the sum of the cubes of each digit
    for digit in num_str:
        armstrong_sum += int(digit) ** num_digits
    
    # Check if the sum is equal to the original number
    return armstrong_sum == number

def main():
    try:
        number = int(input("Enter a number to check if it's an Armstrong number: "))
        if is_armstrong(number):
            print(f"{number} is an Armstrong number.")
        else:
            print(f"{number} is not an Armstrong number.")
    except ValueError:
        print("Please enter a valid integer.")

if __name__ == "__main__":
    main()
