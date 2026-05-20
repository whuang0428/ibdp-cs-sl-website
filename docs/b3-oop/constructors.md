# Constructors

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define a **constructor**
- explain why constructors are used
- identify constructor parameters
- write Java constructors
- create objects with initial values
- distinguish constructors from normal methods

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Object creation and initialization |
| Connected units | Classes and Objects, Attributes and Methods, Encapsulation |
| Exam relevance | Java OOP code reading, class design, constructor explanation |

::: tip Learning Focus
A constructor is called when an object is created. Its main purpose is to initialize attributes.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Constructor | 构造方法 | A special method used when an object is created |
| Initialize | 初始化 | Give starting values to attributes |
| Parameter | 参数 | A value passed into a constructor or method |
| Default constructor | 默认构造方法 | Constructor with no parameters |
| Overloading | 重载 | Having more than one constructor or method with different parameters |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Constructor（构造方法）** 是创建对象时自动调用的特殊方法。它通常用于给 attributes 初始值。

如果没有 constructor，创建对象后可能还要手动设置每个属性：

```java
student.name = "Alice";
student.score = 85;
```

有 constructor 之后，可以在创建对象时直接传入初始值：

```java
Student student = new Student("Alice", 85);
```

Java constructor 的特点：

- 名字必须和 class 名字一样
- 没有 return type
- 通常用于初始化 attributes
- 在 `new` 创建对象时调用

</template>

<template #en>

### English Explanation

A **constructor** is a special method that is called when an object is created. It is usually used to give initial values to attributes.

Without a constructor, attributes may need to be set manually after object creation:

```java
student.name = "Alice";
student.score = 85;
```

With a constructor, initial values can be passed in when the object is created:

```java
Student student = new Student("Alice", 85);
```

A Java constructor:

- has the same name as the class
- has no return type
- is usually used to initialize attributes
- is called when `new` creates an object

</template>
</LangBlock>

---

## 5. Real-life Example

### Student Object

| Attribute | Initial Value |
|---|---|
| name | Alice |
| score | 85 |

A constructor can set both values when the object is created.

---

## 6. IB Pseudocode Pattern

```text
CLASS Student
    name
    score

    CONSTRUCTOR Student(newName, newScore)
        name = newName
        score = newScore
    END CONSTRUCTOR
END CLASS

student1 = NEW Student("Alice", 85)
```

---

## 7. Java Code Example

```java
public class Student {
    private String name;
    private int score;

    public Student(String newName, int newScore) {
        name = newName;
        score = newScore;
    }

    public void displayDetails() {
        System.out.println("Name: " + name);
        System.out.println("Score: " + score);
    }
}
```

```java
public class StudentTest {
    public static void main(String[] args) {
        Student student1 = new Student("Alice", 85);
        Student student2 = new Student("Ben", 72);

        student1.displayDetails();
        student2.displayDetails();
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `private String name;` | Attribute storing name |
| `private int score;` | Attribute storing score |
| `public Student(...)` | Constructor because name matches class |
| `String newName, int newScore` | Constructor parameters |
| `name = newName;` | Initializes name attribute |
| `score = newScore;` | Initializes score attribute |
| `new Student("Alice", 85)` | Creates object and calls constructor |

---

## 9. Step-by-step Execution

| Step | Action | Result |
|---|---|---|
| 1 | `new Student("Alice", 85)` | Constructor called |
| 2 | `newName` receives `"Alice"` | parameter set |
| 3 | `newScore` receives `85` | parameter set |
| 4 | `name = newName` | name = Alice |
| 5 | `score = newScore` | score = 85 |
| 6 | object is ready | attributes initialized |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Giving constructor a return type | It becomes a normal method | No return type for constructors |
| Constructor name differs from class | Java will not treat it as constructor | Match class name exactly |
| Passing parameters in wrong order | Attribute values wrong | Check constructor parameter order |
| Not initializing all attributes | Object may have incomplete data | Set important attributes in constructor |
| Confusing parameters and attributes | Assignment may be wrong | Use clear names |

---

## 11. Guided Practice

### Practice 1

Identify the constructor:

```java
public class Book {
    private String title;

    public Book(String newTitle) {
        title = newTitle;
    }
}
```

<details>
<summary>Suggested Answer</summary>

`public Book(String newTitle)` is the constructor because it has the same name as the class and no return type.

</details>

### Practice 2

Create a `Book` object with title `"Dune"`.

<details>
<summary>Suggested Answer</summary>

```java
Book book1 = new Book("Dune");
```

</details>

---

## 12. Independent Practice

1. Write a constructor for a `Car` class with brand and speed.
2. Create two `Car` objects with different values.
3. Explain why constructors reduce repeated code.
4. Explain how a constructor differs from a normal method.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State the purpose of a constructor.

<details>
<summary>Mark Scheme Style Answer</summary>

A constructor is called when an object is created and is used to initialize the object's attributes.

</details>

### Question 2 [4 marks]

Explain why a constructor is useful in a `Student` class.

<details>
<summary>Mark Scheme Style Answer</summary>

A constructor can receive values such as name and score when a Student object is created. It initializes the attributes so the object starts with valid data. This avoids setting each attribute separately after creation and makes object creation more reliable.

</details>

---

## 14. Classroom Activity

Students convert classes without constructors into classes with constructors, then create two different objects.

---

## 15. Homework

Write a `Product` class with attributes `name` and `price`, a constructor, and a method to display the product.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Constructor | Special method called on object creation |
| Main purpose | Initialize attributes |
| Java rule | Same name as class, no return type |
| Parameter | Value passed into constructor |
| Exam phrase | "The constructor gives the object valid initial attribute values when it is created." |
