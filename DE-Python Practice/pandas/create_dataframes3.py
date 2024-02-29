import csv
import pandas as pd

file = open('pandas/CardioGoodFitness.csv')
csv_reader = csv.reader(file)
df = pd.DataFrame([csv_reader])

for val in list(df[1]):
    print(val)