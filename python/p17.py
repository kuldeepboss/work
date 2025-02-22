def count_occurrences(string, char):
    count = 0
    for c in string:
        if c == char:
            count += 1
    return count

string = input("Enter a string: ")
character = input("Enter a character: ")
print("Number of occurrences:", count_occurrences(string, character))

def is_palindrome(string):
    return string == string[::-1]

string = input("Enter a string: ")
reversed_string = string[::-1]
print("Reversed string:", reversed_string)
if is_palindrome(string):
    print("The string is a palindrome.")
else:
    print("The string is not a palindrome.")

def count_words(string):
    words = string.split()
    return len(words)

string = input("Enter a string: ")
print("Number of words:", count_words(string))

def count_words_starting_with_a(string):
    words = string.split()
    count = 0
    for word in words:
        if word[0].lower() == 'a':
            count += 1
    return count

string = input("Enter a string: ")
print("Number of words starting with 'A' or 'a':", count_words_starting_with_a(string))

def capitalize_first_letter(string):
    words = string.split()
    capitalized_words = [word.capitalize() for word in words]
    return ' '.join(capitalized_words)

string = input("Enter a string: ")
print("Modified string:", capitalize_first_letter(string))

def replace_the_with_that(string):
    return string.replace("the", "that")

string = input("Enter a string: ")
print("Modified string:", replace_the_with_that(string))

def count_characters(string):
    capital_letters = sum(1 for c in string if c.isupper())
    small_letters = sum(1 for c in string if c.islower())
    numbers = sum(1 for c in string if c.isdigit())
    return capital_letters, small_letters, numbers

string = input("Enter a string: ")
capital, small, numbers = count_characters(string)
print("Number of capital letters:", capital)
print("Number of small letters:", small)
print("Number of numbers:", numbers)


