import numpy as np

print(np.linspace(1,10))
print()

print(np.linspace(1,10,7))
print()

print(np.linspace(1,10,7, endpoint=False))
print()

samples, spacing = np.linspace(1, 10, 20, endpoint=True, retstep=True)
print(spacing)

samples1, spacing1 = np.linspace(1, 10, 20, endpoint=False, retstep=True)
print(spacing1)
