## Basics

# Basic syntax

Let's go through Python's basic syntax

### 1. Statements and Indentation
Python uses indentation to denote code blocks. For example:

```python
if x > 5:
    print("x is greater than 5")
else:
    print("x is less than or equal to 5")
```

### 2. Comments
Single-line comments start with `#`, and multi-line comments use triple quotes `'''` or `"""`.

```python
# This is a single-line comment
'''
This is a multi-line comment
"""
```

### 3. Variables
Variables are used to store data. They don't need explicit declaration. For example:

```python
x = 10
name = "Vasanth"
is_valid = True
```

### 4. Data Types
Python supports various data types, including integers, floats, strings, booleans, lists, tuples, sets, and dictionaries.

```python
age = 22  # integer
height = 5.9  # float
name = "Vasanth"  # string
is_valid = True  # boolean
numbers = [1, 2, 3, 4, 5]  # list
coordinates = (10, 20)  # tuple
my_set = {1, 2, 3, 4, 5}  # set
person = {"name": "Balaji", "age": 20}  # dictionary
```

### 5. Basic Input and Output
Use `input()` to get input from the user and `print()` to display output.

```python
name = input("Enter your name: ")
print("Hello,", name)
```

### 6. Control Structures
Python has if-else statements for conditional execution and loops like `for` and `while` for iteration.

```python
if condition:
    # code block
else:
    # code block

for item in iterable:
    # code block

while condition:
    # code block
```

### 7. Functions
Functions are defined using the `def` keyword.

```python
def greet(name):
    return "Hello, " + name

result = greet("Balaji")
print(result)
```

### 8. Exception Handling
Python has `try`, `except`, `finally` blocks for error handling.

```python
try:
    # code block
except ExceptionType:
    # code block
finally:
    # code block
```

These are the basic elements of Python syntax. Understanding these will help you start writing Python code effectively.

# variables

Variables in Python are used to store data values. Unlike some other programming languages, Python does not require you to explicitly declare the data type of a variable.

### Variable Naming Rules
- Variable names can contain letters, digits, and underscores.
- Variable names cannot start with a digit.
- Variable names are case-sensitive.
- Variable names should be descriptive and follow the convention of using lowercase letters with underscores for readability (e.g., `my_variable`, `user_name`).

### Variable Assignment
Variables are assigned values using the assignment operator `=`.

```python
x = 10
name = "Vasanth"
is_valid = True
```

### Data Types
Variables can hold values of different data types:
- **Integers**: Whole numbers without decimal points.
- **Floats**: Numbers with decimal points.
- **Strings**: Ordered sequences of characters.
- **Booleans**: True or False values.

```python
age = 22
height = 5.9
name = "Balaji"
is_valid = True
```

### Dynamic Typing
Python is dynamically typed, meaning you can reassign variables to different data types.

```python
x = 10
print(x)  # Output: 10

x = "Hello"
print(x)  # Output: Hello
```

### Multiple Assignment
You can assign values to multiple variables in a single line.

```python
x, y, z = 10, 20, 30
```

### Variable Reassignment:
You can change the value of a variable at any time.

```python
x = 5
print(x)  # Output: 5

x = 7
print(x)  # Output: 7
```

working with variables is fundamental to writing Python code effectively.

# Data types

Let's delve deeper into each data types

### 1. Integer (`int`)
- Integers represent whole numbers without decimal points.
- They can be positive or negative.
- In Python, integers have unlimited precision.
- Example: `x = 5`

```python
# Integer
x = 5
print("Integer x:", x)
```

### 2. Float (`float`)
- Floats represent numbers with decimal points.
- They are approximations of real numbers.
- Example: `pi = 3.14`

```python
# Float
pi = 3.14
print("Float pi:", pi)
```

### 3. String (`str`)
- Strings represent sequences of characters.
- They can be enclosed within single quotes (`'`) or double quotes (`"`).
- Strings support various operations like concatenation, slicing, and formatting.
- Example: `name = "Vasanth"`

```python
# String
name = "Vasanth"
print("String name:", name)
```

### 4. Boolean (`bool`)
- Booleans represent truth values, either `True` or `False`.
- They are used in control structures like if-else statements and while loops.
- Example: `is_valid = True`

```python
# Boolean
is_valid = True
print("Boolean is_valid:", is_valid)
```

### 5. List (`list`)
- Lists are ordered collections of items.
- They can contain elements of different data types.
- Lists are mutable, meaning their elements can be modified after creation.
- Example: `numbers = [1, 2, 3, 4, 5]`

```python
# List
numbers = [1, 2, 3, 4, 5]
print("List numbers:", numbers)
```

### 6. Tuple (`tuple`)
- Tuples are similar to lists but immutable, meaning they cannot be modified after creation.
- They are typically used to store fixed collections of items.
- Example: `coordinates = (10, 20)`

```python
# Tuple
coordinates = (10, 20)
print("Tuple coordinates:", coordinates)
```

### 7. Set (`set`)
- Sets are unordered collections of unique items.
- They are useful for removing duplicates and performing mathematical set operations like union, intersection, and difference.
- Example: `unique_numbers = {1, 2, 3, 4, 5}`

```python
# Set
unique_numbers = {1, 2, 3, 4, 5}
print("Set unique_numbers:", unique_numbers)
```

### 8. Dictionary (`dict`)
- Dictionaries are collections of key-value pairs.
- They are unordered and mutable.
- Keys must be unique and immutable, while values can be of any data type.
- Example: `person = {'name': 'Vasanth', 'age': 20}`

```python
# Dictionary
person = {'name': 'Vasanth', 'age': 30}
print("Dictionary person:", person)
```

### 9. NoneType (`None`)
- NoneType represents the absence of a value or a null value.
- It is commonly used to indicate that a variable does not have a meaningful value.
- Example: `result = None`

```python
# NoneType
result = None
print("NoneType result:", result)
```

The characteristics and usage of each data type is essential for writing efficient and effective Python code.

# Conditionals

Let's dive into conditionals in Python

### `if` Statement
- The `if` statement is used to execute a block of code if a condition is true.
- If the condition evaluates to `True`, the code block following the `if` statement is executed.

Syntax
 
  ```python
  if condition:
      # code block executed if condition is True
  ```

Example

```python
x = 5

if x > 0:
    print("x is positive")
```
In this example, if the value of `x` is greater than `0`, the message "x is positive" will be printed.

### `if-else` Statement
- The `if-else` statement allows you to execute one block of code if a condition is true and another block if the condition is false.

Syntax

  ```python
  if condition:
      # code block executed if condition is True
  else:
      # code block executed if condition is False
  ```

Example

```python
x = -5

if x > 0:
    print("x is positive")
else:
    print("x is non-positive")
```
If the value of `x` is greater than `0`, the message "x is positive" will be printed. Otherwise, the message "x is non-positive" will be printed.

### `if-elif-else` Statement
- The `if-elif-else` statement allows you to check multiple conditions and execute different blocks of code accordingly.

Syntax 

  ```python
  if condition1:
      # code block executed if condition1 is True
  elif condition2:
      # code block executed if condition1 is False and condition2 is True
  else:
      # code block executed if both condition1 and condition2 are False
  ```

Example

```python
x = 0

if x > 0:
    print("x is positive")
elif x < 0:
    print("x is negative")
else:
    print("x is zero")
```
In this example, if `x` is greater than `0`, the message "x is positive" will be printed. If `x` is less than `0`, the message "x is negative" will be printed. If neither of these conditions is met (i.e., `x` is equal to `0`), the message "x is zero" will be printed.

### Nested Conditionals
- You can nest conditionals within each other to create more complex logic.
- This involves placing one conditional statement within another conditional statement.
- Nested conditionals can have multiple levels of indentation.

Syntax

  ```python
  if condition1:
      if condition2:
          # code block executed if both condition1 and condition2 are True
  ```

Example

```python
x = 5
y = 10

if x > 0:
    if y > 0:
        print("x and y are both positive")
    else:
        print("x is positive but y is non-positive")
```
In this example, the code inside the inner `if` statement is only executed if both `x` and `y` are positive.

These conditional statements allows you to control the flow of your program and execute specific blocks of code based on different conditions.

# Loops

Loops are essential constructs in programming that allow you to execute a block of code repeatedly. In Python, there are two main types of loops: `for` loops and `while` loops, nested loops provide a way to iterate over multiple sequences or perform complex iterations.

### 1. `for` Loop

The `for` loop is used to iterate over a sequence (such as lists, tuples, strings, or ranges) and execute a block of code for each item in the sequence.

#### Syntax:
```python
for item in sequence:
    # code block
```

#### Example:
```python
fruits = ["apple", "banana", "cherry"]

for fruit in fruits:
    print(fruit)
```

### 2. `while` Loop

The `while` loop is used to repeatedly execute a block of code as long as a condition is true.

#### Syntax:
```python
while condition:
    # code block
```

#### Example:
```python
i = 1

while i <= 5:
    print(i)
    i += 1
```

### Nested Loops

Nested loops allow you to use one loop inside another loop, providing a way to perform more complex iterations.

#### Syntax:
```python
for item1 in sequence1:
    for item2 in sequence2:
        # code block
```

#### Example:
```python
for i in range(3):
    for j in range(2):
        print(f"({i}, {j})")
```

### Loop Control Statements

Python provides several loop control statements to modify the execution of loops.

#### 1. `break` Statement

The `break` statement terminates the loop prematurely when a certain condition is met.

#### Syntax:
```python
for item in sequence:
    if condition:
        break
```

#### 2. `continue` Statement

The `continue` statement skips the rest of the code inside the loop for the current iteration and moves to the next iteration.

#### Syntax:
```python
for item in sequence:
    if condition:
        continue
```

#### 3. `else` with Loops

An `else` block can be used with loops to execute a block of code after the loop completes normally (i.e., without encountering a `break` statement).

#### Syntax:
```python
for item in sequence:
    # code block
else:
    # code block
```

#### Example:
```python
fruits = ["apple", "banana", "cherry"]

for fruit in fruits:
    if fruit == "banana":
        continue
    print(fruit)
else:
    print("No more fruits left.")
```

Using loops and loop control statements, you can write efficient and flexible code to handle repetitive tasks and complex iterations in Python.

# Exceptions

Let's explore exceptions in more detail, including examples and syntax

### What are Exceptions?

Exceptions are events that occur during the execution of a program that disrupt the normal flow of the program's instructions. These events can include errors, such as dividing by zero, attempting to access a file that doesn't exist, or trying to convert a string to an integer when the string is not a valid number.

### Handling Exceptions

In Python, you can handle exceptions using `try`, `except`, `finally`, and `else` blocks.

#### Syntax:
```python
try:
    # code block where exceptions may occur
except ExceptionType1:
    # handle ExceptionType1
except ExceptionType2:
    # handle ExceptionType2
...
except:
    # handle any other exception
else:
    # optional block executed if no exception occurs
finally:
    # optional block always executed regardless of whether an exception occurs or not
```

### Example:

```python
try:
    x = 10 / 0  # division by zero
except ZeroDivisionError:
    print("Error: Division by zero")
else:
    print("Division successful")
finally:
    print("End of try-except block")
```

#### Explanation:
- In this example, the code inside the `try` block attempts to divide `10` by `0`, which raises a `ZeroDivisionError`.
- The `except ZeroDivisionError` block catches the exception and prints an error message.
- The `else` block is executed if no exception occurs, printing "Division successful".
- The `finally` block is always executed, regardless of whether an exception occurs or not, printing "End of try-except block".

### Common Exception Types:

- **`ZeroDivisionError`**: Raised when attempting to divide by zero.
- **`TypeError`**: Raised when an operation or function is applied to an object of inappropriate type.
- **`ValueError`**: Raised when a function receives an argument of the correct type but with an inappropriate value.
- **`FileNotFoundError`**: Raised when a file or directory is requested but cannot be found.
- **`IndexError`**: Raised when trying to access an index that is out of range.
- **`KeyError`**: Raised when trying to access a key that does not exist in a dictionary.

### Raising Exceptions

You can also raise exceptions manually using the `raise` statement.

#### Syntax:
```python
raise ExceptionType("Error message")
```

### Example

```python
def sqrt(x):
    if x < 0:
        raise ValueError("Square root of negative number is not defined")
    return x ** 0.5

try:
    result = sqrt(-4)
except ValueError as e:
    print(e)
else:
    print("Square root:", result)
```

#### Explanation:
- The `sqrt` function raises a `ValueError` if the input number is negative.
- Inside the `try` block, the `sqrt` function is called with `-4` as an argument.
- The `except ValueError` block catches the raised exception and prints the error message.

Exceptions handling errors and ensuring the robustness of your Python programs. By understanding how to use them effectively, you can write more resilient and reliable code.

# Functions

Let's explore functions in Python in more detail, including examples and syntax

### Defining Functions:

You define a function in Python using the `def` keyword followed by the function name, parameters (if any), and a colon `:`. The body of the function is indented and contains the code to be executed when the function is called.

#### Syntax:
```python
def function_name(parameter1, parameter2, ...):
    # code block
    return value
```

### Example:

```python
def greet(name):
    return f"Hello, {name}!"

message = greet("Alice")
print(message)
```

#### Explanation:
- In this example, we define a function named `greet` that takes one parameter `name`.
- Inside the function, we use string formatting to create a greeting message.
- The `return` statement returns the greeting message.
- We call the `greet` function with the argument `"Alice"` and store the returned message in the variable `message`.
- Finally, we print the message.

### Function Parameters:

Functions can accept zero or more parameters. Parameters are variables that are used to pass data to the function when it is called.

#### Types of Parameters:
- **Positional Parameters**: These parameters are defined by their position in the function definition and are mandatory.
- **Keyword Parameters**: These parameters are identified by their parameter name when calling the function and have default values.
- **Variable-length Parameters**: These parameters allow you to pass a variable number of arguments to a function.

### Example:

```python
def add(a, b):
    return a + b

result = add(3, 5)
print("Sum:", result)
```

#### Explanation:
- In this example, the `add` function takes two positional parameters `a` and `b`.
- When the function is called with arguments `3` and `5`, it returns the sum of the two numbers, which is then printed.

### Function Return Values:

Functions can optionally return a value using the `return` statement. If a function does not have a return statement, it returns `None` by default.

### Example:

```python
def square(x):
    return x ** 2

result = square(4)
print("Square:", result)
```

#### Explanation:
- In this example, the `square` function takes one parameter `x`.
- It calculates the square of `x` using the exponent operator `**`.
- The result is returned using the `return` statement and stored in the variable `result`.

### Function Documentation (Docstrings):

You can add documentation to your functions using docstrings, which are string literals enclosed in triple quotes `"""`. Docstrings provide information about the purpose, usage, and behavior of the function.

### Example:

```python
def greet(name):
    """Return a greeting message."""
    return f"Hello, {name}!"

print(greet.__doc__)
```

#### Explanation:
- In this example, the `greet` function has a docstring that describes its purpose.
- The `print(greet.__doc__)` statement prints the docstring of the `greet` function.

Functions are fundamental building blocks in Python programming, allowing you to write modular, reusable code.

# Lists

Let's explore lists in Python in more detail, including examples and syntax Lists can contain elements of different data types, and the elements can be accessed and manipulated using indexing and slicing.

### Creating Lists:

You can create a list in Python by enclosing a sequence of elements within square brackets `[ ]`, separated by commas.

#### Syntax:
```python
my_list = [element1, element2, ...]
```

### Example:

```python
fruits = ["apple", "banana", "cherry", "date"]
```

#### Explanation:
- In this example, we create a list named `fruits` containing four elements: `"apple"`, `"banana"`, `"cherry"`, and `"date"`.

### Accessing Elements:

You can access elements of a list using indexing. Indexing starts from `0` for the first element and goes up to `n-1`, where `n` is the length of the list. Negative indexing is also supported, where `-1` refers to the last element, `-2` refers to the second last element, and so on.

#### Syntax:
```python
element = my_list[index]
```

### Example:

```python
print("First fruit:", fruits[0])
print("Last fruit:", fruits[-1])
```

#### Explanation:
- In this example, we use indexing to access the first and last elements of the `fruits` list.

### Slicing Lists:

You can extract a sublist (slice) from a list using slicing. Slicing allows you to specify a range of indices to extract a portion of the list.

#### Syntax:
```python
sublist = my_list[start_index:end_index]
```

### Example:

```python
print("First two fruits:", fruits[:2])
print("Last two fruits:", fruits[-2:])
```

#### Explanation:
- In this example, we use slicing to extract the first two and last two fruits from the `fruits` list.

### Modifying Lists:

Lists in Python are mutable, meaning you can modify the elements of a list after it has been created. You can change, add, or remove elements from a list.

#### Example:

```python
fruits[1] = "grape"
fruits.append("orange")
fruits.remove("cherry")
```

#### Explanation:
- In this example, we modify the `fruits` list by replacing the second element with `"grape"`, adding `"orange"` to the end of the list using the `append()` method, and removing `"cherry"` from the list using the `remove()` method.

### List Operations and Methods:

Python provides various operations and methods to work with lists, such as concatenation (`+`), repetition (`*`), length (`len()`), sorting (`sorted()`), and more.

### Example:

```python
numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]

print("Length of numbers:", len(numbers))
print("Sorted numbers:", sorted(numbers))
```

#### Explanation:
- In this example, we use the `len()` function to find the length of the `numbers` list and the `sorted()` function to sort the elements of the list.

Lists are versatile data structures in Python that allow you to store and manipulate collections of items efficiently. Understanding how to create, access, modify, and work with lists is essential for writing effective Python code.

# Tuples

Tuples in Python are ordered collections of items, similar to lists. However, unlike lists, tuples are immutable, meaning their elements cannot be changed or modified after the tuple is created. Tuples are commonly used for representing fixed collections of items, such as coordinates, database records, or function return values. Let's explore tuples in Python in more detail, including examples and syntax:

### Creating Tuples:

You can create a tuple in Python by enclosing a sequence of elements within parentheses `( )`, separated by commas.

#### Syntax:
```python
my_tuple = (element1, element2, ...)
```

### Example:

```python
coordinates = (3, 4)
```

#### Explanation:
- In this example, we create a tuple named `coordinates` containing two elements: `3` and `4`.

### Accessing Elements:

You can access elements of a tuple using indexing, similar to lists. Indexing starts from `0` for the first element and goes up to `n-1`, where `n` is the length of the tuple. Negative indexing is also supported.

#### Syntax:
```python
element = my_tuple[index]
```

### Example:

```python
print("First coordinate:", coordinates[0])
print("Second coordinate:", coordinates[1])
```

#### Explanation:
- In this example, we use indexing to access the first and second elements of the `coordinates` tuple.

### Tuple Packing and Unpacking:

Tuple packing is the process of packing multiple values into a single tuple. Tuple unpacking is the process of extracting values from a tuple into individual variables.

#### Example:

```python
person = ("John", 30, "New York")
name, age, city = person

print("Name:", name)
print("Age:", age)
print("City:", city)
```

#### Explanation:
- In this example, we create a tuple named `person` containing three elements: `"John"`, `30`, and `"New York"`.
- We then unpack the tuple into three variables: `name`, `age`, and `city`.
- Finally, we print the values of these variables.

### Immutable Nature:

Tuples are immutable, meaning once a tuple is created, its elements cannot be changed or modified.

#### Example:

```python
coordinates[0] = 5  # Raises TypeError: 'tuple' object does not support item assignment
```

#### Explanation:
- In this example, we attempt to modify the first element of the `coordinates` tuple, which raises a `TypeError` because tuples do not support item assignment.

### When to Use Tuples:

- Tuples are often used when you want to store a fixed collection of items that should not be changed.
- They are useful for representing data that should remain constant throughout the execution of a program, such as configuration settings or database records.

Tuples are lightweight data structures in Python that provide an efficient way to store and manage fixed collections of items. Understanding how to create, access, and use tuples is important for writing clear and maintainable Python code.

# Sets

Sets in Python are unordered collections of unique elements. They are commonly used for tasks that involve membership testing, removing duplicates from a sequence, and performing mathematical set operations such as union, intersection, difference, and symmetric difference. Sets are mutable, meaning you can add or remove elements from a set after it has been created. Let's explore sets in Python in more detail, including examples and syntax:

### Creating Sets:

You can create a set in Python by enclosing a sequence of elements within curly braces `{ }`, separated by commas.

#### Syntax:
```python
my_set = {element1, element2, ...}
```

### Example:

```python
fruits = {"apple", "banana", "cherry"}
```

#### Explanation:
- In this example, we create a set named `fruits` containing three unique elements: `"apple"`, `"banana"`, and `"cherry"`.

### Accessing Elements:

You cannot access elements of a set using indexing, as sets are unordered collections. However, you can check for membership using the `in` keyword.

#### Example:

```python
print("Is 'banana' in fruits set?", "banana" in fruits)
```

#### Explanation:
- In this example, we check if the element `"banana"` is present in the `fruits` set using the `in` keyword.

### Adding and Removing Elements:

You can add elements to a set using the `add()` method and remove elements using the `remove()` or `discard()` methods.

#### Example:

```python
fruits.add("orange")
fruits.remove("banana")
```

#### Explanation:
- In this example, we add the element `"orange"` to the `fruits` set using the `add()` method.
- We then remove the element `"banana"` from the set using the `remove()` method.

### Set Operations:

Python provides various set operations to perform common set tasks, such as union, intersection, difference, and symmetric difference.

#### Example:

```python
set1 = {1, 2, 3, 4}
set2 = {3, 4, 5, 6}

union_set = set1.union(set2)
intersection_set = set1.intersection(set2)
difference_set = set1.difference(set2)
symmetric_difference_set = set1.symmetric_difference(set2)

print("Union set:", union_set)
print("Intersection set:", intersection_set)
print("Difference set:", difference_set)
print("Symmetric difference set:", symmetric_difference_set)
```

#### Explanation:
- In this example, we perform various set operations between two sets `set1` and `set2`.
- The `union()` method returns a set containing all unique elements present in either `set1` or `set2`.
- The `intersection()` method returns a set containing all elements present in both `set1` and `set2`.
- The `difference()` method returns a set containing elements present in `set1` but not in `set2`.
- The `symmetric_difference()` method returns a set containing elements present in either `set1` or `set2`, but not in both.

Sets are efficient data structures in Python for tasks involving unique elements and set operations. Understanding how to create, manipulate, and perform operations on sets is essential for writing efficient and concise Python code.

# Dictionaries

Dictionaries in Python are unordered collections of key-value pairs. They are used to store and retrieve data in a flexible and efficient manner. Dictionaries are mutable, meaning you can add, modify, and delete key-value pairs after the dictionary is created. Keys within a dictionary must be unique and immutable, while values can be of any data type and mutable. Let's explore dictionaries in Python in more detail, including examples and syntax:

### Creating Dictionaries:

You can create a dictionary in Python by enclosing a comma-separated list of key-value pairs within curly braces `{ }`, with each key-value pair separated by a colon `:`.

#### Syntax:
```python
my_dict = {key1: value1, key2: value2, ...}
```

### Example:

```python
student = {"name": "Alice", "age": 20, "major": "Computer Science"}
```

#### Explanation:
- In this example, we create a dictionary named `student` containing three key-value pairs: `"name": "Alice"`, `"age": 20`, and `"major": "Computer Science"`.

### Accessing Elements:

You can access the value associated with a specific key in a dictionary by using the key within square brackets `[ ]`.

#### Example:

```python
print("Student name:", student["name"])
print("Student age:", student["age"])
```

#### Explanation:
- In this example, we access the values associated with the keys `"name"` and `"age"` in the `student` dictionary.

### Adding and Modifying Elements:

You can add new key-value pairs to a dictionary or modify existing key-value pairs by assigning a value to a key.

#### Example:

```python
student["grade"] = "A"
student["age"] = 21
```

#### Explanation:
- In this example, we add a new key-value pair `"grade": "A"` to the `student` dictionary and modify the value associated with the key `"age"`.

### Removing Elements:

You can remove key-value pairs from a dictionary using the `del` keyword or the `pop()` method.

#### Example:

```python
del student["major"]
major = student.pop("major", "Unknown")
```

#### Explanation:
- In this example, we remove the key-value pair `"major": "Computer Science"` from the `student` dictionary using the `del` keyword.
- We also use the `pop()` method to remove the key-value pair `"major": "Computer Science"` and store the value in the variable `major`.

### Dictionary Operations and Methods:

Python provides various operations and methods to work with dictionaries, such as accessing keys and values, iterating over items, checking membership, merging dictionaries, and more.

### Example:

```python
print("Keys:", student.keys())
print("Values:", student.values())
print("Items:", student.items())

for key, value in student.items():
    print(key, ":", value)

print("Is 'age' in student dictionary?", "age" in student)

student.update({"grade": "A", "status": "active"})
```

#### Explanation:
- In this example, we use dictionary methods such as `keys()`, `values()`, and `items()` to retrieve keys, values, and key-value pairs from the `student` dictionary.
- We iterate over the items in the dictionary using a `for` loop and print each key-value pair.
- We check for the presence of the key `"age"` in the dictionary using the `in` keyword.
- We merge additional key-value pairs into the dictionary using the `update()` method.

Dictionaries are powerful data structures in Python for storing and retrieving key-value pairs efficiently. Understanding how to create, access, modify, and use dictionaries is essential for writing effective and concise Python code.

[Back](../python.md) | [Code](../../code.md)