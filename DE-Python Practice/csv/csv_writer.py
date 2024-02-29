import csv

header = ['Name', 'M1_Score', 'M2_Score']
data = [['Ajay', 68, 79], ['Teja', 89, 66], ['Ravi', 90, 72]]
filename = 'csv/marks.csv'

with open(filename, 'w', newline='') as file:
    csvWriter = csv.writer(file)
    csvWriter.writerow(header)
    csvWriter.writerow(data)

