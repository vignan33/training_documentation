# printing name 100 times
name = input("enter the name: ")
for i in range(100):
    print(name)

# even or  odd number
num = int(input("enter the number: "))
if num % 2 == 0:
    print("even number")
else:
    print("odd number")

# multiplication table
n = int(input("enter the number: "))
for i in range(1,11):
    print(n,"*",i,"=",n * i)

# min and max value from two lists

l1 = [1,2,3]
l2 = [4,5,6]
l3 = l1 + l2
print(l3)
max_value = max(l3)
min_value = min(l3)
print("maximum value is",max_value)
print("manimum value is",min_value)

# largest of 3 numbers
a = int(input("enter a value: "))
b = int(input("enter b value: "))
c = int(input("enter c value: "))
if a >= b and a >= c:
    print(a,"is largest")
elif b >= a and b >= c:
    print(b,"is largest")
else:
    print(c,"is largest")

#
#
lst = [2,6,8,79,23,45,34]
# accessing the list items
for i in lst:
    print(i)

# change the list items
lst[3] = 100
print(lst)

#replace the values in a list
lst[3:5] = [13,13]
print(lst)

# perform append operations
lst.append(1000)
lst.append(1090)
lst.append(200)
print(lst)

# insert new items in the list
lst.insert(0,505)
print(lst)

# extend the items to a list
lst2 = [1,2,3,4,5]
lst.extend(lst2)
print(lst)

# remove an item in the list
lst.remove(505)
lst.remove(1000)
lst.remove(1090)
lst.remove(13)
print(lst)

# clearing the entire list

lst.clear()
print(lst)

# program to find min and max from a list
lst = [45,7]
min_value = min(lst)
max_value = max(lst)
print("minimum = ",min_value)
print("maximum = ",max_value)


def inter(l1,l2):
    return list(set(l1) & set(l2))
l1 = [1,2,3]
l2 = [4,2,4]
print(inter(l1,l2))