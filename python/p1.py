a = int(input("Enter the first number: "))
b = int(input("Enter the second number: "))

print("Before swapping:")
print("First number:", a)
print("Second number:", b)

a = a + b
b = a - b
a = a - b

print("After swapping:")
print("First number:", a)
print("Second number:", b)
