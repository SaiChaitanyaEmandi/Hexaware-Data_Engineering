import numpy as np

l = [int(x) for x in input().split()]
print(l)
x = np.array(l)
print(np.unique(x))