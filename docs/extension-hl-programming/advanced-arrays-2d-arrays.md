# Advanced Arrays and 2D Arrays

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why 2D arrays are useful
- represent tables and grids using 2D arrays
- access elements using row and column indexes
- use nested loops to traverse 2D arrays
- write Java code using 2D arrays
- trace changes in a 2D array

---

## 2. Course Position

| Item | Detail |
|---|---|
| Section | HL Programming Extension / School Extension |
| Main link | B2 Programming + B3 OOP |
| Language focus | IB pseudocode + Java |
| Difficulty | Extension beyond SL |
| Main skill | Working with tabular data and nested loops |

::: warning Extension Note
This section is included because the course plans to give students stronger programming ability beyond the minimum SL requirement. It should be taught after students are comfortable with B2 Programming and B3 OOP basics.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| 2D array | 二维数组 | An array with rows and columns |
| Row | 行 | A horizontal set of elements |
| Column | 列 | A vertical set of elements |
| Index | 索引 | Position used to access an element |
| Nested loop | 嵌套循环 | A loop inside another loop |
| Traversal | 遍历 | Visiting each element in a data structure |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**2D array（二维数组）** 可以看成一个表格，有 rows 和 columns。它适合存储矩阵、棋盘、座位表、成绩表、地图网格等数据。

在 Java 中，2D array 常用两个 indexes：

```java
grid[row][column]
```

第一个 index 表示 row，第二个 index 表示 column。

遍历 2D array 通常需要 nested loops。外层 loop 控制 row，内层 loop 控制 column。

</template>

<template #en>

### English Explanation

A **2D array** can be viewed as a table with rows and columns. It is useful for storing matrices, game boards, seating plans, mark tables, maps, and grids.

In Java, a 2D array normally uses two indexes:

```java
grid[row][column]
```

The first index represents the row, and the second index represents the column.

Traversing a 2D array usually requires nested loops. The outer loop controls the row and the inner loop controls the column.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Classroom seating

| Row / Column | 0 | 1 | 2 |
|---|---|---|---|
| 0 | Alice | Ben | Clara |
| 1 | David | Eva | Frank |

`seats[0][1]` stores `"Ben"`.  
`seats[1][2]` stores `"Frank"`.

---

## 6. IB Pseudocode Pattern

```text
FOR row = 0 TO numberOfRows - 1 DO
    FOR column = 0 TO numberOfColumns - 1 DO
        OUTPUT grid[row][column]
    END FOR
END FOR
```

---

## 7. Java Code Example

```java
public class TwoDArrayExample {
    public static void main(String[] args) {
        int[][] marks = {
            {80, 75, 90},
            {60, 88, 72}
        };

        for (int row = 0; row < marks.length; row++) {
            for (int col = 0; col < marks[row].length; col++) {
                System.out.println(marks[row][col]);
            }
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `int[][] marks` | Declares a 2D integer array |
| `{80, 75, 90}` | First row of values |
| `marks.length` | Number of rows |
| `marks[row].length` | Number of columns in the current row |
| `marks[row][col]` | Accesses one element |
| nested loops | Visit every row and every column |

---

## 9. Step-by-step Trace / Process

Given:

```text
marks = [[80, 75, 90],
         [60, 88, 72]]
```

Traversal order:

| Step | row | col | value |
|---|---:|---:|---:|
| 1 | 0 | 0 | 80 |
| 2 | 0 | 1 | 75 |
| 3 | 0 | 2 | 90 |
| 4 | 1 | 0 | 60 |
| 5 | 1 | 1 | 88 |
| 6 | 1 | 2 | 72 |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Confusing row and column | Accesses the wrong value | Remember `array[row][column]` |
| Using one loop only | Only one dimension is processed | Use nested loops |
| Using `marks.length` for columns | It gives number of rows | Use `marks[row].length` for columns |
| Starting index at 1 | Java arrays start at 0 | Start from index 0 |
| Going beyond last index | Causes out-of-bounds error | Use `< length`, not `<= length` |

---

## 11. Guided Practice

### Practice 1

What is the value of `grid[1][0]`?

```text
grid = [[4, 7],
        [9, 2]]
```

<details><summary>Suggested Answer</summary>

`grid[1][0]` is `9`.

</details>

### Practice 2

Why are nested loops useful for 2D arrays?

<details><summary>Suggested Answer</summary>

One loop can move through rows, while the inner loop moves through columns in each row.

</details>

---

## 12. Independent Practice

1. Create a 2D array representing a 3×3 game board.
2. Write Java code to output all values.
3. Write Java code to calculate the total of all values.
4. Explain why `array[2][3]` may cause an error in a 2×3 array.

---

## 13. Exam-style / Code-reading Questions

### Question 1 [4 marks]

Explain how a 2D array can be used to represent a seating plan.

<details><summary>Mark Scheme Style Answer</summary>

A 2D array can represent rows and columns of seats. The first index can represent the row number and the second index can represent the seat position in that row. Each element can store the student name or whether the seat is empty.

</details>

### Question 2 [4 marks]

Write Java code to output every value in a 2D integer array called `data`.

<details><summary>Mark Scheme Style Answer</summary>

```java
for (int row = 0; row < data.length; row++) {
    for (int col = 0; col < data[row].length; col++) {
        System.out.println(data[row][col]);
    }
}
```

</details>

---

## 14. Classroom Activity

### Activity: Human Grid

Students stand in rows and columns. The teacher calls indexes such as `[1][2]`, and students identify the selected person. Then students trace nested loops physically.

---

## 15. Homework

Create a Java program with a 2D array of marks for 3 students and 4 tests. Output each mark and calculate each student's total.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| 2D array | Rows and columns |
| Access pattern | array[row][column] |
| Nested loop | Used for traversal |
| Java row count | array.length |
| Java column count | array[row].length |
| Exam phrase | The outer loop processes rows and the inner loop processes columns. |
