# B3 Object-Oriented Programming

::: info Syllabus area
Theme B: Computational thinking and problem-solving. B3 Object-oriented programming helps you organize data and behaviour into classes and objects.
:::

The main SL focus is understanding basic OOP concepts and how a class is used: classes, objects, attributes, methods, constructors, encapsulation, accessors, mutators, and simple UML class diagrams.

Extension activities can help with deeper programming confidence, but students should master the core single-class OOP ideas first.

## What you will learn

- how classes and objects organize data and behaviour
- how attributes, methods, constructors, and object state work
- how encapsulation, accessors, mutators, and validation support safer class design
- how simple UML class diagrams represent class structure
- which multi-class activities are optional extension / enrichment content

## Assessment connection

- Paper 2: tests Theme B OOP knowledge through classes, objects, attributes, methods, constructors, encapsulation, UML, and applied programming.
- IA: helps you structure larger programs using classes, methods, validation, and maintainable design.

## 1. Module Overview

B3 Object-Oriented Programming introduces a new way to design and organize programs.

In B2 Programming, students mainly learned how to write programs using:

```text
variables
selection
loops
arrays
searching
sorting
testing
```

In B3, students learn how to organize data and behaviour into:

```text
classes and objects
```

Object-oriented programming is important because larger programs are easier to understand, maintain, and extend when related data and behaviour are grouped together.

---

## 2. Learning Goals

By the end of B3 Object-Oriented Programming, students should be able to:

- explain what classes and objects are
- distinguish a class from an object
- identify attributes and methods in a class
- explain object state and object behaviour
- write constructors to initialize objects
- explain encapsulation and data hiding
- use private attributes and public methods
- write accessors and mutators
- use validation inside setters
- interpret UML class diagrams
- convert simple UML diagrams into Java class skeletons
- convert Java class structures into UML-style diagrams
- recognize that multi-class programs are optional extension / enrichment content
- answer exam-style OOP questions using correct terminology

---

## 3. B3 Learning Path

Recommended learning order:

```text
Classes and Objects
→ Attributes and Methods
→ Constructors
→ Encapsulation
→ Accessors and Mutators
→ UML Class Diagrams
→ Optional extension: HL Multiple Classes
```

This order is intentional.

Students first learn the foundation of OOP, then gradually move toward better class design and controlled access. UML then helps students represent class design visually.

::: tip Optional extension
HL Multiple Classes is useful for going beyond the SL core. Focus on the basic single-class OOP ideas first, then use the multi-class page for extra practice or larger projects.
:::

---

## 4. Concept Map

```text
Classes and Objects
        ↓
Attributes and Methods
        ↓
Constructors
        ↓
Encapsulation
        ↓
Accessors and Mutators
        ↓
UML Class Diagrams
        ↓
Optional extension: HL Multiple Classes
```

::: tip How to study this page
Do not treat OOP as vocabulary only. Check how each idea appears in Java code, object state tables, and UML diagrams.
:::

---

## 5. Topic Index

| Order | Topic | Main Focus | Link |
|---:|---|---|---|
| 1 | Classes and Objects | class vs object, blueprint analogy, object creation, dot notation | [Open](./classes-objects) |
| 2 | Attributes and Methods | object state, object behaviour, method calls, return values | [Open](./attributes-methods) |
| 3 | Constructors | default constructor, parameterized constructor, `this`, initialization | [Open](./constructors) |
| 4 | Encapsulation | private attributes, public methods, controlled access, validation | [Open](./encapsulation) |
| 5 | Accessors and Mutators | getters, setters, read-only attributes, setter validation | [Open](./accessors-mutators) |
| 6 | UML Class Diagrams | UML notation, visibility, Java-to-UML, UML-to-Java | [Open](./uml-class-diagrams) |
| 7 | HL Multiple Classes (Extension) | optional enrichment: object collaboration, arrays of objects, composition, responsibilities | [Open](./hl-multiple-classes) |

---

## 6. Bilingual Module Explanation

<LangBlock>
<template #cn>

### 中文说明

B3 OOP 是学生从“写一段程序”进入“设计程序结构”的关键部分。

在 B2 中，学生主要关注：

```text
程序如何一步一步执行
变量如何变化
循环如何重复
数组如何处理多个值
```

但是当程序变大后，把所有代码都写在一个 `main()` 里面会很混乱。  
OOP 的思路是把相关的数据和行为放在 class 里。

例如，一个 `Student` class 可以包含：

```text
attributes:
- name
- mark

methods:
- getName()
- getMark()
- setMark()
- hasPassed()
```

这样程序更容易理解：

```text
Student object 管理学生自己的数据
Course object 管理课程和学生列表
main class 负责创建对象并运行程序
```

学习 B3 时，学生最需要理解：

```text
class 是 blueprint
object 是 instance
attribute 是 object 的 data/state
method 是 object 的 behaviour
constructor 初始化 object
encapsulation 保护 object data
getter/setter 提供 controlled access
UML 用图表示 class design
```

</template>

<template #en>

### English Explanation

B3 OOP is the point where students move from “writing a program” to “designing program structure”.

In B2, students mainly focused on:

```text
how a program runs step by step
how variables change
how loops repeat
how arrays process multiple values
```

However, when a program becomes larger, putting all code inside one `main()` method becomes messy.  
OOP groups related data and behaviour into classes.

For example, a `Student` class can contain:

```text
attributes:
- name
- mark

methods:
- getName()
- getMark()
- setMark()
- hasPassed()
```

This makes the program easier to understand:

```text
Student object manages its own student data
Course object manages course and student list
main class creates objects and runs the program
```

When learning B3, students should understand:

```text
class is a blueprint
object is an instance
attribute is object data/state
method is object behaviour
constructor initializes an object
encapsulation protects object data
getter/setter provides controlled access
UML represents class design visually
```

</template>
</LangBlock>

---

## 7. Core OOP Ideas

| Idea | Simple Meaning | Example |
|---|---|---|
| Class | Blueprint/template | `Student` |
| Object | Instance created from a class | `new Student("Alice", 85)` |
| Attribute | Data stored in object | `name`, `mark` |
| Method | Behaviour/action | `displayInfo()`, `hasPassed()` |
| Constructor | Initializes object | `Student(String name, int mark)` |
| Encapsulation | Protects internal data | `private int mark;` |
| Accessor | Reads private data | `getMark()` |
| Mutator | Changes private data | `setMark(int mark)` |
| UML | Visual class design | class diagram |

---

## 8. Core Java OOP Pattern

A strong beginner OOP class usually has this structure:

```java
public class Student {
    private String name;
    private int mark;

    public Student(String name, int mark) {
        this.name = name;
        setMark(mark);
    }

    public String getName() {
        return name;
    }

    public int getMark() {
        return mark;
    }

    public void setMark(int mark) {
        if (mark >= 0 && mark <= 100) {
            this.mark = mark;
        }
    }

    public boolean hasPassed() {
        return mark >= 50;
    }
}
```

A test class creates and uses objects:

```java
public class TestStudent {
    public static void main(String[] args) {
        Student s1 = new Student("Alice", 85);

        System.out.println(s1.getName());
        System.out.println(s1.getMark());
        System.out.println(s1.hasPassed());
    }
}
```

---

## 9. Object State Tracing

In B2, students traced variables.

In B3, students must also trace object state.

### Code

```java
Student s1 = new Student("Alice", 80);

s1.setMark(90);
s1.setMark(120);
```

Assume valid marks are 0-100.

### Object State Table

| Step | Action | Valid? | name | mark |
|---:|---|---|---|---:|
| 1 | constructor | yes | Alice | 80 |
| 2 | `setMark(90)` | yes | Alice | 90 |
| 3 | `setMark(120)` | no | Alice | 90 |

Final state:

```text
name = Alice
mark = 90
```

::: tip Exam Skill
When a question includes object method calls, students should trace object attributes just like they traced variables in B2.
:::

---

## 10. OOP and Encapsulation Pattern

A safe class usually follows this design:

```text
private attributes
public constructor
public getters
public setters with validation where needed
public behaviour methods
```

### Example

```java
private int mark;

public int getMark() {
    return mark;
}

public void setMark(int mark) {
    if (mark >= 0 && mark <= 100) {
        this.mark = mark;
    }
}
```

This supports encapsulation because:

```text
outside code cannot directly change mark
outside code must call setMark()
setMark() can validate the value
```

---

## 11. UML Pattern

A UML class diagram usually has three compartments:

```text
ClassName
------------------------
attributes
------------------------
methods
```

### Example

```text
Student
------------------------
- name : String
- mark : int
------------------------
+ Student(name : String, mark : int)
+ getName() : String
+ getMark() : int
+ setMark(mark : int) : void
+ hasPassed() : boolean
```

### Symbols

| Symbol | Meaning |
|---|---|
| `+` | public |
| `-` | private |

### Java Mapping

| UML | Java |
|---|---|
| `- mark : int` | `private int mark;` |
| `+ getMark() : int` | `public int getMark()` |
| `+ setMark(mark : int) : void` | `public void setMark(int mark)` |

---

## 14. Student Revision Routine

Students should revise B3 using this method:

```text
read the concept
→ identify class/object/attribute/method
→ copy one Java class example
→ create one object in main
→ trace object state
→ draw UML
→ explain the design in words
```

For every class, students should ask:

```text
What is the class name?
What attributes does it store?
What methods does it provide?
Which attributes should be private?
Which methods should be public?
Does it need a constructor?
Does it need getters and setters?
What validation is needed?
How would it look in UML?
```

---

## 15. Common B3 Mistakes Overview

| Mistake | Topic | Fix |
|---|---|---|
| Class and object confused | Classes and Objects | Class is blueprint; object is instance |
| Attributes and methods confused | Attributes and Methods | Attribute stores data; method performs behaviour |
| Constructor has `void` | Constructors | Constructor has no return type |
| Constructor name does not match class | Constructors | Constructor name must match class name |
| Attributes are public | Encapsulation | Use private attributes |
| Setter has no validation | Accessors/Mutators | Validate before assigning |
| Getter has `void` | Accessors/Mutators | Getter return type matches attribute |
| `mark = mark;` in setter | Accessors/Mutators | Use `this.mark = mark;` |
| UML uses Java order | UML | Use `name : type` |
| Constructor shown with return type in UML | UML | Constructors normally have no return type |
| Array of objects assumed to create objects | HL Multiple Classes (extension) | Object array stores references, initially null |
| Calling method on null | HL Multiple Classes (extension) | Check object exists first |

---

## 16. Assessment Focus

B3 questions may ask students to:

- define class and object
- compare class and object
- identify attributes and methods from a scenario
- explain object state and behaviour
- write a simple Java class
- write a constructor
- explain the purpose of `this`
- explain encapsulation
- write accessor and mutator methods
- add validation to a setter
- interpret UML class diagrams
- convert Java to UML
- convert UML to Java skeleton
- trace object state after method calls
- recognize that multiple-object and multi-class interaction is optional extension / enrichment content

---

## 17. Common Exam-style Command Words

| Command | What Students Should Do |
|---|---|
| State | Give a short direct answer |
| Identify | Name the class, object, attribute, method, or error |
| Describe | Give main features |
| Explain | Give reason and effect |
| Distinguish | Clearly show the difference |
| Construct / Write | Produce Java code or UML |
| Trace | Follow object state step by step |
| Convert | Change Java to UML or UML to Java |

---

## 18. Mini Diagnostic Check

Use this before moving into larger OOP practice.

### Question 1

What is the difference between a class and an object?

<details>
<summary>Answer</summary>

A class is a blueprint or template. An object is an instance created from a class and has actual attribute values.

</details>

---

### Question 2

What is the output?

```java
Student s1 = new Student("Alice", 85);
System.out.println(s1.getMark());
```

<details>
<summary>Answer</summary>

```text
85
```

</details>

---

### Question 3

What is wrong?

```java
public void Student(String name) {
    this.name = name;
}
```

<details>
<summary>Answer</summary>

It has `void`, so it is not a constructor. A constructor has no return type.

Correct:

```java
public Student(String name) {
    this.name = name;
}
```

</details>

---

### Question 4

Why should this be private?

```java
int mark;
```

<details>
<summary>Answer</summary>

If `mark` is public or directly accessible, outside code can set invalid values such as 150 or -10. Making it private supports encapsulation and controlled access.

</details>

---

### Question 5

Convert to UML:

```java
private int score;
public int getScore()
```

<details>
<summary>Answer</summary>

```text
- score : int
+ getScore() : int
```

</details>

---

## 19. End-of-module Practice Plan

After finishing B3, students should complete:

| Practice Type | Purpose |
|---|---|
| 10 concept questions | Strengthen vocabulary |
| 5 object state tracing questions | Build tracing skill |
| 5 constructor-writing tasks | Practise initialization |
| 5 getter/setter tasks | Practise encapsulation |
| 3 UML-to-Java tasks | Connect design to code |
| 3 Java-to-UML tasks | Extract class structure |
| Optional mini multi-class project | Combine full OOP workflow after the SL core basics are secure |

---

## 20. Suggested Mini Project

::: warning Extension / enrichment content
This mini project uses multiple classes and arrays of objects. It is not the first priority for SL exam preparation. Use it after you are confident with the required B3 OOP basics.
:::

### Student Course Manager

Create a Java program with:

```text
Student class
Course class
TestCourse main class
```

### Student class should include:

```text
private name
private mark
constructor
getName()
getMark()
setMark()
hasPassed()
displayInfo()
```

### Course class should include:

```text
private courseName
private Student[] students
private studentCount
constructor
addStudent()
displayStudents()
calculateAverage()
findStudent()
```

### Main class should:

```text
create several Student objects
create a Course object
add students to the course
display all students
calculate average
search for one student
```

This project combines:

```text
classes
objects
attributes
methods
constructors
encapsulation
getters/setters
arrays of objects
searching objects
```

---

## 21. B3 Completion Checklist

Before moving to A3 Databases, students should be able to:

- [ ] explain class and object
- [ ] give examples of a class and its objects
- [ ] identify attributes and methods
- [ ] explain object state
- [ ] explain object behaviour
- [ ] create an object using `new`
- [ ] call methods using dot notation
- [ ] write a constructor
- [ ] explain constructor vs normal method
- [ ] use `this` correctly
- [ ] explain encapsulation
- [ ] use private attributes
- [ ] write getter methods
- [ ] write setter methods
- [ ] add validation inside setters
- [ ] interpret UML class diagrams
- [ ] convert simple Java to UML
- [ ] convert simple UML to Java skeleton
- [ ] recognize object collaboration as optional extension / enrichment content

---

## 22. One-page Module Summary

| Area | Key Idea |
|---|---|
| Classes and Objects | Class is blueprint; object is instance |
| Attributes and Methods | Attributes store state; methods define behaviour |
| Constructors | Initialize objects when created |
| Encapsulation | Protect object data with controlled access |
| Accessors and Mutators | Getters read data; setters update data |
| UML Class Diagrams | Visual representation of class design |
| HL Multiple Classes (extension) | Objects from different classes collaborate |
| Object State | Current attribute values of an object |
| `this` | Refers to the current object |
| Visibility | `private` protects data; `public` exposes safe methods |

::: tip Next Module
After B3, the teaching sequence moves to **A3 Databases**. Students will shift from program objects to structured data storage and querying.
:::
