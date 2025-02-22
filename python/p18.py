def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def divide(a, b):
    if b != 0:
        return a / b
    else:
        return "Error: Division by zero"

def calculator():
    print("Menu:")
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")

    choice = int(input("Enter your choice (1/2/3/4): "))
    
    num1 = float(input("Enter first number: "))
    num2 = float(input("Enter second number: "))

    if choice == 1:
        print("Result:", add(num1, num2))
    elif choice == 2:
        print("Result:", subtract(num1, num2))
    elif choice == 3:
        print("Result:", multiply(num1, num2))
    elif choice == 4:
        print("Result:", divide(num1, num2))
    else:
        print("Invalid choice")

calculator()

def count_pos_neg(numbers):
    positive_count = sum(1 for num in numbers if num > 0)
    negative_count = sum(1 for num in numbers if num < 0)
    print("Positive numbers count:", positive_count)
    print("Negative numbers count:", negative_count)

# Example usage:
numbers = [10, -2, 3, -5, 7, -8]

def sum_even(numbers):
    return sum(num for num in numbers if num % 2 == 0)

# Example usage:
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print("Sum of even numbers:", sum_even(numbers))

