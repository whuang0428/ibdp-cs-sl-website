# B2 and B3 Practice

## 1. Page Purpose

This page provides exam-style practice for **B2 Programming** and **B3 Object-Oriented Programming**.

It focuses on:

```text
variables and constants
data types
operators and expressions
selection
iteration
arrays / lists
searching
sorting
subprograms / methods
parameters and return values
validation and verification
testing and debugging
file processing
classes and objects
attributes and methods
constructors
encapsulation
UML class diagrams
object interaction
```

The goal is to help students answer programming and OOP questions using **clear logic**, **correct vocabulary**, and **mark scheme style explanations**.

---

## 2. B2 and B3 Practice Targets

By the end of this practice page, students should be able to:

- define variable, constant, data type, array, parameter, argument, return value, class, object, attribute, method, constructor, and encapsulation
- identify suitable data types for variables
- trace simple pseudocode involving sequence, selection, iteration, arrays, and methods
- write simple algorithms using variables, loops, arrays, and subprograms
- explain validation and verification
- design useful test data
- identify logic errors and suggest corrections
- explain searching and sorting at a basic level
- explain the purpose of file processing
- interpret simple class definitions
- identify attributes and methods from a scenario
- read simple UML class diagrams
- distinguish class and object
- explain encapsulation using getter/setter methods
- answer exam-style programming and OOP questions

---

## 3. Key Mark Scheme Phrases

| Topic | Mark Scheme Style Phrase |
|---|---|
| Variable | named storage location whose value can change during program execution |
| Constant | named value that does not change while the program runs |
| Data type | defines the kind of data a variable can store |
| Integer | whole number with no decimal part |
| Real / float | number with a decimal part |
| Boolean | true or false value |
| String | sequence of characters |
| Array / list | data structure storing multiple values under one name |
| Index | position of an element in an array/list |
| Selection | decision made using a condition |
| Iteration | repeated execution of instructions |
| Subprogram | named block of code that performs a specific task |
| Parameter | variable used by a subprogram to receive a value |
| Argument | actual value passed into a subprogram |
| Return value | value sent back by a function/method |
| Validation | checking whether input is sensible or allowed |
| Verification | checking whether data has been entered or copied correctly |
| Test data | data used to check whether a program works correctly |
| Logic error | program runs but gives incorrect result |
| Class | blueprint/template for objects |
| Object | instance of a class |
| Attribute | data stored about an object |
| Method | behaviour/action an object can perform |
| Constructor | method used to initialize a new object |
| Encapsulation | bundling data and methods together and restricting direct access to data |
| UML class diagram | diagram showing class name, attributes, and methods |

---

## 4. Quick Revision Map

```text
B2 and B3 Practice
├── B2 Programming
│   ├── variables and constants
│   ├── data types
│   ├── expressions and operators
│   ├── selection
│   ├── iteration
│   ├── arrays / lists
│   ├── searching
│   ├── sorting
│   ├── subprograms
│   ├── parameters / arguments
│   ├── return values
│   ├── validation / verification
│   ├── testing / debugging
│   └── file processing
└── B3 OOP
    ├── classes
    ├── objects
    ├── attributes
    ├── methods
    ├── constructors
    ├── encapsulation
    ├── getters / setters
    ├── UML class diagrams
    └── object interaction
```

---

## 5. Exam Technique for B2 and B3

### For Code / Pseudocode Questions

Always check:

```text
input values
initial variable values
loop start and end
condition true/false
array index
output position
return value
```

### For Written Explanation Questions

Use:

```text
technical term → meaning → example / scenario link
```

Example:

```text
Validation checks whether input data is sensible before it is processed. For example, a mark could be checked to ensure it is between 0 and 100.
```

### For OOP Questions

Use the correct distinction:

```text
class = blueprint
object = instance
attribute = data
method = behaviour
constructor = initializes object
encapsulation = restricts direct access to data
```

---

## 6. Practice Set 1: Programming Definitions

### Question 1 [2 marks]

Define variable.

<details>
<summary>Mark Scheme Style Answer</summary>

A variable is a named storage location used to store a value that may change during program execution.

</details>

---

### Question 2 [2 marks]

Define constant.

<details>
<summary>Mark Scheme Style Answer</summary>

A constant is a named value that does not change while the program is running.

</details>

---

### Question 3 [2 marks]

Define data type.

<details>
<summary>Mark Scheme Style Answer</summary>

A data type defines the kind of data that a variable can store, such as integer, real, Boolean, character, or string.

</details>

---

### Question 4 [2 marks]

Define array or list.

<details>
<summary>Mark Scheme Style Answer</summary>

An array or list is a data structure that stores multiple values under one name, with each element accessed using an index.

</details>

---

### Question 5 [2 marks]

Define subprogram.

<details>
<summary>Mark Scheme Style Answer</summary>

A subprogram is a named block of code that performs a specific task and can be called from other parts of a program.

</details>

---

## 7. Practice Set 2: Data Types

### Question 1 [4 marks]

Choose a suitable data type for each variable.

| Variable | Example Value |
|---|---|
| age | 17 |
| price | 12.99 |
| isLoggedIn | true |
| studentName | "Ali Chen" |

<details>
<summary>Mark Scheme Style Answer</summary>

| Variable | Suitable Data Type |
|---|---|
| age | integer |
| price | real / float |
| isLoggedIn | Boolean |
| studentName | string |

</details>

---

### Question 2 [3 marks]

Explain why `studentID` may be stored as a string rather than an integer.

<details>
<summary>Mark Scheme Style Answer</summary>

A student ID may be stored as a string because it is used as an identifier rather than for arithmetic. It may contain leading zeros or letters, and storing it as an integer could remove leading zeros or prevent non-numeric characters.

</details>

---

### Question 3 [3 marks]

State three possible data types used in programming and give one example value for each.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible answers:

```text
integer: 42
real/float: 3.14
Boolean: true
string: "hello"
character: 'A'
```

</details>

---

## 8. Practice Set 3: Operators and Expressions

### Question 1 [3 marks]

Evaluate the following expressions.

```text
A. 7 + 3 * 2
B. (7 + 3) * 2
C. 17 MOD 5
```

<details>
<summary>Mark Scheme Style Answer</summary>

```text
A = 13
B = 20
C = 2
```

</details>

---

### Question 2 [3 marks]

If:

```text
x ← 10
y ← 4
```

What are the values of:

```text
x DIV y
x MOD y
x / y
```

<details>
<summary>Mark Scheme Style Answer</summary>

```text
x DIV y = 2
x MOD y = 2
x / y = 2.5
```

</details>

---

### Question 3 [4 marks]

Explain the difference between `=` used for comparison and assignment.

<details>
<summary>Mark Scheme Style Answer</summary>

Assignment stores a value in a variable, such as `score ← 50`. Comparison checks whether two values are equal, such as `score = 50` inside a condition. Assignment changes a value, while comparison produces true or false.

</details>

---

## 9. Practice Set 4: Selection

### Question 1 [4 marks]

Write pseudocode to input a mark and output `Pass` if the mark is at least 50, otherwise output `Fail`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
INPUT mark

IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

</details>

---

### Question 2 [5 marks]

Write pseudocode to input a number and output whether it is positive, negative, or zero.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
INPUT number

IF number > 0 THEN
    OUTPUT "Positive"
ELSE IF number < 0 THEN
    OUTPUT "Negative"
ELSE
    OUTPUT "Zero"
ENDIF
```

</details>

---

### Question 3 [4 marks]

Explain why selection is needed in a program that checks whether a password is correct.

<details>
<summary>Mark Scheme Style Answer</summary>

Selection is needed because the program must choose between different actions depending on whether the entered password matches the stored password. If the condition is true, access can be granted; otherwise, access should be denied.

</details>

---

## 10. Practice Set 5: Iteration

### Question 1 [5 marks]

Write pseudocode to output the numbers from 1 to 10.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
FOR count ← 1 TO 10
    OUTPUT count
ENDFOR
```

</details>

---

### Question 2 [6 marks]

Write pseudocode to input 5 numbers and output their total.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
total ← 0

FOR count ← 1 TO 5
    INPUT number
    total ← total + number
ENDFOR

OUTPUT total
```

</details>

---

### Question 3 [6 marks]

Write pseudocode to input numbers until `0` is entered, then output the total.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
total ← 0
INPUT number

WHILE number <> 0
    total ← total + number
    INPUT number
ENDWHILE

OUTPUT total
```

</details>

---

### Question 4 [4 marks]

Explain when a `WHILE` loop is more suitable than a `FOR` loop.

<details>
<summary>Mark Scheme Style Answer</summary>

A `WHILE` loop is more suitable when the number of repetitions is not known in advance and the loop should continue while a condition remains true. For example, inputting passwords until the correct password is entered.

</details>

---

## 11. Practice Set 6: Arrays and Lists

### Question 1 [2 marks]

Define array.

<details>
<summary>Mark Scheme Style Answer</summary>

An array is a data structure that stores multiple values of the same type under one name, with each value accessed using an index.

</details>

---

### Question 2 [4 marks]

Given:

```text
scores = [12, 18, 15, 20]
```

State:

```text
A. scores[0]
B. scores[2]
C. length(scores)
D. the highest value
```

<details>
<summary>Mark Scheme Style Answer</summary>

Assuming zero-based indexing:

```text
A = 12
B = 15
C = 4
D = 20
```

</details>

---

### Question 3 [6 marks]

Write pseudocode to output every value in an array called `scores`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
FOR index ← 0 TO length(scores) - 1
    OUTPUT scores[index]
ENDFOR
```

Alternative 1-based indexing answers are acceptable if consistent.

</details>

---

### Question 4 [6 marks]

Write pseudocode to count how many values in `scores` are at least 50.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
passCount ← 0

FOR index ← 0 TO length(scores) - 1
    IF scores[index] >= 50 THEN
        passCount ← passCount + 1
    ENDIF
ENDFOR

OUTPUT passCount
```

</details>

---

## 12. Practice Set 7: Searching

### Question 1 [4 marks]

Describe linear search.

<details>
<summary>Mark Scheme Style Answer</summary>

Linear search checks each item in a list one by one until the target is found or all items have been checked. It can be used on unsorted data.

</details>

---

### Question 2 [6 marks]

Write pseudocode for a linear search that checks whether `target` is in `names`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
found ← false
index ← 0

WHILE index < length(names) AND found = false
    IF names[index] = target THEN
        found ← true
    ELSE
        index ← index + 1
    ENDIF
ENDWHILE

IF found = true THEN
    OUTPUT "Found"
ELSE
    OUTPUT "Not found"
ENDIF
```

Accept versions where `index` is incremented after the IF, as long as the logic is correct.

</details>

---

### Question 3 [4 marks]

Explain why linear search may be slow for a very large list.

<details>
<summary>Mark Scheme Style Answer</summary>

Linear search may need to check every item in the list before finding the target or deciding it is not present. For a very large list, this can take a long time because the number of comparisons increases with the size of the list.

</details>

---

## 13. Practice Set 8: Sorting

### Question 1 [4 marks]

Describe bubble sort at a basic level.

<details>
<summary>Mark Scheme Style Answer</summary>

Bubble sort repeatedly compares adjacent items in a list and swaps them if they are in the wrong order. This process is repeated until the list is sorted.

</details>

---

### Question 2 [5 marks]

Show the first pass of bubble sort on the list:

```text
[5, 2, 4, 1]
```

Sort in ascending order.

<details>
<summary>Mark Scheme Style Answer</summary>

Start:

```text
[5, 2, 4, 1]
```

Compare 5 and 2, swap:

```text
[2, 5, 4, 1]
```

Compare 5 and 4, swap:

```text
[2, 4, 5, 1]
```

Compare 5 and 1, swap:

```text
[2, 4, 1, 5]
```

After first pass:

```text
[2, 4, 1, 5]
```

</details>

---

### Question 3 [3 marks]

Explain one reason a sorted list may be useful.

<details>
<summary>Mark Scheme Style Answer</summary>

A sorted list is easier to search or browse because items are arranged in a predictable order. It can also allow more efficient search methods such as binary search.

</details>

---

## 14. Practice Set 9: Subprograms, Parameters and Return Values

### Question 1 [2 marks]

Define parameter.

<details>
<summary>Mark Scheme Style Answer</summary>

A parameter is a variable in a subprogram definition that receives a value passed into the subprogram.

</details>

---

### Question 2 [2 marks]

Define argument.

<details>
<summary>Mark Scheme Style Answer</summary>

An argument is the actual value passed to a subprogram when it is called.

</details>

---

### Question 3 [4 marks]

Explain why subprograms are useful.

<details>
<summary>Mark Scheme Style Answer</summary>

Subprograms break a program into smaller, more manageable parts. They can reduce repetition because the same subprogram can be reused. They also make programs easier to test, debug, read, and maintain.

</details>

---

### Question 4 [5 marks]

Write a function `calculateArea(length, width)` that returns the area of a rectangle.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
FUNCTION calculateArea(length, width)
    area ← length * width
    RETURN area
ENDFUNCTION
```

</details>

---

### Question 5 [5 marks]

Explain the difference between a procedure and a function.

<details>
<summary>Mark Scheme Style Answer</summary>

A function returns a value to the part of the program that called it. A procedure performs a task but does not return a value in the same way. Both are subprograms that can organize code into reusable blocks.

</details>

---

## 15. Practice Set 10: Validation, Verification and Testing

### Question 1 [2 marks]

Define validation.

<details>
<summary>Mark Scheme Style Answer</summary>

Validation checks whether input data is sensible, reasonable, or allowed before it is processed.

</details>

---

### Question 2 [2 marks]

Define verification.

<details>
<summary>Mark Scheme Style Answer</summary>

Verification checks whether data has been entered or copied correctly, such as by double entry or visual checking.

</details>

---

### Question 3 [4 marks]

A program inputs a mark out of 100. Suggest two validation checks.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible checks:

```text
range check: mark must be between 0 and 100
type check: mark must be numeric
presence check: mark must not be blank
```

Award marks for suitable checks and explanation.

</details>

---

### Question 4 [4 marks]

Explain the difference between normal, boundary, and invalid test data.

<details>
<summary>Mark Scheme Style Answer</summary>

Normal test data is valid data that should be accepted, such as 50 for a mark out of 100. Boundary test data tests the edges of valid ranges, such as 0 and 100. Invalid test data should be rejected, such as -1 or 101 for a mark out of 100.

</details>

---

### Question 5 [5 marks]

Create test data for a program that accepts ages from 12 to 18 inclusive.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible test data:

```text
normal: 15
boundary valid: 12, 18
boundary invalid: 11, 19
invalid type: "abc"
```

</details>

---

## 16. Practice Set 11: File Processing

### Question 1 [3 marks]

State three common file operations.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible answers:

```text
open file
read file
write to file
append to file
close file
delete file
```

</details>

---

### Question 2 [4 marks]

Explain why a program should close a file after writing to it.

<details>
<summary>Mark Scheme Style Answer</summary>

Closing a file ensures that any buffered data is saved properly and system resources are released. If a file is not closed, data may be lost or the file may remain locked or corrupted.

</details>

---

### Question 3 [5 marks]

Write pseudocode to read each line from a file and output it.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
OPENFILE "data.txt" FOR READ

WHILE NOT EOF("data.txt")
    READFILE "data.txt", line
    OUTPUT line
ENDWHILE

CLOSEFILE "data.txt"
```

Accept equivalent pseudocode.

</details>

---

## 17. Practice Set 12: Trace Programming Logic

### Question 1 [5 marks]

Trace the following pseudocode.

```text
x ← 3
y ← 2
x ← x + y
y ← x * 2
OUTPUT y
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Step | x | y | Output |
|---:|---:|---:|---|
| 1 | 3 |  |  |
| 2 | 3 | 2 |  |
| 3 | 5 | 2 |  |
| 4 | 5 | 10 |  |
| 5 | 5 | 10 | 10 |

Final output:

```text
10
```

</details>

---

### Question 2 [6 marks]

Trace the following pseudocode.

```text
total ← 0

FOR i ← 1 TO 4
    total ← total + i
ENDFOR

OUTPUT total
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | i | total | Output |
|---:|---:|---:|---|
| Start |  | 0 |  |
| 1 | 1 | 1 |  |
| 2 | 2 | 3 |  |
| 3 | 3 | 6 |  |
| 4 | 4 | 10 |  |
| End |  | 10 | 10 |

Final output:

```text
10
```

</details>

---

### Question 3 [6 marks]

Trace this pseudocode.

```text
found ← false
index ← 0
numbers ← [3, 8, 5]

WHILE index < 3 AND found = false
    IF numbers[index] = 8 THEN
        found ← true
    ENDIF
    index ← index + 1
ENDWHILE

OUTPUT found
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | index before | numbers[index] | found | index after | Output |
|---:|---:|---:|---|---:|---|
| Start | 0 |  | false |  |  |
| 1 | 0 | 3 | false | 1 |  |
| 2 | 1 | 8 | true | 2 |  |
| End | 2 |  | true |  | true |

Final output:

```text
true
```

</details>

---

## 18. Practice Set 13: OOP Definitions

### Question 1 [2 marks]

Define class.

<details>
<summary>Mark Scheme Style Answer</summary>

A class is a blueprint or template that defines the attributes and methods that objects of that type will have.

</details>

---

### Question 2 [2 marks]

Define object.

<details>
<summary>Mark Scheme Style Answer</summary>

An object is an instance of a class with its own attribute values and access to the class methods.

</details>

---

### Question 3 [2 marks]

Define attribute.

<details>
<summary>Mark Scheme Style Answer</summary>

An attribute is a data value stored about an object, such as a student's name or score.

</details>

---

### Question 4 [2 marks]

Define method.

<details>
<summary>Mark Scheme Style Answer</summary>

A method is a procedure or function belonging to a class that defines a behaviour or action an object can perform.

</details>

---

### Question 5 [2 marks]

Define constructor.

<details>
<summary>Mark Scheme Style Answer</summary>

A constructor is a special method used to initialize a new object when it is created.

</details>

---

## 19. Practice Set 14: Classes and Objects

### Question 1 [4 marks]

A class `Student` has attributes `studentID`, `name`, and `score`.

Give two possible objects of this class.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible objects:

```text
Student("S001", "Ali", 82)
Student("S002", "Maya", 74)
```

Each object is an instance of the `Student` class with its own values.

</details>

---

### Question 2 [4 marks]

Distinguish between a class and an object.

<details>
<summary>Mark Scheme Style Answer</summary>

A class is a blueprint or template that defines attributes and methods. An object is an instance of a class created from that blueprint, with its own specific attribute values.

</details>

---

### Question 3 [4 marks]

For a `Car` class, identify three possible attributes and one possible method.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible attributes:

```text
registrationNumber
colour
speed
fuelLevel
model
```

Possible method:

```text
accelerate()
brake()
refuel()
displayDetails()
```

</details>

---

## 20. Practice Set 15: Encapsulation

### Question 1 [3 marks]

Define encapsulation.

<details>
<summary>Mark Scheme Style Answer</summary>

Encapsulation is the bundling of data and methods inside a class while restricting direct access to the internal data of objects.

</details>

---

### Question 2 [4 marks]

Explain why attributes may be made private.

<details>
<summary>Mark Scheme Style Answer</summary>

Attributes may be made private to prevent them from being changed directly from outside the class. This protects data integrity because changes can be controlled through methods such as setters, where validation can be applied.

</details>

---

### Question 3 [4 marks]

Explain the role of getter and setter methods.

<details>
<summary>Mark Scheme Style Answer</summary>

A getter method returns the value of a private attribute. A setter method updates the value of a private attribute, often after checking that the new value is valid.

</details>

---

### Question 4 [5 marks]

A `BankAccount` class has a private attribute `balance`. Explain why direct access to `balance` should be restricted.

<details>
<summary>Mark Scheme Style Answer</summary>

Direct access to `balance` should be restricted to prevent other parts of the program from changing it to invalid values, such as a negative balance when this is not allowed. Instead, methods such as `deposit()` and `withdraw()` can control how the balance changes and apply validation rules.

</details>

---

## 21. Practice Set 16: UML Class Diagrams

### Question 1 [4 marks]

The following class is described:

```text
Class: Book
Attributes: title, author, ISBN, available
Methods: borrow(), returnBook(), displayDetails()
```

Represent this as a simple UML class diagram in text form.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
Book
-------------------------
title
author
ISBN
available
-------------------------
borrow()
returnBook()
displayDetails()
```

</details>

---

### Question 2 [4 marks]

Interpret this UML-style class diagram.

```text
Student
-------------------------
studentID
name
score
-------------------------
setScore(newScore)
getScore()
displayDetails()
```

State the class name, two attributes, and one method.

<details>
<summary>Mark Scheme Style Answer</summary>

Class name:

```text
Student
```

Attributes include:

```text
studentID, name, score
```

Methods include:

```text
setScore(newScore), getScore(), displayDetails()
```

</details>

---

### Question 3 [4 marks]

Explain why UML class diagrams are useful during software design.

<details>
<summary>Mark Scheme Style Answer</summary>

UML class diagrams show classes, attributes, and methods in a clear structure. They help developers plan object-oriented systems before coding and communicate the design to other team members.

</details>

---

## 22. Practice Set 17: OOP Scenario Practice

### Question 1 [6 marks]

A school wants a program to manage students.

Each student has:

```text
student ID
name
grade
email
```

The program should be able to:

```text
update grade
display student details
send email notification
```

Design a suitable class by identifying attributes and methods.

<details>
<summary>Mark Scheme Style Answer</summary>

Class:

```text
Student
```

Attributes:

```text
studentID
name
grade
email
```

Methods:

```text
updateGrade(newGrade)
displayDetails()
sendEmailNotification(message)
```

Award marks for suitable class name, relevant attributes, and relevant methods.

</details>

---

### Question 2 [6 marks]

A library system uses a `Book` class and a `Member` class. Explain how objects could interact when a member borrows a book.

<details>
<summary>Mark Scheme Style Answer</summary>

A `Member` object could call a method such as `borrowBook(book)`, passing a `Book` object as an argument. The `Book` object could then have its `available` attribute changed to false using a method such as `borrow()`. The `Member` object could also update its list of borrowed books. This shows objects interacting by calling methods and passing object references.

</details>

---

## 23. Practice Set 18: Mixed B2 Programming Questions

### Question 1 [4 marks]

Write pseudocode to validate that an input age is between 12 and 18 inclusive.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
INPUT age

WHILE age < 12 OR age > 18
    OUTPUT "Invalid age"
    INPUT age
ENDWHILE

OUTPUT "Age accepted"
```

</details>

---

### Question 2 [6 marks]

Write pseudocode to find the average of all values in an array `marks`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
total ← 0

FOR index ← 0 TO length(marks) - 1
    total ← total + marks[index]
ENDFOR

average ← total / length(marks)
OUTPUT average
```

</details>

---

### Question 3 [6 marks]

Write pseudocode to count how many values in an array `temperatures` are above 30.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
countAbove ← 0

FOR index ← 0 TO length(temperatures) - 1
    IF temperatures[index] > 30 THEN
        countAbove ← countAbove + 1
    ENDIF
ENDFOR

OUTPUT countAbove
```

</details>

---

### Question 4 [6 marks]

Identify and fix the logic error.

```text
total ← 0

FOR i ← 1 TO 5
    INPUT mark
    total ← total + mark
ENDFOR

average ← total / 4
OUTPUT average
```

<details>
<summary>Mark Scheme Style Answer</summary>

The algorithm inputs 5 marks but divides the total by 4. This gives an incorrect average. The correction is:

```text
average ← total / 5
```

</details>

---

## 24. Practice Set 19: Mixed B3 OOP Questions

### Question 1 [4 marks]

Explain how a class can help organize a program.

<details>
<summary>Mark Scheme Style Answer</summary>

A class groups related data and methods together into one structure. This makes the program easier to understand and maintain because objects of the same type share the same design but can have different attribute values.

</details>

---

### Question 2 [4 marks]

A `Player` class has attributes `name`, `health`, and `score`.

Write two methods that would be suitable for this class and explain what each does.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible methods:

```text
takeDamage(amount): decreases health by amount
addScore(points): increases score by points
displayStatus(): outputs name, health, and score
heal(amount): increases health by amount
```

Award marks for suitable methods and clear explanations.

</details>

---

### Question 3 [6 marks]

Explain why encapsulation is useful in a `Player` class where `health` should stay between 0 and 100.

<details>
<summary>Mark Scheme Style Answer</summary>

Encapsulation can make `health` private so it cannot be changed directly to an invalid value. Setter or method logic such as `takeDamage()` and `heal()` can check that health remains between 0 and 100. This protects data integrity and makes the class easier to maintain.

</details>

---

## 25. Mini Mock: B2 Programming

### Instructions

Attempt the questions before checking the mark scheme.

Total: 30 marks.

---

### Question 1 [2 marks]

Define validation.

<details>
<summary>Mark Scheme Style Answer</summary>

Validation checks whether input data is sensible, reasonable, or allowed before it is processed.

</details>

---

### Question 2 [4 marks]

State a suitable data type for each variable.

```text
studentName = "Lina"
score = 87
price = 19.95
passed = true
```

<details>
<summary>Mark Scheme Style Answer</summary>

```text
studentName: string
score: integer
price: real / float
passed: Boolean
```

</details>

---

### Question 3 [6 marks]

Write pseudocode to input 10 scores and output the highest score.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
INPUT score
highest ← score

FOR count ← 2 TO 10
    INPUT score
    IF score > highest THEN
        highest ← score
    ENDIF
ENDFOR

OUTPUT highest
```

</details>

---

### Question 4 [6 marks]

Write pseudocode to count the number of values in `numbers` that are equal to 0.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
zeroCount ← 0

FOR index ← 0 TO length(numbers) - 1
    IF numbers[index] = 0 THEN
        zeroCount ← zeroCount + 1
    ENDIF
ENDFOR

OUTPUT zeroCount
```

</details>

---

### Question 5 [6 marks]

Trace the following pseudocode.

```text
x ← 2
total ← 0

WHILE x <= 6
    total ← total + x
    x ← x + 2
ENDWHILE

OUTPUT total
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | x before | total | x after | Output |
|---:|---:|---:|---:|---|
| Start | 2 | 0 |  |  |
| 1 | 2 | 2 | 4 |  |
| 2 | 4 | 6 | 6 |  |
| 3 | 6 | 12 | 8 |  |
| End | 8 | 12 |  | 12 |

Final output:

```text
12
```

</details>

---

### Question 6 [6 marks]

Explain the difference between a function and a procedure, and give one reason subprograms are useful.

<details>
<summary>Mark Scheme Style Answer</summary>

A function returns a value to the part of the program that called it, while a procedure performs a task without returning a value in the same way. Subprograms are useful because they break a program into smaller reusable parts, reducing repetition and making the program easier to test and maintain.

</details>

---

## 26. Mini Mock: B3 OOP

### Instructions

Attempt the questions before checking the mark scheme.

Total: 30 marks.

---

### Question 1 [2 marks]

Define object.

<details>
<summary>Mark Scheme Style Answer</summary>

An object is an instance of a class with its own attribute values and access to the class methods.

</details>

---

### Question 2 [4 marks]

Distinguish between an attribute and a method.

<details>
<summary>Mark Scheme Style Answer</summary>

An attribute stores data about an object, such as a player's score. A method is an action or behaviour that an object can perform, such as `addScore()`.

</details>

---

### Question 3 [5 marks]

A `Movie` class has attributes `title`, `duration`, and `rating`.

Suggest three methods for this class.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible methods:

```text
setRating(newRating)
getRating()
displayDetails()
isLongMovie()
updateDuration(newDuration)
```

Award marks for suitable methods related to the class.

</details>

---

### Question 4 [6 marks]

Explain why a constructor is useful.

<details>
<summary>Mark Scheme Style Answer</summary>

A constructor is useful because it initializes a new object when it is created. It can set starting values for attributes, such as name, ID, or score, ensuring the object begins in a valid state.

</details>

---

### Question 5 [6 marks]

Represent this class as a simple UML class diagram in text form.

```text
Class: Product
Attributes: productID, name, price, quantity
Methods: updatePrice(newPrice), updateQuantity(newQuantity), displayDetails()
```

<details>
<summary>Mark Scheme Style Answer</summary>

```text
Product
-------------------------
productID
name
price
quantity
-------------------------
updatePrice(newPrice)
updateQuantity(newQuantity)
displayDetails()
```

</details>

---

### Question 6 [7 marks]

Explain how encapsulation could protect the `price` attribute in a `Product` class.

<details>
<summary>Mark Scheme Style Answer</summary>

Encapsulation can make the `price` attribute private so it cannot be changed directly by other parts of the program. A setter method such as `setPrice(newPrice)` can check that the new price is valid, for example not negative, before updating it. A getter method can allow other code to read the price without directly accessing the internal attribute. This protects data integrity and makes the class easier to maintain.

</details>

---

## 27. Common B2 and B3 Mistakes

| Mistake | Why It Loses Marks | Fix |
|---|---|---|
| variable and constant confused | value change not understood | variable changes; constant does not |
| string and integer confused | IDs may not be used for arithmetic | choose type by use |
| assignment treated as equality | tracing becomes wrong | assignment updates variable |
| loop boundary wrong | off-by-one error | trace first and last iteration |
| accumulator not initialized | total may be wrong | set total ← 0 |
| highest initialized to 0 | fails for negative numbers | use first input as starting highest |
| output inside loop accidentally | repeated output | check indentation/placement |
| array index wrong | wrong element accessed | check indexing convention |
| validation and verification confused | different checking purpose | validation = sensible; verification = copied correctly |
| class and object confused | OOP answer loses precision | class blueprint; object instance |
| method and attribute confused | data vs behaviour unclear | attribute stores; method acts |
| constructor described as normal method only | initialization missed | constructor initializes new object |
| encapsulation described as hiding everything | purpose unclear | restrict direct access to protect data |

---

## 28. B2 and B3 Exam Checklist

Before a programming/OOP test, students should be able to:

- [ ] define variable and constant
- [ ] choose suitable data types
- [ ] evaluate expressions with DIV and MOD
- [ ] write IF/ELSE statements
- [ ] write FOR and WHILE loops
- [ ] use counters and accumulators
- [ ] process arrays/lists using indexes
- [ ] write a linear search
- [ ] explain bubble sort at a basic level
- [ ] define parameter, argument, and return value
- [ ] write simple functions
- [ ] explain validation and verification
- [ ] create normal, boundary, and invalid test data
- [ ] identify logic errors
- [ ] explain file processing operations
- [ ] define class and object
- [ ] identify attributes and methods
- [ ] explain constructors
- [ ] explain encapsulation
- [ ] read simple UML class diagrams
- [ ] design simple classes from scenarios

---

## 29. One-page B2 and B3 Practice Summary

| Skill | What to Remember |
|---|---|
| Variable | named storage that can change |
| Constant | named value that does not change |
| Data type | kind of data stored |
| Selection | IF/ELSE decision |
| Iteration | loop/repetition |
| Array/list | multiple values under one name |
| Index | element position |
| Counter | counts repetitions/items |
| Accumulator | running total |
| Linear search | check items one by one |
| Bubble sort | compare adjacent items and swap |
| Function | returns a value |
| Procedure | performs a task |
| Parameter | receives value in subprogram |
| Argument | value passed into subprogram |
| Validation | checks input is sensible |
| Verification | checks data entered/copied correctly |
| Test data | normal, boundary, invalid |
| Class | blueprint |
| Object | instance |
| Attribute | data |
| Method | behaviour |
| Constructor | initializes object |
| Encapsulation | restricts direct access to data |
| UML | class name, attributes, methods |

