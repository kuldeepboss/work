import re

def validate_password(password):
    if 6 <= len(password) <= 16:
        if re.search("[a-z]", password) and re.search("[A-Z]", password):
            if re.search("[0-9]", password):
                if re.search("[!@#$%^&*()_+{}\[\]:;<>,.?~\-]", password):
                    print("Valid password.")
                    return
    print("Invalid password.")

def main():
    password = input("Enter your password: ")
    validate_password(password)

if __name__ == "__main__":
    main()
