# open file and read data
f = open("abc","r")
content = f.read()
print(content)
f.close()

# write data (when you write the data into the file it will delete the old data and replaces
# with the new data)

f = open("abc","w")
f.write("python is easy and fun and good")

#append (this mode restores the previous data)

f = open("sample.txt","w")
f.write("iam vignan")

f = open("sample.txt","a")
f.write("iam mani")

# copying data from one location to another
f = open("sample","r")
f1 = open("sample.txt","w")
for data in f:
    f1.write(data)

#checking if file exists
import os
if os.path.exists("sample"):
    print("file exists")
else:
    print("file does't exists")




