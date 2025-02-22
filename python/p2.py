def check_even_odd(num):
    if num % 2 == 0:
        print(f"{num} is even.")
    else:
        print(f"{num} is odd.")

def main():
    try:
        num = int(input("Enter a number: "))
        check_even_odd(num)
    except ValueError:
        print("Please enter a valid integer.")

if __name__ == "__main__":
    main()
