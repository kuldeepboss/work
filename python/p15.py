def create_class_dictionary():
    class_teacher_dict = {
        'Math': 'Mr. Smith',
        'Science': 'Mrs. Johnson',
        'History': 'Mr. Brown'
    }
    return class_teacher_dict

def delete_class(class_dict, class_name):
    if class_name in class_dict:
        del class_dict[class_name]
        print(f"Class '{class_name}' and its teacher's name have been deleted.")
    else:
        print(f"Class '{class_name}' not found in the dictionary.")

# Example usage:
class_teacher_dict = create_class_dictionary()
print("Original dictionary:", class_teacher_dict)
delete_class(class_teacher_dict, 'Science')
print("Updated dictionary:", class_teacher_dict)

def create_country_dictionary():
    country_dict = {}
    for _ in range(5):
        country = input("Enter country name: ")
        capital = input("Enter capital: ")
        country_dict[country] = capital
    return country_dict

# Example usage:
country_dict = create_country_dictionary()
print("Country dictionary:", country_dict)

def create_monument_dictionary():
    monument_dict = {
        'Eiffel Tower': 'Paris',
        'Taj Mahal': 'Agra',
        'Statue of Liberty': 'New York'
    }
    return monument_dict

def check_and_add_monument(monument_dict, monument, location):
    if monument not in monument_dict:
        monument_dict[monument] = location
        print(f"Added '{monument}' to the dictionary with location '{location}'.")
    else:
        print(f"'{monument}' already exists in the dictionary.")

# Example usage:
monument_dict = create_monument_dictionary()
print("Original dictionary:", monument_dict)
check_and_add_monument(monument_dict, 'Great Wall of China', 'China')
print("Updated dictionary:", monument_dict)

def create_student_dictionary():
    student_dict = {}
    for _ in range(5):
        roll_number = input("Enter roll number: ")
        name = input("Enter name: ")
        marks = [int(input(f"Enter marks for subject {i + 1}: ")) for i in range(3)]
        student_dict[roll_number] = {'name': name, 'marks': marks}
    return student_dict

# Example usage:
student_dict = create_student_dictionary()
print("Student dictionary:", student_dict)

def create_batsman_dictionary():
    batsman_dict = {}
    for _ in range(5):
        name = input("Enter batsman name: ")
        single_runs = int(input("Enter single runs: "))
        fours = int(input("Enter number of fours: "))
        sixes = int(input("Enter number of sixes: "))
        total_score = single_runs + (4 * fours) + (6 * sixes)
        batsman_dict[name] = {'single_runs': single_runs, 'fours': fours, 'sixes': sixes, 'total_score': total_score}
    return batsman_dict

# Example usage:
batsman_dict = create_batsman_dictionary()
print("Batsman dictionary:", batsman_dict)
