# Classes and Objects

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what a **class** is
- explain what an **object** is
- distinguish clearly between a class and an object
- describe a class as a blueprint and an object as an instance
- identify attributes and methods in a simple class
- create objects from a Java class using `new`
- call object methods using dot notation
- trace the state of different objects
- explain why many objects can be created from the same class
- answer exam-style questions about classes and objects

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core, with Java support |
| Main skill | Understanding class-object relationship |
| Connected topics | Variables, data types, methods, constructors, encapsulation, UML |
| Programming language focus | Java |
| Exam relevance | OOP vocabulary, Java class reading, object state tracing, class vs object explanation |

::: tip Learning Focus
If students confuse **class** and **object**, every later OOP topic becomes difficult. This page is the foundation of the whole B3 unit.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Class | 类 | A blueprint/template used to create objects |
| Object | 对象 | An instance created from a class |
| Instance | 实例 | Another word for an object created from a class |
| Attribute | 属性 | Data stored inside an object |
| Method | 方法 | Behaviour/action that an object can perform |
| State | 状态 | The current values of an object's attributes |
| Behaviour | 行为 | What an object can do through methods |
| Object-oriented programming | 面向对象编程 | A programming approach based on classes and objects |
| Instantiate | 实例化 | To create an object from a class |
| `new` | Java 创建对象关键字 | Java keyword used to create a new object |
| Dot notation | 点符号调用 | Syntax used to access methods or members, such as `s1.getName()` |
| Reference variable | 引用变量 | A variable that refers to an object |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Class（类）** 是创建对象的蓝图或模板。  
**Object（对象）** 是根据 class 创建出来的具体实例。

可以这样理解：

```text
Class = 蓝图 / 模板
Object = 根据蓝图创建出来的具体东西
```

例如：

```text
Class: Student
Objects: Alice, Ben, Clara
```

`Student` 这个 class 可以规定每个学生对象应该有什么数据和行为：

```text
attributes:
- name
- mark

methods:
- getName()
- getMark()
- hasPassed()
```

然后我们可以创建很多个 Student 对象：

```text
Alice: name = "Alice", mark = 85
Ben: name = "Ben", mark = 42
Clara: name = "Clara", mark = 90
```

这些对象来自同一个 class，但是它们可以有不同的 attribute values。

学习 class 和 object 的关键是：

1. class 是设计，不是具体数据本身
2. object 是根据 class 创建出来的具体实例
3. object 有自己的 attribute values
4. method 是 object 可以执行的行为
5. 同一个 class 可以创建很多个 object

</template>

<template #en>

### English Explanation

A **class** is a blueprint or template used to create objects.  
An **object** is a specific instance created from a class.

You can understand it like this:

```text
Class = blueprint / template
Object = actual thing created from the blueprint
```

For example:

```text
Class: Student
Objects: Alice, Ben, Clara
```

The `Student` class can define what data and behaviour each student object should have:

```text
attributes:
- name
- mark

methods:
- getName()
- getMark()
- hasPassed()
```

Then many Student objects can be created:

```text
Alice: name = "Alice", mark = 85
Ben: name = "Ben", mark = 42
Clara: name = "Clara", mark = 90
```

These objects are created from the same class, but they can have different attribute values.

The key ideas are:

1. a class is a design, not one specific piece of data
2. an object is a specific instance created from a class
3. each object has its own attribute values
4. methods are behaviours that objects can perform
5. one class can be used to create many objects

</template>
</LangBlock>

---

## 5. Real-life Analogy: Blueprint and Houses

A class is like a house blueprint.

```text
Blueprint: describes what a house should have
House object: one actual house built from the blueprint
```

| OOP Idea | House Analogy |
|---|---|
| Class | House blueprint |
| Object | One actual house |
| Attribute | address, number of rooms, colour |
| Method | openDoor(), turnOnLights() |
| State | current colour, current owner, current lights on/off |

Many houses can be built from the same blueprint, but each house can have different values.

Example:

| Object | Address | Colour | Rooms |
|---|---|---|---:|
| house1 | 12 Green Street | White | 4 |
| house2 | 8 Lake Road | Blue | 3 |
| house3 | 25 Hill Avenue | Grey | 5 |

::: info Scenario Link
The blueprint does not live in the house. It describes how houses should be built. In the same way, a class describes what objects should contain and do.
:::

---

## 6. Class vs Object

| Class | Object |
|---|---|
| Blueprint/template | Actual instance |
| Defines attributes and methods | Has actual attribute values |
| Does not represent one specific item | Represents one specific item |
| Written once | Can be created many times |
| Example: `Student` | Example: Alice as a Student object |

### Simple Example

```text
Class: Student
Object 1: Alice
Object 2: Ben
Object 3: Clara
```

### Exam-friendly sentence

A class is a blueprint that defines the attributes and methods of objects. An object is an instance of a class with its own attribute values.

---

## 7. First Java Class Example

A Java class can describe a Student.

### Student.java

```java
public class Student {
    String name;
    int mark;

    public void displayInfo() {
        System.out.println(name + " scored " + mark);
    }
}
```

### Explanation

| Code | Meaning |
|---|---|
| `public class Student` | Defines a class called `Student` |
| `String name;` | Attribute storing student name |
| `int mark;` | Attribute storing student mark |
| `displayInfo()` | Method that outputs student information |

At this stage, the attributes are not private yet. Encapsulation will be improved later.

---

## 8. Creating Objects from a Class

A class alone is only the blueprint. To create an object, Java uses `new`.

### Main Program

```java
public class TestStudent {
    public static void main(String[] args) {
        Student s1 = new Student();

        s1.name = "Alice";
        s1.mark = 85;

        s1.displayInfo();
    }
}
```

### Output

```text
Alice scored 85
```

### Explanation

| Code | Meaning |
|---|---|
| `Student s1` | Declares a reference variable called `s1` |
| `new Student()` | Creates a new Student object |
| `s1.name = "Alice";` | Sets the object's name attribute |
| `s1.mark = 85;` | Sets the object's mark attribute |
| `s1.displayInfo();` | Calls the object's method |

---

## 9. Object State Table

The **state** of an object means the current values of its attributes.

### Code

```java
Student s1 = new Student();

s1.name = "Alice";
s1.mark = 85;
```

### Object State

| Object | name | mark |
|---|---|---:|
| s1 | Alice | 85 |

If the mark changes:

```java
s1.mark = 90;
```

New state:

| Object | name | mark |
|---|---|---:|
| s1 | Alice | 90 |

::: tip Trace Skill
In OOP, students should trace object state, not only local variable values.
:::

---

## 10. Creating Multiple Objects

One class can create many objects.

### Java Code

```java
public class TestStudents {
    public static void main(String[] args) {
        Student s1 = new Student();
        Student s2 = new Student();

        s1.name = "Alice";
        s1.mark = 85;

        s2.name = "Ben";
        s2.mark = 42;

        s1.displayInfo();
        s2.displayInfo();
    }
}
```

### Output

```text
Alice scored 85
Ben scored 42
```

### Object State Table

| Object | name | mark |
|---|---|---:|
| s1 | Alice | 85 |
| s2 | Ben | 42 |

Although `s1` and `s2` are both Student objects, they store different values.

---

## 11. Attributes and Methods Preview

A class usually contains:

```text
attributes + methods
```

### Attributes

Attributes store data about an object.

For a Student:

```java
String name;
int mark;
```

These describe the student's state.

### Methods

Methods describe what an object can do.

```java
public void displayInfo() {
    System.out.println(name + " scored " + mark);
}
```

This method outputs information about the object.

### Simple Summary

| Part | Question Answered | Example |
|---|---|---|
| Attribute | What data does the object store? | `name`, `mark` |
| Method | What can the object do? | `displayInfo()` |

---

## 12. Improved Student Example with Constructor Preview

Later, students will learn constructors in detail. For now, preview this idea:

```java
public class Student {
    String name;
    int mark;

    public Student(String studentName, int studentMark) {
        name = studentName;
        mark = studentMark;
    }

    public void displayInfo() {
        System.out.println(name + " scored " + mark);
    }
}
```

Now object creation can provide initial values:

```java
Student s1 = new Student("Alice", 85);
Student s2 = new Student("Ben", 42);
```

### Object State Table

| Object | name | mark |
|---|---|---:|
| s1 | Alice | 85 |
| s2 | Ben | 42 |

::: warning Preview Only
The constructor will be explained fully in the Constructors page. Here, students only need to understand that it helps create an object with starting values.
:::

---

## 13. Dot Notation

Java uses dot notation to access an object's attributes or methods.

```java
s1.name = "Alice";
s1.displayInfo();
```

| Code | Meaning |
|---|---|
| `s1.name` | Access the `name` attribute of object `s1` |
| `s1.mark` | Access the `mark` attribute of object `s1` |
| `s1.displayInfo()` | Call the `displayInfo` method of object `s1` |

### Important

```java
s1.displayInfo();
```

means:

```text
Ask object s1 to run its displayInfo method.
```

If there is also `s2`, then:

```java
s2.displayInfo();
```

uses the state of `s2`, not `s1`.

---

## 14. Method Uses Object State

### Code

```java
Student s1 = new Student();
Student s2 = new Student();

s1.name = "Alice";
s1.mark = 85;

s2.name = "Ben";
s2.mark = 42;

s1.displayInfo();
s2.displayInfo();
```

### Why Are Outputs Different?

The same method `displayInfo()` is defined in the class, but each object has its own attribute values.

| Method Call | Object Used | name | mark | Output |
|---|---|---|---:|---|
| `s1.displayInfo()` | s1 | Alice | 85 | Alice scored 85 |
| `s2.displayInfo()` | s2 | Ben | 42 | Ben scored 42 |

---

## 15. Object Reference Variables

When Java creates an object:

```java
Student s1 = new Student();
```

`s1` is not the object itself in a simple “box value” way. It is a reference variable that refers to the object.

A beginner-friendly way to think:

```text
s1 points to one Student object
```

If you create another object:

```java
Student s2 = new Student();
```

Then:

```text
s2 points to another Student object
```

This is why each object can have its own values.

---

## 16. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying class and object are the same | They are different concepts | Class is blueprint, object is instance |
| Creating a class but no object | No actual object exists to use | Use `new ClassName()` |
| Forgetting `new` | Object is not created | Use `Student s1 = new Student();` |
| Confusing class name and object name | `Student` is class, `s1` is object reference | Label them separately |
| Thinking all objects share same values | Each object has its own state | Use object state tables |
| Calling method on class instead of object | Non-static method belongs to object | Use `s1.displayInfo()` |
| Forgetting parentheses for method call | Java needs `()` to call method | Write `displayInfo()` |
| Direct public attributes everywhere | Weak encapsulation | Later use `private` and getters/setters |
| Naming class with lowercase | Java convention broken | Use `Student`, `BankAccount` |
| Naming object reference with uppercase | Confusing style | Use `s1`, `student1`, `account1` |

---

## 17. Guided Practice

### Practice 1: Class or Object?

Classify each item as class or object.

| Item | Class or Object? |
|---|---|
| `Car` |
| my father's car |
| `Student` |
| Alice as a student |
| `BankAccount` |
| Jerome's bank account |

<details>
<summary>Suggested Answer</summary>

| Item | Class or Object? |
|---|---|
| `Car` | Class |
| my father's car | Object |
| `Student` | Class |
| Alice as a student | Object |
| `BankAccount` | Class |
| Jerome's bank account | Object |

</details>

---

### Practice 2: Identify Attributes and Methods

For a `Book` class, classify these as attributes or methods.

```text
title
author
numberOfPages
displayInfo()
borrow()
returnBook()
```

<details>
<summary>Suggested Answer</summary>

| Item | Attribute or Method? |
|---|---|
| `title` | Attribute |
| `author` | Attribute |
| `numberOfPages` | Attribute |
| `displayInfo()` | Method |
| `borrow()` | Method |
| `returnBook()` | Method |

Attributes store data. Methods describe behaviour.

</details>

---

### Practice 3: Object State

Given:

```java
Student s1 = new Student();

s1.name = "Clara";
s1.mark = 90;
s1.mark = 95;
```

What is the final state of `s1`?

<details>
<summary>Suggested Answer</summary>

| Object | name | mark |
|---|---|---:|
| s1 | Clara | 95 |

The final assignment changes the mark from 90 to 95.

</details>

---

### Practice 4: Predict Output

Given the `Student` class with `displayInfo()`:

```java
Student s1 = new Student();
Student s2 = new Student();

s1.name = "Alice";
s1.mark = 85;

s2.name = "Ben";
s2.mark = 42;

s2.displayInfo();
s1.displayInfo();
```

<details>
<summary>Suggested Answer</summary>

Output:

```text
Ben scored 42
Alice scored 85
```

The method calls happen in the order written.

</details>

---

### Practice 5: Find the Mistake

```java
Student s1;
s1.name = "Alice";
```

What is wrong?

<details>
<summary>Suggested Answer</summary>

`Student s1;` declares a reference variable, but it does not create a Student object.

Correct:

```java
Student s1 = new Student();
s1.name = "Alice";
```

</details>

---

## 18. Independent Practice

### Question 1

Explain the difference between a class and an object.

### Question 2

Give one class and three possible objects created from that class.

### Question 3

For a `BankAccount` class, suggest three attributes and three methods.

### Question 4

Write a simple `Book` class with these attributes:

```text
title
author
pages
```

Add a method called `displayInfo()` that outputs the book information.

### Question 5

Create two `Book` objects and give them different values.

### Question 6

Create an object state table for your two `Book` objects.

### Question 7

Explain why one class can create many objects.

### Question 8

What does the keyword `new` do in Java?

### Question 9

Explain dot notation using one Java example.

### Question 10

Correct this code:

```java
Student s1;
s1.mark = 80;
s1.displayInfo();
```

---

## 19. Exam-style Questions

### Question 1 [4 marks]

Distinguish between a class and an object.

<details>
<summary>Mark Scheme Style Answer</summary>

A class is a blueprint or template that defines the attributes and methods that objects of that type will have. An object is an instance created from a class. The class describes the structure and behaviour, while the object has actual values for its attributes. For example, `Student` can be a class, while Alice as a student is an object.

</details>

---

### Question 2 [4 marks]

A game has a class called `Player`.

State two possible attributes and two possible methods for this class.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible attributes:

```text
name
score
health
level
```

Possible methods:

```text
move()
attack()
takeDamage()
displayScore()
```

Attributes store data about the player. Methods describe actions the player can perform.

</details>

---

### Question 3 [5 marks]

Explain why a program may create several objects from the same class.

<details>
<summary>Mark Scheme Style Answer</summary>

A class defines a common structure, but many different objects can be created from it. Each object can have its own attribute values while sharing the same methods defined by the class. For example, several `Student` objects can all have a name and mark, but one object may represent Alice with mark 85 and another may represent Ben with mark 42.

</details>

---

### Question 4 [6 marks]

Trace the object states after the following code.

```java
Student s1 = new Student();
Student s2 = new Student();

s1.name = "Alice";
s1.mark = 80;

s2.name = "Ben";
s2.mark = 60;

s1.mark = 90;
```

<details>
<summary>Mark Scheme Style Answer</summary>

Final object state:

| Object | name | mark |
|---|---|---:|
| s1 | Alice | 90 |
| s2 | Ben | 60 |

`s1.mark` changes from 80 to 90. `s2` is a separate object, so its mark remains 60.

</details>

---

### Question 5 [6 marks]

A student says: “A class is the same thing as an object.” Explain why this is incorrect.

<details>
<summary>Mark Scheme Style Answer</summary>

This is incorrect because a class is a blueprint or template, not a specific object. It defines what attributes and methods objects will have. An object is an actual instance created from the class and has real attribute values. One class can be used to create many objects. For example, `Student` is a class, while Alice and Ben can be two different Student objects.

</details>

---

## 20. Classroom Activity

### Activity 1: Blueprint vs Object Cards

Give students cards such as:

```text
Car
my blue car
Student
Alice
BankAccount
my savings account
```

Students sort them into:

```text
Class
Object
```

Then they explain their choices.

---

### Activity 2: Object State Table

Give students code that creates two or three objects. Students fill in the final object state table.

Example columns:

```text
object reference
attribute 1
attribute 2
attribute 3
```

---

### Activity 3: Design a Class

Groups design a class for one of these:

```text
GameCharacter
Book
Laptop
Course
BankAccount
```

They must list:

```text
class name
three attributes
three methods
two example objects
```

---

## 21. Homework

### Homework Part A: Concept Explanation

In 5-6 sentences, explain the difference between a class and an object using your own example.

---

### Homework Part B: Design Task

Design a `GameCharacter` class.

Include:

```text
at least 4 attributes
at least 4 methods
at least 3 possible objects
```

---

### Homework Part C: Java Code

Write a simple Java class called `Book` with:

```text
title
author
pages
displayInfo()
```

Then create two Book objects in a separate main class.

---

### Homework Part D: Trace

Given this code:

```java
Student s1 = new Student();
Student s2 = new Student();

s1.name = "Eva";
s1.mark = 76;

s2.name = "Leo";
s2.mark = 88;

s1.mark = s2.mark;
```

Create the final object state table.

---

## 22. One-page Revision Summary

| Point | Summary |
|---|---|
| Class | Blueprint/template |
| Object | Instance created from a class |
| Instance | Another word for object |
| Attribute | Data stored in an object |
| Method | Behaviour/action of an object |
| State | Current values of object attributes |
| `new` | Creates a new object |
| Dot notation | Used to access object members, such as `s1.displayInfo()` |
| Multiple objects | One class can create many objects |
| Object state table | Shows different values stored in each object |
| Class name convention | Starts with uppercase, such as `Student` |
| Object reference convention | Usually lowercase, such as `student1` |
| Exam phrase | A class defines the structure and behaviour; an object is a specific instance with its own values |

---

## 23. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a class?
2. What is an object?
3. What is an instance?
4. Why is a class like a blueprint?
5. Can one class create more than one object?
6. What is an attribute?
7. What is a method?
8. What does `new` do in Java?
9. What is dot notation?
10. Why do different objects from the same class have different states?
