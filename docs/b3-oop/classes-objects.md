# Classes and Objects

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define a **class**
- define an **object**
- explain the difference between a class and an object
- identify real-world examples of classes and objects
- write a simple Java class and create objects from it
- explain how objects store their own data values

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Understanding the foundation of OOP |
| Connected units | B2 Variables, B2 Methods, B3 Attributes and Methods |
| Exam relevance | Definition questions, scenario questions, class/object identification |

::: tip Learning Focus
A class is a blueprint. An object is a real instance created from that blueprint.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Class | 类 | A template or blueprint used to create objects |
| Object | 对象 | An instance of a class |
| Instance | 实例 | A specific object created from a class |
| Attribute | 属性 | Data stored inside an object |
| Method | 方法 | Behaviour or action that an object can perform |
| Instantiation | 实例化 | Creating an object from a class |
| Reference variable | 引用变量 | A variable that refers to an object |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Class（类）** 可以理解为一个“蓝图”或“模板”。它描述某一类对象应该有什么数据，以及可以做什么事情。

**Object（对象）** 是根据这个 class 创建出来的具体实例。

例如：

| Class | Object Examples |
|---|---|
| Student | Alice, Ben, Clara |
| Car | car1, car2 |
| BankAccount | account1, account2 |

如果 `Student` 是一个类，那么每个学生对象都可以有自己的 name、ID、grade 等属性。

重点是：

- class 定义结构
- object 是实际创建出来的东西
- 同一个 class 可以创建很多 object
- 每个 object 可以保存自己的 attribute values

</template>

<template #en>

### English Explanation

A **class** is like a blueprint or template. It describes what data an object should store and what actions it can perform.

An **object** is a specific instance created from a class.

For example:

| Class | Object Examples |
|---|---|
| Student | Alice, Ben, Clara |
| Car | car1, car2 |
| BankAccount | account1, account2 |

If `Student` is a class, each student object can store its own name, ID, and grade.

Key ideas:

- a class defines the structure
- an object is an actual instance
- one class can create many objects
- each object can store its own attribute values

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Student Class

A school system stores student data.

Possible class:

| Class | Attributes |
|---|---|
| Student | name, studentID, grade |

Possible objects:

| Object | name | studentID | grade |
|---|---|---:|---:|
| student1 | Alice | 1001 | 11 |
| student2 | Ben | 1002 | 12 |

::: info Key idea
Both `student1` and `student2` are created from the same class, but they store different data values.
:::

---

## 6. IB Pseudocode Pattern

```text
CLASS Student
    name
    studentID
    grade
END CLASS

student1 = NEW Student
student1.name = "Alice"
student1.studentID = 1001
student1.grade = 11
```

---

## 7. Java Code Example

```java
public class Student {
    String name;
    int studentID;
    int grade;

    public void displayDetails() {
        System.out.println("Name: " + name);
        System.out.println("ID: " + studentID);
        System.out.println("Grade: " + grade);
    }
}
```

```java
public class StudentTest {
    public static void main(String[] args) {
        Student student1 = new Student();

        student1.name = "Alice";
        student1.studentID = 1001;
        student1.grade = 11;

        student1.displayDetails();
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `public class Student` | Defines a class called `Student` |
| `String name;` | Attribute storing student name |
| `int studentID;` | Attribute storing student ID |
| `int grade;` | Attribute storing grade level |
| `displayDetails()` | Method that outputs the object's data |
| `Student student1 = new Student();` | Creates a new Student object |
| `student1.name = "Alice";` | Sets the name attribute of `student1` |
| `student1.displayDetails();` | Calls the method on the object |

---

## 9. Step-by-step Execution

| Step | Action | Result |
|---|---|---|
| 1 | Define `Student` class | Blueprint exists |
| 2 | Create `student1` | New object created |
| 3 | Assign name | name = Alice |
| 4 | Assign ID | studentID = 1001 |
| 5 | Assign grade | grade = 11 |
| 6 | Call `displayDetails()` | Object data is output |

Output:

```text
Name: Alice
ID: 1001
Grade: 11
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying class and object are the same | They have different roles | Class = blueprint, object = instance |
| Forgetting `new` in Java | Object is not created | Use `new ClassName()` |
| Thinking all objects share the same values | Each object has its own attribute values | Trace each object separately |
| Confusing class name and object name | Code becomes unclear | Use class names for types and object names for variables |
| Putting all code in `main` | Not using OOP design | Define classes with attributes and methods |

---

## 11. Guided Practice

### Practice 1

For a class called `Book`, suggest three attributes.

<details>
<summary>Suggested Answer</summary>

Possible attributes:

- title
- author
- ISBN
- available

</details>

### Practice 2

Create two object examples from the class `Car`.

<details>
<summary>Suggested Answer</summary>

| Object | possible values |
|---|---|
| car1 | Toyota, red, 2020 |
| car2 | Honda, blue, 2022 |

</details>

---

## 12. Independent Practice

1. Choose a class called `Player`. List four possible attributes.
2. Create two possible object examples from `Player`.
3. Write a simple Java class with these attributes.
4. Explain why a class can be used to create many objects.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by a class.

<details>
<summary>Mark Scheme Style Answer</summary>

A class is a template or blueprint that defines the attributes and methods of objects created from it.

</details>

### Question 2 [2 marks]

State what is meant by an object.

<details>
<summary>Mark Scheme Style Answer</summary>

An object is an instance of a class, with its own values for the attributes defined by the class.

</details>

### Question 3 [4 marks]

A program stores information about library books. Explain how classes and objects could be used.

<details>
<summary>Mark Scheme Style Answer</summary>

A `Book` class could be used as a template with attributes such as title, author, ISBN, and availability. Each physical book can be represented as a separate object created from the class. Each object stores its own values, allowing many books to be managed using the same structure.

</details>

---

## 14. Classroom Activity

### Activity: Class or Object?

Students receive cards such as `Student`, `Alice`, `Car`, `Toyota Camry`, `BankAccount`, `account1001`. They sort each card into **Class** or **Object**, then justify their decisions.

::: tip Exit Ticket
Write one sentence explaining the difference between a class and an object.
:::

---

## 15. Homework

Choose one real-world system such as library, game, shop, or school. Identify three classes and two possible objects for each class.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Class | Blueprint/template |
| Object | Instance created from class |
| Attribute | Data stored in object |
| Method | Action performed by object |
| Exam phrase | "Each object is created from the same class but stores its own attribute values." |
