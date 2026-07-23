# Arrays

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define what an array is
- explain why arrays are useful in programming
- declare and initialize arrays in Java
- access array elements using an index
- explain zero-based indexing
- traverse an array using a loop
- use arrays to calculate total, average, count, maximum, and minimum
- write and trace array algorithms in IB pseudocode and Java
- identify common array errors such as out-of-bounds errors
- answer exam-style code tracing and algorithm writing questions

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Storing and processing multiple values using arrays |
| Connected topics | Variables, loops, selection, searching, sorting, testing |
| Programming language focus | IB pseudocode + Java |
| Exam relevance | Trace tables, array traversal, algorithm writing, output prediction, error correction |

::: tip Learning Focus
Arrays connect directly to loops. Most array algorithms use a loop to visit each element one by one.
:::

---

## Start here: arrays before searching and sorting

Arrays store multiple values under one variable name. Each item is accessed using an index.

Students should first understand indexing and traversal before moving to searching and sorting. Arrays often appear in trace-style and pseudocode questions, so the main skill is following the index carefully.

---

## Recommended learning path

1. Understand what an array stores: one array can hold many related values.
2. Learn how indexes work: Java arrays start at index `0`.
3. Access one array element: use `array[index]` to read a value.
4. Update one array element: assign a new value to a specific index.
5. Traverse the array with a loop: visit each element in order.
6. Use traversal to count, total, search, or compare values.
7. Trace array changes carefully in exam questions.

---

## Core checklist

After studying this page, you should be able to:

- explain what an array is
- identify an array index
- access an element using its index
- update an array element
- trace changes to array values
- use a loop to traverse an array
- avoid off-by-one errors
- explain why arrays are useful for repeated data

---

## Core traversal pattern

Traversal means visiting each element in order. The loop variable is used as the index, and the stopping condition must match the array length.

IB-style pseudocode:

```text
FOR i = 0 TO LENGTH(array) - 1 DO
    // use array[i]
END FOR
```

Java pattern:

```java
for (int i = 0; i < array.length; i++) {
    // use array[i]
}
```

The key idea is:

```text
first valid index = 0
last valid index = length - 1
stop before index = length
```

---

## Common exam mistakes

Watch for these array mistakes:

- starting from the wrong index
- stopping one element too early or too late
- confusing index with value
- updating the wrong element
- forgetting to increment the loop variable
- using `<=` when `<` is needed, or the reverse
- not tracing changed array values after assignment

---

## Exam answer pattern

When tracing or writing array pseudocode, use this order:

1. Write the initial array values.
2. Identify the index variable.
3. Check the loop condition.
4. Update the correct array element.
5. Record changed values immediately.
6. Move to the next index.
7. Stop only when the loop condition becomes false.

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Array | 数组 | A data structure that stores multiple values under one name |
| Element | 元素 | One value stored in an array |
| Index | 索引 | A number used to access a position in an array |
| Zero-based indexing | 从 0 开始编号 | The first element is at index 0 |
| Length | 长度 | The number of elements in an array |
| Traversal | 遍历 | Visiting each element in an array |
| Out-of-bounds error | 越界错误 | Trying to access an index outside the valid range |
| Accumulator | 累加器 | A variable used to build a total |
| Counter | 计数器 | A variable used to count matching elements |
| Parallel arrays | 平行数组 | Two or more arrays where the same index refers to related data |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Array（数组）** 是一种可以在同一个名字下存储多个值的数据结构。

如果没有 array，我们可能要这样存很多个成绩：

```java
int mark1 = 80;
int mark2 = 75;
int mark3 = 90;
int mark4 = 62;
```

这种写法很麻烦。如果有 100 个成绩，就要创建 100 个变量。

使用 array 可以这样写：

```java
int[] marks = {80, 75, 90, 62};
```

数组中的每一个值叫做 **element（元素）**。每个元素都有一个 **index（索引）**。

Java 中 array 使用 **zero-based indexing**：

```text
第一个元素 index 是 0
第二个元素 index 是 1
第三个元素 index 是 2
```

所以：

```java
marks[0] 是 80
marks[1] 是 75
marks[2] 是 90
marks[3] 是 62
```

学习 array 的核心是：

1. 会创建 array
2. 会用 index 访问元素
3. 会用 loop 遍历 array
4. 会避免 out-of-bounds error
5. 会写常见算法：total、average、count、max、min、search

</template>

<template #en>

### English Explanation

An **array** is a data structure that stores multiple values under one name.

Without an array, we may store several marks like this:

```java
int mark1 = 80;
int mark2 = 75;
int mark3 = 90;
int mark4 = 62;
```

This becomes inconvenient. If there are 100 marks, we would need 100 variables.

Using an array, we can write:

```java
int[] marks = {80, 75, 90, 62};
```

Each value in an array is called an **element**. Each element has an **index**.

Java arrays use **zero-based indexing**:

```text
The first element has index 0
The second element has index 1
The third element has index 2
```

Therefore:

```java
marks[0] is 80
marks[1] is 75
marks[2] is 90
marks[3] is 62
```

The key skills for arrays are:

1. creating an array
2. accessing elements using indexes
3. traversing an array using a loop
4. avoiding out-of-bounds errors
5. writing common algorithms: total, average, count, max, min, and search

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Student Marks

A teacher wants to store marks for one class.

Without arrays:

```text
mark1, mark2, mark3, mark4, mark5 ...
```

With an array:

```java
int[] marks = {85, 72, 90, 66, 58};
```

| Index | Element |
|---:|---:|
| 0 | 85 |
| 1 | 72 |
| 2 | 90 |
| 3 | 66 |
| 4 | 58 |

The teacher can now process all marks using a loop.

::: info Scenario Link
Arrays are useful when a program needs to store and process many related values of the same type.
:::

---

## 6. Array Declaration and Initialization

## 6.1 Java: Create an Array with Values

```java
int[] marks = {80, 75, 90, 62};
```

| Part | Meaning |
|---|---|
| `int[]` | Array of integers |
| `marks` | Array name |
| `{80, 75, 90, 62}` | Initial values |

---

## 6.2 Java: Create an Empty Array with Fixed Size

```java
int[] marks = new int[5];
```

This creates an integer array with 5 elements.

Default values:

```text
[0, 0, 0, 0, 0]
```

Then values can be assigned:

```java
marks[0] = 80;
marks[1] = 75;
marks[2] = 90;
marks[3] = 62;
marks[4] = 88;
```

---

## 6.3 IB Pseudocode Style

```text
marks = [80, 75, 90, 62]
```

or:

```text
DECLARE marks : ARRAY[0:4] OF INTEGER
```

Different teachers and resources may write pseudocode slightly differently. The main idea is the same: an array stores multiple values using one name and indexes.

---

## 7. Indexing example: zero-based indexing

Java arrays start from index `0`.

For this array:

```java
int[] values = {4, 7, 9};
```

| Index | Value |
|---:|---:|
| 0 | 4 |
| 1 | 7 |
| 2 | 9 |

Valid indexes:

```text
0, 1, 2
```

Invalid index:

```text
3
```

Why is index `3` invalid?

Because the array has length 3, but the last valid index is:

```text
length - 1 = 3 - 1 = 2
```

::: warning Important
For an array with length `n`, valid Java indexes are from `0` to `n - 1`.
:::

---

## 8. Updating example: accessing and updating elements

### 8.1 Access an Element

```java
int[] marks = {80, 75, 90};

System.out.println(marks[1]);
```

Output:

```text
75
```

Because `marks[1]` is the second element.

### 8.2 Update an Element

```java
marks[1] = 88;
```

Now the array becomes:

```text
[80, 88, 90]
```

### 8.3 Trace example

| Step | Code | Array |
|---|---|---|
| 1 | `int[] marks = {80, 75, 90};` | `[80, 75, 90]` |
| 2 | `marks[1] = 88;` | `[80, 88, 90]` |
| 3 | `System.out.println(marks[1]);` | outputs `88` |

---

## 9. Array Traversal

**Traversal** means visiting each element in an array.

### 9.1 IB Pseudocode Pattern

```text
FOR i = 0 TO LENGTH(marks) - 1 DO
    OUTPUT marks[i]
END FOR
```

### 9.2 Java Pattern

```java
for (int i = 0; i < marks.length; i++) {
    System.out.println(marks[i]);
}
```

### 9.3 Why `i < marks.length`?

If the array has 5 elements:

```text
valid indexes: 0, 1, 2, 3, 4
length: 5
```

So the condition should be:

```java
i < marks.length
```

not:

```java
i <= marks.length
```

because index 5 does not exist.

---

## 10. Traversal example: output all elements

### Java Code

```java
public class OutputArray {
    public static void main(String[] args) {
        int[] marks = {80, 75, 90, 62};

        for (int i = 0; i < marks.length; i++) {
            System.out.println(marks[i]);
        }
    }
}
```

### Line-by-line Explanation

| Code | Explanation |
|---|---|
| `int[] marks = {80, 75, 90, 62};` | Creates an array of marks |
| `int i = 0` | Starts at first index |
| `i < marks.length` | Continues while index is valid |
| `i++` | Moves to next index |
| `marks[i]` | Accesses the current element |
| `System.out.println(...)` | Outputs current element |

### Trace Table

| Iteration | i | marks[i] | Output |
|---:|---:|---:|---:|
| 1 | 0 | 80 | 80 |
| 2 | 1 | 75 | 75 |
| 3 | 2 | 90 | 90 |
| 4 | 3 | 62 | 62 |
| Stop | 4 | invalid | - |

Final output:

```text
80
75
90
62
```

---

## 11. Worked Example 2: Calculate Total

### IB Pseudocode

```text
marks = [80, 75, 90, 62]
total = 0

FOR i = 0 TO LENGTH(marks) - 1 DO
    total = total + marks[i]
END FOR

OUTPUT total
```

### Java Code

```java
public class ArrayTotal {
    public static void main(String[] args) {
        int[] marks = {80, 75, 90, 62};
        int total = 0;

        for (int i = 0; i < marks.length; i++) {
            total = total + marks[i];
        }

        System.out.println("Total: " + total);
    }
}
```

### Trace Table

| Iteration | i | marks[i] | total before | total after |
|---:|---:|---:|---:|---:|
| 1 | 0 | 80 | 0 | 80 |
| 2 | 1 | 75 | 80 | 155 |
| 3 | 2 | 90 | 155 | 245 |
| 4 | 3 | 62 | 245 | 307 |

Final output:

```text
Total: 307
```

::: tip Exam Phrase
The variable `total` is an accumulator because it stores a running total as the loop processes each array element.
:::

---

## 12. Worked Example 3: Calculate Average

### Java Code

```java
public class ArrayAverage {
    public static void main(String[] args) {
        int[] marks = {80, 75, 90, 62};
        int total = 0;

        for (int i = 0; i < marks.length; i++) {
            total = total + marks[i];
        }

        double average = (double) total / marks.length;
        System.out.println("Average: " + average);
    }
}
```

### Explanation

| Code | Explanation |
|---|---|
| `total = total + marks[i];` | Adds each mark |
| `marks.length` | Number of marks |
| `(double) total` | Converts total to double to avoid integer-only division |
| `average` | Stores the mean value |

### Example Calculation

```text
total = 307
number of marks = 4
average = 307 / 4 = 76.75
```

---

## 13. Worked Example 4: Count Values Meeting a Condition

### Problem

Count how many marks are greater than or equal to 50.

### IB Pseudocode

```text
count = 0

FOR i = 0 TO LENGTH(marks) - 1 DO
    IF marks[i] >= 50 THEN
        count = count + 1
    END IF
END FOR

OUTPUT count
```

### Java Code

```java
public class CountPassMarks {
    public static void main(String[] args) {
        int[] marks = {42, 55, 70, 31, 90};
        int count = 0;

        for (int i = 0; i < marks.length; i++) {
            if (marks[i] >= 50) {
                count++;
            }
        }

        System.out.println("Pass count: " + count);
    }
}
```

### Trace Table

| i | marks[i] | Condition `marks[i] >= 50` | count |
|---:|---:|---|---:|
| 0 | 42 | false | 0 |
| 1 | 55 | true | 1 |
| 2 | 70 | true | 2 |
| 3 | 31 | false | 2 |
| 4 | 90 | true | 3 |

Final output:

```text
Pass count: 3
```

---

## 14. Worked Example 5: Find Maximum Value

### Problem

Find the largest value in an array.

### Key Idea

Start by assuming the first value is the maximum:

```java
int max = values[0];
```

Then compare every other value with `max`.

### IB Pseudocode

```text
max = values[0]

FOR i = 1 TO LENGTH(values) - 1 DO
    IF values[i] > max THEN
        max = values[i]
    END IF
END FOR

OUTPUT max
```

### Java Code

```java
public class FindMax {
    public static void main(String[] args) {
        int[] values = {12, 7, 25, 9, 18};
        int max = values[0];

        for (int i = 1; i < values.length; i++) {
            if (values[i] > max) {
                max = values[i];
            }
        }

        System.out.println("Maximum: " + max);
    }
}
```

### Trace Table

| i | values[i] | max before | Condition `values[i] > max` | max after |
|---:|---:|---:|---|---:|
| Start | - | - | - | 12 |
| 1 | 7 | 12 | false | 12 |
| 2 | 25 | 12 | true | 25 |
| 3 | 9 | 25 | false | 25 |
| 4 | 18 | 25 | false | 25 |

Final output:

```text
Maximum: 25
```

::: warning Common Mistake
Do not set `max = 0` unless you are sure all values are positive. If all values are negative, `0` may be wrong.
:::

---

## 15. Worked Example 6: Find Minimum Value

### Java Code

```java
public class FindMin {
    public static void main(String[] args) {
        int[] values = {12, 7, 25, 9, 18};
        int min = values[0];

        for (int i = 1; i < values.length; i++) {
            if (values[i] < min) {
                min = values[i];
            }
        }

        System.out.println("Minimum: " + min);
    }
}
```

### Difference from Maximum

| Maximum Algorithm | Minimum Algorithm |
|---|---|
| Uses `>` | Uses `<` |
| Updates when current value is larger | Updates when current value is smaller |
| Finds largest value | Finds smallest value |

---

## 16. Common exam bridge: simple linear search preview

Searching will be covered in more detail in the next page, but arrays are the foundation.

### Problem

Check whether `target` exists in the array.

### Java Code

```java
public class SearchPreview {
    public static void main(String[] args) {
        int[] values = {4, 9, 15, 21};
        int target = 15;
        boolean found = false;

        for (int i = 0; i < values.length; i++) {
            if (values[i] == target) {
                found = true;
            }
        }

        System.out.println(found);
    }
}
```

### Trace Table

| i | values[i] | target | Condition `values[i] == target` | found |
|---:|---:|---:|---|---|
| Start | - | 15 | - | false |
| 0 | 4 | 15 | false | false |
| 1 | 9 | 15 | false | false |
| 2 | 15 | 15 | true | true |
| 3 | 21 | 15 | false | true |

Final output:

```text
true
```

---

## 17. Parallel Arrays

### 17.1 What are Parallel Arrays?

Parallel arrays are two or more arrays where related data is stored at the same index.

Example:

```java
String[] names = {"Alice", "Ben", "Clara"};
int[] marks = {85, 72, 90};
```

| Index | names[index] | marks[index] |
|---:|---|---:|
| 0 | Alice | 85 |
| 1 | Ben | 72 |
| 2 | Clara | 90 |

So:

```text
Alice has 85
Ben has 72
Clara has 90
```

### 17.2 Java Example

```java
public class ParallelArrays {
    public static void main(String[] args) {
        String[] names = {"Alice", "Ben", "Clara"};
        int[] marks = {85, 72, 90};

        for (int i = 0; i < names.length; i++) {
            System.out.println(names[i] + ": " + marks[i]);
        }
    }
}
```

Output:

```text
Alice: 85
Ben: 72
Clara: 90
```

::: warning Limitation
Parallel arrays can become hard to manage if data becomes complex. Later, OOP can store related data together in an object.
:::

---

## 18. Common exam trap: common mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Starting array index at 1 | Skips the first element | Start at index 0 |
| Using `i <= array.length` | Causes out-of-bounds error | Use `i < array.length` |
| Forgetting `.length` has no brackets | `array.length()` is wrong for arrays | Use `array.length` |
| Confusing index and value | Uses position as data or data as position | Separate `i` and `array[i]` |
| Setting max to 0 | Fails for all-negative arrays | Start max at `array[0]` |
| Not initializing total/count | Result may be wrong | Set total/count to 0 before loop |
| Updating the wrong variable | Algorithm does not work | Trace each variable |
| Accessing empty array first element | `array[0]` does not exist if array is empty | Check length before access |
| Using `==` for String comparison | May not compare text correctly in Java | Use `.equals()` for Strings |
| Forgetting array fixed size | Java arrays cannot grow automatically | Use ArrayList when size must change |

---

## 19. Guided Practice

### Practice 1: Identify Indexes

```java
int[] data = {6, 11, 4, 20};
```

What are:

```text
data[0]
data[2]
data.length
last valid index
```

<details>
<summary>Suggested Answer</summary>

```text
data[0] = 6
data[2] = 4
data.length = 4
last valid index = 3
```

</details>

---

### Practice 2: Trace Total

```java
int[] values = {3, 5, 2};
int total = 0;

for (int i = 0; i < values.length; i++) {
    total = total + values[i];
}

System.out.println(total);
```

<details>
<summary>Suggested Answer</summary>

| i | values[i] | total after update |
|---:|---:|---:|
| 0 | 3 | 3 |
| 1 | 5 | 8 |
| 2 | 2 | 10 |

Output:

```text
10
```

</details>

---

### Practice 3: Count Even Values

```java
int[] values = {4, 7, 10, 13, 16};
int count = 0;

for (int i = 0; i < values.length; i++) {
    if (values[i] % 2 == 0) {
        count++;
    }
}

System.out.println(count);
```

<details>
<summary>Suggested Answer</summary>

Even values are:

```text
4, 10, 16
```

Output:

```text
3
```

</details>

---

### Practice 4: Find Maximum

```java
int[] values = {8, 2, 15, 6};
int max = values[0];

for (int i = 1; i < values.length; i++) {
    if (values[i] > max) {
        max = values[i];
    }
}

System.out.println(max);
```

<details>
<summary>Suggested Answer</summary>

Trace:

| i | values[i] | max |
|---:|---:|---:|
| Start | - | 8 |
| 1 | 2 | 8 |
| 2 | 15 | 15 |
| 3 | 6 | 15 |

Output:

```text
15
```

</details>

---

### Practice 5: Find the Error

```java
int[] data = {2, 4, 6};

for (int i = 0; i <= data.length; i++) {
    System.out.println(data[i]);
}
```

<details>
<summary>Suggested Answer</summary>

The condition `i <= data.length` is wrong. If `data.length` is 3, valid indexes are 0, 1, and 2. Index 3 is invalid.

Corrected code:

```java
for (int i = 0; i < data.length; i++) {
    System.out.println(data[i]);
}
```

</details>

---

## 20. Independent Practice

### Question 1

Create an integer array with five values and output each value using a loop.

### Question 2

Write Java code to calculate the total of this array:

```java
int[] values = {10, 20, 30, 40};
```

### Question 3

Write Java code to calculate the average of this array:

```java
int[] marks = {60, 80, 75, 85};
```

### Question 4

Write Java code to count how many values are greater than 100:

```java
int[] values = {120, 50, 300, 90, 101};
```

### Question 5

Write Java code to find the smallest value in this array:

```java
int[] values = {14, 3, 18, 7, 2};
```

### Question 6

Trace the output:

```java
int[] values = {2, 4, 6};
int result = 1;

for (int i = 0; i < values.length; i++) {
    result = result * values[i];
}

System.out.println(result);
```

### Question 7

Explain why this code causes an error:

```java
int[] data = {5, 10, 15};
System.out.println(data[3]);
```

### Question 8

Create two parallel arrays: one for student names and one for marks. Output each student's name and mark.

### Question 9

Write pseudocode to count how many numbers in an array are negative.

### Question 10

Modify the maximum algorithm so that it finds the minimum instead.

---

## 21. Exam-style Questions

### Question 1 [4 marks]

Trace the following code and state the final output.

```java
int[] values = {5, 3, 8, 4};
int total = 0;

for (int i = 0; i < values.length; i++) {
    total = total + values[i];
}

System.out.println(total);
```

<details>
<summary>Mark Scheme Style Answer</summary>

| i | values[i] | total after update |
|---:|---:|---:|
| 0 | 5 | 5 |
| 1 | 3 | 8 |
| 2 | 8 | 16 |
| 3 | 4 | 20 |

Final output:

```text
20
```

</details>

---

### Question 2 [5 marks]

Explain why the following code causes an error.

```java
int[] numbers = {2, 4, 6};

for (int i = 0; i <= numbers.length; i++) {
    System.out.println(numbers[i]);
}
```

<details>
<summary>Mark Scheme Style Answer</summary>

The array has length 3, so its valid indexes are 0, 1, and 2. The loop condition uses `i <= numbers.length`, so the loop eventually tries to access `numbers[3]`. Index 3 is outside the valid range, causing an out-of-bounds error. The condition should be `i < numbers.length`.

</details>

---

### Question 3 [6 marks]

Write Java code to count how many marks in an array called `marks` are below 50.

<details>
<summary>Mark Scheme Style Answer</summary>

```java
int failCount = 0;

for (int i = 0; i < marks.length; i++) {
    if (marks[i] < 50) {
        failCount++;
    }
}

System.out.println(failCount);
```

Possible marks:

- initializes a counter
- uses a loop to traverse the array
- uses correct valid index range
- checks whether mark is below 50
- increments counter when condition is true
- outputs final count

</details>

---

### Question 4 [6 marks]

Write Java code to find the largest value in an integer array called `values`.

<details>
<summary>Mark Scheme Style Answer</summary>

```java
int max = values[0];

for (int i = 1; i < values.length; i++) {
    if (values[i] > max) {
        max = values[i];
    }
}

System.out.println(max);
```

Possible marks:

- initializes `max` using first array element
- starts loop from index 1
- uses valid index range
- compares current value with max
- updates max when current value is larger
- outputs max

</details>

---

### Question 5 [4 marks]

Explain why arrays are useful when storing student marks.

<details>
<summary>Mark Scheme Style Answer</summary>

An array can store many related values under one name, so the program does not need separate variables for each mark. Each mark can be accessed using an index. A loop can process all marks, for example to calculate a total, average, maximum, or count of passing marks. This makes the program shorter and easier to maintain.

</details>

---

## 22. Independent practice
### Independent practice part A: Trace

Trace this code:

```java
int[] values = {4, 1, 7, 2};
int total = 0;

for (int i = 0; i < values.length; i++) {
    if (values[i] > 3) {
        total = total + values[i];
    }
}

System.out.println(total);
```

Create a trace table with:

```text
i, values[i], condition, total
```

---

### Independent practice part B: Write Code

Write a Java program that:

1. creates an array of 6 marks
2. calculates the total
3. calculates the average
4. finds the highest mark
5. counts how many marks are at least 50

---

### Independent practice part C: Pseudocode

Write IB pseudocode to find the smallest value in an array.

---

### Independent practice part D: Explain

In 4-5 sentences, explain why `i < array.length` is usually used when traversing a Java array.

---

## 23. One-page Revision Summary

| Point | Summary |
|---|---|
| Array | Stores multiple values under one name |
| Element | One value in an array |
| Index | Position used to access an element |
| Zero-based indexing | Java arrays start at index 0 |
| Length | Number of elements in an array |
| Last valid index | `array.length - 1` |
| Traversal | Visiting every element using a loop |
| Total algorithm | Use accumulator initialized to 0 |
| Count algorithm | Use counter initialized to 0 |
| Maximum algorithm | Start with `array[0]`, then compare |
| Minimum algorithm | Same as maximum but uses `<` |
| Out-of-bounds error | Occurs when index is outside valid range |
| Exam phrase | Arrays are useful because a loop can process many related values efficiently |

---

## 24. Quick Self-test

Before moving to searching, students should be able to answer these:

1. What is an array?
2. What is an element?
3. What is an index?
4. What is the first index in a Java array?
5. If an array has length 8, what is the last valid index?
6. Why is `i < array.length` safer than `i <= array.length`?
7. How do you calculate the total of an array?
8. How do you count values that match a condition?
9. Why should maximum usually start as `array[0]`?
10. What causes an out-of-bounds error?

