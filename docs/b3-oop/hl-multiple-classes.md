# HL Multiple Classes

::: warning Extension / enrichment content
This page is for extension learning or HL-related enrichment. It is not a required SL core topic unless your teacher tells you to study it.
:::

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why larger programs often use more than one class
- distinguish a model class and a main/test class
- create objects from different classes
- call methods across objects
- understand how one object can store another object as an attribute
- explain basic object collaboration
- use arrays of objects at a beginner level
- organise simple Java programs across multiple files
- read and write simple multi-class Java programs
- answer exam-style questions about object interaction and multi-class design

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | HL extension / programming enrichment |
| Main skill | Designing programs with more than one class |
| Connected topics | Classes, objects, attributes, methods, constructors, encapsulation, accessors/mutators, UML |
| Programming language focus | Java |
| Exam relevance | Code reading, object interaction, class design, UML relationship preview |

::: tip Learning Focus
Multiple-class programs help students move from isolated class examples to realistic software design. The key idea is that objects can work together by storing references and calling methods.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Multiple classes | 多个类 | A program design that uses more than one class |
| Model class | 模型类 | A class that represents real data or an entity, such as `Student` |
| Main class | 主程序类 | A class containing `main()` used to create and use objects |
| Object collaboration | 对象协作 | Objects working together by calling methods or storing references |
| Composition | 组合 | A relationship where one object contains or owns another object |
| Reference | 引用 | A variable that points to an object |
| Array of objects | 对象数组 | An array storing object references |
| Dependency | 依赖 | One class uses another class |
| Responsibility | 职责 | The job or role of a class in a program |
| Separation of concerns | 职责分离 | Keeping different responsibilities in different classes |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

之前我们学习了一个 class，例如：

```text
Student
Book
BankAccount
```

但是现实中的程序通常不会只有一个 class。  
一个学校管理系统可能有：

```text
Student
Course
Teacher
School
Main
```

这些 class 各自负责不同的事情。

例如：

```text
Student class 负责存储学生信息
Course class 负责存储课程信息
Main class 负责创建对象并运行程序
```

多个 class 的核心思想是：

```text
每个 class 负责一类数据和行为
不同 object 之间可以互相配合
```

例如，一个 `Course` object 可以保存很多 `Student` objects。  
这样课程就可以计算班级平均分，或者输出所有学生信息。

</template>

<template #en>

### English Explanation

Previously, we learned one class at a time, such as:

```text
Student
Book
BankAccount
```

However, real programs usually do not use only one class.  
A school management system may include:

```text
Student
Course
Teacher
School
Main
```

Each class has a different responsibility.

For example:

```text
Student class stores student information
Course class stores course information
Main class creates objects and runs the program
```

The core idea of multiple classes is:

```text
each class is responsible for one type of data and behaviour
different objects can work together
```

For example, a `Course` object can store many `Student` objects.  
Then the course can calculate the class average or output all student information.

</template>
</LangBlock>

---

## 5. Why Use Multiple Classes?

| Reason | Explanation |
|---|---|
| Better organisation | Each class has a clear role |
| Easier maintenance | Changes to one class are easier to control |
| Reuse | A class can be reused in different programs |
| Realistic modelling | Real systems contain many related objects |
| Less repeated code | Shared behaviour can be placed in one class |
| Easier testing | Classes can be tested separately |

### Example

Instead of putting everything in one long `main()` method, we can design:

```text
Student.java
Course.java
TestCourse.java
```

This is cleaner and closer to real software development.

---

## 6. One Class per File

In Java, a public class is usually stored in its own file.

| File Name | Class Name | Purpose |
|---|---|---|
| `Student.java` | `Student` | Represents one student |
| `Course.java` | `Course` | Represents one course |
| `TestCourse.java` | `TestCourse` | Contains `main()` and tests the program |

::: warning Java Rule
If the class is public, the file name should match the class name.
:::

---

## 7. Model Class and Main Class

### Model Class

A model class represents an entity.

Example:

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

### Main/Test Class

A main class creates and uses objects.

```java
public class TestStudent {
    public static void main(String[] args) {
        Student s1 = new Student("Alice", 85);

        System.out.println(s1.getName());
        System.out.println(s1.hasPassed());
    }
}
```

### Difference

| Model Class | Main/Test Class |
|---|---|
| Describes objects | Runs the program |
| Stores attributes and methods | Creates and uses objects |
| Usually no `main()` | Usually contains `main()` |
| Example: `Student` | Example: `TestStudent` |

---

## 8. Object Collaboration

Objects collaborate when one object uses another object.

Example:

```text
Course object uses Student objects
```

The `Course` class may need:

```text
courseName
students
addStudent()
displayStudents()
calculateAverage()
```

This means the `Course` object is responsible for managing student objects.

---

## 9. Example 1: Course Stores One Student

### Student.java

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

    public void displayInfo() {
        System.out.println(name + " scored " + mark);
    }
}
```

### Course.java

```java
public class Course {
    private String courseName;
    private Student student;

    public Course(String courseName, Student student) {
        this.courseName = courseName;
        this.student = student;
    }

    public void displayCourseInfo() {
        System.out.println("Course: " + courseName);
        student.displayInfo();
    }
}
```

### TestCourse.java

```java
public class TestCourse {
    public static void main(String[] args) {
        Student s1 = new Student("Alice", 85);
        Course c1 = new Course("Computer Science", s1);

        c1.displayCourseInfo();
    }
}
```

### Output

```text
Course: Computer Science
Alice scored 85
```

---

## 10. Code Explanation

| Code | Meaning |
|---|---|
| `private Student student;` | Course stores a reference to a Student object |
| `Course(String courseName, Student student)` | Constructor receives a Student object |
| `this.student = student;` | Stores the Student object inside the Course object |
| `student.displayInfo();` | Course asks the Student object to run its method |

This is object collaboration.

The Course object does not need to know exactly how `displayInfo()` works inside `Student`.  
It only needs to call the method.

---

## 11. Object State and Reference Trace

### Code

```java
Student s1 = new Student("Alice", 85);
Course c1 = new Course("Computer Science", s1);
```

### State Table

| Object | Attribute | Value |
|---|---|---|
| `s1` | `name` | Alice |
| `s1` | `mark` | 85 |
| `c1` | `courseName` | Computer Science |
| `c1` | `student` | reference to `s1` |

### Important

`c1.student` does not copy all student data manually.  
It stores a reference to the Student object.

---

## 12. Example 2: Course Stores Several Students

A course usually has more than one student.

### Course.java

```java
public class Course {
    private String courseName;
    private Student[] students;
    private int studentCount;

    public Course(String courseName, int maxStudents) {
        this.courseName = courseName;
        students = new Student[maxStudents];
        studentCount = 0;
    }

    public void addStudent(Student student) {
        if (studentCount < students.length) {
            students[studentCount] = student;
            studentCount++;
        }
    }

    public void displayStudents() {
        System.out.println("Course: " + courseName);

        for (int i = 0; i < studentCount; i++) {
            students[i].displayInfo();
        }
    }
}
```

### TestCourse.java

```java
public class TestCourse {
    public static void main(String[] args) {
        Course cs = new Course("Computer Science", 3);

        Student s1 = new Student("Alice", 85);
        Student s2 = new Student("Ben", 42);
        Student s3 = new Student("Clara", 90);

        cs.addStudent(s1);
        cs.addStudent(s2);
        cs.addStudent(s3);

        cs.displayStudents();
    }
}
```

### Output

```text
Course: Computer Science
Alice scored 85
Ben scored 42
Clara scored 90
```

---

## 13. Array of Objects

This line creates an array that can store Student object references:

```java
students = new Student[maxStudents];
```

It does not create Student objects by itself.

This creates an empty array of references:

```text
[null, null, null]
```

Then this line stores a Student object reference:

```java
students[studentCount] = student;
```

### Trace

| Step | studentCount before | Action | studentCount after |
|---:|---:|---|---:|
| 1 | 0 | add Alice at index 0 | 1 |
| 2 | 1 | add Ben at index 1 | 2 |
| 3 | 2 | add Clara at index 2 | 3 |

### Array State

| Index | Student Object |
|---:|---|
| 0 | Alice |
| 1 | Ben |
| 2 | Clara |

---

## 14. Calculating Average from Objects

The `Course` class can use student methods to process student data.

### Course.java Method

```java
public double calculateAverage() {
    int total = 0;

    for (int i = 0; i < studentCount; i++) {
        total = total + students[i].getMark();
    }

    if (studentCount > 0) {
        return (double) total / studentCount;
    } else {
        return 0;
    }
}
```

### Test

```java
System.out.println(cs.calculateAverage());
```

If marks are:

```text
85, 42, 90
```

Average:

```text
72.33333333333333
```

### Key Idea

`Course` does not directly access `mark`.

It uses:

```java
students[i].getMark()
```

This respects encapsulation.

---

## 15. Searching Objects

We can search an array of objects by checking an attribute through a getter.

### Method in Course.java

```java
public Student findStudent(String targetName) {
    for (int i = 0; i < studentCount; i++) {
        if (students[i].getName().equals(targetName)) {
            return students[i];
        }
    }

    return null;
}
```

### Test

```java
Student result = cs.findStudent("Ben");

if (result != null) {
    result.displayInfo();
} else {
    System.out.println("Student not found");
}
```

### Output

```text
Ben scored 42
```

### Why Return `null`?

`null` means no Student object was found.

::: warning Beginner Note
`null` means “no object reference”. Be careful not to call methods on `null`, or a runtime error may occur.
:::

---

## 16. Composition: Object as Attribute

Composition means one object contains or is made of another object.

Example:

```text
Course has Students
BankAccount has an Owner
Order has Products
GameCharacter has a Weapon
```

### Simple Example

```java
public class Weapon {
    private String name;
    private int damage;

    public Weapon(String name, int damage) {
        this.name = name;
        this.damage = damage;
    }

    public int getDamage() {
        return damage;
    }

    public void displayInfo() {
        System.out.println(name + " damage: " + damage);
    }
}
```

```java
public class GameCharacter {
    private String name;
    private Weapon weapon;

    public GameCharacter(String name, Weapon weapon) {
        this.name = name;
        this.weapon = weapon;
    }

    public void attack() {
        System.out.println(name + " attacks for " + weapon.getDamage() + " damage");
    }
}
```

### Test

```java
Weapon sword = new Weapon("Sword", 20);
GameCharacter hero = new GameCharacter("Hero", sword);

hero.attack();
```

Output:

```text
Hero attacks for 20 damage
```

---

## 17. Responsibility of Each Class

Good multi-class design gives each class a clear responsibility.

| Class | Responsibility |
|---|---|
| `Student` | Store and manage one student's data |
| `Course` | Store and manage a group of students |
| `TestCourse` | Run the program and test the classes |
| `Weapon` | Store weapon data |
| `GameCharacter` | Store character data and perform character actions |

### Poor Design

Putting everything in one huge class makes code hard to read and maintain.

### Better Design

Split responsibilities across classes.

```text
Student handles student data.
Course handles course-level operations.
Main handles program execution.
```

---

## 18. UML Preview for Multiple Classes

A simple text-style UML view:

```text
Course
------------------------
- courseName : String
- students : Student[]
- studentCount : int
------------------------
+ Course(courseName : String, maxStudents : int)
+ addStudent(student : Student) : void
+ displayStudents() : void
+ calculateAverage() : double
+ findStudent(targetName : String) : Student
```

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
+ displayInfo() : void
```

Relationship idea:

```text
Course 1 -------- * Student
```

Meaning:

```text
one Course can contain many Student objects
```

---

## 19. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Putting all code in `main()` | Program becomes hard to maintain | Use model classes |
| Confusing class responsibility | Methods placed in wrong class | Ask “which object should know/do this?” |
| Creating an object array but no objects | Array entries are `null` | Create objects before storing them |
| Calling method on `null` | Runtime error | Check object exists first |
| Directly accessing private attributes | Breaks encapsulation | Use getters and setters |
| Forgetting file/class name match | Java compile error | Keep public class and file names same |
| Making one class do everything | Weak design | Separate responsibilities |
| Passing wrong object type | Type mismatch | Match constructor/method parameter type |
| Returning `null` then using it directly | Possible error | Check `result != null` |
| Circular confusion | Classes depend on each other unclearly | Keep relationships simple |

---

## 20. Guided Practice

### Practice 1: Identify Responsibilities

For a school system, match the responsibility.

| Class | Responsibility |
|---|---|
| `Student` |
| `Course` |
| `TestCourse` |

<details>
<summary>Suggested Answer</summary>

| Class | Responsibility |
|---|---|
| `Student` | Store and manage one student's data |
| `Course` | Store and manage a group of students |
| `TestCourse` | Create objects and run/test the program |

</details>

---

### Practice 2: Object as Attribute

What does this mean?

```java
private Student student;
```

<details>
<summary>Suggested Answer</summary>

It means the class has a private attribute called `student` that stores a reference to a Student object.

</details>

---

### Practice 3: Array of Objects

Does this create three Student objects?

```java
Student[] students = new Student[3];
```

<details>
<summary>Suggested Answer</summary>

No. It creates an array that can store three Student references. The entries are initially `null`. Student objects must be created separately using `new Student(...)`.

</details>

---

### Practice 4: Trace Student Count

Given:

```java
Course cs = new Course("CS", 3);
cs.addStudent(new Student("Alice", 85));
cs.addStudent(new Student("Ben", 42));
```

What is `studentCount` after the two calls?

<details>
<summary>Suggested Answer</summary>

```text
studentCount = 2
```

Each successful `addStudent()` call increases `studentCount` by 1.

</details>

---

### Practice 5: Encapsulation Check

Why should `Course` use `students[i].getMark()` instead of directly using `students[i].mark`?

<details>
<summary>Suggested Answer</summary>

Because `mark` should be private inside the Student class. Using `getMark()` respects encapsulation and accesses the value through a public method.

</details>

---

## 21. Independent Practice

### Question 1

Explain why large programs often use multiple classes.

### Question 2

Explain the difference between a model class and a main/test class.

### Question 3

Design two classes for a library system:

```text
Book
Library
```

List attributes and methods for each.

### Question 4

Write a `Book` class with private attributes:

```text
title
author
pages
```

### Question 5

Write a `Library` class that stores an array of `Book` objects.

### Question 6

Write an `addBook(Book book)` method.

### Question 7

Write a method to display all books in the library.

### Question 8

Explain what `null` means in an array of objects.

### Question 9

Create a simple UML text diagram for `Library` and `Book`.

### Question 10

Explain one advantage and one difficulty of using multiple classes.

---

## 22. Exam-style Questions

### Question 1 [4 marks]

Explain why a program may be split into multiple classes.

<details>
<summary>Mark Scheme Style Answer</summary>

A program may be split into multiple classes to improve organisation and maintainability. Each class can have a clear responsibility, such as representing a student or managing a course. This makes the code easier to understand, test, reuse, and modify. It also models real-world systems more naturally using related objects.

</details>

---

### Question 2 [5 marks]

Distinguish between a model class and a main/test class.

<details>
<summary>Mark Scheme Style Answer</summary>

A model class represents an entity or concept in the program and stores attributes and methods related to that entity. For example, a `Student` class can store a name and mark. A main or test class contains the `main()` method and is used to create objects and run or test the program. It usually controls execution rather than representing a real-world entity.

</details>

---

### Question 3 [6 marks]

A `Course` class stores an array of `Student` objects. Explain why `studentCount` may be needed.

<details>
<summary>Mark Scheme Style Answer</summary>

An array may have a fixed maximum size, but it may not be completely full. `studentCount` records how many Student objects have actually been added. This allows loops to process only valid entries instead of reading `null` positions. It also helps the program know the next free index when adding a new student.

</details>

---

### Question 4 [6 marks]

Explain what happens in this code.

```java
Student s1 = new Student("Alice", 85);
Course c1 = new Course("Computer Science", s1);
c1.displayCourseInfo();
```

<details>
<summary>Mark Scheme Style Answer</summary>

The first line creates a Student object with name Alice and mark 85. The second line creates a Course object with the course name Computer Science and stores a reference to the Student object. The third line calls a method on the Course object. That method can display the course name and call the Student object's method to display Alice's information.

</details>

---

### Question 5 [6 marks]

Explain why calling a method on `null` can cause a runtime error.

<details>
<summary>Mark Scheme Style Answer</summary>

`null` means that a reference variable does not refer to an actual object. If the program tries to call a method on `null`, there is no object to receive the method call. This causes a runtime error, commonly a `NullPointerException` in Java. To avoid this, the program should check that the reference is not null before calling methods.

</details>

---

## 23. Practice task
### Activity 1: Class Responsibility Sorting

Give students method cards such as:

```text
getMark()
calculateAverage()
addStudent()
displayInfo()
findStudent()
```

Students decide whether each belongs in `Student`, `Course`, or `TestCourse`.

---

### Activity 2: Object Collaboration Role-play

One student acts as a Course object. Other students act as Student objects.

The Course student asks each Student:

```text
What is your mark?
Please display your information.
```

This models method calls between objects.

---

### Activity 3: Build a Mini System

Groups design a two-class system:

```text
Library + Book
Team + Player
Playlist + Song
Classroom + Student
```

They must show:

```text
attributes
methods
object relationship
one test scenario
```

---

## 24. Independent practice
### Independent practice part A: Concept Explanation

In 5-6 sentences, explain how objects from different classes can work together.

---

### Independent practice part B: Java Code

Create a `Book` class and a `Library` class.

`Library` should:

```text
store an array of Book objects
add a book
display all books
count how many books have more than 300 pages
```

---

### Independent practice part C: UML

Draw text-based UML for:

```text
Book
Library
```

Show attributes, constructors, and methods.

---

### Independent practice part D: Trace

Given:

```java
Library lib = new Library("School Library", 3);
lib.addBook(new Book("Dune", "Frank Herbert", 412));
lib.addBook(new Book("Animal Farm", "George Orwell", 112));
```

Trace:

```text
bookCount
array contents
```

---

## 25. One-page Revision Summary

| Point | Summary |
|---|---|
| Multiple classes | A program uses more than one class |
| Model class | Represents an entity, such as Student |
| Main/test class | Contains `main()` and runs the program |
| Object collaboration | Objects work together through method calls |
| Object as attribute | One object can store a reference to another |
| Array of objects | Array stores object references |
| Composition | One object contains or is made of other objects |
| Responsibility | The job of a class |
| Good design | Each class has a clear responsibility |
| `null` | No object reference |
| Encapsulation | Use public methods, not direct private attribute access |
| Exam phrase | Multiple classes improve organisation by separating responsibilities between related objects |

---

## 26. Quick Self-test

Before finishing this topic, students should be able to answer these:

1. Why use multiple classes?
2. What is a model class?
3. What is a main/test class?
4. What does object collaboration mean?
5. What does `private Student student;` mean?
6. Does `new Student[5]` create five Student objects?
7. Why is `studentCount` useful?
8. What does `null` mean?
9. Why should objects use getters instead of direct private access?
10. What is one advantage of separating class responsibilities?

