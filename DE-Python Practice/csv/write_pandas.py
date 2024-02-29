import pandas as pd

header = ['Name', 'M1 Score', 'M2 Score']
data = [['Siri', 62, 80], ['Manasa', 45, 56], ['veda', 85, 98], ['varshini', 88, 90]]
data = pd.DataFrame(data, columns=header)
data.to_csv('csv/scores.csv', index=False)
