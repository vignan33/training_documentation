# arithmetic operators
import keyword

x = 10
y = 3
print(x + y) # Output: 13
print(x - y) # Output: 7
print(x * y) # Output: 30
print(x % y) # Output: 1 (remainder)
print(x // y) # Output: 3 (quotient)
print(x ** y) # Output: 1000
print(x / y) # Output: 3.333

# comparision operators

x = 10
y = 20
print(x > y) # Output: False
print(x <= y) # Output: True
print(x >= y) # Output: False
print(x != y) # Output: True
print(x < y) # Output: True
print(x == 10) # Output: True

# logical operators

x = 10
y = 5
print(x > 5 and y > 3)  # Output: True
print(x > 15 or y < 10) # Output: True
print(not(x > 5))       # Output: False

# bitwise operators

x = 4 # 0100 in binary
y = 5 # 0101 in binary
print(x & y) # Output: 4 (0100)
print(x | y) # Output: 5 (0101)
print(x << 1) # Output: 8 (shifts left by 1)
print(x >> 1) # Output: 2 (shifts right by 1)

# assignment operators

x = 5
x += 2
print(x)  # Output: 7
x -= 2
print(x)  # Output: 5
x *= 3
print(x)  # Output: 15
x /= 2
print(x)  # Output: 7.5
x %= 2
print(x)  # Output: 1

# membership operators

x = [1, 2, 3]
print(2 in x)       # Output: True
print(4 not in x)   # Output: True

#identity operators

x = [1, 2, 3]
y = x
z = [1, 2, 3]
print(x is y)    # Output: True (same object)
print(x is z)    # Output: False (different objects)


