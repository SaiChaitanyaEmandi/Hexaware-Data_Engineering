import pandas as pd

l = [int(x) for x in input().split()]
print(l)
unique_list = pd.Series(l).drop_duplicates().to_list()
print(unique_list)