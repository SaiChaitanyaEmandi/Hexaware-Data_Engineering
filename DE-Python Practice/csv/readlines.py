file = open('C:/Users/saich/Desktop/DE-Python/csv/Employees.csv', 'r')
content = file.readlines()
header = content[:1]
rows = content[1:]
print(header)
print(rows)
