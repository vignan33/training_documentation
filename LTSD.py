my_list = [1, 2, 3, 4, 5]
print(my_list[0])
print(my_list[-1])
my_list.append(6)
my_list.insert(2, 2.5)
my_list.remove(3)
popped_item = my_list.pop()
print(my_list[1:4])
print(len(my_list))

dict1 = {"name": "vignan", "age": 23, "city": "Hyd"}
print(dict1["name"])
dict1["age"] = 26
dict1["city"] = "pune"
del dict1["city"]
removed_value = dict1.pop("age")

my_set1= {1, 2, 3, 4}
my_set2 = {3, 4, 5, 6}
union_set = my_set1 | my_set2
intersection_set = my_set1 & my_set2
difference_set = my_set1 - my_set2

my_tuple = (1, 2, 3, 4)
print(my_tuple[0])
print(my_tuple[-1])


#
# Make a copy of a list with the : operator

thislist = ["apple", "banana", "cherry"]
mylist = thislist[:]
print(mylist)

# list comprehension
new_list = [x for x in fruits]

# this_list.sort(key=str.lower)
# for sorting the list based on the alphabets
