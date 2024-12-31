# largest among three numbers
n1 = int(input("enter the num1:"))
n2 = int(input("enter the num2:"))
n3 = int(input("enter the num3:"))
if n1 > n2 and n1 > n3:
    print("num1 is largest")
elif n2 > n1 and n2 > n3:
    print("num2 is largest")
else:
    print("num3 is largest")

# program to print prime numbers within an interval
# only divides by one and itself
def is_prime(num):
    for i in range(2,int(num ** 0.5)+1):
        if num % i == 0:
            return False
    return True
def prime_no(start,end):
    for num in range(start,end + 1):
        if is_prime(num):
            print(num)

start = int(input("enter the start value: "))
end = int(input("enter the end value: "))
prime_no(start,end)

# program to print random number
import random
num = random.randint(1,6)
print(num)

# program to convert celsius to fahrenheit
# 0 degrees = 32 fahrenheit
# F = (C * 9/5) + 32
celsius = float(input("enter the temperature in celsius: "))
f = ((celsius * 9/5)) + 32
print(f"The {celsius} celsius in fahrenheit is {f}")

# factorial of a number
num = int(input("enter the number: "))
if num < 0:
    print("invalid")
fact = 1
for i in range(1,num+1):
    fact *= i
print("the factorial of the given number is: ",fact)

# using recursion:
def fact(a):
    if a == 0:
        return 1
    else:
        return (a * fact(a-1))
num = int(input("enter the number here: "))
result = fact(num)
print("the factorial of the given number is:",result)

a=int(input("enter a number"))
b=int(input("enter a number"))
c=int(input("enter a number"))
for i in range(b,c+1):
    print(a*i)

# multiplication table
t = int(input("enter the table:"))
i = 1
while i<=10:
    print(t,"*",i,"=",t*i)
    i += 1

# fibonacii series
n = int(input("enter the n value:"))
a = 0
b = 1
print(a)
print(b)
for i in range(2,n):
    c = a + b
    a = b
    b = c
    print(c)

# armstrong number
# 370 153 9474 371 407 8208
n = int(input("enter the number:"))
l = len(str(n))
sum = 0
temp = n
while temp > 0:
    ld = temp % 10
    sum += ld ** l
    temp = temp // 10
if sum == n:
    print("armstrong number")
else:
    print("not armstrong")

# ASCII value
char = str(input("enter a character: "))
print(ord(char))

#
str1 = 'hello'
str2 = 'manl'
cs = set(str1) & set(str2)
print(list(cs))
















