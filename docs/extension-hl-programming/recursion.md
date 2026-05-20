# Recursion

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define recursion
- identify base case and recursive case
- trace a simple recursive method
- explain the call stack at a simple level
- write simple recursive Java methods
- explain risks of missing base case

---

## 2. Course Position

| Item | Detail |
|---|---|
| Section | HL Programming Extension / School Extension |
| Main link | B2 Programming + B3 OOP |
| Language focus | IB pseudocode + Java |
| Difficulty | Extension beyond SL |
| Main skill | Solving problems by calling a method from itself |

::: warning Extension Note
This section is included because the course plans to give students stronger programming ability beyond the minimum SL requirement. It should be taught after students are comfortable with B2 Programming and B3 OOP basics.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Recursion | 递归 | A technique where a method calls itself |
| Base case | 基本情况 | The stopping condition of recursion |
| Recursive case | 递归情况 | The part where the method calls itself |
| Call stack | 调用栈 | Structure that stores active method calls |
| Stack overflow | 栈溢出 | Error caused by too many nested method calls |
| Return value | 返回值 | A value sent back by a method |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Recursion（递归）** 是一个 method 调用自己的技术。它适合解决可以被分解成更小同类问题的任务。

每个递归方法都必须有：

1. **base case**：停止条件
2. **recursive case**：继续调用自己的部分

如果没有 base case，方法会不断调用自己，最终可能出现 stack overflow。

</template>

<template #en>

### English Explanation

**Recursion** is a technique where a method calls itself. It is useful for problems that can be broken into smaller versions of the same problem.

Every recursive method must have:

1. **base case**: stopping condition
2. **recursive case**: part where the method calls itself

Without a base case, the method may keep calling itself until a stack overflow occurs.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Factorial

```text
5! = 5 × 4 × 3 × 2 × 1
```

Recursive idea:

```text
factorial(5) = 5 × factorial(4)
factorial(4) = 4 × factorial(3)
...
factorial(1) = 1
```

---

## 6. IB Pseudocode Pattern

```text
METHOD factorial(n)
    IF n = 1 THEN
        RETURN 1
    ELSE
        RETURN n * factorial(n - 1)
    END IF
END METHOD
```

---

## 7. Java Code Example

```java
public class RecursionExample {
    public static int factorial(int n) {
        if (n == 1) {
            return 1;
        } else {
            return n * factorial(n - 1);
        }
    }

    public static void main(String[] args) {
        System.out.println(factorial(5));
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `factorial(int n)` | Recursive method |
| `if (n == 1)` | Base case |
| `return 1;` | Stops recursion |
| `factorial(n - 1)` | Recursive call |
| `n * factorial(n - 1)` | Combines current value with smaller problem |

---

## 9. Step-by-step Trace / Process

Trace:

```text
factorial(5)
= 5 * factorial(4)
= 5 * 4 * factorial(3)
= 5 * 4 * 3 * factorial(2)
= 5 * 4 * 3 * 2 * factorial(1)
= 5 * 4 * 3 * 2 * 1
= 120
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| No base case | Recursion never stops | Always define stopping condition |
| Base case never reached | Still causes infinite recursion | Make recursive call move toward base case |
| Confusing recursion and loop | Both repeat but recursion uses method calls | Identify self-call |
| Tracing only downward calls | Need return phase too | Trace calls and returned values |
| Using recursion for simple loops unnecessarily | Can be harder to read | Use recursion when problem structure fits |

---

## 11. Guided Practice

### Practice 1

Identify base case:

```java
if (n == 0) {
    return 0;
}
```

<details><summary>Suggested Answer</summary>

The base case is `n == 0`.

</details>

### Practice 2

What happens if the base case is missing?

<details><summary>Suggested Answer</summary>

The method may call itself indefinitely until a stack overflow occurs.

</details>

---

## 12. Independent Practice

1. Trace `factorial(4)`.
2. Write recursive pseudocode to count down from n to 1.
3. Explain base case and recursive case.
4. Write a Java recursive method to calculate sum from 1 to n.

---

## 13. Exam-style / Code-reading Questions

### Question 1 [2 marks]

State what is meant by recursion.

<details><summary>Mark Scheme Style Answer</summary>

Recursion is when a method or algorithm calls itself to solve a smaller version of the same problem.

</details>

### Question 2 [4 marks]

Explain why a base case is needed.

<details><summary>Mark Scheme Style Answer</summary>

A base case gives the recursion a stopping condition. Without it, the method may continue calling itself indefinitely, causing too many method calls and possibly a stack overflow error.

</details>

---

## 14. Classroom Activity

### Activity: Recursive Human Stack

Students hold cards for `factorial(5)`, `factorial(4)`, etc. They line up as calls are made, then return values back in reverse order.

---

## 15. Homework

Write and trace recursive methods for factorial and sum from 1 to n. Identify base case and recursive case in both.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Recursion | Method calls itself |
| Base case | Stopping condition |
| Recursive case | Self-call |
| Call stack | Stores active calls |
| Exam phrase | The recursive call must move toward the base case so the recursion eventually stops. |
