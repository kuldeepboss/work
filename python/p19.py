import pandas as pd

# Task 1
# Create a series EngDict from a dictionary containing 10 words and their meaning
word_meaning_dict = {
    'apple': 'a fruit',
    'banana': 'a fruit',
    'car': 'a vehicle',
    'computer': 'an electronic device',
    'book': 'a written or printed work',
    'house': 'a place where people live',
    'tree': 'a woody perennial plant',
    'cat': 'a small domesticated carnivorous mammal',
    'dog': 'a domesticated carnivorous mammal',
    'bird': 'a warm-blooded egg-laying vertebrate animal'
}
EngDict = pd.Series(word_meaning_dict)

# Task 2
# Create a series StateLanguage from a dictionary containing information of at least 5 states
# and the language spoken in that state
state_language_dict = {
    'California': 'English',
    'Texas': 'English',
    'New York': 'English',
    'Florida': 'English',
    'Hawaii': 'English'
}
StateLanguage = pd.Series(state_language_dict)

# Task 3
# Create a series storing even numbers from 1 to 20 with default indexes
even_numbers = pd.Series(range(2, 21, 2))

# Task 4
# Create a series storing numbers from 1 to 5 as indexes and their square values as data
index_numbers = pd.Series(range(1, 6))  # Indexes from 1 to 5
squares = index_numbers ** 2

# Displaying the created series
print("EngDict:")
print(EngDict)
print("\nStateLanguage:")
print(StateLanguage)
print("\nEven Numbers:")
print(even_numbers)
print("\nSquares:")
print(squares)
