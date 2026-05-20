# Searching

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of searching
- describe linear search
- trace a search algorithm
- use a Boolean found flag
- write Java linear search code
- explain found and not found cases

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Finding a target value |
| Connected units | Arrays, Loops, Selection |
| Exam relevance | Algorithm tracing, array searching, output prediction |

---

## 3. Key Terms

| Term | 中文解释 | Meaning |
|---|---|---|
| Search | 搜索 | Find a value in a data structure |
| Target | 目标值 | The value being searched for |
| Linear search | 线性搜索 | Checks items one by one |
| Found flag | 找到标记 | Boolean variable recording whether target is found |
| Index | 索引 | Position in array |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Searching（搜索）** 是在一组数据中寻找目标值。最简单的方法是 **linear search（线性搜索）**。

Linear search 从第一个元素开始，一个一个检查，直到找到目标值，或者检查完整个数组。

它的优点是简单，并且不要求数据排序。缺点是如果数据很多，可能比较慢。

</template>

<template #en>

### English Explanation

**Searching** means finding a target value in a set of data. The simplest method is **linear search**.

Linear search starts at the first element and checks each value one by one until the target is found or the whole array has been checked.

It is simple and works on unsorted data, but it may be slow for large datasets.

</template>
</LangBlock>

---

## 5. Real-life Example

Find target value 6:

| Index | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| data | 8 | 3 | 6 | 2 |

| Step | Index checked | Value | Result |
|---|---:|---:|---|
| 1 | 0 | 8 | Not found |
| 2 | 1 | 3 | Not found |
| 3 | 2 | 6 | Found |

---

## 6. IB Pseudocode Pattern

```text
target = 6
found = false
index = 0

WHILE index < LENGTH(data) AND found = false DO
    IF data[index] = target THEN
        found = true
    ELSE
        index = index + 1
    END IF
END WHILE

IF found = true THEN
    OUTPUT index
ELSE
    OUTPUT "Not found"
END IF
```

---

## 7. Java Code Example

```java
public class LinearSearchExample {
    public static void main(String[] args) {
        int[] data = {8, 3, 6, 2};
        int target = 6;
        boolean found = false;
        int index = 0;

        while (index < data.length && found == false) {
            if (data[index] == target) {
                found = true;
            } else {
                index = index + 1;
            }
        }

        if (found == true) {
            System.out.println("Found at index " + index);
        } else {
            System.out.println("Not found");
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `target = 6` | Value to search for |
| `found = false` | Target not found at start |
| `index = 0` | Start from first element |
| `index < data.length` | Prevents index out of bounds |
| `found == false` | Stops once target is found |
| `data[index] == target` | Compares current element with target |

---

## 9. Trace Table

| Iteration | index | data[index] | found |
|---|---:|---:|---|
| Start | 0 | 8 | false |
| 1 | 1 | 8 | false |
| 2 | 2 | 3 | false |
| 3 | 2 | 6 | true |

Output:

```text
Found at index 2
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Not handling not found | Program gives unclear result | Include found flag |
| Searching beyond array length | Index error | Use `index < data.length` |
| Not stopping after found | Wastes time | Use condition with found flag |
| Confusing index and value | Wrong output | State whether output is position or value |

---

## 11. Guided Practice

Search for 9 in `{12, 5, 9, 7}`.

<details>
<summary>Suggested Answer</summary>

The value 9 is found at index 2.

</details>

---

## 12. Independent Practice

1. Trace a search for 4 in `{2, 8, 1, 4, 6}`.
2. Trace a search for 10 in the same array.
3. Write Java code to search for a name in a `String[]`.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

Describe linear search.

<details>
<summary>Mark Scheme Style Answer</summary>

Linear search checks each item one by one from the start until the target is found or the end of the data is reached.

</details>

### Question 2 [4 marks]

Explain why a found flag may be used.

<details>
<summary>Mark Scheme Style Answer</summary>

A found flag records whether the target has been found. It can stop the loop early and allows the program to output either the found position or a not found message.

</details>

---

## 14. Classroom Activity

Students act as array elements. One student searches by asking each “element” in order.

---

## 15. Homework

Write pseudocode and Java code for searching an array of 5 names. Include found and not found test cases.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Linear search | Checks values one by one |
| Works on unsorted data | Yes |
| Found flag | Records search result |
| Exam phrase | "The algorithm compares each element with the target until a match is found or the array ends." |
