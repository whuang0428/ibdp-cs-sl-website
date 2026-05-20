# ArrayList and Dynamic Lists

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why dynamic lists are useful
- distinguish arrays and ArrayLists
- use Java `ArrayList`
- add, remove, access, and update list elements
- traverse an ArrayList using loops
- choose between array and ArrayList for scenarios

---

## 2. Course Position

| Item | Detail |
|---|---|
| Section | HL Programming Extension / School Extension |
| Main link | B2 Programming + B3 OOP |
| Language focus | IB pseudocode + Java |
| Difficulty | Extension beyond SL |
| Main skill | Using resizable list structures in Java |

::: warning Extension Note
This section is included because the course plans to give students stronger programming ability beyond the minimum SL requirement. It should be taught after students are comfortable with B2 Programming and B3 OOP basics.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| ArrayList | 动态数组列表 | A resizable list structure in Java |
| Dynamic list | 动态列表 | A list that can grow or shrink during runtime |
| Element | 元素 | A value stored in a list |
| Index | 索引 | Position of an element |
| Size | 大小 | Number of elements currently stored |
| Generic type | 泛型类型 | The type of data stored in an ArrayList |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

普通 array 的大小创建后通常固定。如果一开始不知道需要存储多少个元素，使用 **ArrayList** 更方便。

ArrayList 可以动态增加或删除元素。例如一个购物车、待办事项列表、学生名单，都可能随着程序运行而改变长度。

Java 中使用 ArrayList 需要 import：

```java
import java.util.ArrayList;
```

</template>

<template #en>

### English Explanation

A normal array usually has a fixed size once it is created. If the number of elements is not known in advance, an **ArrayList** is often more convenient.

An ArrayList can grow or shrink during runtime. Examples include a shopping cart, to-do list, or student list.

In Java, ArrayList needs this import:

```java
import java.util.ArrayList;
```

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Shopping cart

A user may add or remove products:

| Action | List |
|---|---|
| Start | [] |
| Add "Book" | ["Book"] |
| Add "Pen" | ["Book", "Pen"] |
| Remove "Book" | ["Pen"] |

---

## 6. IB Pseudocode Pattern

```text
list = EMPTY LIST
ADD "Book" TO list
ADD "Pen" TO list
REMOVE "Book" FROM list
OUTPUT list
```

---

## 7. Java Code Example

```java
import java.util.ArrayList;

public class ArrayListExample {
    public static void main(String[] args) {
        ArrayList<String> cart = new ArrayList<String>();

        cart.add("Book");
        cart.add("Pen");
        cart.remove("Book");

        for (int i = 0; i < cart.size(); i++) {
            System.out.println(cart.get(i));
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `ArrayList<String>` | List that stores String values |
| `new ArrayList<String>()` | Creates an empty ArrayList |
| `add(...)` | Adds an element |
| `remove(...)` | Removes an element |
| `size()` | Returns number of elements |
| `get(i)` | Accesses element at index `i` |

---

## 9. Step-by-step Trace / Process

Trace:

| Step | Action | cart |
|---|---|---|
| 1 | create list | [] |
| 2 | add Book | [Book] |
| 3 | add Pen | [Book, Pen] |
| 4 | remove Book | [Pen] |
| 5 | output index 0 | Pen |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using `length` with ArrayList | ArrayList uses method not field | Use `size()` |
| Using `cart[i]` | ArrayList uses methods | Use `cart.get(i)` |
| Forgetting import | Java cannot find ArrayList | Add `import java.util.ArrayList;` |
| Removing while looping carelessly | Indexes may shift | Loop carefully or use iterator-style logic |
| Choosing ArrayList for fixed simple data | Array may be simpler | Choose based on size flexibility |

---

## 11. Guided Practice

### Practice 1

How do you get the number of elements in an ArrayList?

<details><summary>Suggested Answer</summary>

Use `size()`.

```java
cart.size()
```

</details>

### Practice 2

How do you access index 2?

<details><summary>Suggested Answer</summary>

```java
cart.get(2)
```

</details>

---

## 12. Independent Practice

1. Create an ArrayList of student names.
2. Add three names.
3. Remove one name.
4. Output all names using a loop.
5. Explain when ArrayList is better than array.

---

## 13. Exam-style / Code-reading Questions

### Question 1 [3 marks]

Compare an array and an ArrayList.

<details><summary>Mark Scheme Style Answer</summary>

An array has a fixed size after creation and uses index access such as `array[i]`. An ArrayList can grow or shrink during runtime and uses methods such as `add`, `remove`, `get`, and `size`.

</details>

### Question 2 [4 marks]

Write Java code to create an ArrayList of integers and add 5 and 8.

<details><summary>Mark Scheme Style Answer</summary>

```java
ArrayList<Integer> numbers = new ArrayList<Integer>();
numbers.add(5);
numbers.add(8);
```

</details>

---

## 14. Classroom Activity

### Activity: Dynamic List Simulation

Students form a line as a list. New students are added and removed. The class observes how indexes change after removal.

---

## 15. Homework

Write a Java program using ArrayList to store tasks in a to-do list. Add at least four tasks, remove one, and output the remaining tasks.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| ArrayList | Resizable Java list |
| add | Adds element |
| remove | Removes element |
| get | Accesses element |
| size | Number of elements |
| Exam phrase | An ArrayList is suitable when the number of elements may change during runtime. |
