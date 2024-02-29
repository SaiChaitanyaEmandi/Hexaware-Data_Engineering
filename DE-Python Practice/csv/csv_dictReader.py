import csv
file = open('C:/Users/saich/Desktop/DE-Python/csv/Employees.csv', 'r' )
reader = csv.DictReader(file)
for row in reader:
    print(row)