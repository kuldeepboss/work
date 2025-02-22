def generate_fibonacci(n):
    fibonacci_series = []
    # First two terms of Fibonacci series
    a, b = 0, 1
    # Add first two terms to the series
    fibonacci_series.append(a)
    fibonacci_series.append(b)
    # Generate subsequent terms
    for _ in range(2, n):
        c = a + b
        fibonacci_series.append(c)
        a, b = b, c
    return fibonacci_series

def main():
    try:
        num_terms = int(input("Enter the number of terms for the Fibonacci series: "))
        if num_terms <= 0:
            print("Please enter a positive integer.")
        else:
            fibonacci_series = generate_fibonacci(num_terms)
            print("Fibonacci series:")
            print(*fibonacci_series)
    except ValueError:
        print("Please enter a valid integer.")

if __name__ == "__main__":
    main()
