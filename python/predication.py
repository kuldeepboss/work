import random

def generate_number():
    return random.randint(1, 1000)

def big_or_small(number, threshold):
    return "big" if number > threshold else "small"

def main():
    balance = 1000  # starting balance
    while True:
        print(f"Your current balance: {balance}")
        bet = int(input("Enter your bet amount: "))
        if bet > balance:
            print("Insufficient balance!")
            continue
        
        threshold = generate_number()
        print(f"The threshold number is: {threshold}")
        
        guess = input("Do you think the next number will be big or small? (Type 'big' or 'small'): ").lower()
        if guess not in ['big', 'small']:
            print("Invalid input! Please enter 'big' or 'small'.")
            continue
        
        next_number = generate_number()
        print(f"The next number is: {next_number}")
        
        result = big_or_small(next_number, threshold)
        if guess == result:
            print("Congratulations! You guessed correctly!")
            balance += bet
        else:
            print("Sorry! You guessed incorrectly!")
            balance -= bet
        
        play_again = input("Do you want to play again? (Type 'yes' or 'no'): ").lower()
        if play_again != 'yes':
            print("Thank you for playing!")
            break

if __name__ == "__main__":
    main()