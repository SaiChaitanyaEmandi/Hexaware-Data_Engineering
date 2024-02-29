from functools import reduce

l = [int(x) for x in input().split()]
ans = reduce(lambda re, x: re+[x] if x not in re else re, l, [])
print(ans)