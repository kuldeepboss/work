import sqlite3

conn = sqlite3.connect("student.db")
cursor = conn.cursor()

cursor.execute("SELECT * FROM student")
rows = cursor.fetchall()

for row in rows:
    print(row)

conn.close()
