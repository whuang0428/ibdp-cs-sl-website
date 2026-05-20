# Data Types

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- identify common data types
- choose suitable data types for values
- explain why data types matter
- distinguish between integer, real, string, character, and Boolean
- use suitable Java types
- identify errors caused by wrong data type choices

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Choosing how data is represented in programs |
| Connected units | Variables, Input and Output, Testing and Debugging |
| Exam relevance | Data type questions, code reading, validation, error explanation |

::: tip Learning Focus
Choosing the correct data type helps the program store, process, and compare values correctly.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Data type | 数据类型 | A category that defines what kind of value can be stored |
| Integer | 整数 | A whole number |
| Real / Float | 实数/小数 | A number with a decimal part |
| String | 字符串 | Text data |
| Character | 字符 | A single letter, digit, or symbol |
| Boolean | 布尔值 | A value that is true or false |
| Type casting | 类型转换 | Converting a value from one data type to another |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Data type（数据类型）** 决定了一个变量可以存储什么类型的数据，以及这个数据可以进行什么操作。

例如：

- 年龄通常用 integer
- 价格通常用 real / double
- 名字通常用 string
- 是否通过考试可以用 Boolean

如果数据类型选错，程序可能无法运行，或者运行结果错误。例如，把数字 `"25"` 当成字符串时，它看起来像数字，但不能直接用于数学计算，除非先转换。

</template>

<template #en>

### English Explanation

A **data type** defines what kind of value a variable can store and what operations can be performed on that value.

For example:

- age is usually an integer
- price is usually a real number or double
- name is usually a string
- whether a student has passed can be a Boolean

If the wrong data type is used, the program may not run correctly or may produce incorrect results. For example, `"25"` looks like a number but is a string, so it may need conversion before calculation.

</template>
</LangBlock>

---

## 5. Real-life Example

### Student Record

| Data | Example | Suitable Type | Java Type |
|---|---|---|---|
| Student name | Alice | String | `String` |
| Age | 16 | Integer | `int` |
| Average mark | 82.5 | Real | `double` |
| Passed course | true | Boolean | `boolean` |
| Grade letter | A | Character | `char` |

---

## 6. IB Pseudocode Pattern

```text
name = "Alice"
age = 16
average = 82.5
passed = true
grade = "A"
```

---

## 7. Java Code Example

```java
public class DataTypeExample {
    public static void main(String[] args) {
        String name = "Alice";
        int age = 16;
        double averageMark = 82.5;
        boolean hasPassed = true;
        char grade = 'A';

        System.out.println(name);
        System.out.println(age);
        System.out.println(averageMark);
        System.out.println(hasPassed);
        System.out.println(grade);
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `String name = "Alice";` | Stores text |
| `int age = 16;` | Stores a whole number |
| `double averageMark = 82.5;` | Stores a decimal value |
| `boolean hasPassed = true;` | Stores true or false |
| `char grade = 'A';` | Stores a single character |

### Important Java difference

| Type | Quotation |
|---|---|
| `String` | double quotes `"Alice"` |
| `char` | single quotes `'A'` |

---

## 9. Step-by-step Execution

| Step | Variable | Value |
|---|---|---|
| 1 | name | Alice |
| 2 | age | 16 |
| 3 | averageMark | 82.5 |
| 4 | hasPassed | true |
| 5 | grade | A |

Output appears line by line.

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using `int` for decimal values | Decimal part may be lost or invalid | Use `double` |
| Using `String` for numbers to calculate | Calculation may not work | Use numeric type |
| Confusing `char` and `String` | Java syntax differs | Use `'A'` for char, `"A"` for String |
| Using `True` instead of `true` in Java | Java Boolean literals are lowercase | Use `true` / `false` |
| Choosing vague variable names | Code is harder to read | Use meaningful identifiers |

---

## 11. Guided Practice

### Practice 1

Choose suitable Java types.

<details>
<summary>Suggested Answer</summary>

| Data | Java Type |
|---|---|
| age | `int` |
| price | `double` |
| username | `String` |
| isLoggedIn | `boolean` |
| grade letter | `char` |

</details>

### Practice 2

Find the error:

```java
char grade = "A";
```

<details>
<summary>Suggested Answer</summary>

`char` uses single quotes:

```java
char grade = 'A';
```

</details>

---

## 12. Independent Practice

1. Choose data types for a cinema booking system.
2. Write Java variable declarations for ticket price, seat number, movie title, and payment status.
3. Explain why a phone number may be stored as a `String` instead of an `int`.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

State suitable data types for username, age, height, and hasPaid.

<details>
<summary>Mark Scheme Style Answer</summary>

| Item | Type |
|---|---|
| username | String |
| age | Integer |
| height | Real / Float / Double |
| hasPaid | Boolean |

</details>

### Question 2 [3 marks]

Explain why choosing a suitable data type is important.

<details>
<summary>Mark Scheme Style Answer</summary>

A suitable data type ensures the program stores data correctly and can perform the required operations. For example, numeric data should use a numeric type if it will be used in calculations. Wrong data types may cause errors or incorrect processing.

</details>

---

## 14. Classroom Activity

Students design variables for a school library system, choose types, and justify each choice.

---

## 15. Homework

Create a table of 10 pieces of data for an online shop. For each one, give a suitable IB data type, Java data type, and reason.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Integer | Whole number |
| Real / double | Decimal number |
| String | Text |
| char | Single character |
| boolean | true or false |
| Exam phrase | "A suitable data type allows the value to be stored and processed correctly." |
