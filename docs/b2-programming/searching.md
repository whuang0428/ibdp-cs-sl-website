# Searching

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what searching means in programming
- distinguish between finding a value and finding a position
- write and trace a **linear search** algorithm
- use a Boolean `found` flag correctly
- use an index variable to record the position of a target
- explain what happens when the target is not found
- compare full traversal and early stopping
- write searching algorithms in IB pseudocode and Java
- identify common searching errors
- answer exam-style tracing, debugging, and algorithm-writing questions

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Searching data stored in arrays |
| Connected topics | Selection, loops, arrays, testing, sorting |
| Programming language focus | IB pseudocode + Java |
| Exam relevance | Trace tables, linear search, Boolean flags, output prediction, algorithm writing |

::: tip Learning Focus
Searching combines three core skills: **array traversal**, **loops**, and **selection**. Students must understand all three before searching becomes easy.
:::

---

## Start here: searching means checking values one by one

Searching is used to find whether a value exists in a list or array.

In SL exam questions, **linear search** is the main pattern students must understand. A search algorithm usually checks elements one by one until the target is found or the end is reached.

Students should track:

```text
index = which position is being checked
current value = array[index]
found = whether the target has been found
```

---

## Search workflow

1. Identify the target value.
2. Start at the first index.
3. Compare the current array value with the target.
4. If it matches, set `found` to true or store the position.
5. If it does not match, move to the next index.
6. Stop when the value is found or the array ends.
7. Output whether the value was found, or output its position if required.

---

## Core checklist

After studying this page, you should be able to:

- explain what linear search does
- trace a search through an array
- compare each element with a target value
- use a found flag correctly
- store the position or index of a found item
- stop a search when the item is found if early stopping is used
- explain what happens when the target is not found
- avoid confusing the index with the value stored at that index

---

## Core linear search pattern

```text
index = 0
found = false

WHILE index < LENGTH(array) AND found = false DO
    IF array[index] = target THEN
        found = true
    ELSE
        index = index + 1
    END IF
END WHILE
```

`index` tells us which element is being checked.

`found` records whether the target has been found.

Early stopping avoids checking the rest of the array after the target is found.

---

## Found-flag answer pattern

When explaining or writing a found flag search:

1. Set `found` to false before the search starts.
2. Compare the current array value with the target.
3. If the values match, set `found` to true.
4. Use `found` in the loop condition if early stopping is needed.
5. After the loop, use `found` to decide the output message.

---

## Common exam mistakes

Watch for these searching mistakes:

- confusing the array index with the value
- starting from the wrong index
- stopping before checking the last element
- forgetting to update the index
- setting `found` to true too early
- forgetting what to output when the item is not found
- using the final index as the position without checking whether the item was actually found
- not tracing the found flag after it changes

---

## Exam answer pattern

When tracing or writing a searching algorithm, use this order:

1. Write the target value.
2. Write the initial index and found value.
3. Check the current array element.
4. Compare it with the target.
5. Update `found` or position if needed.
6. Move to the next index if not found.
7. Stop only when the loop condition becomes false.
8. Write the final output.

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Search | 搜索 / 查找 | To look through data to find a target value |
| Target | 目标值 | The value being searched for |
| Linear search | 线性搜索 | A search algorithm that checks items one by one from start to end |
| Index | 索引 | The position of an element in an array |
| Found flag | 找到标志 | A Boolean variable used to record whether the target has been found |
| Boolean | 布尔值 | A value that is either true or false |
| Traversal | 遍历 | Visiting each element in an array |
| Early stopping | 提前停止 | Ending the search as soon as the target is found |
| Not found | 未找到 | The target does not exist in the data |
| Comparison | 比较 | Checking whether the current element equals the target |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Searching（搜索 / 查找）** 是在一组数据中寻找某个目标值。

例如，一个数组中存了学生姓名：

```java
String[] names = {"Alice", "Ben", "Clara", "David"};
```

如果我们要找 `"Clara"`，程序需要从数组中一个一个检查：

```text
names[0] 是 Alice，不是 Clara
names[1] 是 Ben，不是 Clara
names[2] 是 Clara，找到了
```

最基础的搜索方法叫 **linear search（线性搜索）**。

Linear search 的特点：

1. 从第一个元素开始
2. 一个一个检查
3. 如果当前元素等于 target，就说明找到了
4. 如果检查完所有元素还没找到，就说明 target 不在数组中

Linear search 的优点是简单，而且不要求数据已经排序。  
缺点是如果数组很长，可能要检查很多元素。

</template>

<template #en>

### English Explanation

**Searching** means looking through a set of data to find a target value.

For example, an array stores student names:

```java
String[] names = {"Alice", "Ben", "Clara", "David"};
```

If we want to find `"Clara"`, the program checks elements one by one:

```text
names[0] is Alice, not Clara
names[1] is Ben, not Clara
names[2] is Clara, target found
```

The most basic searching method is **linear search**.

Linear search works like this:

1. start from the first element
2. check each element one by one
3. if the current element equals the target, the target is found
4. if all elements have been checked and no match is found, the target is not in the array

Linear search is simple and does not require the data to be sorted.  
However, if the array is long, many elements may need to be checked.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Finding a Student Name

A teacher has a list of students:

```text
[Alice, Ben, Clara, David, Eva]
```

The teacher wants to check whether `"David"` is in the class.

| Step | Current Name | Is it David? |
|---:|---|---|
| 1 | Alice | No |
| 2 | Ben | No |
| 3 | Clara | No |
| 4 | David | Yes, found |

::: info Scenario Link
Linear search is like checking names on a list from top to bottom.
:::

---

## 6. Linear Search Core Pattern

### 6.1 General Idea

```text
set found to false
start from first element
repeat for each element:
    if current element equals target:
        set found to true
after loop:
    output whether target was found
```

### 6.2 Why Use `found = false` First?

At the start, the program has not checked the array yet.

So it should assume:

```text
found = false
```

Only when a matching element is discovered should it change to:

```text
found = true
```

---

## 7. Found flag example: linear search with Boolean found flag

## 7.1 IB Pseudocode

```text
values = [4, 9, 15, 21]
target = 15
found = false

FOR i = 0 TO LENGTH(values) - 1 DO
    IF values[i] = target THEN
        found = true
    END IF
END FOR

OUTPUT found
```

## 7.2 Java Code

```java
public class LinearSearchFound {
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

## 7.3 Line-by-line Explanation

| Code | Explanation |
|---|---|
| `int[] values = {4, 9, 15, 21};` | Creates the array to search |
| `int target = 15;` | Stores the value being searched for |
| `boolean found = false;` | Assumes target has not been found yet |
| `for (...)` | Traverses every element |
| `values[i] == target` | Compares current element with target |
| `found = true;` | Records that the target was found |
| `System.out.println(found);` | Outputs final search result |

## 7.4 Trace Table

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

::: warning Important
Once `found` becomes true, it should not be changed back to false later in the same search.
:::

---

## 8. Not found example: target not found case

### 8.1 Java Code

```java
public class LinearSearchNotFound {
    public static void main(String[] args) {
        int[] values = {4, 9, 15, 21};
        int target = 10;
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

### 8.2 Trace Table

| i | values[i] | target | Condition `values[i] == target` | found |
|---:|---:|---:|---|---|
| Start | - | 10 | - | false |
| 0 | 4 | 10 | false | false |
| 1 | 9 | 10 | false | false |
| 2 | 15 | 10 | false | false |
| 3 | 21 | 10 | false | false |

Final output:

```text
false
```

### 8.3 Explanation

The target `10` is not equal to any element in the array. Therefore, `found` remains false.

---

## 9. Position tracking example: search and return position

Sometimes it is not enough to know whether the target exists. We may need to know **where** it is.

### 9.1 IB Pseudocode

```text
position = -1

FOR i = 0 TO LENGTH(values) - 1 DO
    IF values[i] = target THEN
        position = i
    END IF
END FOR

OUTPUT position
```

### 9.2 Why Use `-1`?

Java array indexes start at 0, so `-1` is not a valid index.

This makes `-1` useful to mean:

```text
not found
```

### 9.3 Java Code

```java
public class LinearSearchPosition {
    public static void main(String[] args) {
        int[] values = {4, 9, 15, 21};
        int target = 15;
        int position = -1;

        for (int i = 0; i < values.length; i++) {
            if (values[i] == target) {
                position = i;
            }
        }

        System.out.println(position);
    }
}
```

### 9.4 Trace Table

| i | values[i] | target | Match? | position |
|---:|---:|---:|---|---:|
| Start | - | 15 | - | -1 |
| 0 | 4 | 15 | false | -1 |
| 1 | 9 | 15 | false | -1 |
| 2 | 15 | 15 | true | 2 |
| 3 | 21 | 15 | false | 2 |

Final output:

```text
2
```

---

## 10. Early stopping example

### 10.1 Why Stop Early?

If the target has already been found, the program may not need to check the rest of the array.

This can make the search more efficient.

### 10.2 Java Code with Early Stopping

```java
public class LinearSearchEarlyStop {
    public static void main(String[] args) {
        int[] values = {4, 9, 15, 21};
        int target = 15;
        boolean found = false;
        int position = -1;
        int i = 0;

        while (i < values.length && !found) {
            if (values[i] == target) {
                found = true;
                position = i;
            }
            i++;
        }

        System.out.println(found);
        System.out.println(position);
    }
}
```

### 10.3 Explanation of Condition

```java
while (i < values.length && !found)
```

This means:

```text
continue while index is valid AND target has not been found yet
```

### 10.4 Trace Table

| Iteration | i at start | values[i] | found at start | Match? | found after | position |
|---:|---:|---:|---|---|---|---:|
| 1 | 0 | 4 | false | false | false | -1 |
| 2 | 1 | 9 | false | false | false | -1 |
| 3 | 2 | 15 | false | true | true | 2 |
| Stop | 3 | not checked | true | - | true | 2 |

The element at index 3 is not checked because the target has already been found.

---

## 11. Full Traversal vs Early Stopping

| Version | Behaviour | Advantage | Disadvantage |
|---|---|---|---|
| Full traversal | Checks every element even after finding target | Simpler to write and trace | May do unnecessary checks |
| Early stopping | Stops as soon as target is found | More efficient if target appears early | Slightly more complex logic |

### Exam-friendly sentence

A linear search with early stopping can be more efficient because it stops checking elements once the target has been found.

---

## 12. Searching Strings

When searching for text in Java, use `.equals()`.

### 12.1 Wrong Version

```java
if (names[i] == target) {
    found = true;
}
```

This may not compare the text correctly.

### 12.2 Correct Version

```java
if (names[i].equals(target)) {
    found = true;
}
```

### 12.3 Full Java Example

```java
public class SearchNames {
    public static void main(String[] args) {
        String[] names = {"Alice", "Ben", "Clara", "David"};
        String target = "Clara";
        boolean found = false;

        for (int i = 0; i < names.length; i++) {
            if (names[i].equals(target)) {
                found = true;
            }
        }

        System.out.println(found);
    }
}
```

---

## 13. Searching with Parallel Arrays

### 13.1 Scenario

A program stores student names and marks in parallel arrays.

```java
String[] names = {"Alice", "Ben", "Clara"};
int[] marks = {85, 72, 90};
```

If the target name is `"Ben"`, output Ben's mark.

### 13.2 Java Code

```java
public class SearchParallelArrays {
    public static void main(String[] args) {
        String[] names = {"Alice", "Ben", "Clara"};
        int[] marks = {85, 72, 90};
        String target = "Ben";
        int position = -1;

        for (int i = 0; i < names.length; i++) {
            if (names[i].equals(target)) {
                position = i;
            }
        }

        if (position != -1) {
            System.out.println(target + "'s mark is " + marks[position]);
        } else {
            System.out.println("Student not found");
        }
    }
}
```

### 13.3 Trace Table

| i | names[i] | target | Match? | position |
|---:|---|---|---|---:|
| Start | - | Ben | - | -1 |
| 0 | Alice | Ben | false | -1 |
| 1 | Ben | Ben | true | 1 |
| 2 | Clara | Ben | false | 1 |

Final output:

```text
Ben's mark is 72
```

::: warning Limitation
Parallel arrays only work safely if related data uses the same index in each array.
:::

---

## 14. Searching for Multiple Matches

Sometimes there may be more than one matching value.

### Example

Count how many marks are equal to 100.

```java
public class CountPerfectScores {
    public static void main(String[] args) {
        int[] marks = {100, 85, 100, 72, 100};
        int count = 0;

        for (int i = 0; i < marks.length; i++) {
            if (marks[i] == 100) {
                count++;
            }
        }

        System.out.println(count);
    }
}
```

Trace:

| i | marks[i] | Condition `marks[i] == 100` | count |
|---:|---:|---|---:|
| 0 | 100 | true | 1 |
| 1 | 85 | false | 1 |
| 2 | 100 | true | 2 |
| 3 | 72 | false | 2 |
| 4 | 100 | true | 3 |

Final output:

```text
3
```

::: tip Difference
If the task is “does the target exist?”, use a Boolean `found`.  
If the task is “how many matches are there?”, use a counter.
:::

---

## 15. Common exam trap: common mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Resetting `found` to false inside the loop | A later non-match can erase an earlier match | Set `found = true` when matched and do not reset it |
| Using `=` instead of `==` for numbers | Assignment is not comparison | Use `==` for numeric equality |
| Using `==` for Strings | May not compare text correctly | Use `.equals()` |
| Starting at index 1 | Skips the first element | Start at index 0 |
| Using `i <= array.length` | Causes out-of-bounds error | Use `i < array.length` |
| Forgetting not found case | Program may give no useful output | Use `found = false` or `position = -1` |
| Using `position = 0` for not found | 0 is a valid index | Use `-1` for not found |
| Continuing search unnecessarily | May waste time | Use early stopping when suitable |
| Printing “not found” inside loop too early | May print not found before checking all elements | Print after loop finishes |
| Comparing wrong array in parallel arrays | Output may not match correct data | Use same index carefully |

---

## 16. Guided Practice

### Practice 1: Boolean Found Flag

What is the output?

```java
int[] values = {3, 6, 9, 12};
int target = 9;
boolean found = false;

for (int i = 0; i < values.length; i++) {
    if (values[i] == target) {
        found = true;
    }
}

System.out.println(found);
```

<details>
<summary>Suggested Answer</summary>

Output:

```text
true
```

The target `9` is found at index 2.

</details>

---

### Practice 2: Not Found Case

What is the output?

```java
int[] values = {3, 6, 9, 12};
int target = 7;
boolean found = false;

for (int i = 0; i < values.length; i++) {
    if (values[i] == target) {
        found = true;
    }
}

System.out.println(found);
```

<details>
<summary>Suggested Answer</summary>

Output:

```text
false
```

The target `7` is not equal to any element in the array.

</details>

---

### Practice 3: Position Search

Trace the value of `position`.

```java
int[] values = {8, 4, 10, 6};
int target = 10;
int position = -1;

for (int i = 0; i < values.length; i++) {
    if (values[i] == target) {
        position = i;
    }
}

System.out.println(position);
```

<details>
<summary>Suggested Answer</summary>

| i | values[i] | Match? | position |
|---:|---:|---|---:|
| Start | - | - | -1 |
| 0 | 8 | false | -1 |
| 1 | 4 | false | -1 |
| 2 | 10 | true | 2 |
| 3 | 6 | false | 2 |

Output:

```text
2
```

</details>

---

### Practice 4: String Search Error

Find and correct the error.

```java
String[] names = {"Amy", "Bob"};
String target = "Amy";

if (names[0] == target) {
    System.out.println("Found");
}
```

<details>
<summary>Suggested Answer</summary>

Use `.equals()` for String comparison:

```java
if (names[0].equals(target)) {
    System.out.println("Found");
}
```

</details>

---

### Practice 5: Wrong Not Found Output

What is wrong with this code?

```java
int[] values = {5, 8, 12};
int target = 12;

for (int i = 0; i < values.length; i++) {
    if (values[i] == target) {
        System.out.println("Found");
    } else {
        System.out.println("Not found");
    }
}
```

<details>
<summary>Suggested Answer</summary>

The code prints `"Not found"` for every non-matching element, even though the target may appear later. The final not found message should be printed after the loop, using a `found` flag.

Better version:

```java
boolean found = false;

for (int i = 0; i < values.length; i++) {
    if (values[i] == target) {
        found = true;
    }
}

if (found) {
    System.out.println("Found");
} else {
    System.out.println("Not found");
}
```

</details>

---

## 17. Independent Practice

### Question 1

Write Java code to search for the value `20` in this array:

```java
int[] values = {5, 10, 15, 20, 25};
```

Output `true` if found.

### Question 2

Write IB pseudocode to search for a name in an array of names.

### Question 3

Write Java code to output the index of `target` in an integer array. Use `-1` if it is not found.

### Question 4

Trace the output:

```java
int[] values = {2, 4, 6, 8};
int target = 5;
boolean found = false;

for (int i = 0; i < values.length; i++) {
    if (values[i] == target) {
        found = true;
    }
}

System.out.println(found);
```

### Question 5

Correct this code:

```java
String[] names = {"Alice", "Ben"};
String target = "Ben";

for (int i = 0; i <= names.length; i++) {
    if (names[i] == target) {
        System.out.println("Found");
    }
}
```

### Question 6

Write an early-stopping search using a `while` loop.

### Question 7

Write Java code to count how many times the value `0` appears in this array:

```java
int[] values = {0, 5, 0, 2, 0, 9};
```

### Question 8

A program uses parallel arrays for names and phone numbers. Write code to search for a name and output the matching phone number.

### Question 9

Explain why `position = -1` is often used in searching algorithms.

### Question 10

Explain one advantage and one disadvantage of linear search.

---

## 18. Exam-style Questions

### Question 1 [4 marks]

Trace the following code and state the output.

```java
int[] values = {7, 3, 9, 2};
int target = 9;
boolean found = false;

for (int i = 0; i < values.length; i++) {
    if (values[i] == target) {
        found = true;
    }
}

System.out.println(found);
```

<details>
<summary>Mark Scheme Style Answer</summary>

| i | values[i] | target | found |
|---:|---:|---:|---|
| Start | - | 9 | false |
| 0 | 7 | 9 | false |
| 1 | 3 | 9 | false |
| 2 | 9 | 9 | true |
| 3 | 2 | 9 | true |

Final output:

```text
true
```

</details>

---

### Question 2 [5 marks]

Explain how a linear search works.

<details>
<summary>Mark Scheme Style Answer</summary>

A linear search checks each element in a data structure one by one, usually starting from the first element. Each current element is compared with the target value. If a match is found, the algorithm records that the target has been found, for example by setting a Boolean flag to true or storing the index. If the end of the array is reached without a match, the target is not found.

</details>

---

### Question 3 [6 marks]

Write Java code to search for a String `target` in an array called `names`. Output `"Found"` or `"Not found"`.

<details>
<summary>Mark Scheme Style Answer</summary>

```java
boolean found = false;

for (int i = 0; i < names.length; i++) {
    if (names[i].equals(target)) {
        found = true;
    }
}

if (found) {
    System.out.println("Found");
} else {
    System.out.println("Not found");
}
```

Possible marks:

- initializes Boolean found flag
- loops through valid array indexes
- uses `.equals()` for String comparison
- sets found to true when target matches
- checks found after loop
- outputs correct found/not found message

</details>

---

### Question 4 [6 marks]

A program searches for a student name in an array and outputs the student's mark from a parallel marks array. Explain how the same index is used.

<details>
<summary>Mark Scheme Style Answer</summary>

In parallel arrays, related data is stored at the same index in each array. The program searches the names array one element at a time. When the target name is found, the current index is stored as the position. The program then uses the same index to access the corresponding mark in the marks array. For example, if the name is found at index 2, the mark is stored in `marks[2]`.

</details>

---

### Question 5 [6 marks]

Compare full traversal linear search and early-stopping linear search.

<details>
<summary>Mark Scheme Style Answer</summary>

A full traversal linear search checks every element in the array even if the target has already been found. This is simpler to write and trace, but may perform unnecessary comparisons. An early-stopping linear search stops as soon as the target is found. This can be more efficient when the target appears near the beginning of the array, but the logic is slightly more complex because the loop condition must also check whether the target has already been found.

</details>

---

## 19. Practice task
### Activity 1: Human Linear Search

Students stand in a line holding value cards.

The class searches for a target value:

1. Start at index 0.
2. Compare current card with target.
3. Say `"match"` or `"no match"`.
4. Move to next index.
5. Stop when found or after last card.

Students record the trace table.

---

### Activity 2: Found Flag Simulation

One student holds a `found` card that starts as:

```text
false
```

When the target is found, the card changes to:

```text
true
```

The class discusses why it should not change back to false later.

---

### Activity 3: Debug Bad Search Code

Give students broken search programs. They identify:

- wrong loop condition
- String comparison with `==`
- `found` reset inside loop
- printing `"Not found"` too early
- using position 0 as not found value

---

## 20. Independent practice
### Independent practice part A: Trace

Trace this code:

```java
int[] values = {10, 15, 20, 25};
int target = 15;
int position = -1;

for (int i = 0; i < values.length; i++) {
    if (values[i] == target) {
        position = i;
    }
}

System.out.println(position);
```

Create a trace table with:

```text
i, values[i], condition, position
```

---

### Independent practice part B: Write Code

Write a Java program that:

1. stores 5 names in a String array
2. asks the user to input a target name
3. searches for the name
4. outputs `"Found"` or `"Not found"`

---

### Independent practice part C: Parallel Arrays

Create two arrays:

```text
names
emails
```

Search for a name and output the matching email address.

---

### Independent practice part D: Explain

In 4-5 sentences, explain why printing `"Not found"` inside the loop is usually wrong.

---

## 21. One-page Revision Summary

| Point | Summary |
|---|---|
| Search | Looks through data for a target value |
| Linear search | Checks elements one by one |
| Target | Value being searched for |
| Found flag | Boolean variable recording whether target has been found |
| Position | Index where target is found |
| Not found value | Often `-1` because it is not a valid Java index |
| Full traversal | Checks every element |
| Early stopping | Stops once target is found |
| String search | Use `.equals()` in Java |
| Parallel arrays | Same index connects related data |
| Common error | Printing `"Not found"` before all elements are checked |
| Exam phrase | Linear search compares each element with the target until a match is found or all elements have been checked |

---

## 22. Quick Self-test

Before moving to sorting, students should be able to answer these:

1. What is linear search?
2. Why does linear search not require sorted data?
3. What is a target value?
4. Why is `found` usually initialized to false?
5. Why should `found` not be reset to false inside the loop?
6. Why is `-1` useful for position?
7. How do you search for a String in Java?
8. What is early stopping?
9. Why is printing `"Not found"` inside the loop usually wrong?
10. How can parallel arrays be used in a search?

