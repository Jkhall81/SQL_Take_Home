import sqlite3

# connect to db
conn = sqlite3.connect('Database.db')

# create cursor
cursor = conn.cursor()

# get PersonID from user
person_id = input('Enter PersonID: ')

# SQL statement
cursor.execute("""
    SELECT "Department Name: " || d.DepartmentName AS "Formatted Department Name"
    From Department AS d
    Where d.DepartmentID = (SELECT DepartmentID FROM Person WHERE PersonID = ?)
""", (person_id,))

# get result
result = cursor.fetchone()

if result:
    formatted_department_name = result[0]
    print(formatted_department_name)
else:
    print("Person not found")

# close her down
cursor.close()
conn.close()
