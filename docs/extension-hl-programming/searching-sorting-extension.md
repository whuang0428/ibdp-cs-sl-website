# Searching and Sorting Extension

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain binary search
- compare linear search and binary search
- explain why binary search requires sorted data
- trace insertion sort conceptually
- compare simple algorithm efficiency
- write Java examples for binary search and insertion sort

---

## 2. Course Position

| Item | Detail |
|---|---|
| Section | HL Programming Extension / School Extension |
| Main link | B2 Programming + B3 OOP |
| Language focus | IB pseudocode + Java |
| Difficulty | Extension beyond SL |
| Main skill | Extending searching and sorting algorithms |

::: warning Extension Note
This section is included because the course plans to give students stronger programming ability beyond the minimum SL requirement. It should be taught after students are comfortable with B2 Programming and B3 OOP basics.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Linear search | 线性搜索 | Checks elements one by one |
| Binary search | 二分搜索 | Repeatedly halves the search range in sorted data |
| Sorted data | 已排序数据 | Data arranged in order |
| Insertion sort | 插入排序 | Builds a sorted section by inserting each item into correct position |
| Comparison | 比较 | Checking order or equality of values |
| Efficiency | 效率 | How much time or resources an algorithm uses |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Binary search（二分搜索）** 比 linear search 更快，但前提是数据已经 sorted。它每次检查中间元素，然后丢弃一半搜索范围。

**Insertion sort（插入排序）** 会逐步建立一个 sorted section。每次取下一个元素，把它插入到前面已排序部分的正确位置。

这部分重点不是背代码，而是理解算法过程和限制条件。

</template>

<template #en>

### English Explanation

**Binary search** is usually faster than linear search, but the data must already be sorted. It checks the middle element and discards half of the search range each time.

**Insertion sort** gradually builds a sorted section. Each new item is inserted into the correct position in the already sorted section.

The focus is not memorizing code, but understanding the process and conditions.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Binary search

Data:

```text
[2, 4, 7, 10, 13, 18, 21]
```

Target: `13`

1. Middle is 10.
2. 13 is greater than 10, so search right half.
3. Middle of right half is 18.
4. 13 is less than 18, so search left part.
5. 13 is found.

---

## 6. IB Pseudocode Pattern

```text
low = 0
high = LENGTH(data) - 1
found = false

WHILE low <= high AND found = false DO
    mid = (low + high) DIV 2

    IF data[mid] = target THEN
        found = true
    ELSE IF target < data[mid] THEN
        high = mid - 1
    ELSE
        low = mid + 1
    END IF
END WHILE
```

---

## 7. Java Code Example

```java
public class BinarySearchExample {
    public static void main(String[] args) {
        int[] data = {2, 4, 7, 10, 13, 18, 21};
        int target = 13;

        int low = 0;
        int high = data.length - 1;
        boolean found = false;

        while (low <= high && !found) {
            int mid = (low + high) / 2;

            if (data[mid] == target) {
                found = true;
            } else if (target < data[mid]) {
                high = mid - 1;
            } else {
                low = mid + 1;
            }
        }

        System.out.println(found);
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `low` | Start of current search range |
| `high` | End of current search range |
| `mid` | Middle index |
| `target < data[mid]` | Search left half |
| `target > data[mid]` | Search right half |
| `low <= high` | Continue while search range exists |

---

## 9. Step-by-step Trace / Process

Binary search trace for target 13:

| Step | low | high | mid | data[mid] | Action |
|---|---:|---:|---:|---:|---|
| 1 | 0 | 6 | 3 | 10 | search right |
| 2 | 4 | 6 | 5 | 18 | search left |
| 3 | 4 | 4 | 4 | 13 | found |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using binary search on unsorted data | Halving logic becomes invalid | Sort data first |
| Not updating low/high correctly | Search may loop forever or miss target | Use mid - 1 or mid + 1 |
| Confusing mid value and mid index | Wrong comparison | Compare target with `data[mid]` |
| Thinking binary search always best | Sorting cost may matter | Consider scenario |
| Tracing without table | Easy to lose bounds | Track low, high, mid |

---

## 11. Guided Practice

### Practice 1

Why must binary search use sorted data?

<details><summary>Suggested Answer</summary>

Because the algorithm decides whether to search left or right based on the order of the middle value. Without sorted data, this decision is not reliable.

</details>

### Practice 2

What happens to the search range each step?

<details><summary>Suggested Answer</summary>

It is roughly halved each time.

</details>

---

## 12. Independent Practice

1. Trace binary search for target 4.
2. Trace binary search for a target not in the array.
3. Explain insertion sort in words.
4. Compare linear search and binary search.

---

## 13. Exam-style / Code-reading Questions

### Question 1 [4 marks]

Compare linear search and binary search.

<details><summary>Mark Scheme Style Answer</summary>

Linear search checks elements one by one and works on unsorted data, but may be slow for large arrays. Binary search checks the middle element and repeatedly halves the search range, so it is more efficient for large datasets, but it requires sorted data.

</details>

### Question 2 [3 marks]

Explain why binary search cannot be used reliably on unsorted data.

<details><summary>Mark Scheme Style Answer</summary>

Binary search uses the middle value to decide whether the target must be in the left or right half. This only works if the data is sorted. If the data is unsorted, discarding half the data may remove the target incorrectly.

</details>

---

## 14. Classroom Activity

### Activity: Human Binary Search

Students hold sorted number cards. One student searches by checking the middle card and eliminating half the class each step.

---

## 15. Homework

Create two traces: one for linear search and one for binary search on the same sorted array. Compare the number of comparisons.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Binary search | Halves sorted search range |
| Requirement | Data must be sorted |
| Linear search | Checks one by one |
| Insertion sort | Inserts items into sorted section |
| Exam phrase | Binary search is faster for sorted data because it eliminates half of the remaining search range each step. |
