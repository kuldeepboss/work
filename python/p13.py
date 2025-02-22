def factorial(n):
    result = 1
    for i in range(1, n + 1):
        result *= i
    return result

# Test the function
number = int(input("Enter a number to find its factorial: "))
result = factorial(number)
print(f"The factorial of {number} is {result}")
