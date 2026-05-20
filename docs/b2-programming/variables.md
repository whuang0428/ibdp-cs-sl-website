# Variables

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define a **variable**
- explain why variables are used in programs
- distinguish between declaration, assignment, and update
- trace changes in variable values
- write IB-style pseudocode using variables
- write Java code using variables
- explain common variable-related errors

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Storing and updating data |
| Connected units | B1 Trace Tables, B2 Data Types, Selection, Loops |
| Exam relevance | Trace tables, code reading, output prediction, algorithm design |

::: tip Learning Focus
A variable stores a value that can be used and updated while the program runs. In programming, `x = x + 1` means “update x”, not a mathematical equation.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Variable | 变量 | A named storage location for data |
| Identifier | 标识符 | The name of a variable |
| Declaration | 声明 | Creating a variable, often with a data type |
| Assignment | 赋值 | Storing a value in a variable |
| Update | 更新 | Changing the value stored in a variable |
| Constant | 常量 | A named value that should not change |
| Scope | 作用域 | The part of the program where a variable can be accessed |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Variable（变量）** 是程序中用来存储数据的命名位置。变量可以存储数字、文字、真假值等信息。

变量的值可以在程序运行时发生变化。例如：

```text
score = 10
score = score + 5
```

第二行的意思是：先取出旧的 `score`，也就是 10，加上 5，然后把新结果 15 存回 `score`。

Java 中变量通常需要先声明数据类型：

```java
int score = 10;
```

这行代码创建了一个名为 `score` 的整数变量，并把 10 存进去。

变量很重要，因为程序需要记住中间结果。例如计算总分、平均分、最高分、用户输入等，都需要变量。

</template>

<template #en>

### English Explanation

A **variable** is a named storage location used to store data in a program. A variable can store values such as numbers, text, or true/false values.

The value of a variable can change while the program runs. For example:

```text
score = 10
score = score + 5
```

The second line means: read the old value of `score`, add 5, and store the new result back into `score`.

In Java, variables normally require a data type:

```java
int score = 10;
```

This creates an integer variable called `score` and stores 10 in it.

Variables are important because programs need to remember values such as totals, averages, highest scores, and user input.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Game Score

A player starts with 0 points, gains 10 points, then gains another 5 points.

| Step | Variable value |
|---|---:|
| Start | score = 0 |
| Gain 10 | score = 10 |
| Gain 5 | score = 15 |

::: info Variable idea
The variable `score` remembers the current value. Each update replaces the old value with a new one.
:::

---

## 6. IB Pseudocode Pattern

```text
score = 0
score = score + 10
score = score + 5
OUTPUT score
```

Using two variables:

```text
price = 20
quantity = 3
total = price * quantity
OUTPUT total
```

---

## 7. Java Code Example

```java
public class VariableExample {
    public static void main(String[] args) {
        int score = 0;

        score = score + 10;
        score = score + 5;

        System.out.println("Final score: " + score);
    }
}
```

```java
public class PriceExample {
    public static void main(String[] args) {
        double price = 20.0;
        int quantity = 3;

        double total = price * quantity;

        System.out.println("Total: " + total);
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `int score = 0;` | Declares an integer variable and assigns 0 |
| `score = score + 10;` | Reads old score, adds 10, stores new value |
| `score = score + 5;` | Reads current score, adds 5, stores new value |
| `System.out.println(...)` | Outputs the final value |

### Assignment vs equality

| Symbol | Meaning in Java |
|---|---|
| `=` | assignment |
| `==` | equality comparison |

---

## 9. Trace Table

Algorithm:

```text
score = 0
bonus = 5
score = score + 10
score = score + bonus
OUTPUT score
```

| Step | score | bonus | Output |
|---|---:|---:|---|
| score = 0 | 0 |  |  |
| bonus = 5 | 0 | 5 |  |
| score = score + 10 | 10 | 5 |  |
| score = score + bonus | 15 | 5 |  |
| OUTPUT score | 15 | 5 | 15 |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using a variable before assigning a value | The program may not know what value to use | Initialize variables first |
| Confusing `=` and `==` | Assignment and comparison are different | Use `=` for assignment, `==` for comparison |
| Misspelling variable names | Java treats them as different identifiers | Use consistent names |
| Using unclear names like `x1`, `x2` | Code becomes harder to read | Use meaningful names |
| Forgetting updated values | Trace tables become wrong | Always use the newest value |

---

## 11. Guided Practice

### Practice 1: Trace the Variables

```text
x = 4
y = 3
x = x + y
y = x * 2
OUTPUT y
```

<details>
<summary>Suggested Answer</summary>

| Step | x | y | Output |
|---|---:|---:|---|
| x = 4 | 4 |  |  |
| y = 3 | 4 | 3 |  |
| x = x + y | 7 | 3 |  |
| y = x * 2 | 7 | 14 |  |
| OUTPUT y | 7 | 14 | 14 |

</details>

### Practice 2: Write Java Variables

Create variables for a student's name, age, and average mark.

<details>
<summary>Suggested Answer</summary>

```java
String name = "Alice";
int age = 16;
double averageMark = 82.5;
```

</details>

---

## 12. Independent Practice

### Task 1

Trace:

```text
a = 10
b = 2
a = a / b
b = a + 7
OUTPUT b
```

### Task 2

Write Java variables for product name, price, quantity, and whether it is in stock.

### Task 3

Explain why `total = total + price` is valid in programming.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by a variable.

<details>
<summary>Mark Scheme Style Answer</summary>

A variable is a named storage location used to store a value that may change while a program runs.

</details>

### Question 2 [4 marks]

Explain the effect of this statement:

```text
total = total + price
```

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for:

- the current value of `total` is read
- the value of `price` is added
- the result is stored back in `total`
- the old value of `total` is replaced by the new value

</details>

### Question 3 [4 marks]

Complete the trace table:

```text
x = 2
y = 5
x = x + y
y = x - 1
OUTPUT y
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Step | x | y | Output |
|---|---:|---:|---|
| x = 2 | 2 |  |  |
| y = 5 | 2 | 5 |  |
| x = x + y | 7 | 5 |  |
| y = x - 1 | 7 | 6 |  |
| OUTPUT y | 7 | 6 | 6 |

</details>

---

## 14. Classroom Activity

### Activity: Variable Update Race

**Time:** 10-15 minutes  
Students complete trace tables in pairs and compare final outputs. One student traces, the other checks whether the newest value is used.

::: tip Exit Ticket
Write one sentence explaining why `score = score + 1` is not a mathematical equation.
:::

---

## 15. Homework

1. Write Java code that calculates total cost from `price` and `quantity`.
2. Create a trace table for your code.
3. Explain one possible variable naming mistake.
4. Explain the difference between assignment and comparison.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Variable | Named storage location |
| Assignment | Stores a value |
| Update | Replaces old value with new value |
| Java equality | `==` checks equality |
| Exam phrase | "The current value is read, updated, and stored back in the variable." |
