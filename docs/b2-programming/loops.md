# Loops

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **iteration**
- explain why loops are used
- distinguish count-controlled and condition-controlled loops
- write WHILE and FOR loops in IB pseudocode and Java
- trace loops using a table
- identify infinite loop and off-by-one errors

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Repetition |
| Connected units | Trace Tables, Arrays, Searching, Sorting |
| Exam relevance | Loop tracing, algorithm construction, output prediction |

::: tip Learning Focus
Loops repeat instructions. Most loop mistakes are caused by wrong starting values, wrong conditions, or missing updates.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Iteration | 循环/重复 | Repetition of instructions |
| Loop | 循环结构 | A structure that repeats code |
| Count-controlled loop | 计数控制循环 | Repeats a known number of times |
| Condition-controlled loop | 条件控制循环 | Repeats while a condition is true |
| Loop variable | 循环变量 | Variable controlling loop progress |
| Infinite loop | 无限循环 | A loop that never stops |
| Off-by-one error | 差一错误 | Loop repeats one too many or one too few times |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Loop（循环）** 用来重复执行一组指令。如果没有循环，重复任务会导致大量重复代码。

循环常用于：

- 输出 1 到 10
- 累加多个数字
- 遍历数组
- 搜索一个值
- 持续输入直到用户输入停止

循环通常需要三个部分：

1. 初始值
2. 循环条件
3. 更新循环变量

如果更新变量缺失，循环可能永远不会结束。

</template>

<template #en>

### English Explanation

A **loop** is used to repeat a set of instructions. Without loops, repeated tasks would require repeated code.

Loops are commonly used to output numbers, add values, traverse arrays, search for values, and keep asking for input until a condition is met.

A loop usually needs:

1. an initial value
2. a loop condition
3. an update to the loop variable

If the update is missing, the loop may never end.

</template>
</LangBlock>

---

## 5. Real-life Example

### Add numbers from 1 to 5

Instead of writing five separate addition statements, a loop can repeat the same pattern.

| Iteration | number added | total |
|---|---:|---:|
| Start |  | 0 |
| 1 | 1 | 1 |
| 2 | 2 | 3 |
| 3 | 3 | 6 |
| 4 | 4 | 10 |
| 5 | 5 | 15 |

---

## 6. IB Pseudocode Pattern

### WHILE loop

```text
count = 1

WHILE count <= 5 DO
    OUTPUT count
    count = count + 1
END WHILE
```

### FOR loop

```text
FOR count = 1 TO 5 DO
    OUTPUT count
END FOR
```

### Total example

```text
count = 1
total = 0

WHILE count <= 5 DO
    total = total + count
    count = count + 1
END WHILE

OUTPUT total
```

---

## 7. Java Code Example

### WHILE loop

```java
public class WhileLoopExample {
    public static void main(String[] args) {
        int count = 1;

        while (count <= 5) {
            System.out.println(count);
            count = count + 1;
        }
    }
}
```

### FOR loop

```java
public class ForLoopExample {
    public static void main(String[] args) {
        for (int count = 1; count <= 5; count++) {
            System.out.println(count);
        }
    }
}
```

### Total example

```java
public class LoopTotal {
    public static void main(String[] args) {
        int count = 1;
        int total = 0;

        while (count <= 5) {
            total = total + count;
            count = count + 1;
        }

        System.out.println(total);
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `int count = 1;` | Initializes the loop variable |
| `int total = 0;` | Initializes the running total |
| `while (count <= 5)` | Repeats while condition is true |
| `total = total + count;` | Adds current count to total |
| `count = count + 1;` | Updates loop variable |
| `System.out.println(total);` | Outputs final result |

---

## 9. Trace Table

Algorithm:

```text
count = 1
total = 0

WHILE count <= 3 DO
    total = total + count
    count = count + 1
END WHILE

OUTPUT total
```

| Iteration | count | total |
|---|---:|---:|
| Start | 1 | 0 |
| 1 | 2 | 1 |
| 2 | 3 | 3 |
| 3 | 4 | 6 |

Final output:

```text
6
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Missing update | Infinite loop | Update loop variable |
| Wrong condition | Too many/few iterations | Test boundary values |
| Wrong initial value | Count starts incorrectly | Choose start carefully |
| Using `<` instead of `<=` | Off-by-one error | Trace with edge case |
| Updating before processing when not intended | Total may be wrong | Follow order carefully |

---

## 11. Guided Practice

### Practice 1

Trace:

```text
n = 1
total = 0

WHILE n <= 4 DO
    total = total + n
    n = n + 1
END WHILE

OUTPUT total
```

<details>
<summary>Suggested Answer</summary>

| Iteration | n | total |
|---|---:|---:|
| Start | 1 | 0 |
| 1 | 2 | 1 |
| 2 | 3 | 3 |
| 3 | 4 | 6 |
| 4 | 5 | 10 |

Final output: 10

</details>

### Practice 2

Write a FOR loop that outputs 1 to 10.

<details>
<summary>Suggested Answer</summary>

```text
FOR i = 1 TO 10 DO
    OUTPUT i
END FOR
```

</details>

---

## 12. Independent Practice

1. Trace a loop that adds even numbers from 2 to 10.
2. Write Java code to output numbers 5 down to 1.
3. Explain how an infinite loop can happen.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by iteration.

<details>
<summary>Mark Scheme Style Answer</summary>

Iteration is the repetition of a set of instructions, usually using a loop.

</details>

### Question 2 [5 marks]

Complete a trace table for a loop adding numbers 1 to 4.

<details>
<summary>Mark Scheme Style Answer</summary>

Expected total is 10, with count ending at 5. Award marks for initial values, each update, stopping condition, and output.

</details>

---

## 14. Classroom Activity

### Activity: Loop Boundary Testing

Students test loops with `<` and `<=` and compare how many times each loop runs.

---

## 15. Homework

Write pseudocode and Java code to calculate the sum of numbers from 1 to `n`. Use fixed `n = 10`, trace the result, and identify one possible off-by-one error.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Loop | Repeats instructions |
| WHILE | Condition-controlled |
| FOR | Often count-controlled |
| Infinite loop | Loop never stops |
| Exam phrase | "The loop repeats while the condition is true and stops when it becomes false." |
