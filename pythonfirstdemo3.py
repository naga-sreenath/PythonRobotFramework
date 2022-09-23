
# if loop
greeting="Good Morning"

if greeting== "Morning":
    print("condition matches")
    print("second line")
else:
    print("Condition do not match")
print("if else condition code is completed")

# for loop

obj=[2,3,5,7,9]
for i in obj:
    print(i)                               # 2,3,5,7,9


# sum of 5 natural numbers - 1+2+3+4+5 =15
totalsum=0
for j in range(1,6):               # range (i,j) means it will iterate from i to j-1
    totalsum= totalsum+j
    print(j)                      # 1,2,3,4,5
    print(totalsum)

# sum of numbers jumping on 2
for k in range(1, 10, 5):
    print(k)                         # 1,6

# skipping first index
for m in range(10):
    print(m)                      #1,2,3,4,5,6,7,8,9


# while loop

it=4
while it>1 :
    if it!=3 :
        print(it)
    it=it-1                     # 4,2
print("while loop execution is done")
    

