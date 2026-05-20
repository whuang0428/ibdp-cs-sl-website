# Sorting

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of sorting
- distinguish ascending and descending order
- understand swap logic
- trace a simple sorting pass
- write Java code for a simple bubble sort
- explain common sorting mistakes

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Ordering data |
| Connected units | Arrays, Loops, Searching |
| Exam relevance | Algorithm tracing, comparison, array processing |

---

## 3. Key Terms

| Term | 中文解释 | Meaning |
|---|---|---|
| Sort | 排序 | Arrange values into a required order |
| Ascending | 升序 | Smallest to largest |
| Descending | 降序 | Largest to smallest |
| Swap | 交换 | Exchange two values |
| Pass | 一轮遍历 | One movement through the data |
| Bubble sort | 冒泡排序 | Repeatedly compares adjacent values and swaps if needed |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Sorting（排序）** 是把数据按照某种顺序排列，例如从小到大或从大到小。

排序后的数据更容易阅读、比较和搜索。比如成绩可以从高到低排列，价格可以从低到高排列。

简单排序经常需要比较两个值。如果顺序不对，就交换它们。

</template>

<template #en>

### English Explanation

**Sorting** means arranging data into a required order, such as smallest to largest or largest to smallest.

Sorted data is easier to read, compare, and search. For example, marks can be sorted from highest to lowest, and prices can be sorted from lowest to highest.

Simple sorting often compares two values. If they are in the wrong order, they are swapped.

</template>
</LangBlock>

---

## 5. Real-life Example

Sort prices ascending:

| Original | 8 | 3 | 6 | 2 |
|---|---:|---:|---:|---:|

Sorted:

| Sorted | 2 | 3 | 6 | 8 |
|---|---:|---:|---:|---:|

---

## 6. IB Pseudocode Pattern

One bubble sort style pattern:

```text
FOR pass = 0 TO LENGTH(data) - 2 DO
    FOR i = 0 TO LENGTH(data) - 2 DO
        IF data[i] > data[i + 1] THEN
            temp = data[i]
            data[i] = data[i + 1]
            data[i + 1] = temp
        END IF
    END FOR
END FOR
```

---

## 7. Java Code Example

```java
public class BubbleSortExample {
    public static void main(String[] args) {
        int[] data = {8, 3, 6, 2};

        for (int pass = 0; pass < data.length - 1; pass++) {
            for (int i = 0; i < data.length - 1; i++) {
                if (data[i] > data[i + 1]) {
                    int temp = data[i];
                    data[i] = data[i + 1];
                    data[i + 1] = temp;
                }
            }
        }

        for (int i = 0; i < data.length; i++) {
            System.out.println(data[i]);
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| Outer loop | Repeats passes through the array |
| Inner loop | Compares adjacent values |
| `data[i] > data[i + 1]` | Checks whether values are in wrong order |
| `temp` | Temporarily stores a value during swap |
| Swap statements | Exchange two adjacent values |

---

## 9. Trace Table: One Pass

Array: `{8, 3, 6, 2}`

| Comparison | Before | Action | After |
|---|---|---|---|
| 8 and 3 | 8, 3, 6, 2 | swap | 3, 8, 6, 2 |
| 8 and 6 | 3, 8, 6, 2 | swap | 3, 6, 8, 2 |
| 8 and 2 | 3, 6, 8, 2 | swap | 3, 6, 2, 8 |

After one pass, the largest value has moved to the end.

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Sorting wrong direction | Output order wrong | Check ascending/descending |
| Losing a value during swap | Data becomes duplicated or lost | Use temporary variable |
| Comparing outside array bounds | Runtime error | Stop before `length - 1` |
| Stopping after one pass | Array may not be fully sorted | Repeat passes |
| Confusing index and value | Wrong comparison | Compare `data[i]` and `data[i+1]` |

---

## 11. Guided Practice

Sort `{4, 1, 3}` ascending.

<details>
<summary>Suggested Answer</summary>

Final sorted array:

```text
1, 3, 4
```

</details>

Explain swap with temp.

<details>
<summary>Suggested Answer</summary>

`temp` stores one value temporarily so it is not lost when the first array position is overwritten.

</details>

---

## 12. Independent Practice

1. Show one bubble sort pass for `{5, 2, 9, 1}`.
2. Write Java code to sort `{7, 4, 6}`.
3. Explain why a temporary variable is needed.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by sorting.

<details>
<summary>Mark Scheme Style Answer</summary>

Sorting is arranging data into a required order, such as ascending or descending order.

</details>

### Question 2 [4 marks]

Explain the purpose of the temporary variable in a swap.

<details>
<summary>Mark Scheme Style Answer</summary>

The temporary variable stores one value before it is overwritten. This allows two values to exchange positions without losing either value.

</details>

---

## 14. Classroom Activity

Students physically sort number cards using bubble sort and record each comparison.

---

## 15. Homework

Trace two passes of bubble sort for `{6, 1, 5, 2}` and write the final sorted array.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Sorting | Arrange data in order |
| Ascending | Smallest to largest |
| Swap | Exchange values |
| temp | Prevents data loss |
| Exam phrase | "Adjacent values are compared and swapped if they are in the wrong order." |
