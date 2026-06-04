# Loops

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why loops are used in programs
- distinguish **count-controlled** and **condition-controlled** loops
- write and trace `FOR`, `WHILE`, and `DO WHILE` style loops
- translate simple IB pseudocode loops into Java
- identify common loop errors such as infinite loops and off-by-one errors
- use loops to calculate totals, counts, and repeated outputs
- answer exam-style tracing and explanation questions

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Writing and tracing repetition structures |
| Connected topics | Variables, selection, arrays, searching, sorting, testing |
| Programming language focus | IB pseudocode + Java |
| Exam relevance | Trace tables, output prediction, algorithm writing, error correction |

::: tip Learning Focus
Loops are one of the most important programming topics. If students cannot trace loops, they will struggle with arrays, searching, sorting, and file processing later.
:::

---

## Start here: loops repeat steps

A loop is used when a program needs to repeat instructions.

Students should first understand what changes each time the loop repeats. Most loop questions involve a counter, a total / accumulator, or a condition that eventually becomes false.

In exams, students often need to trace loops carefully and avoid off-by-one errors.

---

## Recommended learning route

1. Understand why repetition is needed.
   Notice where a program would otherwise repeat similar instructions.
2. Trace a simple counter loop.
   Follow how the counter starts, changes, and stops.
3. Trace a loop with a total or accumulator.
   Record how the running total changes each iteration.
4. Compare FOR, WHILE, and DO WHILE.
   Choose the loop type based on how repetition is controlled.
5. Check the stopping condition.
   Decide exactly when the loop should stop.
6. Watch for off-by-one errors.
   Check whether the loop runs one time too many or too few.
7. Identify infinite loops.
   Look for conditions that never become false.
8. Practise loop trace tables.
   Write down every changed variable step by step.

---

## Loop choice table

| Loop type | Best used when... | Simple example |
|---|---|---|
| FOR loop | the number of repetitions is known | repeat 10 times |
| WHILE loop | the loop may run zero or more times depending on a condition | keep reading until input is valid |
| DO WHILE loop | the loop must run at least once | ask for input, then validate it |

---

## Core checklist

By the end of this page, you should be able to:

- explain why loops are used
- distinguish FOR, WHILE, and DO WHILE loops
- identify the loop condition
- trace loop variables correctly
- use a counter
- use an accumulator or running total
- recognize when a loop stops
- identify possible infinite loops
- avoid off-by-one errors

---

## Loop trace pattern

When tracing a loop, use this order:

1. Write the initial values.
2. Check the loop condition before entering the loop if required.
3. Execute statements inside the loop in order.
4. Update the counter or condition variable.
5. Record every changed variable.
6. Check the loop condition again.
7. Stop only when the condition becomes false.
8. Write the final output if required.

---

## Common exam traps

- stopping the loop one step too early
- stopping the loop one step too late
- forgetting to update the counter
- confusing counter and accumulator
- using the wrong comparison operator
- assuming a WHILE loop always runs at least once
- forgetting that a DO WHILE loop runs at least once
- creating an infinite loop because the condition never changes
- recording output before the correct update

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Loop | 循环 | A structure that repeats instructions |
| Iteration | 迭代 / 一次循环 | One complete repetition of a loop |
| Count-controlled loop | 计数控制循环 | A loop that repeats a known number of times |
| Condition-controlled loop | 条件控制循环 | A loop that repeats while a condition is true |
| Loop counter | 循环计数器 | A variable used to count loop repetitions |
| Condition | 条件 | A Boolean expression that controls whether a loop continues |
| Infinite loop | 无限循环 | A loop that never stops because its condition never becomes false |
| Off-by-one error | 差一错误 | A loop runs one time too many or one time too few |
| Accumulator | 累加器 | A variable used to build up a total |
| Sentinel value | 哨兵值 | A special input value used to stop a loop |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Loop（循环）** 用来重复执行一段代码。如果没有循环，程序员可能需要重复写很多相似的语句。

例如，如果要输出 1 到 5：

```java
System.out.println(1);
System.out.println(2);
System.out.println(3);
System.out.println(4);
System.out.println(5);
```

这样写很低效。如果数字变成 1 到 100，就更麻烦。所以我们使用 loop。

常见循环类型：

1. **FOR loop**：通常用于已知重复次数的情况。
2. **WHILE loop**：通常用于不知道重复次数，但知道继续条件的情况。
3. **DO WHILE loop**：至少执行一次，然后再检查条件。

学习 loops 的关键不是只会写语法，而是能看懂：

- 循环从哪里开始
- 条件什么时候判断
- 每次循环变量如何变化
- 循环什么时候停止
- 最后输出什么结果

</template>

<template #en>

### English Explanation

A **loop** is used to repeat a block of code. Without loops, programmers may need to write many repeated statements.

For example, to output numbers from 1 to 5:

```java
System.out.println(1);
System.out.println(2);
System.out.println(3);
System.out.println(4);
System.out.println(5);
```

This is inefficient. If the numbers are from 1 to 100, it becomes even worse. Therefore, we use loops.

Common loop types:

1. **FOR loop**: usually used when the number of repetitions is known.
2. **WHILE loop**: usually used when the number of repetitions is not known, but the continuation condition is known.
3. **DO WHILE loop**: runs at least once, then checks the condition.

The key to learning loops is not only memorizing syntax. Students must understand:

- where the loop starts
- when the condition is checked
- how variables change each iteration
- when the loop stops
- what final output is produced

</template>
</LangBlock>

---

## 5. Real-life Example

### WHILE loop example: Repeating a login attempt

A system may allow a user to enter a password up to three times.

This is a loop because the same action is repeated:

```text
ask for password
check password
if wrong, try again
stop when correct or attempts are used
```

| Attempt | Password correct? | Continue? |
|---:|---|---|
| 1 | No | Yes |
| 2 | No | Yes |
| 3 | No | Stop |
| 2 | Yes | Stop immediately |

::: info Scenario Link
This example combines loops and selection. The loop repeats password input, while selection decides whether the input is correct.
:::

---

## 6. Loop Type Comparison

| Loop Type | Best Used When | IB Pseudocode Style | Java Style |
|---|---|---|---|
| FOR loop | Number of repetitions is known | `FOR i = 1 TO 10 DO` | `for (int i = 1; i <= 10; i++)` |
| WHILE loop | Repeat while condition is true | `WHILE total < 100 DO` | `while (total < 100)` |
| DO WHILE loop | Must run at least once | `REPEAT ... UNTIL condition` or `DO ... WHILE` style | `do { ... } while (condition);` |

---

## 7. Count-controlled Loop: FOR

### 7.1 IB Pseudocode Pattern

```text
FOR i = 1 TO 5 DO
    OUTPUT i
END FOR
```

### 7.2 Java Code Example

```java
public class ForLoopExample {
    public static void main(String[] args) {
        for (int i = 1; i <= 5; i++) {
            System.out.println(i);
        }
    }
}
```

### 7.3 Line-by-line Explanation

| Code | Explanation |
|---|---|
| `int i = 1` | The loop counter starts at 1 |
| `i <= 5` | The loop continues while `i` is less than or equal to 5 |
| `i++` | After each iteration, `i` increases by 1 |
| `System.out.println(i);` | Outputs the current value of `i` |

### 7.4 Counter loop example: Trace Table

| Iteration | i before output | Condition `i <= 5` | Output | i after `i++` |
|---:|---:|---|---:|---:|
| 1 | 1 | true | 1 | 2 |
| 2 | 2 | true | 2 | 3 |
| 3 | 3 | true | 3 | 4 |
| 4 | 4 | true | 4 | 5 |
| 5 | 5 | true | 5 | 6 |
| Stop | 6 | false | - | - |

Final output:

```text
1
2
3
4
5
```

---

## 8. Condition-controlled Loop: WHILE

### 8.1 IB Pseudocode Pattern

```text
total = 0

WHILE total < 10 DO
    INPUT number
    total = total + number
END WHILE

OUTPUT total
```

### 8.2 Java Code Example

```java
import java.util.Scanner;

public class WhileLoopExample {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int total = 0;

        while (total < 10) {
            System.out.print("Enter a number: ");
            int number = input.nextInt();
            total = total + number;
        }

        System.out.println("Final total: " + total);
        input.close();
    }
}
```

### 8.3 Line-by-line Explanation

| Code | Explanation |
|---|---|
| `int total = 0;` | Creates an accumulator |
| `while (total < 10)` | Repeats while total is less than 10 |
| `int number = input.nextInt();` | Inputs one number each iteration |
| `total = total + number;` | Adds input to the total |
| `System.out.println(...)` | Outputs final total after loop stops |

### 8.4 Accumulator example: Trace Example

Assume the user enters:

```text
3, 4, 5
```

| Iteration | total at start | Condition `total < 10` | number input | total after update |
|---:|---:|---|---:|---:|
| 1 | 0 | true | 3 | 3 |
| 2 | 3 | true | 4 | 7 |
| 3 | 7 | true | 5 | 12 |
| Stop | 12 | false | - | 12 |

Final output:

```text
Final total: 12
```

::: warning Common Exam Point
A `WHILE` loop may run zero times if the condition is false before the first iteration.
:::

---

## 9. DO WHILE Loop

### 9.1 When to Use

A `DO WHILE` loop is useful when the loop body must run at least once.

Example:

```text
Ask user for a menu choice
Then check whether the choice is valid
```

### 9.2 Java Code Example

```java
import java.util.Scanner;

public class DoWhileExample {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int choice;

        do {
            System.out.println("1. Start");
            System.out.println("2. Exit");
            System.out.print("Enter choice: ");
            choice = input.nextInt();
        } while (choice != 1 && choice != 2);

        System.out.println("You selected: " + choice);
        input.close();
    }
}
```

### 9.3 Explanation

| Code | Explanation |
|---|---|
| `do { ... }` | The loop body runs first |
| `choice = input.nextInt();` | User enters a choice |
| `while (choice != 1 && choice != 2);` | Loop repeats while choice is invalid |
| `&&` | Both conditions must be true for loop to continue |

### 9.4 DO WHILE example: Trace Example

Input values:

```text
5, 3, 2
```

| Iteration | choice input | Condition `choice != 1 && choice != 2` | Continue? |
|---:|---:|---|---|
| 1 | 5 | true | Yes |
| 2 | 3 | true | Yes |
| 3 | 2 | false | Stop |

Final output:

```text
You selected: 2
```

---

## 10. Accumulator and Counter Patterns

### 10.1 Accumulator example: Calculating a Total

An **accumulator** stores a running total.

#### IB Pseudocode

```text
total = 0

FOR i = 1 TO 5 DO
    INPUT mark
    total = total + mark
END FOR

OUTPUT total
```

#### Java

```java
import java.util.Scanner;

public class TotalMarks {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int total = 0;

        for (int i = 1; i <= 5; i++) {
            System.out.print("Enter mark: ");
            int mark = input.nextInt();
            total = total + mark;
        }

        System.out.println("Total: " + total);
        input.close();
    }
}
```

### 10.2 Counter loop example: Counting Matching Values

A **counter** counts how many times something happens.

#### Java Example

```java
public class CountPasses {
    public static void main(String[] args) {
        int[] marks = {75, 42, 88, 50, 31};
        int passCount = 0;

        for (int i = 0; i < marks.length; i++) {
            if (marks[i] >= 50) {
                passCount++;
            }
        }

        System.out.println("Pass count: " + passCount);
    }
}
```

### 10.3 Trace Table

| i | marks[i] | Condition `marks[i] >= 50` | passCount |
|---:|---:|---|---:|
| 0 | 75 | true | 1 |
| 1 | 42 | false | 1 |
| 2 | 88 | true | 2 |
| 3 | 50 | true | 3 |
| 4 | 31 | false | 3 |

Final output:

```text
Pass count: 3
```

---

## 11. Infinite Loops

### 11.1 What is an Infinite Loop?

An **infinite loop** is a loop that never stops because its condition never becomes false.

### 11.2 Infinite loop example: Wrong Code

```java
int i = 1;

while (i <= 5) {
    System.out.println(i);
}
```

Problem:

```text
i never changes
```

The condition `i <= 5` is always true.

### 11.3 Corrected Code

```java
int i = 1;

while (i <= 5) {
    System.out.println(i);
    i++;
}
```

Now `i` increases each iteration, so the loop eventually stops.

### 11.4 Exam-style Explanation

An infinite loop occurs because the loop control variable is not updated, so the loop condition never becomes false.

---

## 12. Off-by-one Errors

### 12.1 What is an Off-by-one Error?

An **off-by-one error** happens when a loop runs one too many or one too few times.

### 12.2 Off-by-one example

```java
for (int i = 1; i < 5; i++) {
    System.out.println(i);
}
```

Output:

```text
1
2
3
4
```

This does **not** output 5 because the condition is `i < 5`, not `i <= 5`.

### 12.3 Correct Version

```java
for (int i = 1; i <= 5; i++) {
    System.out.println(i);
}
```

Output:

```text
1
2
3
4
5
```

### 12.4 Common exam trap: Array Loop Warning

For arrays, this is correct:

```java
for (int i = 0; i < values.length; i++) {
    System.out.println(values[i]);
}
```

This is wrong:

```java
for (int i = 0; i <= values.length; i++) {
    System.out.println(values[i]);
}
```

Why?

If `values.length` is 5, valid indexes are:

```text
0, 1, 2, 3, 4
```

Index `5` is out of bounds.

---

## 13. Nested Loop Preview

A **nested loop** is a loop inside another loop.

### Example: Output a 3 by 4 grid

```java
public class NestedLoopPreview {
    public static void main(String[] args) {
        for (int row = 1; row <= 3; row++) {
            for (int col = 1; col <= 4; col++) {
                System.out.print("* ");
            }
            System.out.println();
        }
    }
}
```

Output:

```text
* * * *
* * * *
* * * *
```

| Loop | Role |
|---|---|
| Outer loop | Controls rows |
| Inner loop | Controls columns |
| `System.out.print("* ")` | Prints on same line |
| `System.out.println()` | Moves to next line |

::: tip Later Connection
Nested loops are important for 2D arrays, tables, grids, and some sorting algorithms.
:::

---

## 14. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Forgetting to update the loop variable | May cause infinite loop | Check how the condition becomes false |
| Using `<=` instead of `<` for array indexes | May cause out-of-bounds error | For arrays, use `i < array.length` |
| Starting from wrong index | May skip first item or cause error | Java arrays start at index 0 |
| Confusing `while` and `if` | `if` runs once; `while` can repeat | Use `while` when repetition is needed |
| Not tracing the final failed condition | Student may think loop runs one more time | Include stop row in trace table |
| Updating counter in wrong place | Loop may skip values or count incorrectly | Place update carefully inside loop |
| Using `=` instead of `==` in Java condition | Java comparison becomes invalid | Use `==` for equality comparison |
| Forgetting braces `{}` | Only one statement may be controlled by loop | Always use braces when learning |

---

## 15. Guided Practice

### Practice 1: Trace a FOR Loop

```java
int total = 0;

for (int i = 1; i <= 4; i++) {
    total = total + i;
}

System.out.println(total);
```

<details>
<summary>Suggested Answer</summary>

| Iteration | i | total after update |
|---:|---:|---:|
| 1 | 1 | 1 |
| 2 | 2 | 3 |
| 3 | 3 | 6 |
| 4 | 4 | 10 |

Output:

```text
10
```

</details>

---

### Practice 2: Predict the Output

```java
for (int i = 2; i <= 8; i = i + 2) {
    System.out.println(i);
}
```

<details>
<summary>Suggested Answer</summary>

Output:

```text
2
4
6
8
```

The loop starts at 2 and increases by 2 each time.

</details>

---

### Practice 3: Find the Error

```java
int i = 1;

while (i <= 3) {
    System.out.println(i);
}
```

<details>
<summary>Suggested Answer</summary>

The variable `i` is not updated inside the loop. This causes an infinite loop.

Corrected version:

```java
int i = 1;

while (i <= 3) {
    System.out.println(i);
    i++;
}
```

</details>

---

### Practice 4: Count Values

```java
int[] scores = {40, 55, 70, 20, 90};
int count = 0;

for (int i = 0; i < scores.length; i++) {
    if (scores[i] >= 50) {
        count++;
    }
}

System.out.println(count);
```

<details>
<summary>Suggested Answer</summary>

Scores greater than or equal to 50 are:

```text
55, 70, 90
```

Output:

```text
3
```

</details>

---

### Practice 5: WHILE Loop Trace

```java
int x = 1;

while (x < 20) {
    x = x * 2;
}

System.out.println(x);
```

<details>
<summary>Suggested Answer</summary>

| Iteration | x at start | Condition `x < 20` | x after update |
|---:|---:|---|---:|
| 1 | 1 | true | 2 |
| 2 | 2 | true | 4 |
| 3 | 4 | true | 8 |
| 4 | 8 | true | 16 |
| 5 | 16 | true | 32 |
| Stop | 32 | false | 32 |

Output:

```text
32
```

</details>

---

## 16. Independent Practice

### Question 1

Write Java code to output numbers from 10 down to 1.

### Question 2

Write IB pseudocode to input 5 numbers and output their total.

### Question 3

Write Java code to count how many numbers in this array are negative:

```java
int[] values = {-2, 5, -8, 0, 11, -4};
```

### Question 4

Trace the output:

```java
int total = 1;

for (int i = 1; i <= 4; i++) {
    total = total * i;
}

System.out.println(total);
```

### Question 5

Find and correct the error:

```java
int[] data = {3, 6, 9};

for (int i = 0; i <= data.length; i++) {
    System.out.println(data[i]);
}
```

### Question 6

Write a `while` loop that keeps asking for a number until the user enters `0`.

### Question 7

Explain the difference between a `while` loop and a `do while` loop.

### Question 8

Write a nested loop that outputs this pattern:

```text
# # #
# # #
# # #
# # #
```

---

## 17. Exam-style Questions

### Question 1 [4 marks]

Trace the following code and state the final output.

```java
int count = 0;

for (int i = 1; i <= 6; i++) {
    if (i % 2 == 0) {
        count = count + 1;
    }
}

System.out.println(count);
```

<details>
<summary>Mark Scheme Style Answer</summary>

Even values of `i` from 1 to 6 are 2, 4, and 6.

| i | condition `i % 2 == 0` | count |
|---:|---|---:|
| 1 | false | 0 |
| 2 | true | 1 |
| 3 | false | 1 |
| 4 | true | 2 |
| 5 | false | 2 |
| 6 | true | 3 |

Final output:

```text
3
```

</details>

---

### Question 2 [5 marks]

Explain why the following loop may never stop.

```java
int number = 5;

while (number > 0) {
    System.out.println(number);
}
```

<details>
<summary>Mark Scheme Style Answer</summary>

The loop condition is `number > 0`. The variable `number` starts at 5, so the condition is true. However, `number` is never changed inside the loop. Therefore, the condition never becomes false, so the loop repeats forever. This is an infinite loop. To fix it, the value of `number` should be changed inside the loop, for example `number--;`.

</details>

---

### Question 3 [6 marks]

A program stores 20 student marks in an array called `marks`.

Write Java code to count how many students passed. A pass mark is 50 or above.

<details>
<summary>Mark Scheme Style Answer</summary>

```java
int passCount = 0;

for (int i = 0; i < marks.length; i++) {
    if (marks[i] >= 50) {
        passCount++;
    }
}

System.out.println(passCount);
```

Possible marks:

- initializes a counter
- loops through all array elements
- uses correct array index range
- checks mark greater than or equal to 50
- increments counter when condition is true
- outputs final count

</details>

---

### Question 4 [6 marks]

Compare a `FOR` loop and a `WHILE` loop.

<details>
<summary>Mark Scheme Style Answer</summary>

A `FOR` loop is usually used when the number of repetitions is known in advance. It often includes initialization, condition, and update in one line. A `WHILE` loop is usually used when the number of repetitions is not known in advance, but the loop should continue while a condition is true. Both loops repeat a block of code, but they are used in different situations depending on whether the repetition count is known.

</details>

---

## 18. Practice task
### Activity 1: Human Loop Trace

Students act as loop variables.

Example loop:

```java
for (int i = 1; i <= 5; i++) {
    System.out.println(i);
}
```

Class process:

1. One student holds the value of `i`.
2. Another student checks the condition.
3. Another student outputs the value.
4. Another student updates `i`.
5. Class repeats until the condition is false.

### Activity 2: Infinite Loop Debugging

Give students broken loop cards. Each card has one loop error. Students must:

1. identify whether it is infinite loop, off-by-one error, or wrong condition
2. explain the bug
3. fix the code
4. trace the corrected loop

### Activity 3: Predict Before Running

Students must predict output before using the computer. This builds tracing skill instead of guessing by running code.

---

## 19. Independent practice
### Independent practice part A: Trace

Trace this code:

```java
int total = 0;

for (int i = 5; i >= 1; i--) {
    total = total + i;
}

System.out.println(total);
```

Create a trace table with columns:

```text
iteration, i, total
```

### Independent practice part B: Write Code

Write a Java program that:

1. asks the user to input 5 marks
2. calculates the total
3. calculates the average
4. outputs the average
5. outputs `"Pass average"` if the average is at least 50

### Independent practice part C: Debug

Find and correct the loop error:

```java
int i = 0;

while (i < 10) {
    System.out.println(i);
    i = i - 1;
}
```

### Independent practice part D: Explain

In 4-5 sentences, explain why tracing loops is important when debugging programs.

---

## 20. One-page Revision Summary

| Point | Summary |
|---|---|
| Loop | Repeats a block of code |
| FOR loop | Best when the number of repetitions is known |
| WHILE loop | Best when the loop depends on a condition |
| DO WHILE loop | Runs at least once before checking condition |
| Counter | Variable used to count iterations or events |
| Accumulator | Variable used to build a total |
| Infinite loop | Loop that never stops because condition never becomes false |
| Off-by-one error | Loop runs one too many or one too few times |
| Array loop | Usually uses `i = 0; i < array.length; i++` |
| Trace table | Shows variable values step by step |
| Exam phrase | A loop repeats instructions while a condition is true or for a fixed number of iterations |

---

## 21. Quick Self-test

Before moving to arrays, students should be able to answer these:

1. What is the difference between `i < 5` and `i <= 5`?
2. Why can a `while` loop run zero times?
3. Why does a `do while` loop always run at least once?
4. What causes an infinite loop?
5. Why do Java arrays usually use `i < array.length`?
6. What is the difference between a counter and an accumulator?
7. What is the final value of `total` after a loop?
8. How do you create a trace table?

