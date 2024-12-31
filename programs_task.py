# Write a program to print "Hello, Python!".

print("Hello, Python!")

# Write a program to calculate the area of a circle given its radius.

radius = float(input("enter the radius: "))
area = 3.14 * radius * radius
print(area)

# Write a program to swap two numbers without using a temporary variable.

a = int(input("enter the first number: "))
b = int(input("enter the second number: "))
print(f"the first_no is {a} and second_no is {b}")
temp = a
a = b
b =temp
print(f"the result of swap is {a} and {b}")

# or

a = int(input("enter the first number: "))
b = int(input("enter the second number: "))
a,b = b,a
print(f"the result is {a} and {b}")

# Write a program to check if a number is positive, negative, or zero.

num = int(input("enter a number:"))
if num > 0:
    print(f"{num} is positive number")
elif num < 0:
    print(f"{num} is negative number")
else:
    print(f"{num} is zero")

# Write a program to print all odd numbers from 1 to n.
# A number is odd if it is not divisible by 2.
n = int(input("enter the value of n:"))
for i in range(1,n+1):
    if i % 2 == 1:
        print(i,end=" ")

# Write a program to check if a number is prime or not.
# A prime number has exactly two distinct positive divisors: 1 and itself.

num = int(input("enter the number: "))
if num < 0:
    print("invalid number")
elif num % 2 == 0:
    print("not prime")
else:
    print("prime number")

# Write a program to find the factorial of a number using a loop.

num = int(input("enter a number: "))
fact = 1
for i in range(1,num + 1):
    fact = fact * i
print(fact)

# Write a program to display the first 10 terms of the Fibonacci series.

num = int(input("Enter the number of terms: "))
a, b = 0, 1
print("Fibonacci series:", a, b, end=" ")
for i in range(2, num):
    a, b = b, a + b
    print(b, end=" ")

# Write a program to find the second largest number in a list.

n = int(input("Enter the n value: "))
lst = []
for i in range(n):
    value = int(input("Enter the number: "))
    lst.append(value)
if len(lst) < 2:
    print("Not enough elements to determine second largest.")
else:
    max1 = max(lst)
    lst.remove(max1)
    max2 = max(lst)
    print("The second largest number is:", max2)
# or
# n = int(input("enter the n value"))
# lst = []
# for i in range(n):
#     value = int(input("enter the number to be passed into the list: "))
#     lst.append(value)
# print("the list is :",lst)
# num1 = lst[0]
# for num in lst:
#     if num > num1:
#         num1 = num
# print(num1)

# Write a program to reverse a string using slicing.

string = str(input("enter the string: "))
print(string[::-1])

# or

string = input("enter the string: ")
reversed_string = ""
for char in string:
    reversed_string = char + reversed_string
print(reversed_string)


# Write a program to count how many times a specific element appears in a list.

n = int(input("enter the n value: "))
lst = []
for i in range(n):
    value = int(input("enter the value: "))
    lst.append(value)
v = int(input("enter the value to be couned"))
print(lst.count(v))

# Write a program to concatenate two strings without using + operator.

str1 = input("Enter the first string: ")
str2 = input("Enter the second string: ")
concatenated_string = ""
for char in str1:
    concatenated_string += char
for char in str2:
    concatenated_string += char
print("The concatenated string is:", concatenated_string)

# Write a program to find the longest word in a given sentence.

sentence = input("enter the sentence: ")
words = sentence.split()
result = 0
for i in words:
    if len(i) > result:
        result = len(i)
print(i,result)

# Write a function to calculate the sum of all elements in a list.

def calculate_sum(numbers):
    total = 0
    for number in numbers:
        total += number
    return total
numbers_list = [1, 2, 3, 4, 5]
result = calculate_sum(numbers_list)
print("The sum of all elements in the list is:",result)


# Write a function to check if a string is a palindrome.

string = input("enter the string")
reversed_string = string[::-1]
if string == reversed_string:
    print("palindrome")
else:
    print("not palindrome")

# Write a function to find the maximum and minimum in a list.

lst = [5,8,2,1,9]
max_value = max(lst)
min_value = min(lst)
print("maximum_value is",max_value,"and minimum_value is",min_value)

# square root program
# sol1(using exponentiation)
n = int(input("enter the number: "))
sr = n ** (1/2)
print(f"the square root of the {n} is {sr}")
# sol2(using math module)
import math
n = int(input("enter the number: "))
print(math.sqrt(n))

#program to convert kilometers to miles
# 1km = 0.621371
km = float(input("enter the km value"))
miles = 0.621371 * km
print(f"the {km} km in miles will be {miles}")

# program to check leap year or not
yr = int(input("enter the year: "))
if (yr % 4 == 0 and yr % 100 != 0) or (yr % 400 == 0):
    print("leap year")
else:
    print("not leap year")

#sum of elements in a list
lst = [5,8,2,1,9]
print(sum(lst))
