# Algorithms

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define an **algorithm**
- explain why algorithms are important in computer science
- identify sequence, selection, and iteration in an algorithm
- write simple algorithms using IB-style pseudocode
- convert a real-world problem into a clear step-by-step solution
- trace an algorithm to predict its output
- write exam-style answers using accurate CS vocabulary

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Designing step-by-step solutions |
| Connected units | B2 Programming, B3 OOP, IA project |
| Exam relevance | Pseudocode, trace tables, algorithm design, problem-solving questions |

::: tip Learning Focus
An algorithm is not just “some steps”. A good algorithm must be clear, finite, ordered, and unambiguous.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Algorithm | 算法 | A finite set of step-by-step instructions for solving a problem |
| Sequence | 顺序结构 | Instructions carried out one after another in order |
| Selection | 选择结构 | A decision structure, such as IF / ELSE |
| Iteration | 循环结构 | Repetition of instructions |
| Condition | 条件 | A statement that is true or false |
| Pseudocode | 伪代码 | Structured language used to describe an algorithm without using a specific programming language |
| Trace | 追踪执行 | Following an algorithm step by step to find variable values or output |
| Termination | 结束 | The point where an algorithm stops |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Algorithm（算法）** 是一组清晰、有顺序、有限的步骤，用来解决一个问题。

在学习编程之前，学生必须先学会设计算法。因为程序本质上就是把算法转换成某一种编程语言，比如 Java。

一个好的算法应该具有以下特点：

- **Clear（清晰）**：每一步都能被理解
- **Ordered（有顺序）**：步骤必须按正确顺序执行
- **Finite（有限）**：算法必须在某个点结束
- **Unambiguous（无歧义）**：每一步不能有多种解释
- **Effective（可执行）**：每一步都应该是可以完成的操作

例如，“做一杯茶”也可以看成一个算法：

1. 烧水
2. 把茶包放进杯子
3. 倒入热水
4. 等待几分钟
5. 取出茶包
6. 饮用

但是在计算机科学中，算法通常更精确，例如：

- 输入一个分数
- 判断是否大于等于 50
- 如果是，输出 Pass
- 否则，输出 Fail

算法经常包含三种基本结构：

| Structure | 中文 | Meaning |
|---|---|---|
| Sequence | 顺序 | Steps happen one after another |
| Selection | 选择 | Program chooses between paths |
| Iteration | 循环 | Program repeats steps |

</template>

<template #en>

### English Explanation

An **algorithm** is a clear, finite, ordered set of step-by-step instructions used to solve a problem.

Before writing code, students should learn how to design algorithms. A program is basically an algorithm written in a programming language such as Java.

A good algorithm should be:

- **Clear**: each step can be understood
- **Ordered**: steps are executed in the correct order
- **Finite**: the algorithm must eventually stop
- **Unambiguous**: each step should have only one meaning
- **Effective**: each step should be possible to carry out

For example, making a cup of tea can be described as an algorithm:

1. Boil water.
2. Put a tea bag in a cup.
3. Pour hot water into the cup.
4. Wait for a few minutes.
5. Remove the tea bag.
6. Drink the tea.

In computer science, algorithms are usually more precise. For example:

- input a mark
- check whether the mark is at least 50
- if yes, output Pass
- otherwise, output Fail

Algorithms often use three core structures:

| Structure | Meaning |
|---|---|
| Sequence | Steps happen one after another |
| Selection | The algorithm chooses between different paths |
| Iteration | The algorithm repeats steps |

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Student Pass/Fail System

A school wants a system to decide whether a student passes an exam.

The rule is:

> If the mark is 50 or above, the student passes. Otherwise, the student fails.

This can be written as an algorithm.

| Step | Action |
|---|---|
| 1 | Input the student's mark |
| 2 | Check whether the mark is greater than or equal to 50 |
| 3 | If true, output Pass |
| 4 | If false, output Fail |

This example includes:

| Algorithm Structure | Where it appears |
|---|---|
| Sequence | Input happens before checking the mark |
| Selection | IF mark >= 50 |
| Output | Pass or Fail is displayed |

::: info Why this is an algorithm
It gives a clear set of steps that can be followed to solve the pass/fail decision problem.
:::

---

## 6. IB Pseudocode Pattern

### Basic Sequence

```text
INPUT name
OUTPUT name
```

### Selection

```text
INPUT mark

IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
END IF
```

### Iteration

```text
count = 1

WHILE count <= 5 DO
    OUTPUT count
    count = count + 1
END WHILE
```

### Combined Example

```text
INPUT number

IF number MOD 2 = 0 THEN
    OUTPUT "Even"
ELSE
    OUTPUT "Odd"
END IF
```

::: tip Exam Note
In pseudocode questions, focus on logic. The syntax does not need to be exactly like Java, but the meaning must be clear and unambiguous.
:::

---

## 7. Java Code Example

Below is a Java version of the pass/fail algorithm.

```java
public class PassFailChecker {
    public static void main(String[] args) {
        int mark = 72;

        if (mark >= 50) {
            System.out.println("Pass");
        } else {
            System.out.println("Fail");
        }
    }
}
```

Another example: checking whether a number is even or odd.

```java
public class EvenOddChecker {
    public static void main(String[] args) {
        int number = 17;

        if (number % 2 == 0) {
            System.out.println("Even");
        } else {
            System.out.println("Odd");
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

### Pass/Fail Example

| Code Part | Explanation |
|---|---|
| `int mark = 72;` | Stores the student's mark |
| `if (mark >= 50)` | Checks whether the mark is at least 50 |
| `System.out.println("Pass");` | Runs if the condition is true |
| `else` | Gives the alternative path |
| `System.out.println("Fail");` | Runs if the condition is false |

### Even/Odd Example

| Code Part | Explanation |
|---|---|
| `int number = 17;` | Stores the number to check |
| `number % 2` | Finds the remainder when divided by 2 |
| `number % 2 == 0` | Checks whether the number is divisible by 2 |
| `"Even"` | Output if the condition is true |
| `"Odd"` | Output if the condition is false |

### Why this connects to algorithms

The Java code is just an implementation of the algorithm.

| Algorithm idea | Java implementation |
|---|---|
| Input/store value | `int mark = 72;` |
| Decision | `if (mark >= 50)` |
| Output result | `System.out.println(...)` |

---

## 9. Step-by-step Execution

### Example 1: Pass/Fail

Given:

| Variable | Value |
|---|---:|
| mark | 72 |

Execution:

| Step | Action | Result |
|---|---|---|
| 1 | Store mark | mark = 72 |
| 2 | Check mark >= 50 | 72 >= 50 is true |
| 3 | Run true branch | Output Pass |

Final output:

```text
Pass
```

### Example 2: Even/Odd

Given:

| Variable | Value |
|---|---:|
| number | 17 |

Execution:

| Step | Action | Result |
|---|---|---|
| 1 | Store number | number = 17 |
| 2 | Calculate number % 2 | 17 % 2 = 1 |
| 3 | Check number % 2 == 0 | false |
| 4 | Run else branch | Output Odd |

Final output:

```text
Odd
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Writing vague steps such as “do the calculation” | The step is not clear enough | Specify what calculation is done |
| Forgetting input | The algorithm may not have data to process | Identify input first |
| Forgetting output | The algorithm may not show a result | End with clear output |
| Missing `END IF` in pseudocode | The structure becomes unclear | Close each block clearly |
| Using `=` instead of `==` in Java conditions | Assignment and comparison are different in Java | Use `==` for equality checking |
| Creating an infinite loop | The algorithm never stops | Make sure loop variables change |
| Not checking boundary values | Results may be wrong at edge cases | Test values like 49, 50, 51 |

---

## 11. Guided Practice

### Practice 1: Temperature Checker

A program should output:

- `"Cold"` if temperature is below 10
- `"Normal"` if temperature is from 10 to 30 inclusive
- `"Hot"` if temperature is above 30

Write pseudocode for this algorithm.

<details>
<summary>Suggested Answer</summary>

```text
INPUT temperature

IF temperature < 10 THEN
    OUTPUT "Cold"
ELSE
    IF temperature <= 30 THEN
        OUTPUT "Normal"
    ELSE
        OUTPUT "Hot"
    END IF
END IF
```

</details>

---

### Practice 2: Trace the Algorithm

Algorithm:

```text
x = 4
y = 2
x = x + y
y = x * 2
OUTPUT y
```

Trace:

| Step | x | y | Output |
|---|---:|---:|---|
| x = 4 | 4 |  |  |
| y = 2 | 4 | 2 |  |
| x = x + y | 6 | 2 |  |
| y = x * 2 | 6 | 12 |  |
| OUTPUT y | 6 | 12 | 12 |

::: tip Answer
Final output: 12
:::

---

### Practice 3: Identify Structures

Look at this algorithm:

```text
INPUT score

IF score >= 80 THEN
    OUTPUT "Excellent"
ELSE
    OUTPUT "Keep practising"
END IF
```

<details>
<summary>Suggested Answer</summary>

| Structure | Example |
|---|---|
| Sequence | input happens before decision |
| Selection | IF score >= 80 |
| Output | Excellent or Keep practising |

</details>

---

## 12. Independent Practice

Complete these tasks without looking at answers first.

### Task 1

Write pseudocode for a program that inputs a number and outputs whether it is positive, negative, or zero.

### Task 2

Write pseudocode for a program that inputs a student's mark and outputs:

- `"A"` if mark is 80 or above
- `"B"` if mark is 60 to 79
- `"C"` otherwise

### Task 3

Trace this algorithm:

```text
a = 3
b = 5
a = a * 2
b = b + a
OUTPUT b
```

Use this table:

| Step | a | b | Output |
|---|---:|---:|---|

### Task 4

Write the Java code for Task 1.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by an algorithm.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for:

- a finite set of instructions or steps
- used to solve a problem or complete a task

Example answer:

An algorithm is a finite set of step-by-step instructions used to solve a problem.

</details>

---

### Question 2 [4 marks]

A program inputs a number and outputs whether it is even or odd.

Construct an algorithm for this problem using pseudocode.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for:

- inputting the number
- testing whether the number is divisible by 2
- outputting Even when the condition is true
- outputting Odd when the condition is false

Example answer:

```text
INPUT number

IF number MOD 2 = 0 THEN
    OUTPUT "Even"
ELSE
    OUTPUT "Odd"
END IF
```

</details>

---

### Question 3 [6 marks]

A school wants an algorithm to classify exam marks.

The algorithm should output:

- `"Distinction"` if the mark is 80 or above
- `"Pass"` if the mark is from 50 to 79
- `"Fail"` if the mark is below 50

Construct the algorithm and explain how selection is used.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for points such as:

- inputting the mark
- checking if mark is at least 80
- outputting Distinction for marks 80 or above
- checking if mark is at least 50 for remaining marks
- outputting Pass or Fail correctly
- explaining that selection chooses different output paths based on conditions

Example answer:

```text
INPUT mark

IF mark >= 80 THEN
    OUTPUT "Distinction"
ELSE
    IF mark >= 50 THEN
        OUTPUT "Pass"
    ELSE
        OUTPUT "Fail"
    END IF
END IF
```

Selection is used because the algorithm tests conditions and chooses a different output depending on the value of `mark`.

</details>

---

## 14. Classroom Activity

### Activity: Algorithm Design Challenge

**Time:** 15-20 minutes  
**Grouping:** Pairs or small groups

Choose one problem:

1. Decide whether a student can enter a competition based on age  
2. Calculate ticket price based on age group  
3. Decide whether a password is long enough  
4. Output the larger of two numbers  

For your chosen problem:

1. Identify input.
2. Identify processing.
3. Identify output.
4. Write pseudocode.
5. Create three test values.
6. Predict the output for each test value.

| Test Value | Expected Output | Reason |
|---|---|---|

::: tip Exit Ticket
Before leaving, write one sentence explaining why algorithms should be clear and unambiguous.
:::

---

## 15. Homework

### Homework Task

Choose one of the following systems:

- cinema ticket price calculator
- student grade classifier
- simple login checker
- delivery fee calculator
- sports team age checker

Complete the following:

1. Describe the problem in one paragraph.
2. Identify the input, processing, and output.
3. Write IB-style pseudocode.
4. Write equivalent Java code.
5. Create a trace table for one test case.
6. Write one exam-style paragraph explaining which algorithm structures are used.

### Suggested Paragraph Structure

```text
This algorithm uses sequence because ...
It uses selection when ...
The condition checks whether ...
This makes the algorithm suitable because ...
```

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Definition | An algorithm is a finite set of step-by-step instructions |
| Main structures | Sequence, selection, iteration |
| Good algorithm | Clear, ordered, finite, unambiguous, effective |
| Programming link | Code is an implementation of an algorithm |
| Exam phrase | "The algorithm uses selection to choose different outputs depending on the condition." |
