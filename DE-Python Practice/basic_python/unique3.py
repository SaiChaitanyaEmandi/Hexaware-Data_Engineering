import operator as op

l = [int(x) for x in input().split()]
print(l)
unique_list = []
for x in l:
    if op.countOf(unique_list, x) == 0:
        unique_list.append(x)
print(unique_list)