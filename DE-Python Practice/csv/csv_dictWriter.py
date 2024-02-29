import csv

data =[{'Name': 'Bob', 'M1 score': 75, 'M2 score': 60},
       {'Name': 'Rose', 'M1 score': 96, 'M2 score': 80},
       {'Name': 'Harry', 'M1 score': 65, 'M2 score': 71}]

filename = 'csv/student_scores.csv'
fieldnames = ['Name', 'M1 score', 'M2 score']

with open(filename, 'w', newline='') as file:
    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(data)
    
