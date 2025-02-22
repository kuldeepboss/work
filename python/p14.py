def max_element(lst):
    if not lst:
        return "List is empty"
    return max(lst)

# Example usage:
my_list = [3, 7, 2, 9, 5]
print("Maximum element:", max_element(my_list))

def min_element(lst):
    if not lst:
        return "List is empty"
    return min(lst)

# Example usage:
my_list = [3, 7, 2, 9, 5]
print("Minimum element:", min_element(my_list))

def sum_of_elements(lst):
    return sum(lst)

# Example usage:
my_list = [3, 7, 2, 9, 5]
print("Sum of elements:", sum_of_elements(my_list))

def average_of_elements(lst):
    if not lst:
        return "List is empty"
    return sum(lst) / len(lst)

# Example usage:
my_list = [3, 7, 2, 9, 5]
print("Average of elements:", average_of_elements(my_list))

def is_present(lst, num):
    return num in lst

# Example usage:
my_list = [3, 7, 2, 9, 5]
number_to_check = 7
print(f"Is {number_to_check} present in the list? {is_present(my_list, number_to_check)}")

def find_duplicates(lst):
    counts = {}
    duplicates = []
    for item in lst:
        if item in counts:
            counts[item] += 1
            if counts[item] == 2:
                duplicates.append(item)
        else:
            counts[item] = 1
    return duplicates

# Example usage:
my_list = [3, 7, 2, 9, 5, 7, 3, 2, 7]
print("Duplicates:", find_duplicates(my_list))
