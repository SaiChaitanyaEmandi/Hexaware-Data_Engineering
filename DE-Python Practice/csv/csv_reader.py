import csv
rows=[]
file = open('C:/Users/saich/Desktop/DE-Python/csv/Employees.csv', 'r' )
csvReader = csv.reader(file)
header = next(csvReader)
for row in csvReader:
    rows.append(row)
print(header)
print(rows)

