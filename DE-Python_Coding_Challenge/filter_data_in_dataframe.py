import numpy as np
import pandas as pd

NaN = np.nan
employees = pd.DataFrame({'Name': ['Rohit', 'Vijay',
                                'Hari', 'Ravi',
                                'Suresh'],
                        'Age': [21, 24, 28, 30, NaN],
                        'Salary': [10000, 14000, NaN, 18000, NaN]})

print(employees[employees['Salary'] > 13000])

print()

print(employees[employees['Age'] > 25])
