# Attributes and Methods

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **attribute**
- define **method**
- distinguish object data from object behaviour
- identify suitable attributes and methods for a class
- write Java classes with attributes and methods
- explain how methods use or change attribute values

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Class structure |
| Connected units | Classes and Objects, Encapsulation, Accessors and Mutators |
| Exam relevance | Identify attributes/methods, UML diagrams, OOP explanation |

::: tip Learning Focus
Attributes describe what an object **has**. Methods describe what an object **does**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Attribute | 属性 | Data stored in an object |
| Method | 方法 | A procedure or function belonging to a class |
| Behaviour | 行为 | An action an object can perform |
| State | 状态 | The current attribute values of an object |
| Parameter | 参数 | A value passed into a method |
| Return value | 返回值 | A value sent back by a method |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在 OOP 中，class 通常包含两类内容：

1. **Attributes（属性）**：对象保存的数据
2. **Methods（方法）**：对象可以执行的行为

例如，一个 `BankAccount` 对象可能有：

| Attributes | Methods |
|---|---|
| accountNumber | deposit money |
| holderName | withdraw money |
| balance | display balance |

属性表示对象当前的状态。方法可以读取这些属性，也可以改变这些属性。

</template>

<template #en>

### English Explanation

In OOP, a class usually contains two main parts:

1. **Attributes**: data stored by the object
2. **Methods**: behaviours or actions the object can perform

For example, a `BankAccount` object may have:

| Attributes | Methods |
|---|---|
| accountNumber | deposit money |
| holderName | withdraw money |
| balance | display balance |

Attributes represent the current state of an object. Methods can read or change those attributes.

</template>
</LangBlock>

---

## 5. Real-life Example

### Rectangle Class

| Type | Examples |
|---|---|
| Attributes | width, height |
| Methods | calculateArea(), calculatePerimeter() |

The attributes store dimensions. The methods use those dimensions to calculate results.

---

## 6. IB Pseudocode Pattern

```text
CLASS Rectangle
    width
    height

    METHOD calculateArea()
        RETURN width * height
    END METHOD
END CLASS
```

---

## 7. Java Code Example

```java
public class Rectangle {
    double width;
    double height;

    public double calculateArea() {
        return width * height;
    }

    public double calculatePerimeter() {
        return 2 * (width + height);
    }
}
```

```java
public class RectangleTest {
    public static void main(String[] args) {
        Rectangle r1 = new Rectangle();

        r1.width = 5.0;
        r1.height = 3.0;

        System.out.println("Area: " + r1.calculateArea());
        System.out.println("Perimeter: " + r1.calculatePerimeter());
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `double width;` | Attribute storing width |
| `double height;` | Attribute storing height |
| `calculateArea()` | Method returning area |
| `return width * height;` | Uses attributes to calculate area |
| `calculatePerimeter()` | Method returning perimeter |
| `r1.width = 5.0;` | Sets attribute value for object `r1` |

---

## 9. Step-by-step Execution

Given:

| Attribute | Value |
|---|---:|
| width | 5.0 |
| height | 3.0 |

| Method call | Calculation | Return value |
|---|---|---:|
| `calculateArea()` | 5.0 × 3.0 | 15.0 |
| `calculatePerimeter()` | 2 × (5.0 + 3.0) | 16.0 |

Output:

```text
Area: 15.0
Perimeter: 16.0
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Calling an attribute a method | Data and behaviour are different | Attributes store values; methods perform actions |
| Creating unrelated methods | Class responsibility becomes unclear | Keep methods relevant to the class |
| Forgetting return type | Java method may not compile | Use suitable return type |
| Forgetting parentheses for methods | Method call is invalid | Use `methodName()` |
| Making every variable local | Object cannot store state | Use attributes for object state |

---

## 11. Guided Practice

### Practice 1

For a class `Player`, identify attributes and methods.

<details>
<summary>Suggested Answer</summary>

| Attributes | Methods |
|---|---|
| name | move() |
| score | jump() |
| health | takeDamage() |

</details>

### Practice 2

What is the output?

```java
Rectangle r = new Rectangle();
r.width = 4;
r.height = 2;
System.out.println(r.calculateArea());
```

<details>
<summary>Suggested Answer</summary>

```text
8.0
```

</details>

---

## 12. Independent Practice

1. Design a `Car` class with three attributes and three methods.
2. Design a `Student` class with attributes and methods.
3. Write one Java method that uses two attributes.
4. Explain the difference between state and behaviour.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by an attribute.

<details>
<summary>Mark Scheme Style Answer</summary>

An attribute is data stored in an object, representing part of its state.

</details>

### Question 2 [2 marks]

State what is meant by a method.

<details>
<summary>Mark Scheme Style Answer</summary>

A method is a procedure or function that belongs to a class and defines behaviour an object can perform.

</details>

### Question 3 [4 marks]

Identify two attributes and two methods for a `Car` class.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible attributes: registrationNumber, speed, fuelLevel, colour.  
Possible methods: accelerate(), brake(), refuel(), displayDetails().

</details>

---

## 14. Classroom Activity

Students choose a real-world object and build a two-column table: **What it has** and **What it does**. Then they convert these into attributes and methods.

---

## 15. Homework

Create a Java class for `Book`, `Player`, or `BankAccount`. Include at least three attributes and two methods.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Attribute | Data stored in object |
| Method | Behaviour of object |
| State | Current attribute values |
| Return value | Value returned by method |
| Exam phrase | "Methods can use or change the values stored in attributes." |
