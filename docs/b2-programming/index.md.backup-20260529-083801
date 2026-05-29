# B2 Programming

## 1. Module Overview

B2 Programming is the main practical programming unit of the course.

This module helps students move from:

```text
understanding algorithms
```

to:

```text
writing, tracing, testing, and explaining programs
```

The course uses both:

```text
IB pseudocode + Java
```

IB pseudocode helps students describe algorithms clearly. Java helps students write real executable programs.

---

## 2. Learning Goals

By the end of B2 Programming, students should be able to:

- explain basic programming concepts using correct terminology
- use variables and data types correctly
- write input and output programs
- use selection to make decisions
- use loops to repeat instructions
- use arrays to store and process multiple values
- search and sort array data
- test programs using suitable test data
- debug syntax, runtime, and logic errors
- understand basic file processing
- translate simple IB pseudocode into Java
- answer exam-style programming and tracing questions

---

## 3. B2 Learning Path

The recommended order is:

```text
Programming Basics
→ Input and Output
→ Variables
→ Data Types
→ Selection
→ Loops
→ Arrays
→ Searching
→ Sorting
→ Testing and Debugging
→ File Processing
```

This order is intentional.

Students first learn how programs are structured, then how data is stored, then how programs make decisions and repeat actions. After that, they can process arrays and write algorithms such as searching and sorting.

---

## 4. Concept Map

```text
Programming Basics
        ↓
Input and Output
        ↓
Variables + Data Types
        ↓
Selection
        ↓
Loops
        ↓
Arrays
        ↓
Searching + Sorting
        ↓
Testing and Debugging
        ↓
File Processing
```

::: tip Teacher Strategy
Do not rush Loops and Arrays. These two pages are the foundation for Searching, Sorting, and many exam-style algorithm questions.
:::

---

## 5. Topic Index

| Order | Topic | Main Focus | Link |
|---:|---|---|---|
| 1 | Programming Basics | program structure, IPO model, Java basics, trace tables | [Open](./programming-basics) |
| 2 | Input and Output | Scanner, print/println, input-process-output programs | [Open](./input-output) |
| 3 | Variables | assignment, reassignment, counters, accumulators, swapping | [Open](./variables) |
| 4 | Data Types | int, double, boolean, char, String, casting | [Open](./data-types) |
| 5 | Selection | IF, IF ELSE, ELSE IF, Boolean logic, validation | [Open](./selection) |
| 6 | Loops | FOR, WHILE, DO WHILE, tracing, infinite loops | [Open](./loops) |
| 7 | Arrays | indexing, traversal, total, average, count, max/min | [Open](./arrays) |
| 8 | Searching | linear search, found flag, position, early stopping | [Open](./searching) |
| 9 | Sorting | swap, bubble sort, insertion sort, trace tables | [Open](./sorting) |
| 10 | Testing and Debugging | test data, error types, trace tables, debugging | [Open](./testing-debugging) |
| 11 | File Processing | reading files, writing files, CSV-style data | [Open](./file-processing) |

---

## 6. Bilingual Explanation

<LangBlock>
<template #cn>

### 中文说明

B2 Programming 是整个课程中最需要学生动手练习的部分。

学生不能只“看懂解释”，还需要做到：

```text
会读代码
会 trace
会写代码
会找错误
会解释为什么这样写
```

这一单元最容易卡住的地方通常是：

1. `x = x + 1` 这种变量更新
2. `if / else` 条件判断
3. loop 中变量值如何变化
4. array index 从 0 开始
5. searching 中的 `found` flag
6. sorting 中的 swap 和 nested loop
7. testing 中的 boundary data

所以这个模块的学习方法应该是：

```text
先理解概念
再看代码
再 trace
再修改代码
最后独立写代码
```

</template>

<template #en>

### English Explanation

B2 Programming is the most hands-on part of the course.

Students should not only “understand the explanation”. They also need to:

```text
read code
trace code
write code
find errors
explain why the code works
```

The most common difficult points in this unit are:

1. variable updates such as `x = x + 1`
2. `if / else` condition logic
3. how variable values change inside loops
4. array indexes starting from 0
5. the `found` flag in searching
6. swapping and nested loops in sorting
7. boundary data in testing

Therefore, the recommended learning method is:

```text
understand the concept
then read the code
then trace the code
then modify the code
finally write code independently
```

</template>
</LangBlock>

---

## 7. Core Programming Patterns

Students should recognize these repeated patterns across B2.

### 7.1 Input → Process → Output

```java
Scanner input = new Scanner(System.in);

System.out.print("Enter mark: ");
int mark = input.nextInt();

double percentage = mark / 100.0;

System.out.println("Percentage: " + percentage);
```

### 7.2 Counter Pattern

```java
int count = 0;

if (mark >= 50) {
    count++;
}
```

### 7.3 Accumulator Pattern

```java
int total = 0;

total = total + mark;
```

### 7.4 Array Traversal Pattern

```java
for (int i = 0; i < values.length; i++) {
    System.out.println(values[i]);
}
```

### 7.5 Linear Search Pattern

```java
boolean found = false;

for (int i = 0; i < values.length; i++) {
    if (values[i] == target) {
        found = true;
    }
}
```

### 7.6 Swap Pattern

```java
int temp = values[i];
values[i] = values[i + 1];
values[i + 1] = temp;
```

---

## 8. IB Pseudocode vs Java

| Concept | IB Pseudocode | Java |
|---|---|---|
| Output | `OUTPUT value` | `System.out.println(value);` |
| Input | `INPUT value` | `Scanner input = new Scanner(System.in);` |
| Assignment | `score = 80` | `int score = 80;` |
| Selection | `IF condition THEN` | `if (condition) { ... }` |
| Loop | `FOR i = 1 TO 10 DO` | `for (int i = 1; i <= 10; i++)` |
| Array access | `marks[i]` | `marks[i]` |
| Boolean | `true / false` | `true / false` |
| End block | `END IF`, `END FOR` | closing brace `}` |

::: warning Important
IB pseudocode is less strict than Java. Java code must follow exact syntax, including semicolons, braces, correct capitalization, and correct data types.
:::

---

## 9. Suggested Teaching Pacing

Actual speed depends on student background and class performance.

| Topic | Suggested Lessons | Notes |
|---|---:|---|
| Programming Basics | 2-3 | Focus on IPO model and Java structure |
| Input and Output | 2-3 | Scanner needs live coding practice |
| Variables | 2-3 | Use trace tables heavily |
| Data Types | 2 | Include integer division and String issues |
| Selection | 3-4 | Include validation and Boolean logic |
| Loops | 5-7 | Slow down; trace many examples |
| Arrays | 5-7 | Use traversal, total, count, max/min |
| Searching | 3-4 | Focus on found flag and not found case |
| Sorting | 4-6 | Use physical/card tracing first |
| Testing and Debugging | 3-4 | Connect to every programming task |
| File Processing | 2-4 | Use as practical extension or later application |

---

## 10. Recommended Classroom Routine

For each programming lesson, use this pattern:

```text
1. Review previous pattern
2. Introduce new concept
3. Show IB pseudocode
4. Show Java code
5. Explain line by line
6. Trace by hand
7. Predict output
8. Modify code
9. Write similar code independently
10. Check using test data
```

This routine builds both coding skill and exam explanation skill.

---

## 11. Student Revision Routine

Students should revise programming in this order:

```text
read concept explanation
→ copy one code example
→ trace it by hand
→ run or mentally test it
→ change one part of the code
→ predict what changes
→ write a similar program without looking
```

For every Java program, students should ask:

```text
What are the variables?
What are their data types?
Where does input happen?
Where does processing happen?
Where does output happen?
What conditions are checked?
What repeats?
What could go wrong?
```

---

## 12. B2 Common Mistakes Overview

| Mistake | Topic | Fix |
|---|---|---|
| Missing semicolon | Programming Basics | End Java statements with `;` |
| Wrong data type | Data Types | Match type to value and purpose |
| `=` instead of `==` | Variables / Selection | Use `==` for comparison |
| String comparison with `==` | Data Types / Searching | Use `.equals()` |
| Integer division loses decimal | Data Types | Use `2.0` or casting |
| `nextLine()` skipped | Input and Output | Add extra `input.nextLine();` |
| Infinite loop | Loops | Update loop variable |
| Off-by-one error | Loops / Arrays | Check start and stop values |
| `i <= array.length` | Arrays | Use `i < array.length` |
| `found` reset to false | Searching | Only set found true when matched |
| Wrong swap | Sorting | Use temporary variable |
| Not testing boundary values | Testing | Use normal, boundary, invalid data |

---

## 13. Assessment Focus

B2 questions may ask students to:

- trace code and state output
- complete missing lines of pseudocode or Java
- write an algorithm for a scenario
- explain a programming concept
- identify and correct an error
- choose suitable test data
- compare two programming structures
- explain how an algorithm works

### Common Exam-style Command Words

| Command | What Students Should Do |
|---|---|
| State | Give a short answer |
| Identify | Name the item or error |
| Describe | Give key features or steps |
| Explain | Give reason and consequence |
| Trace | Follow the code step by step |
| Construct / Write | Produce pseudocode or code |
| Compare | Give similarities and differences |

---

## 14. Mini Diagnostic Check

Use this before starting advanced programming tasks.

### Question 1

What is the output?

```java
int x = 3;
x = x + 2;
System.out.println(x);
```

<details>
<summary>Answer</summary>

```text
5
```

</details>

---

### Question 2

Which data type is best for a full name?

<details>
<summary>Answer</summary>

```text
String
```

</details>

---

### Question 3

What is wrong?

```java
for (int i = 0; i <= values.length; i++) {
    System.out.println(values[i]);
}
```

<details>
<summary>Answer</summary>

The condition should be:

```java
i < values.length
```

because the last valid index is `values.length - 1`.

</details>

---

### Question 4

Why is `found` usually initialized to `false` in linear search?

<details>
<summary>Answer</summary>

At the start, the program has not found the target yet. It should only change `found` to true when a matching value is discovered.

</details>

---

### Question 5

Why is a temporary variable needed in swapping?

<details>
<summary>Answer</summary>

It stores one original value so it is not lost when the other value is copied over it.

</details>

---

## 15. End-of-module Practice Plan

After finishing all B2 topics, students should complete:

| Practice Type | Purpose |
|---|---|
| 10 short output prediction questions | Build tracing accuracy |
| 5 debugging questions | Identify common errors |
| 5 pseudocode-to-Java tasks | Connect IB algorithm style to Java |
| 3 array processing tasks | Practise traversal, total, count, max/min |
| 2 searching tasks | Practise found flag and position |
| 2 sorting trace tasks | Practise swap and nested loops |
| 1 mini project | Combine input, arrays, selection, loops, testing |

---

## 16. Suggested Mini Project

### Student Marks Analyzer

Write a Java program that:

1. stores several student marks in an array
2. calculates total and average
3. counts how many students passed
4. finds the highest and lowest mark
5. searches for a target mark
6. sorts the marks in ascending order
7. outputs clear results

This project combines:

```text
variables
data types
loops
arrays
selection
searching
sorting
testing
```

---

## 17. Module Completion Checklist

Before moving to B3 Object-Oriented Programming, students should be able to:

- [ ] write a simple Java program with correct structure
- [ ] use `Scanner` for input
- [ ] output clear messages
- [ ] declare and update variables
- [ ] choose correct data types
- [ ] use `if`, `else if`, and `else`
- [ ] use `for`, `while`, and `do while` loops
- [ ] trace loop variables
- [ ] create and traverse arrays
- [ ] calculate total, average, count, max, and min
- [ ] perform linear search
- [ ] trace bubble sort
- [ ] create test tables
- [ ] identify syntax, runtime, and logic errors
- [ ] explain code using correct terminology

---

## 18. One-page Module Summary

| Area | Key Idea |
|---|---|
| Programming Basics | Programs implement algorithms using code |
| Input and Output | Programs receive data and display results |
| Variables | Store and update values |
| Data Types | Control what values can be stored |
| Selection | Choose branches based on conditions |
| Loops | Repeat instructions |
| Arrays | Store multiple related values |
| Searching | Find a target value |
| Sorting | Arrange data in order |
| Testing | Check expected vs actual results |
| Debugging | Find and fix errors |
| File Processing | Store and retrieve persistent data |

::: tip Next Module
After B2, students move to **B3 Object-Oriented Programming**, where programs are organized using classes and objects.
:::
