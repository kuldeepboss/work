def tuple_stats(input_tuple):
    if not input_tuple:
        print("Tuple is empty")
        return

    max_value = max(input_tuple)
    min_value = min(input_tuple)
    sum_value = sum(input_tuple)
    average_value = sum_value / len(input_tuple)

    print("Maximum element:", max_value)
    print("Minimum element:", min_value)
    print("Sum of elements:", sum_value)
    print("Average value:", average_value)

# Example usage:
my_tuple = (5, 10, 15, 20, 25)
tuple_stats(my_tuple)

def add_dance_form(input_tuple, new_dance_form):
    new_tuple = input_tuple + (new_dance_form,)
    return new_tuple

# Example usage:
dance_forms = ("Ballet", "Hip Hop", "Salsa", "Tango")
new_dance_form = input("Enter the new dance form: ")
updated_dance_forms = add_dance_form(dance_forms, new_dance_form)
print("Updated dance forms:", updated_dance_forms)
