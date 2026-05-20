# Programming Basics

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what a **computer program** is
- describe how programming connects to algorithms
- understand the basic **input-process-output** model
- distinguish between syntax errors, runtime errors, and logic errors
- read and explain a simple Java program
- use IB-style pseudocode and Java code for a simple problem
- write exam-style answers using accurate programming vocabulary

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Understanding how programs are designed and executed |
| Connected units | B1 Algorithms, B2 Variables, Selection, Loops, Testing and Debugging |
| Exam relevance | Code reading, pseudocode, error identification, algorithm-to-code questions |

::: tip Learning Focus
Programming is not just typing code. It starts with understanding the problem, designing an algorithm, writing code, testing it, and improving it.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Program | 程序 | A set of instructions that a computer can execute |
| Programming | 编程 | The process of designing and writing instructions for a computer |
| Source code | 源代码 | Code written by a programmer |
| Syntax | 语法 | The rules of a programming language |
| Syntax error | 语法错误 | An error caused by breaking language rules |
| Runtime error | 运行时错误 | An error that occurs while the program is running |
| Logic error | 逻辑错误 | An error where the program runs but gives the wrong result |
| Debugging | 调试 | Finding and fixing errors in a program |
| Input | 输入 | Data entered into a program |
| Process | 处理 | Operations performed on data |
| Output | 输出 | Result displayed or returned by a program |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Program（程序）** 是一组计算机可以执行的指令。  
**Programming（编程）** 是设计、编写、测试和改进这些指令的过程。

很多学生刚开始学编程时，会以为编程就是“写代码”。但实际上，写代码只是其中一步。一个比较完整的编程过程通常包括：

1. 理解问题
2. 分解问题
3. 设计算法
4. 写 pseudocode
5. 写 Java code
6. 测试程序
7. 调试错误
8. 改进程序

程序通常可以用 **IPO model（Input-Process-Output model）** 来理解：

| Stage | Meaning | Example |
|---|---|---|
| Input | 程序接收的数据 | 输入两个数字 |
| Process | 程序对数据进行处理 | 把两个数字相加 |
| Output | 程序显示或返回的结果 | 输出总和 |

例如，一个计算矩形面积的程序：

- Input: length 和 width
- Process: area = length × width
- Output: area

在 IB CS 中，学生不仅要会写程序，还要会解释程序如何工作、如何测试、哪里可能出错，以及如何修正错误。

</template>

<template #en>

### English Explanation

A **program** is a set of instructions that a computer can execute.  
**Programming** is the process of designing, writing, testing, and improving those instructions.

Many students think programming only means “writing code”. However, writing code is only one part of the full process. A complete programming process often includes:

1. understanding the problem
2. decomposing the problem
3. designing an algorithm
4. writing pseudocode
5. writing Java code
6. testing the program
7. debugging errors
8. improving the program

Programs can often be understood using the **IPO model**:

| Stage | Meaning | Example |
|---|---|---|
| Input | Data received by the program | Enter two numbers |
| Process | Operations performed on the data | Add the two numbers |
| Output | Result displayed or returned | Display the total |

For example, a program that calculates the area of a rectangle uses:

- Input: length and width
- Process: area = length × width
- Output: area

In IB Computer Science, students need to do more than write code. They must also explain how code works, how it can be tested, where errors may occur, and how errors can be fixed.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Simple Shopping Total

A shop wants a program to calculate the total cost of two items.

Real-world task:

> The user enters the price of two items. The program calculates and displays the total cost.

Using the IPO model:

| Stage | Detail |
|---|---|
| Input | price of item 1, price of item 2 |
| Process | total = price1 + price2 |
| Output | total cost |

This problem is simple, but it shows the basic structure of many programs:

```text
Input data → Process data → Output result
```

::: info Why this matters
Most programming problems can be simplified by first identifying input, process, and output.
:::

---

## 6. IB Pseudocode Pattern

### Basic IPO Pattern

```text
INPUT value1
INPUT value2

result = value1 + value2

OUTPUT result
```

### Shopping Total Example

```text
INPUT price1
INPUT price2

total = price1 + price2

OUTPUT total
```

### Rectangle Area Example

```text
INPUT length
INPUT width

area = length * width

OUTPUT area
```

::: tip Exam Note
In exam answers, pseudocode should be clear and logically correct. It does not need to use exact Java syntax.
:::

---

## 7. Java Code Example

### Example 1: Add Two Prices

```java
public class ShoppingTotal {
    public static void main(String[] args) {
        double price1 = 12.50;
        double price2 = 7.30;

        double total = price1 + price2;

        System.out.println("Total cost: " + total);
    }
}
```

### Example 2: Calculate Rectangle Area

```java
public class RectangleArea {
    public static void main(String[] args) {
        double length = 8.0;
        double width = 3.5;

        double area = length * width;

        System.out.println("Area: " + area);
    }
}
```

::: warning Important Java Note
These examples use fixed values to focus on basic programming structure. Later pages will show how to use real user input.
:::

---

## 8. Line-by-line Code Explanation

### Shopping Total Example

| Code Part | Explanation |
|---|---|
| `public class ShoppingTotal` | Defines a Java class called `ShoppingTotal` |
| `public static void main(String[] args)` | Starting point of the Java program |
| `double price1 = 12.50;` | Stores the first item price |
| `double price2 = 7.30;` | Stores the second item price |
| `double total = price1 + price2;` | Adds the two prices and stores the result |
| `System.out.println(...)` | Displays the result |

### Rectangle Area Example

| Code Part | Explanation |
|---|---|
| `double length = 8.0;` | Stores the rectangle length |
| `double width = 3.5;` | Stores the rectangle width |
| `double area = length * width;` | Calculates the area |
| `System.out.println("Area: " + area);` | Outputs the result |

### Java structure to notice

| Java Feature | Purpose |
|---|---|
| Class | Holds the program code |
| Main method | Where execution starts |
| Variable declaration | Creates a named storage location |
| Assignment | Stores a value |
| Expression | Performs calculation |
| Output statement | Displays a result |

---

## 9. Step-by-step Execution

### Shopping Total Example

Given:

| Variable | Value |
|---|---:|
| price1 | 12.50 |
| price2 | 7.30 |

Execution:

| Step | Action | Result |
|---|---|---|
| 1 | Store price1 | price1 = 12.50 |
| 2 | Store price2 | price2 = 7.30 |
| 3 | Calculate total | total = 19.80 |
| 4 | Output total | Total cost: 19.8 |

Final output:

```text
Total cost: 19.8
```

### Rectangle Area Example

Given:

| Variable | Value |
|---|---:|
| length | 8.0 |
| width | 3.5 |

Execution:

| Step | Action | Result |
|---|---|---|
| 1 | Store length | length = 8.0 |
| 2 | Store width | width = 3.5 |
| 3 | Calculate area | area = 28.0 |
| 4 | Output area | Area: 28.0 |

Final output:

```text
Area: 28.0
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Starting to code without identifying input/process/output | The solution may be unclear | Plan the IPO first |
| Forgetting semicolons in Java | Causes syntax errors | End Java statements with `;` |
| Misspelling variable names | Java treats different spellings as different names | Use consistent names |
| Using the wrong data type | Calculations or output may be wrong | Choose suitable data types |
| Confusing syntax errors and logic errors | Error type may be identified incorrectly | Learn the difference |
| Thinking a program is correct because it runs | It may still have a logic error | Test with expected results |
| Writing unclear output | User may not understand result | Add labels such as `"Total cost: "` |

---

## 11. Guided Practice

### Practice 1: Identify IPO

A program calculates the average of two marks.

Identify the input, process, and output.

<details>
<summary>Suggested Answer</summary>

| Stage | Answer |
|---|---|
| Input | mark1, mark2 |
| Process | average = (mark1 + mark2) / 2 |
| Output | average |

</details>

---

### Practice 2: Write Pseudocode

Write pseudocode for calculating the average of two marks.

<details>
<summary>Suggested Answer</summary>

```text
INPUT mark1
INPUT mark2

average = (mark1 + mark2) / 2

OUTPUT average
```

</details>

---

### Practice 3: Read Java Code

What is the output?

```java
public class TotalExample {
    public static void main(String[] args) {
        int a = 6;
        int b = 4;
        int total = a + b;

        System.out.println(total);
    }
}
```

<details>
<summary>Suggested Answer</summary>

```text
10
```

Explanation:

`a` is 6 and `b` is 4, so `total = 6 + 4 = 10`.

</details>

---

## 12. Independent Practice

Complete these tasks without looking at answers first.

### Task 1

A program calculates the perimeter of a rectangle.

Identify:

| Stage | Answer |
|---|---|
| Input |  |
| Process |  |
| Output |  |

### Task 2

Write IB-style pseudocode for the perimeter program.

Formula:

```text
perimeter = 2 * (length + width)
```

### Task 3

Write Java code for the perimeter program using fixed values.

### Task 4

Explain whether the following error is a syntax error or logic error:

```java
int total = 5 + ;
```

### Task 5

Explain whether the following error is a syntax error or logic error:

A program should calculate area using `length * width`, but the programmer writes:

```java
double area = length + width;
```

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by a computer program.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for:

- a set of instructions
- that can be executed by a computer

Example answer:

A computer program is a set of instructions that can be executed by a computer to perform a task.

</details>

---

### Question 2 [3 marks]

A program calculates the total cost of two products.

Identify the input, processing, and output.

<details>
<summary>Mark Scheme Style Answer</summary>

| Stage | Answer |
|---|---|
| Input | price of product 1 and price of product 2 |
| Processing | total = price1 + price2 |
| Output | total cost |

Award one mark for each correct stage.

</details>

---

### Question 3 [4 marks]

A program runs without displaying an error message, but the output is incorrect.

Explain what type of error this is and how it could be found.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for points such as:

- this is a logic error
- the program syntax is valid, so it can run
- the algorithm or calculation is incorrect
- the error can be found using test data, expected results, trace tables, or debugging

Example answer:

This is a logic error because the program runs but produces the wrong output. It may be caused by an incorrect calculation or condition. The programmer can find it by using test data with known expected results, or by using a trace table to check variable values step by step.

</details>

---

### Question 4 [6 marks]

A student wants to write a program to calculate the area of a triangle.

The formula is:

```text
area = base * height / 2
```

Construct pseudocode and explain how the program follows the input-process-output model.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible pseudocode:

```text
INPUT base
INPUT height

area = base * height / 2

OUTPUT area
```

Award marks for:

- inputting base
- inputting height
- correctly calculating area
- outputting area
- explaining that base and height are inputs
- explaining that the calculation is processing and area is output

Example explanation:

The program follows the IPO model because it takes `base` and `height` as input, processes them using the formula `base * height / 2`, and outputs the calculated area.

</details>

---

## 14. Classroom Activity

### Activity: IPO to Java

**Time:** 15-20 minutes  
**Grouping:** Pairs

Choose one problem:

1. calculate the area of a circle  
2. calculate the average of three marks  
3. calculate the total price after tax  
4. calculate the number of minutes from hours  

For your chosen problem:

1. Identify input.
2. Identify processing.
3. Identify output.
4. Write IB-style pseudocode.
5. Write simple Java code using fixed values.
6. Create one test case with expected output.

| Stage | Your Answer |
|---|---|
| Input |  |
| Process |  |
| Output |  |
| Test data |  |
| Expected output |  |

::: tip Exit Ticket
Before leaving, write one sentence explaining why programmers should plan input, processing, and output before coding.
:::

---

## 15. Homework

### Homework Task

Choose one simple calculation program:

- rectangle perimeter calculator
- triangle area calculator
- average mark calculator
- currency conversion calculator
- speed calculator using distance and time

Complete the following:

1. Write a short description of the program.
2. Identify input, processing, and output.
3. Write IB-style pseudocode.
4. Write Java code using fixed values.
5. Create a step-by-step execution table.
6. Identify one possible syntax error.
7. Identify one possible logic error.
8. Write one exam-style paragraph explaining how the program follows the IPO model.

### Suggested Paragraph Structure

```text
The program follows the input-process-output model.
The inputs are ...
The processing is ...
The output is ...
This structure helps because ...
```

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Program | A set of instructions that a computer can execute |
| Programming process | Understand problem → design algorithm → code → test → debug |
| IPO model | Input → Process → Output |
| Syntax error | Breaks programming language rules |
| Runtime error | Happens while program is running |
| Logic error | Program runs but gives wrong result |
| Exam phrase | "The program accepts input, processes the data using a calculation, and outputs the result." |
