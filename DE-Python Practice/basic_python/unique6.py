from collections import Counter

l = [int(x) for x in input().split()]
print(l)
print(*Counter(l))