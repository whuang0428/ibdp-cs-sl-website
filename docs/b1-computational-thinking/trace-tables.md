# Trace Tables

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define a **trace table**
- explain why trace tables are useful
- follow an algorithm step by step
- record changes in variable values accurately
- trace selection and iteration
- identify final output from a trace table
- use trace tables to find logic errors in algorithms and Java code

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Manually tracing algorithm execution |
| Connected units | B2 Programming, debugging, testing, loops, arrays |
| Exam relevance | Trace table questions, output prediction, algorithm analysis, debugging |

::: tip Learning Focus
Trace tables are one of the most important exam skills in programming. Students must update values **in order** and use the **newest value** after assignment.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Trace table | 追踪表 | A table used to record variable values as an algorithm runs |
| Variable | 变量 | A named storage location for data |
| Assignment | 赋值 | Giving a value to a variable |
| Output | 输出 | The result displayed by the algorithm |
| Dry run | 手动运行 | Manually following an algorithm without using a computer |
| Iteration | 循环 | Repetition of a set of instructions |
| Condition | 条件 | A true/false statement that controls selection or iteration |
| Logic error | 逻辑错误 | An error where the program runs but gives the wrong result |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Trace table（追踪表）** 是一种用表格手动记录算法执行过程的方法。它可以帮助我们看到每一步执行后，变量的值发生了什么变化。

在考试中，trace table 经常用于测试学生是否真正理解算法，而不是只会背定义。尤其是遇到：

- variable update（变量更新）
- selection（选择结构）
- loops（循环）
- arrays（数组）
- nested logic（嵌套逻辑）

trace table 非常重要。

做 trace table 的核心规则是：

1. 每个变量建立一列。
2. 按算法顺序一行一行执行。
3. 每执行一次赋值，就更新变量的值。
4. 后面的步骤必须使用最新的变量值。
5. 遇到输出时，把输出写在 Output 列。
6. 遇到循环时，要反复检查条件是否还成立。
7. 循环条件为 false 时，循环停止。

例如：

```text
x = 2
y = 3
x = x + y
OUTPUT x
```

这里第三行 `x = x + y` 的意思不是数学等式，而是：

> 先取出旧的 x 和 y，然后计算 2 + 3，最后把 5 存回 x。

所以最后输出的是 5。

</template>

<template #en>

### English Explanation

A **trace table** is a table used to manually record the values of variables as an algorithm runs step by step.

In exams, trace tables test whether students truly understand an algorithm, not just whether they know definitions. They are especially important for:

- variable updates
- selection
- loops
- arrays
- nested logic

The main rules for completing a trace table are:

1. Create one column for each variable.
2. Follow the algorithm line by line.
3. Update a variable whenever an assignment happens.
4. Always use the latest value of a variable.
5. Record output in the Output column.
6. For loops, check the condition each time.
7. Stop the loop when the condition becomes false.

For example:

```text
x = 2
y = 3
x = x + y
OUTPUT x
```

The statement `x = x + y` is not a mathematical equation. It means:

> Take the old value of x and y, calculate 2 + 3, and store 5 back into x.

Therefore, the final output is 5.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Counting Points in a Game

A game gives a player points after each round.

Algorithm:

```text
score = 0
score = score + 10
score = score + 5
score = score * 2
OUTPUT score
```

Trace table:

| Step | score | Output |
|---|---:|---|
| score = 0 | 0 |  |
| score = score + 10 | 10 |  |
| score = score + 5 | 15 |  |
| score = score * 2 | 30 |  |
| OUTPUT score | 30 | 30 |

Final output:

```text
30
```

::: info Why trace tables help
The table shows every change to `score`, so students can see how the final output is produced.
:::

---

## 6. IB Pseudocode Pattern

### Simple variable update

```text
x = 4
y = 2
x = x + y
OUTPUT x
```

Trace table:

| Step | x | y | Output |
|---|---:|---:|---|
| x = 4 | 4 |  |  |
| y = 2 | 4 | 2 |  |
| x = x + y | 6 | 2 |  |
| OUTPUT x | 6 | 2 | 6 |

---

### Trace table with selection

```text
mark = 72

IF mark >= 50 THEN
    result = "Pass"
ELSE
    result = "Fail"
END IF

OUTPUT result
```

Trace table:

| Step | mark | result | Output |
|---|---:|---|---|
| mark = 72 | 72 |  |  |
| mark >= 50 is true | 72 |  |  |
| result = "Pass" | 72 | Pass |  |
| OUTPUT result | 72 | Pass | Pass |

---

### Trace table with iteration

```text
count = 1
total = 0

WHILE count <= 3 DO
    total = total + count
    count = count + 1
END WHILE

OUTPUT total
```

Trace table:

| Iteration | count | total | Output |
|---|---:|---:|---|
| Start | 1 | 0 |  |
| 1 | 2 | 1 |  |
| 2 | 3 | 3 |  |
| 3 | 4 | 6 |  |
| After loop | 4 | 6 | 6 |

::: tip Exam Note
For loops, the variable is often shown **after the loop body has executed**. Always check how the question wants the table completed.
:::

---

## 7. Java Code Example

Below is a Java example that matches the loop trace table.

```java
public class TraceTableExample {
    public static void main(String[] args) {
        int count = 1;
        int total = 0;

        while (count <= 3) {
            total = total + count;
            count = count + 1;
        }

        System.out.println(total);
    }
}
```

Another example with selection:

```java
public class PassFailTrace {
    public static void main(String[] args) {
        int mark = 72;
        String result;

        if (mark >= 50) {
            result = "Pass";
        } else {
            result = "Fail";
        }

        System.out.println(result);
    }
}
```

---

## 8. Line-by-line Code Explanation

### Loop Example

| Code Part | Explanation |
|---|---|
| `int count = 1;` | Initializes count to 1 |
| `int total = 0;` | Initializes total to 0 |
| `while (count <= 3)` | Repeats the loop while count is 3 or less |
| `total = total + count;` | Adds the current count to total |
| `count = count + 1;` | Increases count by 1 |
| `System.out.println(total);` | Outputs the final total |

### Key idea

The statement:

```java
total = total + count;
```

means:

1. read the old value of `total`
2. read the current value of `count`
3. add them
4. store the result back into `total`

This is why using the latest value is essential.

---

## 9. Step-by-step Execution

Java code:

```java
int count = 1;
int total = 0;

while (count <= 3) {
    total = total + count;
    count = count + 1;
}

System.out.println(total);
```

Detailed execution:

| Step | Condition / Action | count | total | Output |
|---|---|---:|---:|---|
| 1 | Initialize count | 1 |  |  |
| 2 | Initialize total | 1 | 0 |  |
| 3 | Check count <= 3 | 1 | 0 | true |
| 4 | total = total + count | 1 | 1 |  |
| 5 | count = count + 1 | 2 | 1 |  |
| 6 | Check count <= 3 | 2 | 1 | true |
| 7 | total = total + count | 2 | 3 |  |
| 8 | count = count + 1 | 3 | 3 |  |
| 9 | Check count <= 3 | 3 | 3 | true |
| 10 | total = total + count | 3 | 6 |  |
| 11 | count = count + 1 | 4 | 6 |  |
| 12 | Check count <= 3 | 4 | 6 | false |
| 13 | Output total | 4 | 6 | 6 |

Final output:

```text
6
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Skipping initialization | Starting values become unclear | Always record initial values |
| Using old variable values | Later calculations become wrong | Use the newest value after assignment |
| Updating the wrong variable | The trace table becomes incorrect | Read the left side of assignment carefully |
| Forgetting loop condition checks | Number of iterations becomes wrong | Check the loop condition every time |
| Stopping loop too early | Final output becomes too small | Continue until condition becomes false |
| Running loop one extra time | Final output becomes too large | Check boundary values carefully |
| Forgetting output column | Final answer may be unclear | Add an Output column when needed |
| Treating `=` as mathematical equality | Assignment is misunderstood | Read `x = x + 1` as “update x” |

---

## 11. Guided Practice

### Practice 1: Simple Assignment

Trace the algorithm.

```text
a = 5
b = 3
a = a + b
b = a - b
OUTPUT b
```

<details>
<summary>Suggested Answer</summary>

| Step | a | b | Output |
|---|---:|---:|---|
| a = 5 | 5 |  |  |
| b = 3 | 5 | 3 |  |
| a = a + b | 8 | 3 |  |
| b = a - b | 8 | 5 |  |
| OUTPUT b | 8 | 5 | 5 |

Final output: 5

</details>

---

### Practice 2: Selection Trace

```text
mark = 45

IF mark >= 50 THEN
    result = "Pass"
ELSE
    result = "Fail"
END IF

OUTPUT result
```

<details>
<summary>Suggested Answer</summary>

| Step | mark | result | Output |
|---|---:|---|---|
| mark = 45 | 45 |  |  |
| mark >= 50 is false | 45 |  |  |
| result = "Fail" | 45 | Fail |  |
| OUTPUT result | 45 | Fail | Fail |

Final output: Fail

</details>

---

### Practice 3: Loop Trace

```text
n = 1
sum = 0

WHILE n < 4 DO
    sum = sum + n
    n = n + 1
END WHILE

OUTPUT sum
```

<details>
<summary>Suggested Answer</summary>

| Iteration | n | sum |
|---|---:|---:|
| Start | 1 | 0 |
| 1 | 2 | 1 |
| 2 | 3 | 3 |
| 3 | 4 | 6 |

Final output: 6

</details>

---

## 12. Independent Practice

Complete these tasks without looking at answers first.

### Task 1

Complete a trace table for:

```text
x = 2
y = 4
x = x * y
y = x + 1
OUTPUT y
```

Use this table:

| Step | x | y | Output |
|---|---:|---:|---|

### Task 2

Trace this algorithm with selection:

```text
temperature = 32

IF temperature > 30 THEN
    message = "Hot"
ELSE
    message = "Not hot"
END IF

OUTPUT message
```

### Task 3

Trace this loop:

```text
i = 1
product = 1

WHILE i <= 4 DO
    product = product * i
    i = i + 1
END WHILE

OUTPUT product
```

### Task 4

Write the Java version of Task 1.

### Task 5

Explain why using the old value of a variable after assignment can produce the wrong answer.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what a trace table is used for.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for:

- recording variable values step by step
- following an algorithm to determine output or find errors

Example answer:

A trace table is used to record the values of variables as an algorithm runs step by step, helping to find the final output or identify logic errors.

</details>

---

### Question 2 [4 marks]

Complete the trace table for the following algorithm.

```text
a = 2
b = 6
a = a + b
b = a * 2
OUTPUT b
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Step | a | b | Output |
|---|---:|---:|---|
| a = 2 | 2 |  |  |
| b = 6 | 2 | 6 |  |
| a = a + b | 8 | 6 |  |
| b = a * 2 | 8 | 16 |  |
| OUTPUT b | 8 | 16 | 16 |

Award marks for correct updates and final output.

</details>

---

### Question 3 [6 marks]

Complete the trace table and state the final output.

```text
count = 1
total = 0

WHILE count <= 4 DO
    total = total + count
    count = count + 1
END WHILE

OUTPUT total
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | count | total |
|---|---:|---:|
| Start | 1 | 0 |
| 1 | 2 | 1 |
| 2 | 3 | 3 |
| 3 | 4 | 6 |
| 4 | 5 | 10 |

Final output:

```text
10
```

Award marks for:

- correct initial values
- correct update of total
- correct update of count
- correct number of iterations
- stopping when count becomes 5
- correct final output

</details>

---

## 14. Classroom Activity

### Activity: Trace Table Race

**Time:** 15-20 minutes  
**Grouping:** Pairs

Each pair receives one algorithm. One student traces manually. The other student checks each update.

Algorithm A:

```text
x = 1
y = 2
x = x + y
y = y + x
OUTPUT y
```

Algorithm B:

```text
n = 1
total = 0

WHILE n <= 3 DO
    total = total + n * 2
    n = n + 1
END WHILE

OUTPUT total
```

Algorithm C:

```text
score = 78

IF score >= 80 THEN
    grade = "A"
ELSE
    grade = "B"
END IF

OUTPUT grade
```

For each algorithm, complete:

| Step / Iteration | Variable 1 | Variable 2 | Output |
|---|---|---|---|

Then answer:

1. Which line changed the variable value?
2. Which value was easiest to update incorrectly?
3. How did the trace table help avoid mistakes?

::: tip Exit Ticket
Before leaving, write one sentence explaining why trace tables are useful for debugging.
:::

---

## 15. Homework

### Homework Task

Complete the following tasks.

### Part A: Trace a simple algorithm

```text
a = 10
b = 2
a = a / b
b = a + 3
OUTPUT b
```

### Part B: Trace a loop

```text
i = 2
total = 0

WHILE i <= 6 DO
    total = total + i
    i = i + 2
END WHILE

OUTPUT total
```

### Part C: Trace Java code

```java
public class HomeworkTrace {
    public static void main(String[] args) {
        int x = 3;
        int y = 4;

        x = x + y;
        y = x * 2;

        System.out.println(y);
    }
}
```

### Part D: Written explanation

Write one paragraph explaining how trace tables help programmers find logic errors.

### Suggested Paragraph Structure

```text
A trace table helps by showing ...
Each variable is recorded ...
This makes it easier to find logic errors because ...
For example, if a variable is updated incorrectly, ...
```

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Definition | A trace table records variable values step by step |
| Main purpose | Predict output and find logic errors |
| Key rule | Always use the newest value after assignment |
| Loop skill | Check the loop condition each time |
| Exam phrase | "The trace table shows how the values of variables change during execution." |
