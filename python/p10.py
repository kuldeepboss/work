def reverse_number(number):
    reversed_number = 0
    original_number = number

    while number > 0:
        digit = number % 10
        reversed_number = reversed_number * 10 + digit
        number = number // 10

    return reversed_number, original_number

def is_palindrome(number):
    reversed_number, original_number = reverse_number(number)
    return reversed_number == original_number

def main():
    try:
        number = int(input("Enter a number to check if it's a palindrome: "))
        if is_palindrome(number):
            print(f"{number} is a palindrome.")
        else:
            print(f"{number} is not a palindrome.")
    except ValueError:
        print("Please enter a valid integer.")

if __name__ == "__main__":
    main()
