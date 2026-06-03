# Advanced Arrays and 2D Arrays

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define an array
- explain why arrays are useful
- access and update array elements using indexes
- process arrays using loops
- calculate total, average, maximum, and minimum values in an array
- search an array for a target value
- explain what a 2D array is
- use row and column indexes in a 2D array
- process a 2D array using nested loops
- apply 2D arrays to grids, tables, seats, maps, matrices, and game boards
- identify common index and boundary errors
- write pseudocode or Java-style logic involving arrays and 2D arrays
- answer exam-style questions about arrays and 2D arrays

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | HL Programming Extension |
| Topic | Advanced Arrays and 2D Arrays |
| Main skill | Storing and processing multiple related values using indexed structures |
| Connected topics | Loops, searching, sorting, trace tables, lists, algorithms, Java arrays |
| Practical focus | Array traversal, nested loops, row/column processing |
| Exam relevance | Definitions, code tracing, algorithm writing, boundary errors, scenario choice |

::: tip Learning Focus
An array stores multiple values under one name. A 2D array stores values in rows and columns, so it is useful for table-like or grid-like data.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Array | 数组 | Fixed-size indexed structure storing multiple values |
| Element | 元素 | One value stored in an array |
| Index | 索引 | Position of an element in an array |
| Length | 长度 | Number of elements in an array |
| Traversal | 遍历 | Visiting each element in an array |
| One-dimensional array | 一维数组 | Linear list of values |
| Two-dimensional array | 二维数组 | Array with rows and columns |
| Row | 行 | Horizontal set of elements in a 2D array |
| Column | 列 | Vertical set of elements in a 2D array |
| Nested loop | 嵌套循环 | Loop inside another loop |
| Boundary error | 边界错误 | Error caused by using an index outside valid range |
| Zero-based indexing | 从 0 开始的索引 | First element is at index 0 |
| Accumulator | 累加器 | Variable used to store running total |
| Counter | 计数器 | Variable used to count items |
| Maximum | 最大值 | Largest value in a collection |
| Minimum | 最小值 | Smallest value in a collection |
| Grid | 网格 | Row-column structure often represented by 2D array |
| Matrix | 矩阵 | Numeric 2D structure with rows and columns |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Array（数组）可以把多个相关数据放在同一个名字下面。

例如：

```text
scores = [72, 85, 91, 64]
```

这里 `scores` 是数组名，里面每一个值是 element。

如果使用 zero-based indexing：

```text
scores[0] = 72
scores[1] = 85
scores[2] = 91
scores[3] = 64
```

数组最常见的用途是：

```text
存很多个分数
存很多个名字
存很多个价格
循环处理每一个值
找最大值/最小值
计算总和/平均数
搜索某个值
```

2D array（二位数组）像表格，有 row 和 column。

例如座位表：

```text
seats[row][col]
```

或者游戏地图：

```text
grid[y][x]
```

处理 2D array 通常需要 nested loop：

```text
FOR row ← 0 TO rows - 1
    FOR col ← 0 TO cols - 1
        OUTPUT grid[row][col]
    ENDFOR
ENDFOR
```

简单记忆：

```text
array = one line of values
2D array = table / grid of values
```

</template>

<template #en>

### English Explanation

An array stores multiple related values under one name.

Example:

```text
scores = [72, 85, 91, 64]
```

Here, `scores` is the array name, and each value is an element.

Using zero-based indexing:

```text
scores[0] = 72
scores[1] = 85
scores[2] = 91
scores[3] = 64
```

Common uses of arrays include:

```text
storing many scores
storing many names
storing many prices
processing every value with a loop
finding maximum/minimum
calculating total/average
searching for a value
```

A 2D array is like a table, with rows and columns.

Example seat map:

```text
seats[row][col]
```

Example game map:

```text
grid[y][x]
```

Processing a 2D array usually needs a nested loop:

```text
FOR row ← 0 TO rows - 1
    FOR col ← 0 TO cols - 1
        OUTPUT grid[row][col]
    ENDFOR
ENDFOR
```

Simple memory:

```text
array = one line of values
2D array = table / grid of values
```

</template>
</LangBlock>

---

## 5. What Is an Array?

An array is a data structure that stores multiple values under one name.

### Simple Definition

```text
An array stores multiple values of the same type, with each value accessed using an index.
```

### Example

```text
scores = [72, 85, 91, 64]
```

| Index | Element |
|---:|---:|
| 0 | 72 |
| 1 | 85 |
| 2 | 91 |
| 3 | 64 |

### Mark Scheme Phrase

```text
An array is an indexed data structure that stores multiple values, usually of the same type, under one name.
```

---

## 6. Why Arrays Are Useful

Arrays are useful because they allow a program to store and process many related values.

### Benefits

| Benefit | Explanation |
|---|---|
| Organized storage | related values stored under one name |
| Easy access | values accessed using indexes |
| Loop processing | same operation can be applied to every element |
| Less repeated code | no need for many separate variables |
| Supports algorithms | useful for searching, sorting, totals, averages |
| Table/grid support | 2D arrays represent rows and columns |

### Weak Design

```text
score1, score2, score3, score4, score5
```

### Better Design

```text
scores[0], scores[1], scores[2], scores[3], scores[4]
```

---

## 7. Array Indexing

An index identifies the position of an element.

### Zero-based Indexing

Many languages, including Java, use zero-based indexing.

For an array of length 5:

```text
valid indexes = 0, 1, 2, 3, 4
```

The last index is:

```text
length - 1
```

### Common Error

```text
scores[5]
```

is invalid if the array length is 5.

### Exam Warning

Always check whether the question uses zero-based or one-based indexing.

---

## 8. Accessing and Updating Elements

### Accessing

```text
OUTPUT scores[2]
```

outputs the value at index 2.

### Updating

```text
scores[2] ← 95
```

changes the value at index 2.

### Example

Before:

```text
scores = [72, 85, 91, 64]
```

After:

```text
scores[2] ← 95
```

Result:

```text
scores = [72, 85, 95, 64]
```

---

## 9. Traversing an Array

Traversal means visiting each element.

### Pseudocode

```text
FOR index ← 0 TO length(scores) - 1
    OUTPUT scores[index]
ENDFOR
```

### Java-style Example

```java
for (int index = 0; index < scores.length; index++) {
    System.out.println(scores[index]);
}
```

### Key Idea

The loop index is used to access each element.

---

## 10. Calculating Total and Average

### Pseudocode

```text
total ← 0

FOR index ← 0 TO length(scores) - 1
    total ← total + scores[index]
ENDFOR

average ← total / length(scores)
OUTPUT average
```

### Java-style Example

```java
int total = 0;

for (int index = 0; index < scores.length; index++) {
    total = total + scores[index];
}

double average = (double) total / scores.length;
System.out.println(average);
```

### Mark Scheme Phrase

```text
An accumulator is initialized to 0 and each array element is added to it during traversal.
```

---

## 11. Finding Maximum Value

### Better Method

Use the first element as the starting maximum.

```text
maximum ← scores[0]

FOR index ← 1 TO length(scores) - 1
    IF scores[index] > maximum THEN
        maximum ← scores[index]
    ENDIF
ENDFOR

OUTPUT maximum
```

### Why Not Start at 0?

If all values are negative, starting at 0 gives the wrong answer.

Example:

```text
scores = [-8, -3, -10]
```

The maximum is `-3`, not `0`.

### Mark Scheme Phrase

```text
Initialize maximum to the first element, then compare each remaining element with the current maximum.
```

---

## 12. Finding Minimum Value

### Pseudocode

```text
minimum ← scores[0]

FOR index ← 1 TO length(scores) - 1
    IF scores[index] < minimum THEN
        minimum ← scores[index]
    ENDIF
ENDFOR

OUTPUT minimum
```

### Key Idea

The algorithm keeps the smallest value found so far.

---

## 13. Counting Values That Meet a Condition

### Example

Count how many scores are at least 50.

```text
passCount ← 0

FOR index ← 0 TO length(scores) - 1
    IF scores[index] >= 50 THEN
        passCount ← passCount + 1
    ENDIF
ENDFOR

OUTPUT passCount
```

### Mark Scheme Phrase

```text
Use a counter variable and increment it each time an array element satisfies the condition.
```

---

## 14. Searching an Array

### Linear Search

```text
found ← false
index ← 0

WHILE index < length(names) AND found = false
    IF names[index] = target THEN
        found ← true
    ELSE
        index ← index + 1
    ENDIF
ENDWHILE

OUTPUT found
```

### Key Idea

Linear search checks each element one by one until the item is found or the array ends.

### Mark Scheme Phrase

```text
Linear search checks each element sequentially and can be used even if the array is unsorted.
```

---

## 15. What Is a 2D Array?

A 2D array stores data in rows and columns.

### Example

```text
marks = [
    [80, 75, 90],
    [60, 72, 68],
    [95, 88, 91]
]
```

This can represent:

```text
3 students
3 subjects
```

### Access

```text
marks[0][0] = 80
marks[0][2] = 90
marks[2][1] = 88
```

### Mark Scheme Phrase

```text
A 2D array stores values in rows and columns and is useful for table-like or grid-like data.
```

---

## 16. Rows and Columns

For a 2D array:

```text
grid[row][column]
```

The first index usually selects the row.  
The second index usually selects the column.

### Example

```text
grid[2][3]
```

means:

```text
row 2, column 3
```

### Common Mistake

Students often swap row and column indexes.

If the question says:

```text
seats[row][column]
```

do not write:

```text
seats[column][row]
```

---

## 17. Traversing a 2D Array

A 2D array usually needs nested loops.

### Pseudocode

```text
FOR row ← 0 TO rows - 1
    FOR col ← 0 TO columns - 1
        OUTPUT grid[row][col]
    ENDFOR
ENDFOR
```

### Java-style Example

```java
for (int row = 0; row < grid.length; row++) {
    for (int col = 0; col < grid[row].length; col++) {
        System.out.println(grid[row][col]);
    }
}
```

### Key Idea

The outer loop processes rows.  
The inner loop processes columns in each row.

---

## 18. 2D Array Example: Seating Plan

A theatre seating plan can be represented as:

```text
seats[row][column]
```

Possible values:

```text
"available"
"booked"
"reserved"
```

### Check a Seat

```text
IF seats[row][column] = "available" THEN
    OUTPUT "Seat available"
ELSE
    OUTPUT "Seat not available"
ENDIF
```

### Count Available Seats

```text
availableCount ← 0

FOR row ← 0 TO rows - 1
    FOR col ← 0 TO columns - 1
        IF seats[row][col] = "available" THEN
            availableCount ← availableCount + 1
        ENDIF
    ENDFOR
ENDFOR

OUTPUT availableCount
```

---

## 19. 2D Array Example: Game Board

A game board may be stored as:

```text
board[row][column]
```

Possible values:

```text
"." = empty
"P" = player
"E" = enemy
"W" = wall
```

### Find Player Position

```text
FOR row ← 0 TO rows - 1
    FOR col ← 0 TO columns - 1
        IF board[row][col] = "P" THEN
            playerRow ← row
            playerCol ← col
        ENDIF
    ENDFOR
ENDFOR
```

### Key Idea

2D arrays are useful for grid-based games because each cell has a row and column coordinate.

---

## 20. 2D Array Example: Student Marks Table

A marks table:

```text
marks[student][subject]
```

Example:

```text
marks = [
    [80, 75, 90],
    [60, 72, 68],
    [95, 88, 91]
]
```

### Calculate Total for One Student

```text
studentTotal ← 0

FOR subject ← 0 TO numberOfSubjects - 1
    studentTotal ← studentTotal + marks[student][subject]
ENDFOR

OUTPUT studentTotal
```

### Calculate Average for Every Student

```text
FOR student ← 0 TO numberOfStudents - 1
    total ← 0

    FOR subject ← 0 TO numberOfSubjects - 1
        total ← total + marks[student][subject]
    ENDFOR

    average ← total / numberOfSubjects
    OUTPUT average
ENDFOR
```

---

## 21. 2D Array Example: Matrix Total

### Problem

Calculate the total of all values in a 2D numeric array.

### Pseudocode

```text
total ← 0

FOR row ← 0 TO rows - 1
    FOR col ← 0 TO columns - 1
        total ← total + numbers[row][col]
    ENDFOR
ENDFOR

OUTPUT total
```

### Key Idea

The accumulator is outside both loops so it stores the total across the whole 2D array.

---

## 22. Common Array Errors

| Error | Why It Happens | Fix |
|---|---|---|
| using index equal to length | last valid index is length - 1 | use `< length` or `TO length - 1` |
| starting loop at wrong index | zero-based vs one-based confusion | check indexing convention |
| not initializing total | accumulator has no start value | set `total ← 0` |
| starting maximum at 0 | fails with all negative values | use first element |
| output inside loop accidentally | repeated output | place output after loop if needed |
| row/column swapped | wrong element accessed | use `array[row][col]` consistently |
| inner loop uses row limit | column processing wrong | use column length in inner loop |
| array size fixed but data count changes | wrong structure chosen | consider dynamic list |
| searching but not stopping | extra work | use `found` flag if early stop needed |
| updating wrong index | data overwritten incorrectly | trace index values carefully |

---

## 23. Arrays vs Dynamic Lists

| Feature | Array | Dynamic List / ArrayList |
|---|---|---|
| Size | fixed in many languages | can grow/shrink |
| Access by index | yes | yes |
| Add/remove items | less flexible | easier |
| Memory | fixed allocation | may resize internally |
| Suitable when | number of items known | number of items changes |
| Example | 12 months of sales | shopping cart items |

### Mark Scheme Phrase

```text
An array is suitable when the number of elements is known, while a dynamic list is suitable when elements need to be added or removed during execution.
```

---

## 24. Worked Example: Trace an Array Algorithm

### Algorithm

```text
scores ← [4, 7, 2]
total ← 0

FOR index ← 0 TO 2
    total ← total + scores[index]
ENDFOR

OUTPUT total
```

### Trace Table

| Iteration | index | scores[index] | total | Output |
|---:|---:|---:|---:|---|
| Start |  |  | 0 |  |
| 1 | 0 | 4 | 4 |  |
| 2 | 1 | 7 | 11 |  |
| 3 | 2 | 2 | 13 |  |
| End |  |  | 13 | 13 |

Final output:

```text
13
```

---

## 25. Worked Example: Trace a 2D Array

### Array

```text
grid = [
    [1, 2],
    [3, 4]
]
```

### Algorithm

```text
total ← 0

FOR row ← 0 TO 1
    FOR col ← 0 TO 1
        total ← total + grid[row][col]
    ENDFOR
ENDFOR

OUTPUT total
```

### Trace Table

| row | col | grid[row][col] | total |
|---:|---:|---:|---:|
| 0 | 0 | 1 | 1 |
| 0 | 1 | 2 | 3 |
| 1 | 0 | 3 | 6 |
| 1 | 1 | 4 | 10 |

Final output:

```text
10
```

---

## 26. Scenario Answer Bank

### If Asked: “Define array”

```text
An array is an indexed data structure that stores multiple values, usually of the same type, under one name.
```

### If Asked: “Why use an array?”

```text
An array stores related values together and allows them to be processed using loops, reducing repeated variables and repeated code.
```

### If Asked: “Define 2D array”

```text
A 2D array stores values in rows and columns and is useful for table-like or grid-like data.
```

### If Asked: “Why use nested loops?”

```text
Nested loops allow every row and every column of a 2D array to be processed systematically.
```

### If Asked: “Common boundary error”

```text
An index outside the valid range causes an error because array indexes usually go from 0 to length - 1.
```

---

## 27. Exam-style Questions

### Question 1 [2 marks]

Define array.

<details>
<summary>Mark Scheme Style Answer</summary>

An array is an indexed data structure that stores multiple values, usually of the same type, under one name.

</details>

---

### Question 2 [4 marks]

Explain two benefits of using an array to store 30 test scores.

<details>
<summary>Mark Scheme Style Answer</summary>

An array stores all test scores under one name, making the data more organized than using many separate variables. It also allows a loop to process all scores, such as calculating the total or average, reducing repeated code.

</details>

---

### Question 3 [5 marks]

Write pseudocode to calculate the average of all values in an array `scores`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
total ← 0

FOR index ← 0 TO length(scores) - 1
    total ← total + scores[index]
ENDFOR

average ← total / length(scores)
OUTPUT average
```

</details>

---

### Question 4 [6 marks]

Write pseudocode to find the largest value in an array `numbers`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
largest ← numbers[0]

FOR index ← 1 TO length(numbers) - 1
    IF numbers[index] > largest THEN
        largest ← numbers[index]
    ENDIF
ENDFOR

OUTPUT largest
```

</details>

---

### Question 5 [6 marks]

A cinema stores seat availability in a 2D array `seats[row][col]`, where `"A"` means available and `"B"` means booked.

Write pseudocode to count the number of available seats.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
availableCount ← 0

FOR row ← 0 TO rows - 1
    FOR col ← 0 TO columns - 1
        IF seats[row][col] = "A" THEN
            availableCount ← availableCount + 1
        ENDIF
    ENDFOR
ENDFOR

OUTPUT availableCount
```

</details>

---

### Question 6 [4 marks]

Explain why a 2D array is suitable for storing a game board.

<details>
<summary>Mark Scheme Style Answer</summary>

A game board has a grid structure with rows and columns. A 2D array can represent each cell using row and column indexes, allowing the program to store and access values such as player position, enemies, walls, or empty spaces.

</details>

---

## 28. Guided Practice

### Practice 1

Given:

```text
scores = [10, 20, 30]
```

What is `scores[1]`?

<details>
<summary>Suggested Answer</summary>

```text
20
```

assuming zero-based indexing.

</details>

---

### Practice 2

For an array of length 8 using zero-based indexing, what is the last valid index?

<details>
<summary>Suggested Answer</summary>

```text
7
```

because the last index is `length - 1`.

</details>

---

### Practice 3

Why is `numbers[length(numbers)]` usually invalid?

<details>
<summary>Suggested Answer</summary>

Because valid zero-based indexes go from `0` to `length(numbers) - 1`.

</details>

---

### Practice 4

What structure is usually needed to process every element in a 2D array?

<details>
<summary>Suggested Answer</summary>

Nested loops.

</details>

---

### Practice 5

Why should `maximum` often be initialized to the first element instead of 0?

<details>
<summary>Suggested Answer</summary>

If all values are negative, starting at 0 would give an incorrect maximum that may not exist in the array.

</details>

---

## 29. Independent Practice

### Question 1

Define array.

### Question 2

Explain why arrays reduce repeated code.

### Question 3

Write pseudocode to output all values in an array `names`.

### Question 4

Write pseudocode to count how many values in `temperatures` are above 30.

### Question 5

Write pseudocode to find the smallest value in `numbers`.

### Question 6

Define 2D array.

### Question 7

Explain why a 2D array is suitable for a seating plan.

### Question 8

Write pseudocode to output every value in `grid[row][col]`.

### Question 9

Explain one common boundary error with arrays.

### Question 10

Compare arrays and dynamic lists.

---

## 30. Practice task
### Activity 1: Human Array

Students stand in a line holding values.

The teacher asks:

```text
What is index 0?
What is index 3?
Find the maximum value.
Calculate the total.
Search for value 50.
```

Students physically model array traversal.

---

### Activity 2: Seating Plan 2D Array

Draw a seating grid and label rows/columns.

Students write:

```text
seats[0][0]
seats[2][3]
seats[row][col]
```

Then count available seats using nested loops.

---

### Activity 3: Debug the Index

Give students faulty loops:

```text
FOR index ← 0 TO length(scores)
```

Students explain why it is wrong and correct it to:

```text
FOR index ← 0 TO length(scores) - 1
```

---

## 31. Independent practice
### Independent practice part A

Explain arrays and 2D arrays in 8-10 sentences using your own example.

### Independent practice part B

Write pseudocode for:

```text
1. total of an array
2. average of an array
3. largest value in an array
4. count values over 100
5. search for a target value
```

### Independent practice part C

A school stores marks in:

```text
marks[student][subject]
```

Write pseudocode to:

```text
1. output every mark
2. calculate total for one student
3. calculate average for every student
```

### Independent practice part D

Correct these misconceptions:

```text
An array can only store one value.
The last index of an array is always length.
A 2D array is only for maths.
Nested loops are never needed.
Starting maximum at 0 always works.
```

---

## 32. One-page Revision Summary

| Point | Summary |
|---|---|
| Array | stores multiple values under one name |
| Element | one value in an array |
| Index | position of an element |
| Zero-based indexing | first index is 0 |
| Last index | length - 1 |
| Traversal | visiting every element |
| Accumulator | running total |
| Counter | counts items meeting condition |
| Search | check elements for target |
| Maximum | initialize to first element |
| 2D array | rows and columns |
| Row/column | accessed using two indexes |
| Nested loops | process 2D arrays |
| Boundary error | invalid index outside range |
| Array vs dynamic list | fixed size vs grow/shrink |
| Exam phrase | arrays store related values and allow them to be processed efficiently using loops |

