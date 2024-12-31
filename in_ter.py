n = int(input("enter  the value: "))
a = 0
b = 1
print(a)
print(b)
for i in range(2,n):
    c = a + b
    a = b
    b = c
    print(c)

# List of tuples
tuple_list = [(1, 3), (2, 1), (4, 2), (3, 5)]

# Sorting the list of tuples based on the second element
sorted_tuples = sorted(tuple_list, key=lambda x: x[1])

# Print the sorted list
print(sorted_tuples)
