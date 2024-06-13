# Advance

## Comprehensions

Comprehensions in Python provide a concise and readable way to create lists, dictionaries, and sets using a single line of code. They allow you to generate these data structures by specifying the expression and the iteration over a sequence, often replacing traditional loops. There are three types of comprehensions in Python list comprehensions, dictionary comprehensions, and set comprehensions.

### 1. List Comprehensions

- **Description** List comprehensions provide a compact way to create lists based on existing lists or other iterable objects. They consist of an expression followed by a `for` loop inside square brackets `[ ]`.

- **Syntax**
  ```python
  new_list = [expression for item in iterable if condition]
  ```

- **Example**
  ```python
  # Create a list of squares of numbers from 0 to 9
  squares = [x ** 2 for x in range(10)]
  ```

### 2. Dictionary Comprehensions

- **Description** Dictionary comprehensions allow you to create dictionaries using a similar syntax to list comprehensions. They consist of key-value pairs separated by a colon `:` inside curly braces `{ }`.

- **Syntax**
  ```python
  new_dict = {key_expression: value_expression for item in iterable if condition}
  ```

- **Example**
  ```python
  # Create a dictionary of squares of numbers from 0 to 9
  square_dict = {x: x ** 2 for x in range(10)}
  ```

### 3. Set Comprehensions

- **Description** Set comprehensions are similar to list comprehensions but produce sets instead of lists. They consist of an expression followed by a `for` loop inside curly braces `{ }`.

- **Syntax**
  ```python
  new_set = {expression for item in iterable if condition}
  ```

- **Example**
  ```python
  # Create a set of unique first letters from a list of words
  words = ["apple", "banana", "cherry", "apple"]
  first_letters = {word[0] for word in words}
  ```

## Generators

Generators in Python are special functions that allow you to create iterators. Unlike regular functions that return a single value and exit, generators yield a sequence of values lazily, one at a time, allowing for efficient memory usage and enabling the processing of large data streams. Generators are particularly useful when dealing with large datasets or infinite sequences.

### Creating Generators

Generators are defined using a `yield` statement inside a function. When called, a generator function returns a generator object, which can be iterated over using a `for` loop or by calling the `next()` function.

**Example**

```python
def my_generator():
    yield 1
    yield 2
    yield 3

gen = my_generator()  # Create a generator object
```

### Yield Statement

The `yield` statement is similar to the `return` statement but instead of exiting the function, it temporarily suspends the function's execution and yields a value to the caller. The function's state is preserved, allowing it to resume execution from where it left off when the generator is iterated again.

**Example**

```python
def countdown(n):
    while n > 0:
        yield n
        n -= 1

# Example usage of the countdown generator
for num in countdown(5):
    print(num)  # Prints: 5, 4, 3, 2, 1
```

### Benefits of Generators

1. **Lazy Evaluation** Generators produce values on-demand, which means they don't compute all values at once. This results in lower memory consumption, especially for large or infinite sequences.

2. **Efficient Processing** Generators can be used to process large datasets or infinite sequences efficiently, as they generate values one at a time without needing to store the entire sequence in memory.

3. **Elegant Syntax** Generators provide a clean and concise way to define iterators, making code more readable and maintainable.

4. **State Retention** Generator functions retain their state between calls, allowing them to resume execution from where they left off. This makes them suitable for tasks like iterative algorithms and coroutine-based programming.

### Real-world Use Cases

- Processing large log files or datasets line by line.
- Generating sequences of Fibonacci numbers or prime numbers.
- Parsing and processing data streams in real-time applications.
- Implementing coroutine-based concurrency models using async/await syntax in Python 3.5+.

## Expressions

Expressions are combinations of literals, variables, operators, and function calls that evaluate to a single value. They are the building blocks of Python programs and are used extensively in assignments, conditionals, loops, and function calls. Expressions can be simple or complex, depending on the operations involved.

### Types of Expressions

1. **Arithmetic Expressions**
   - Examples: `2 + 3`, `x * y`, `5 - (3 * 2)`

2. **Boolean Expressions**
   - Examples: `x == y`, `a and b`, `not (x > 5)`

3. **Comparison Expressions**
   - Examples: `x > 10`, `y != 0`, `a <= b`

4. **Assignment Expressions** (also known as augmented assignment)
   - Examples: `x += 5`, `y *= 2`, `z -= 3`

5. **Membership Expressions**
   - Examples: `x in myList`, `key not in myDict`

6. **Identity Expressions**
   - Examples: `x is None`, `y is not True`

**Example**

```python
# Arithmetic expression
result = 2 * (3 + 4)

# Boolean expression
is_greater = x > y

# Comparison expression
is_equal = a == b

# Assignment expression
total += 10

# Membership expression
is_in_list = item in myList

# Identity expression
is_none = x is None
```

### Evaluation Order

Python expressions are evaluated according to operator precedence and associativity rules. Parentheses can be used to explicitly specify the order of evaluation. Operators with higher precedence are evaluated before operators with lower precedence.

### Benefits of Expressions

- **Readability** Expressions allow for concise and readable code, especially when combined with Python's expressive syntax.
- **Flexibility** Python supports a wide range of expressions, allowing for complex computations and logical operations.
- **Efficiency** Well-structured expressions can improve code efficiency and performance by reducing redundancy and unnecessary computations.

### Real-world Use Cases

- Calculating mathematical formulas or expressions.
- Implementing conditional logic and decision-making in control structures.
- Performing data manipulation and transformation in data processing tasks.
- Writing concise and expressive code in functional programming paradigms.

## Closures

Closures allows functions to retain the environment (i.e., variables) in which they were defined, even after the outer function has finished executing. This means that a closure remembers the values of the variables in its enclosing scope, even when the enclosing scope is no longer available. Closures are commonly used to create factory functions, maintain state between function calls, and implement data hiding and encapsulation.

### How Closures Work

- When a nested function (inner function) references variables from its enclosing scope (outer function), Python creates a closure.
- The closure captures the current value of the variable from the enclosing scope and keeps it alive even after the outer function has finished executing.
- The inner function, along with its captured variables, forms a closure, which can then be returned or passed around as a first-class object.

**Example**

```python
def outer_function(x):
    # Variable 'x' is captured by the inner function
    def inner_function(y):
        return x + y
    return inner_function

# Create a closure by calling outer_function
closure = outer_function(5)

# Call the closure with argument 3
result = closure(3)  # Output: 8
```

In this example, the inner function `inner_function` references the variable `x` from its enclosing scope (the outer function `outer_function`). Even after `outer_function` has finished executing, the closure retains the value of `x`, allowing `inner_function` to access it when called later with the argument `3`. As a result, `result` evaluates to `8`.

### Benefits of Closures

1. **Encapsulation** Closures encapsulate data within a function's scope, preventing external access and modification. This promotes data hiding and information hiding, enhancing code maintainability and security.

2. **State Retention** Closures maintain state between function calls, allowing functions to remember previous states and computations. This is useful for implementing memoization, caching, and maintaining object-oriented patterns like Singleton.

3. **Factory Functions** Closures enable the creation of factory functions that generate specialized functions tailored to specific use cases or configurations. This promotes code reusability and modular design.

### Real-world Use Cases

- Creating callback functions in event-driven programming.
- Implementing memoization to cache expensive function calls.
- Generating specialized functions with pre-configured behavior using factory functions.
- Implementing private variables and methods in classes for data encapsulation.

## Regex

Regular expressions (regex) are sequences of characters that define a search pattern, which is used for matching strings or portions of strings. They provide a powerful and flexible way to search, match, and manipulate text based on specified patterns. Regex is widely used in text processing tasks such as searching, validation, parsing, and data extraction.

### Basic Syntax

- **Literals** Characters that match themselves (e.g., `a`, `1`, `@`).
- **Metacharacters** Special characters with a predefined meaning in regex (e.g., `^`, `$`, `*`, `.`).
- **Quantifiers** Specify how many times a character or group should be matched (e.g., `*` for zero or more times, `+` for one or more times, `?` for zero or one time).
- **Character Classes** Define sets or ranges of characters to match (e.g., `[a-z]` matches any lowercase letter).
- **Anchors** Specify positions in the string where matches should occur (e.g., `^` for the start of the string, `$` for the end of the string).
- **Groups and Capturing** Parentheses `()` are used to create groups, which can be captured and referenced.
- **Alternation** Using the `|` operator to specify alternatives (e.g., `cat|dog` matches either "cat" or "dog").

### Example Patterns

- **Email Address** - `\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b`
- **URL** - `https?://\S+`
- **Phone Number** - `\b\d{3}-\d{3}-\d{4}\b`

### Python `re` Module

Python provides a built-in module called `re` for working with regular expressions. Here are some common functions and methods in the `re` module:

- `re.search(pattern, string)`: Searches for the first occurrence of the pattern in the string.
- `re.match(pattern, string)`: Matches the pattern only at the beginning of the string.
- `re.findall(pattern, string)`: Finds all occurrences of the pattern in the string.
- `re.sub(pattern, replacement, string)`: Replaces occurrences of the pattern with the replacement string.
- `re.compile(pattern)`: Compiles a regular expression pattern into a regex object, which can be reused.

**Example**

```python
import re

# Search for a pattern
result = re.search(r'(\d+)', 'Age: 25, Height: 180 cm')
print(result.group(0))  # Output: 25

# Find all occurrences of a pattern
matches = re.findall(r'\b\w{3,}\b', 'Hello, World! This is a test.')
print(matches)  # Output: ['Hello', 'World', 'This', 'test']

# Replace occurrences of a pattern
new_string = re.sub(r'\d+', 'X', 'Age: 25, Height: 180 cm')
print(new_string)  # Output: Age: X, Height: X cm
```

## Decorators

Decorators allow you to extend or modify the behavior of functions or methods without changing their code. Decorators provide a clean and concise way to add functionality to existing functions, such as logging, authentication, caching, or performance monitoring, by wrapping them with additional code.

### Basic Syntax

In Python, decorators are implemented using functions. Here's the basic syntax of a decorator:

```python
def decorator_function(original_function):
    def wrapper_function(*args, **kwargs):
        # Additional code before calling the original function
        result = original_function(*args, **kwargs)
        # Additional code after calling the original function
        return result
    return wrapper_function

@decorator_function
def my_function():
    # Original function code
    pass
```

### Explanation

1. **Decorator Function** A decorator is a function that takes another function as input (the original function) and returns a new function (the wrapper function) that extends or modifies the behavior of the original function.

2. **Wrapper Function** The wrapper function wraps the original function, allowing you to execute additional code before and after calling the original function. It accepts arbitrary arguments `*args` and keyword arguments `**kwargs` to handle functions with different signatures.

3. **Usage with `@` Syntax** Decorators can be applied to functions using the `@decorator_function` syntax, which is equivalent to calling `my_function = decorator_function(my_function)`.

**Example**

```python
def my_logger(original_function):
    import logging
    logging.basicConfig(filename=f'{original_function.__name__}.log', level=logging.INFO)
    def wrapper(*args, **kwargs):
        logging.info(f'Called function with args: {args}, kwargs: {kwargs}')
        return original_function(*args, **kwargs)
    return wrapper

@my_logger
def add(x, y):
    return x + y

result = add(3, 5)  # Output: 8
```

In this example, the `my_logger` decorator logs information about the function calls to a log file. The `add` function is decorated with `@my_logger`, so each time `add` is called, the wrapper function logs the arguments passed to `add` before calling the original `add` function.

### Benefits of Decorators

1. **Code Reusability** Decorators allow you to encapsulate cross-cutting concerns (e.g., logging, authentication) in reusable components, reducing code duplication.

2. **Separation of Concerns** Decorators promote separation of concerns by separating the core logic of a function from its additional behavior.

3. **Readability and Maintainability** Decorators enhance code readability and maintainability by keeping the main function clean and focusing on its core functionality.

### Real-world Use Cases

- Logging function calls for debugging and auditing purposes.
- Adding authentication and authorization checks to restrict access to certain functions.
- Implementing caching to improve performance by storing and reusing computed results.
- Measuring execution time or profiling function performance for optimization.

## Iterators

Iterators are objects that implement the iterator protocol, allowing them to be iterated over using a `for` loop or by calling the `next()` function. Iterators provide a way to access elements of a collection or sequence one at a time, without the need to load the entire collection into memory. They are commonly used to process large datasets, stream data from external sources, and implement lazy evaluation.

### Iterator Protocol

An iterator in Python must implement two methods:

1. `__iter__()`: This method returns the iterator object itself. It is called when the iterator is initialized.

2. `__next__()`: This method returns the next element from the iterator. It raises a `StopIteration` exception when there are no more elements to return.

**Example**

```python
class MyIterator:
    def __init__(self, data):
        self.data = data
        self.index = 0

    def __iter__(self):
        return self

    def __next__(self):
        if self.index >= len(self.data):
            raise StopIteration
        value = self.data[self.index]
        self.index += 1
        return value

my_list = [1, 2, 3, 4, 5]
my_iterator = MyIterator(my_list)

for item in my_iterator:
    print(item)  # Output: 1, 2, 3, 4, 5
```

In this example, `MyIterator` is a custom iterator class that iterates over a list of numbers. It implements the `__iter__()` and `__next__()` methods to enable iteration over the elements of the list.

### Built-in Iterators

Python provides built-in iterators for common data structures such as lists, tuples, dictionaries, sets, and files. For example:

- `iterable = iter(sequence)`: Creates an iterator object for the given sequence.
- `next(iterator)`: Retrieves the next element from the iterator.

### Benefits of Iterators

1. **Lazy Evaluation** Iterators generate values on-demand, allowing for efficient memory usage, especially for large datasets or infinite sequences.

2. **Support for Custom Data Structures** You can implement iterators for custom data structures, enabling iteration over user-defined collections.

3. **Integration with Iteration Constructs** Iterators can be seamlessly integrated with `for` loops, list comprehensions, and other iteration constructs in Python.

### Real-world Use Cases

- Processing large files or datasets line by line.
- Streaming data from external sources such as databases or APIs.
- Implementing custom data structures like trees, graphs, or queues with iterable interfaces.
- Lazily evaluating computations or transformations on data sequences.

## Lamdas

Lambda functions, also known as anonymous functions, are small, inline functions that can have any number of parameters but only a single expression. Lambda functions are commonly used for short, simple operations where defining a named function is unnecessary or cumbersome. They provide a concise syntax for creating functions on-the-fly without the need for a formal function definition.

### Basic Syntax

The syntax of a lambda function is as follows:

```python
lambda arguments: expression
```

- `lambda`- Keyword indicating the start of the lambda function definition.
- `arguments`- Parameters passed to the lambda function. Multiple arguments are separated by commas.
- `expression`- Single expression representing the computation performed by the lambda function.

**Example**

```python
# Regular named function
def square(x):
    return x ** 2

# Equivalent lambda function
square_lambda = lambda x: x ** 2

print(square(5))        # Output: 25
print(square_lambda(5)) # Output: 25
```

### Use Cases

1. **Simple Operations** Lambda functions are useful for simple operations that don't require a full function definition.

2. **Sorting and Filtering** Lambda functions can be passed as arguments to sorting and filtering functions like `sorted()` and `filter()`.

3. **Mapping** Lambda functions are commonly used with mapping functions like `map()` to apply a function to each element of an iterable.

4. **Callbacks** Lambda functions are often used as callback functions in event-driven programming.

### Real-world Examples

- Sorting a list of tuples based on the second element:
  ```python
  data = [('John', 25), ('Alice', 30), ('Bob', 20)]
  sorted_data = sorted(data, key=lambda x: x[1])
  ```

- Filtering a list of numbers to get only even numbers:
  ```python
  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  even_numbers = list(filter(lambda x: x % 2 == 0, numbers))
  ```

- Mapping a function to double each element of a list:
  ```python
  numbers = [1, 2, 3, 4, 5]
  doubled_numbers = list(map(lambda x: x * 2, numbers))
  ```

### Benefits of Lambda Functions

1. **Conciseness** Lambda functions provide a compact syntax for defining functions inline, reducing code verbosity.

2. **Readability** Lambda functions can make code more readable by keeping the focus on the operation being performed rather than on function names.

3. **Flexibility** Lambda functions can be used in situations where defining a named function would be overkill or unnecessary.

## Functional Programming

Functional programming is a programming paradigm that treats computation as the evaluation of mathematical functions and avoids changing state and mutable data. 

In functional programming, functions are first-class citizens, meaning they can be passed as arguments to other functions, returned as values from other functions, and assigned to variables. Functional programming are immutability, higher-order functions, and the use of expressions rather than statements.

### Key Concepts

1. **Immutability** In functional programming, data is immutable, meaning it cannot be changed after it is created. Instead of modifying existing data, functions create and return new data structures.

2. **Pure Functions** Pure functions are functions that have no side effects and always return the same output for the same input, regardless of the program's state or external factors. Pure functions are deterministic and easier to reason about and test.

3. **Higher-Order Functions** Higher-order functions are functions that take other functions as arguments or return functions as results. They enable powerful abstractions and allow for expressive and concise code.

4. **Recursion** Recursion is a common technique in functional programming for solving problems by breaking them down into smaller, similar subproblems. Recursive functions call themselves with modified arguments until a base case is reached.

5. **Lazy Evaluation** Lazy evaluation is a strategy where expressions are not evaluated until their results are actually needed. This allows for more efficient memory usage and can enable the processing of potentially infinite data structures.

### Benefits of Functional Programming

1. **Clarity and Readability** Functional programming promotes writing clear, concise, and declarative code that is easier to understand and maintain.

2. **Modularity and Reusability** Functional programming encourages writing small, composable functions that can be easily reused in different contexts, promoting modularity and code reuse.

3. **Parallelism and Concurrency** Functional programming techniques, such as immutability and pure functions, facilitate parallel and concurrent programming by minimizing shared state and side effects.

4. **Testing and Debugging** Pure functions and immutable data make code easier to test and debug since functions produce consistent results and do not have hidden dependencies.

### Real-world Use Cases

- Data Processing and Transformation: Functional programming is well-suited for tasks like filtering, mapping, and reducing data sets.
- Parallel and Concurrent Programming: Functional programming techniques facilitate parallelism and concurrency by avoiding shared state and side effects.
- Domain-Specific Languages (DSLs): Functional programming concepts are often used to define domain-specific languages for specific problem domains.

**Example**

```python
# Example of functional programming in Python
from functools import reduce

# List of numbers
numbers = [1, 2, 3, 4, 5]

# Using higher-order functions (map, filter, reduce)
doubled_numbers = list(map(lambda x: x * 2, numbers))
even_numbers = list(filter(lambda x: x % 2 == 0, numbers))
sum_of_numbers = reduce(lambda x, y: x + y, numbers)

print(doubled_numbers)  # Output: [2, 4, 6, 8, 10]
print(even_numbers)      # Output: [2, 4]
print(sum_of_numbers)    # Output: 15
```

In this example, we use higher-order functions (`map`, `filter`, `reduce`) to perform common operations on a list of numbers. These functions take lambda functions as arguments, enabling concise and expressive code that adheres to functional programming principles.

## Map, Reduce, Filters

Let's understand `map()`, `filter()`, and `reduce()` functions into a single comprehensive explanation

### 1. `map()` Function

The `map()` function is used to apply a given function to each item of an iterable (e.g., list, tuple) and returns an iterator that yields the results.

- **Purpose** Transforming data by applying a function to each element in an iterable.
  
- **Example**
  ```python
  numbers = [1, 2, 3, 4, 5]
  squared_numbers = map(lambda x: x ** 2, numbers)
  print(list(squared_numbers))  # Output: [1, 4, 9, 16, 25]
  ```

- **Use Cases**
  - Converting temperatures, calculating square roots, or performing any other element-wise transformation on data.
  - Generating sequences of values based on a mathematical formula or pattern.

### 2. `filter()` Function

The `filter()` function creates an iterator that filters elements of an iterable based on a given function (predicate) and returns only the elements for which the function returns `True`.

- **Purpose** Selecting elements from an iterable that meet certain criteria specified by a function.
  
- **Example**
  ```python
  numbers = [1, 2, 3, 4, 5]
  even_numbers = filter(lambda x: x % 2 == 0, numbers)
  print(list(even_numbers))  # Output: [2, 4]
  ```

- **Use Cases**
  - Filtering out negative numbers, selecting items that meet certain conditions, or removing unwanted elements from a list.

### 3. `reduce()` Function

The `reduce()` function performs a cumulative operation on the items of an iterable from left to right, reducing them to a single value.

- **Purpose** Aggregating data by applying a cumulative operation to the elements of an iterable to produce a single value.
  
- **Example**
  ```python
  from functools import reduce
  numbers = [1, 2, 3, 4, 5]
  sum_of_numbers = reduce(lambda x, y: x + y, numbers)
  print(sum_of_numbers)  # Output: 15
  ```

- **Use Cases**
  - Calculating the sum, product, maximum, or minimum value of a list of numbers.
  - Combining elements of an iterable into a single value, such as concatenating strings or merging dictionaries.

### Comparison

- **Similarity** All three functions accept a function and an iterable as arguments and return a new iterable or a single value.
- **Difference** 
  - `map()` transforms each element of the iterable using a given function.
  - `filter()` selects elements from the iterable based on a condition specified by the function.
  - `reduce()` performs a cumulative operation on the elements of the iterable to produce a single value.

### When to Use Each

- Use `map()` when you want to transform each element of an iterable using a function.
- Use `filter()` when you want to select elements from an iterable based on a condition.
- Use `reduce()` when you want to perform a cumulative operation on the elements of an iterable to produce a single value.

## Threading

Threading refers to the concurrent execution of multiple threads within a single process. Threads are lightweight subprocesses that share the same memory space and resources of the parent process, allowing for parallel execution of tasks and improved responsiveness in applications that perform I/O-bound operations or concurrent tasks.

### Basic Concepts

1. **Thread** A thread is a sequence of instructions within a process that can be executed independently and concurrently with other threads. Threads share the same memory space and resources of the parent process.

2. **Concurrency** Concurrency refers to the ability of multiple threads to execute simultaneously within a single process. Threads can run concurrently on multi-core CPUs or time-shared on a single-core CPU.

3. **Global Interpreter Lock (GIL)** In Python, the Global Interpreter Lock (GIL) is a mutex that protects access to Python objects, preventing multiple native threads from executing Python bytecodes simultaneously. The GIL can impact CPU-bound multithreading performance but does not affect I/O-bound or concurrent I/O operations.

### Threading in Python

Python provides a built-in `threading` module for creating and managing threads. The `threading` module offers a high-level interface for working with threads and includes features such as thread creation, synchronization primitives, and thread management.

**Example**

```python
import threading

def print_numbers():
    for i in range(1, 6):
        print(f"Number: {i}")

# Create a thread
thread = threading.Thread(target=print_numbers)

# Start the thread
thread.start()

# Wait for the thread to finish
thread.join()

print("Thread execution completed.")
```

In this example, a new thread is created using the `threading.Thread` class, specifying the target function (`print_numbers`). The `start()` method is called to begin execution of the thread, and the `join()` method is called to wait for the thread to finish execution before proceeding with the main program.

### Benefits of Threading

1. **Improved Responsiveness** Threading allows for concurrent execution of tasks, improving the responsiveness of applications that perform I/O-bound operations such as network requests or file I/O.

2. **Parallelism** Threading enables parallel execution of tasks on multi-core CPUs, leveraging multiple processor cores to improve performance.

3. **Concurrency** Threading facilitates concurrent execution of tasks within a single process, enabling tasks to run simultaneously and making efficient use of system resources.

### Considerations and Best Practices

- **Global Interpreter Lock (GIL)** Understand the implications of the GIL on CPU-bound multithreading performance and consider alternative concurrency models such as multiprocessing or asynchronous I/O for CPU-bound tasks.

- **Thread Safety** Ensure that shared resources accessed by multiple threads are protected using synchronization primitives such as locks, semaphores, or threading-safe data structures to prevent race conditions and data corruption.

- **I/O-Bound vs. CPU-Bound Tasks** Threading is most effective for I/O-bound tasks where threads spend a significant amount of time waiting for I/O operations to complete. For CPU-bound tasks, consider alternative concurrency models such as multiprocessing.

### Real-world Use Cases

- Web servers handling multiple concurrent client requests.
- GUI applications with responsive user interfaces that perform background tasks concurrently.
- Multithreaded data processing pipelines for processing and analyzing large datasets.

## Advanced Methods

Advanced methods in Python typically refer to more specialized or advanced functionalities provided by various libraries or modules, rather than built-in language features. These methods often address specific use cases or solve particular problems, and they are commonly found in libraries for data manipulation, scientific computing, web development, and more.

### 1. Data Manipulation

- **Pandas** Pandas is a popular library for data manipulation and analysis in Python. It provides advanced methods for handling structured data, including data ingestion, cleaning, transformation, and analysis.

  **Example**
  
  ```python
  import pandas as pd

  # Read data from CSV file
  df = pd.read_csv('data.csv')

  # Perform data manipulation operations
  filtered_df = df[df['column'] > 10]
  grouped_df = df.groupby('category').mean()
  ```

### 2. Scientific Computing

- **NumPy** NumPy is a fundamental package for scientific computing in Python. It provides advanced methods for working with arrays, numerical computation, linear algebra, and random number generation.

  **Example**
  
  ```python
  import numpy as np

  # Create NumPy arrays
  a = np.array([1, 2, 3, 4, 5])
  b = np.linspace(0, 10, 100)

  # Perform numerical operations
  c = np.dot(a, b)
  eigenvalues, eigenvectors = np.linalg.eig(matrix)
  ```

### 3. Machine Learning

- **Scikit-learn** Scikit-learn is a machine learning library for Python that provides advanced methods for building and training machine learning models, as well as for data preprocessing, evaluation, and model selection.

  **Example**

  ```python
  from sklearn.linear_model import LinearRegression
  from sklearn.model_selection import train_test_split
  from sklearn.metrics import mean_squared_error

  # Load dataset
  X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

  # Train machine learning model
  model = LinearRegression()
  model.fit(X_train, y_train)

  # Evaluate model performance
  y_pred = model.predict(X_test)
  mse = mean_squared_error(y_test, y_pred)
  ```

### 4. Web Development

- **Django** Django is a high-level web framework for Python that provides advanced methods for building web applications, including URL routing, template rendering, form handling, authentication, and database management.

  **Example**

  ```python
  from django.shortcuts import render
  from django.http import HttpResponse

  # Define view function
  def index(request):
      return HttpResponse("Hello, world!")

  # URL routing
  urlpatterns = [
      path('', index),
  ]
  ```

[Back](../python.md) | [Code](../../code.md)