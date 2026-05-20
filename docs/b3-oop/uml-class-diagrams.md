# UML Class Diagrams

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of UML class diagrams
- identify class name, attributes, and methods
- interpret public and private visibility symbols
- draw a simple UML class diagram
- convert a UML class diagram into Java class structure
- connect UML diagrams to OOP design

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Representing class design |
| Connected units | Classes, Attributes, Methods, Encapsulation |
| Exam relevance | Diagram interpretation, class design, OOP questions |

::: tip Learning Focus
A UML class diagram shows the structure of a class before or during programming.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| UML | 统一建模语言 | Unified Modeling Language |
| Class diagram | 类图 | A diagram showing class name, attributes, and methods |
| Visibility | 可见性 | Whether a member is public or private |
| Public | 公共 | Can be accessed outside the class, shown with `+` |
| Private | 私有 | Only accessible inside the class, shown with `-` |
| Attribute section | 属性区 | Part listing stored data |
| Method section | 方法区 | Part listing behaviours |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**UML class diagram（UML 类图）** 用来表示一个 class 的结构。它通常有三个部分：

1. class name
2. attributes
3. methods

常见可见性符号：

| Symbol | Meaning |
|---|---|
| `+` | public |
| `-` | private |

例如：

| Student |
|---|
| - name : String |
| - score : int |
| + getName() : String |
| + getScore() : int |
| + setScore(newScore : int) : void |

这个图说明 `name` 和 `score` 是 private attributes，而 `getName`、`getScore`、`setScore` 是 public methods。

</template>

<template #en>

### English Explanation

A **UML class diagram** represents the structure of a class. It usually has three sections:

1. class name
2. attributes
3. methods

Common visibility symbols:

| Symbol | Meaning |
|---|---|
| `+` | public |
| `-` | private |

Example:

| Student |
|---|
| - name : String |
| - score : int |
| + getName() : String |
| + getScore() : int |
| + setScore(newScore : int) : void |

This means `name` and `score` are private attributes, while `getName`, `getScore`, and `setScore` are public methods.

</template>
</LangBlock>

---

## 5. Real-life Example

### Product Class

| Product |
|---|
| - name : String |
| - price : double |
| - stock : int |
| + getName() : String |
| + getPrice() : double |
| + setPrice(newPrice : double) : void |
| + displayDetails() : void |

---

## 6. IB Pseudocode / UML Pattern

```text
ClassName
- privateAttribute : Type
+ publicMethod(parameter : Type) : ReturnType
```

Example:

```text
BankAccount
- balance : double
+ deposit(amount : double) : void
+ withdraw(amount : double) : void
+ getBalance() : double
```

---

## 7. Java Code Example

UML:

```text
Student
- name : String
- score : int
+ getName() : String
+ getScore() : int
+ setScore(newScore : int) : void
```

Java:

```java
public class Student {
    private String name;
    private int score;

    public String getName() {
        return name;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int newScore) {
        if (newScore >= 0 && newScore <= 100) {
            score = newScore;
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

| UML Part | Java Equivalent |
|---|---|
| `Student` | `public class Student` |
| `- name : String` | `private String name;` |
| `- score : int` | `private int score;` |
| `+ getName() : String` | `public String getName()` |
| `+ setScore(newScore : int) : void` | `public void setScore(int newScore)` |

---

## 9. Interpretation Practice

Given:

```text
Book
- title : String
- available : boolean
+ getTitle() : String
+ borrowBook() : void
+ returnBook() : void
```

Interpretation:

| Item | Meaning |
|---|---|
| `Book` | class name |
| `title` | private String attribute |
| `available` | private Boolean attribute |
| `getTitle()` | public method returning String |
| `borrowBook()` | public method with no return value |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Putting methods in attribute section | Diagram becomes unclear | Use correct section |
| Forgetting visibility symbols | Access level not shown | Use `+` and `-` |
| Using object names instead of class names | UML class diagram describes class | Use class name |
| Omitting data types | Design is incomplete | Include type where possible |
| Confusing return type and parameter type | Method meaning unclear | Read notation carefully |

---

## 11. Guided Practice

### Practice 1

Identify private attributes:

```text
Car
- speed : int
- registration : String
+ accelerate() : void
```

<details>
<summary>Suggested Answer</summary>

`speed` and `registration` are private attributes.

</details>

### Practice 2

Convert to Java:

```text
- price : double
```

<details>
<summary>Suggested Answer</summary>

```java
private double price;
```

</details>

---

## 12. Independent Practice

1. Draw a UML class diagram for `Player`.
2. Include three private attributes and three public methods.
3. Convert your UML diagram into Java code.
4. Explain the meaning of `+` and `-`.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what a UML class diagram shows.

<details>
<summary>Mark Scheme Style Answer</summary>

A UML class diagram shows the structure of a class, including its name, attributes, methods, and visibility.

</details>

### Question 2 [4 marks]

Construct a UML class diagram for a `Product` class with private `name` and `price`, and public `getPrice()` and `setPrice(newPrice)` methods.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
Product
- name : String
- price : double
+ getPrice() : double
+ setPrice(newPrice : double) : void
```

</details>

---

## 14. Classroom Activity

Students receive Java classes and convert them into UML diagrams, then swap diagrams and recreate the Java structure.

---

## 15. Homework

Draw UML diagrams for `Student`, `Book`, and `BankAccount`. Include visibility symbols, types, parameters, and return types.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| UML | Unified Modeling Language |
| Class diagram | Shows class structure |
| `+` | public |
| `-` | private |
| Exam phrase | "The diagram shows the class name, private attributes, and public methods." |
