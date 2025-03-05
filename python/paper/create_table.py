import sqlite3

# Connect to SQLite database (creates 'student.db' if not exists)
conn = sqlite3.connect("student.db")
cursor = conn.cursor()

# Create student table (if not exists)
cursor.execute('''
    CREATE TABLE IF NOT EXISTS student (
        grno INTEGER PRIMARY KEY,
        stu_name TEXT NOT NULL,
        subject1 INTEGER NOT NULL,
        subject2 INTEGER NOT NULL,
        subject3 INTEGER NOT NULL,
        total INTEGER NOT NULL
    )
''')

conn.commit()
conn.close()

print("Student table created successfully!")