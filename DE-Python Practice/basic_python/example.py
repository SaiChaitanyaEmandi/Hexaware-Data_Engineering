# import pandas as pd
# import numpy as np

# ser = pd.Series()
# print(ser)

# data = np.array([1,2,3,4,5])
# print(data)

# ser = pd.Series(data)
# print(ser)

# df = pd.DataFrame()
# print(df)

# list = [1,2,3,4,5]
# df = df.__dataframe__(list)
# print(df)

import pandas as pd
header = ['Name', 'M1 Score', 'M2 Score']
data = [['Alex', 62, 80], ['Brad', 45, 56], ['Joey', 85, 98]]
data = pd.DataFrame(data, columns=header)
data.to_csv('Stu_data.csv', index=False)