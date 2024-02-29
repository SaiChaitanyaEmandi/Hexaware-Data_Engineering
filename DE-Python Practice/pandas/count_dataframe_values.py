import pandas as pd
import numpy as np

NaN = np.nan
dataframe = pd.DataFrame({'Name': ['Shobhit', 'Vaibhav',
                                'Vimal', 'Sourabh',
                                'Rahul', 'Shobhit'],
                        'Physics': [11, 12, 13, 14, NaN, 11],
                        'Chemistry': [10, 14, NaN, 18, 20, 10],
                        'Math': [13, 10, 15, NaN, NaN, 13]})

print("Count of students whose physics marks are greater than 11: ", dataframe[dataframe['Physics'] > 11]['Name'].count())
print(dataframe[dataframe['Physics'] > 11])

# print(dataframe.count())
# print(dataframe)


# print(dataframe.count(axis=1))
# print(dataframe.count(axis='columns'))


# print(dataframe.isnull().sum())
# print("Total null values:", dataframe.isnull().sum().sum())

# print("Count of students ->",
#       dataframe[(dataframe['Physics'] > 10) & 
#                 (dataframe['Chemistry'] > 11) & 
#                 (dataframe['Math'] > 9)]['Name'].count())
 
# print(dataframe[(dataframe['Physics'] > 10 ) &
#           (dataframe['Chemistry'] > 11 ) & 
#           (dataframe['Math'] > 9 )])
