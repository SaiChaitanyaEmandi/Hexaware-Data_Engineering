import pandas as pd

a = pd.DataFrame()
d1 = {'id': [1, 2, 10, 12],
    'val1': ['a', 'b', 'c', 'd']}
a = pd.DataFrame(d1)

b= pd.DataFrame()
d2 = {'id': [1, 2, 9, 8],
    'val1': ['p', 'q', 'r', 's']}
b = pd.DataFrame(d2)

df = pd.merge(a, b, on='id', how='inner')

print(df)

