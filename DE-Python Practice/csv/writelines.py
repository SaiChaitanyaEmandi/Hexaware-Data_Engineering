import csv

header = ['Name', 'M1 score', 'M2 score']
data = [['Alex', 62, 74], ['Brad', 89, 94], ['Joey', 56, 71]]
filename = 'csv/student_marks.csv'

with open(filename, mode='w') as file:
    for header in header:
        file.write(str(header)+', ')
    file.write('n')
    for row in data:
        for x in row:
            file.write(str(x)+', ')
        file.write('n')