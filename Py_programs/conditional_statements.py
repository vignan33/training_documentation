# if statement

temperature = 30
if temperature > 25:
    print("High Temp")

# if-else statement

age = 17
if age >= 18:
    print("eligible to vote")
else:
    print("not eligible to vote")

# if-elif-else statement

marks = 85
if marks >= 90:
    print("Grade A")
elif marks >= 75:
    print("Grade B")
elif marks >= 50:
    print("Grade C")
else:
    print("Fail")

#nested if statements

age = 20
income = 30000
if age >= 18:
    if income >= 25000:
        print("You are eligible for a bank account")

#ternary operator

age = 16
status = "Adult" if age >= 18 else "Minor"
print(status)


