# Arrays

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define an **array**
- access array elements using indexes
- explain why arrays are useful
- traverse an array
- calculate totals and search values in arrays
- write simple Java array code
- identify common index errors

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Storing multiple related values |
| Connected units | Loops, Searching, Sorting, Trace Tables |
| Exam relevance | Array tracing, output prediction, algorithm design |

::: tip Learning Focus
Arrays store multiple values under one name. Loops are usually used to process arrays.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Array | 数组 | A data structure storing multiple values under one name |
| Element | 元素 | One value stored in an array |
| Index | 索引 | Position of an element |
| Length | 长度 | Number of elements |
| Traversal | 遍历 | Visiting each element |
| Bounds | 边界 | Valid index range of an array |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Array（数组）** 可以在一个变量名下面存储多个相关的值。例如，一个班级的成绩可以放在一个数组中，而不是创建很多变量。

在 Java 中，数组索引通常从 0 开始：

| Index | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| scores | 72 | 85 | 64 | 90 |

`scores[0]` 是 72，`scores[3]` 是 90。

</template>

<template #en>

### English Explanation

An **array** stores multiple related values under one name. For example, the marks of a class can be stored in an array instead of many separate variables.

In Java, array indexes usually start at 0:

| Index | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| scores | 72 | 85 | 64 | 90 |

`scores[0]` is 72 and `scores[3]` is 90.

</template>
</LangBlock>

---

## 5. Real-life Example

### Student Scores

| Index | 0 | 1 | 2 | 3 | 4 |
|---|---:|---:|---:|---:|---:|
| scores | 78 | 82 | 91 | 66 | 73 |

A loop can visit each score to calculate total, average, highest score, or count passes.

---

## 6. IB Pseudocode Pattern

```text
scores = [78, 82, 91, 66, 73]
total = 0

FOR i = 0 TO 4 DO
    total = total + scores[i]
END FOR

OUTPUT total
```

---

## 7. Java Code Example

```java
public class ArrayTotal {
    public static void main(String[] args) {
        int[] scores = {78, 82, 91, 66, 73};
        int total = 0;

        for (int i = 0; i < scores.length; i++) {
            total = total + scores[i];
        }

        System.out.println("Total: " + total);
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `int[] scores = {...};` | Creates an integer array |
| `int total = 0;` | Initializes running total |
| `i = 0` | Starts at first index |
| `i < scores.length` | Stops before going outside array |
| `scores[i]` | Accesses current element |
| `total = total + scores[i];` | Adds current score to total |

---

## 9. Trace Table

| Iteration | i | scores[i] | total |
|---|---:|---:|---:|
| Start |  |  | 0 |
| 1 | 0 | 78 | 78 |
| 2 | 1 | 82 | 160 |
| 3 | 2 | 91 | 251 |
| 4 | 3 | 66 | 317 |
| 5 | 4 | 73 | 390 |

Final output:

```text
Total: 390
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Starting at index 1 | First element skipped | Start at 0 in Java |
| Using `i <= scores.length` | Index out of bounds | Use `i < scores.length` |
| Forgetting to initialize total | Total may be wrong | Set total to 0 |
| Confusing index and value | Wrong calculation | Use `scores[i]` for value |
| Changing array accidentally | Data may be lost | Read questions carefully |

---

## 11. Guided Practice

### Practice 1

Find total of `{4, 7, 2, 5}`.

<details>
<summary>Suggested Answer</summary>

4 + 7 + 2 + 5 = 18

</details>

### Practice 2

Write Java code to output each element.

<details>
<summary>Suggested Answer</summary>

```java
for (int i = 0; i < scores.length; i++) {
    System.out.println(scores[i]);
}
```

</details>

---

## 12. Independent Practice

1. Trace total for array `{3, 6, 9}`.
2. Write Java code to count how many scores are at least 50.
3. Explain why `scores[scores.length]` causes an error.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what an array is.

<details>
<summary>Mark Scheme Style Answer</summary>

An array is a data structure that stores multiple values under one name, with each element accessed using an index.

</details>

### Question 2 [4 marks]

Explain why a loop is useful when processing an array.

<details>
<summary>Mark Scheme Style Answer</summary>

A loop can visit each element in the array automatically. This avoids repeated code and allows the same operation, such as adding or comparing, to be applied to every element.

</details>

---

## 14. Classroom Activity

Students receive arrays and complete total, average, highest, and count-pass tasks in pairs.

---

## 15. Homework

Write Java code for an array of 5 marks. Output total, average, and number of passing marks.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Array | Stores multiple values |
| Index | Position of an element |
| Java first index | 0 |
| Traversal | Visit each element |
| Exam phrase | "The loop traverses the array and processes each element." |
