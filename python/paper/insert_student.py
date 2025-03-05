import sqlite3

# Connect to SQLite database (persistent file)
conn = sqlite3.connect("student.db")
cursor = conn.cursor()

# Accept user input
grno = int(input("Enter GR No: "))
stu_name = input("Enter Student Name: ")
subject1 = int(input("Enter Subject 1 Marks: "))
subject2 = int(input("Enter Subject 2 Marks: "))
subject3 = int(input("Enter Subject 3 Marks: "))

# Calculate total marks
total = subject1 + subject2 + subject3

# Insert data into student table
cursor.execute("INSERT INTO student (grno, stu_name, subject1, subject2, subject3, total) VALUES (?, ?, ?, ?, ?, ?)",
(grno, stu_name, subject1, subject2, subject3, total))

# Commit and close
conn.commit()
conn.close()

print("Record inserted successfully!")
