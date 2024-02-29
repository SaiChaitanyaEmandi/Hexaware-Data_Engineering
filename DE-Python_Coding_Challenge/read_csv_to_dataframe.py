import pandas as pd

header = ['Name', 'Age', 'Salary']
data = [['Ajay', 22, 30000], ['Rohit', 25, 36000], ['Ravi', 35, 40000], ['Harish', 28, 42000]]

df = pd.DataFrame(data, columns=header)
print(df)