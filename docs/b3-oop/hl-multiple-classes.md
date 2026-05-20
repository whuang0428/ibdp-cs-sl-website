# HL: Multiple Classes

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why larger programs use multiple classes
- identify class responsibilities
- explain how objects can interact
- design simple class relationships
- write a small Java program using two classes
- distinguish this extension content from the main SL focus

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | HL Extension / School Extension |
| Main skill | Designing larger OOP programs |
| Connected units | Classes and Objects, UML, IA project, HL Programming Extension |
| Exam relevance | Extension programming skill; supports deeper OOP understanding |

::: warning Extension Content
This page goes beyond the main SL single-class focus. It is included to strengthen programming and prepare students for larger projects.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Multiple classes | 多个类 | A program design using more than one class |
| Class responsibility | 类的职责 | The main job of a class |
| Object interaction | 对象交互 | Objects using methods or data from other objects |
| Association | 关联 | A relationship between classes |
| Aggregation | 聚合 | Whole-part relationship where parts can exist independently |
| Composition | 组合 | Stronger whole-part relationship where parts depend on the whole |
| Coupling | 耦合 | How strongly classes depend on each other |
| Cohesion | 内聚 | How focused a class is on one responsibility |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在较大的程序中，一个 class 通常不够。我们会把系统拆成多个 class，每个 class 负责一个清晰的任务。

例如一个图书馆系统可以有：

| Class | Responsibility |
|---|---|
| Book | 保存书的信息 |
| Member | 保存会员的信息 |
| Loan | 保存借阅记录 |

这样比把所有内容都放在一个巨大 class 里更清楚，也更容易维护。

好的多类设计应该：

- 每个 class 有清晰职责
- class 之间通过方法进行交互
- 避免一个 class 做太多事情
- 避免 class 之间过度依赖

</template>

<template #en>

### English Explanation

In larger programs, one class is often not enough. A system can be divided into multiple classes, with each class having a clear responsibility.

For example, a library system may include:

| Class | Responsibility |
|---|---|
| Book | Store book information |
| Member | Store member information |
| Loan | Store borrowing records |

This is clearer and easier to maintain than putting everything into one huge class.

Good multiple-class design should:

- give each class a clear responsibility
- allow classes to interact through methods
- avoid giving one class too many jobs
- avoid unnecessary dependency between classes

</template>
</LangBlock>

---

## 5. Real-life Example

### Library System

| Class | Attributes | Methods |
|---|---|---|
| Book | title, available | borrowBook(), returnBook() |
| Member | name, memberID | displayMember() |
| Loan | book, member | displayLoan() |

A `Loan` object may connect one `Book` object and one `Member` object.

---

## 6. IB Pseudocode Pattern

```text
CLASS Book
    title
    available
END CLASS

CLASS Member
    name
    memberID
END CLASS

CLASS Loan
    book
    member
END CLASS
```

---

## 7. Java Code Example

### Book class

```java
public class Book {
    private String title;
    private boolean available;

    public Book(String title) {
        this.title = title;
        this.available = true;
    }

    public String getTitle() {
        return title;
    }

    public boolean isAvailable() {
        return available;
    }

    public void borrowBook() {
        available = false;
    }

    public void returnBook() {
        available = true;
    }
}
```

### Member class

```java
public class Member {
    private String name;
    private int memberID;

    public Member(String name, int memberID) {
        this.name = name;
        this.memberID = memberID;
    }

    public String getName() {
        return name;
    }

    public int getMemberID() {
        return memberID;
    }
}
```

### Test class

```java
public class LibraryTest {
    public static void main(String[] args) {
        Book book1 = new Book("Dune");
        Member member1 = new Member("Alice", 1001);

        if (book1.isAvailable()) {
            book1.borrowBook();
            System.out.println(member1.getName() + " borrowed " + book1.getTitle());
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `Book` class | Handles book-related data and behaviour |
| `Member` class | Handles member-related data |
| `Book book1 = new Book("Dune");` | Creates a Book object |
| `Member member1 = new Member("Alice", 1001);` | Creates a Member object |
| `book1.isAvailable()` | Checks Book object's state |
| `book1.borrowBook()` | Changes Book object's state |
| `member1.getName()` | Gets Member object's name |

---

## 9. Step-by-step Execution

| Step | Action | Result |
|---|---|---|
| 1 | Create book1 | title = Dune, available = true |
| 2 | Create member1 | name = Alice, memberID = 1001 |
| 3 | Check availability | true |
| 4 | borrowBook() | available becomes false |
| 5 | output message | Alice borrowed Dune |

Output:

```text
Alice borrowed Dune
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Putting everything into one class | Hard to maintain | Split by responsibility |
| Creating too many tiny classes | Design becomes too complex | Keep useful classes |
| Giving one class unrelated jobs | Low cohesion | One clear responsibility per class |
| Tight dependency between classes | Changes become risky | Keep coupling low |
| Confusing object interaction with inheritance | Not every relationship is inheritance | Use association where suitable |

---

## 11. Guided Practice

### Practice 1

Suggest three classes for an online shop.

<details>
<summary>Suggested Answer</summary>

Possible classes:

- Product
- Customer
- Order
- Payment

</details>

### Practice 2

Which class should store product price?

<details>
<summary>Suggested Answer</summary>

`Product`, because price is data about the product.

</details>

---

## 12. Independent Practice

1. Design three classes for a school club system.
2. Give each class two attributes and two methods.
3. Explain how two objects might interact.
4. Write a small Java example using two classes.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

Explain why a larger program may use multiple classes.

<details>
<summary>Mark Scheme Style Answer</summary>

Multiple classes allow different parts of the system to be represented separately, with each class having a clear responsibility. This improves readability and maintainability.

</details>

### Question 2 [4 marks]

A library system uses `Book`, `Member`, and `Loan` classes. Explain one advantage of this design.

<details>
<summary>Mark Scheme Style Answer</summary>

Each class represents a different part of the system. `Book` stores book data, `Member` stores member data, and `Loan` stores borrowing data. This makes the system easier to understand, test, and modify because changes to one part are less likely to affect unrelated parts.

</details>

---

## 14. Classroom Activity

Groups design a three-class system for a cinema booking app. They must identify class responsibilities and object interactions.

---

## 15. Homework

Design a multiple-class system for either a library, shop, or game. Include class names, attributes, methods, and one interaction example.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Multiple classes | Used for larger systems |
| Responsibility | Each class should have a clear job |
| Cohesion | Class focuses on one purpose |
| Coupling | Dependency between classes |
| Exam phrase | "Separating the system into classes improves maintainability because each class has a clear responsibility." |
