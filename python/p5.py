def sort_three_numbers(num1, num2, num3):
    smallest = min(num1, num2, num3)
    largest = max(num1, num2, num3)
    middle = (num1 + num2 + num3) - smallest - largest
    return smallest, middle, largest

def main():
    try:
        num1 = int(input("Input First Number: "))
        num2 = int(input("Input Second Number: "))
        num3 = int(input("Input Third Number: "))
        sorted_nums = sort_three_numbers(num1, num2, num3)
        print("Numbers in sorted order:", *sorted_nums)
    except ValueError:
        print("Please enter valid integers.")

if __name__ == "__main__":
    main()
