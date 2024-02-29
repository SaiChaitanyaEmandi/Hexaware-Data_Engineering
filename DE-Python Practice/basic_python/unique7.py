l = [int(x) for x in input().split()]
print(l)
unique_list = list(dict.fromkeys(l))
print(unique_list)