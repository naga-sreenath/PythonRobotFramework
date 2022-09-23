Values=[1,2,"rahul",4,5]

# List is a datatype that allows multiplle values with  different data types
print(Values)

print(Values[0])      # 1
print(Values[1])       # 2
print(Values[2])        # rahul
print(Values[-1])       #5 It will give the last index value
print(Values[1:3])      #[2 rahul]  , it will print the sub list valuess based on index given

Values.insert(3,"shetty")
print(Values)               # Inserting [1, 2, 'rahul', 'shetty', 4, 5]

Values.append("End")
print(Values)               # Appending at the end [1, 2, 'rahul', 'shetty', 4, 5, 'End']

Values[2]="RAHUL"
print(Values)               # Updating  [1, 2, 'RAHUL', 'shetty', 4, 5, 'End']

del Values[0]
print(Values)               #  Deleting [2, 'RAHUL', 'shetty', 4, 5, 'End']


# Tuple - Works same as LIST data type but immutable, cannot be changed once declared

values=(1,2,"rahul", 4.5)
print(values)                 # (1, 2, 'rahul', 4.5)

# values[2]="RAHUL"
# print(values)                  # TypeError: 'tuple' object does not support item assignment


# Dictionary - It acts as Hashmap in java, contains key value pairs

dc ={"a":2, 4:"bcd","c": "Hello world"}
print(dc)
print(dc["a"])                    # 2
print(dc[4])                     # bcd


# Creating Dictionary at run time

dict={}
dict ["firstname"]="rahul"
dict["lastname"]="shetty"
dict["gender"]="Male"
print(dict)                     # {'firstname': 'rahul', 'lastname': 'shetty','gender':'Male}