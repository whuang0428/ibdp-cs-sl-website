# Attributes and Methods

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what an **attribute** is
- explain what a **method** is
- distinguish object state and object behaviour
- identify attributes and methods in a Java class
- explain the difference between attributes, local variables, and parameters
- write simple methods that use object attributes
- distinguish `void` methods and methods with return values
- call object methods using dot notation
- trace how method calls change object state
- answer exam-style questions about attributes and methods

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core, with Java support |
| Main skill | Understanding object data and object behaviour |
| Connected topics | Classes, objects, constructors, encapsulation, accessors/mutators, UML |
| Programming language focus | Java |
| Exam relevance | OOP vocabulary, method tracing, object state, code interpretation |

::: tip Learning Focus
A class usually contains **attributes** and **methods**. Attributes describe what an object knows or stores. Methods describe what an object can do.
:::

---

## Start here: attributes store data, methods do actions

An attribute stores data about an object.

A method is an action or behaviour that an object can perform.

Parameters give extra information to a method. A return value is data sent back from a method.

Learn how method calls can read or change an object's state. This means tracking the current values stored in the object's attributes before and after each method call.

---

## Attribute vs method

| Idea | Simple meaning | Example |
|---|---|---|
| Attribute | data stored inside an object | `name`, `score`, `balance` |
| Method | action an object can perform | `setScore()`, `getBalance()`, `printDetails()` |
| Parameter | value passed into a method | `newScore` in `setScore(newScore)` |
| Return value | value sent back by a method | `getScore()` returns the score |
| State change | change to an object's stored data | `score` changes from 70 to 85 |

---

## Method-call workflow

Use this route when reading a method call:

| Step | What to do | Why it matters |
|---:|---|---|
| 1 | Identify the object. | The object owns the attributes being used. |
| 2 | Identify the method being called. | The method tells you what action runs. |
| 3 | Check whether the method has parameters. | Parameters provide extra input values. |
| 4 | Follow the statements inside the method. | Read the code in order. |
| 5 | Decide whether an attribute is read or updated. | This tells you whether object state changes. |
| 6 | Check whether the method returns a value. | Returned values may be stored, printed, or used in a condition. |
| 7 | Update the object's state if needed. | Keep the current attribute values accurate. |

---

## Core checklist

By the end of this page, you should be able to:

- explain what an attribute is
- explain what a method is
- distinguish attributes from methods
- identify parameters in a method call
- explain what a return value is
- trace how a method changes an object's state
- read simple dot notation
- explain why methods help control access to object data

---

## Code-reading pattern

When reading attributes and methods code, use this order:

1. Find the class name.
2. List the attributes.
3. List the methods.
4. Find where an object is created.
5. Track the current values of the object's attributes.
6. Read method calls in order.
7. Check parameter values passed into each method.
8. Update object state after each method call.
9. Record any returned value if the method returns data.

---

## Common mistakes

- confusing an attribute with a method
- thinking every method must return a value
- forgetting that some methods only update object state
- ignoring parameters passed into a method
- reading method calls in the wrong order
- forgetting that one object's state can change while another object's state does not
- using vague wording like "the method does something" without explaining the action
- confusing the class definition with one object's actual values

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Attribute | 属性 | A variable that belongs to an object and stores object data |
| Field | 字段 | Another name for an attribute in Java |
| Method | 方法 | A block of code that defines behaviour of a class/object |
| State | 状态 | The current values of an object's attributes |
| Behaviour | 行为 | What an object can do through its methods |
| Method call | 方法调用 | Asking an object to run one of its methods |
| Dot notation | 点符号 | Syntax such as `s1.displayInfo()` used to call a method |
| Parameter | 参数 | A value passed into a method |
| Argument | 实参 | The actual value supplied when calling a method |
| Return value | 返回值 | A value sent back by a method |
| `void` | 无返回值 | A method return type meaning no value is returned |
| Local variable | 局部变量 | A variable declared inside a method |
| Scope | 作用域 | The part of the program where a variable can be used |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在 OOP 中，一个 object 通常有两部分：

```text
attributes + methods
```

**Attributes（属性）** 用来存储对象的数据，也就是对象的 **state（状态）**。

例如，一个 `Student` object 可以有：

```text
name
mark
```

如果一个学生是 Alice，成绩是 85，那么这个对象的状态就是：

```text
name = "Alice"
mark = 85
```

**Methods（方法）** 表示对象可以做什么，也就是对象的 **behaviour（行为）**。

例如：

```text
displayInfo()
hasPassed()
increaseMark()
```

简单理解：

```text
attributes = object has
methods = object does
```

学习 attributes 和 methods 时，最重要的是看懂：

1. 哪些变量属于 object
2. 哪些 method 使用了这些 attributes
3. method 是否改变了 object 的状态
4. method 是否返回了一个值
5. 调用 method 后 object 发生了什么变化

</template>

<template #en>

### English Explanation

In OOP, an object usually has two main parts:

```text
attributes + methods
```

**Attributes** store data about an object. They describe the object's **state**.

For example, a `Student` object can have:

```text
name
mark
```

If a student is Alice and her mark is 85, the object's state is:

```text
name = "Alice"
mark = 85
```

**Methods** describe what an object can do. They describe the object's **behaviour**.

For example:

```text
displayInfo()
hasPassed()
increaseMark()
```

A simple way to remember:

```text
attributes = object has
methods = object does
```

When learning attributes and methods, students should understand:

1. which variables belong to the object
2. which methods use these attributes
3. whether a method changes the object state
4. whether a method returns a value
5. what happens after a method is called

</template>
</LangBlock>

---

## 5. Real-life Example: Student Object

Attribute example and method example: this table separates what the object stores from what it can do.

A student object may store data:

```text
name = "Alice"
mark = 85
```

and perform actions:

```text
display information
check whether passed
increase mark
```

| OOP Part | Student Example |
|---|---|
| Class | `Student` |
| Object | one student, such as Alice |
| Attribute | `name`, `mark` |
| Method | `displayInfo()`, `hasPassed()`, `increaseMark()` |
| State | current values of `name` and `mark` |
| Behaviour | what the object can do |

::: info Scenario Link
Attributes and methods keep related data and behaviour together inside the same class.
:::

---

## 6. Attributes

## 6.1 What is an Attribute?

Attribute example: `name` and `mark` are stored data for each `Student` object.

An attribute is a variable that belongs to an object.

Example:

```java
public class Student {
    String name;
    int mark;
}
```

| Attribute | Data Type | Meaning |
|---|---|---|
| `name` | `String` | stores student name |
| `mark` | `int` | stores student mark |

Each Student object has its own copy of these attributes.

---

## 6.2 Object State

State change example: two objects can have different current values even when they come from the same class.

If we create two objects:

```java
Student s1 = new Student();
Student s2 = new Student();

s1.name = "Alice";
s1.mark = 85;

s2.name = "Ben";
s2.mark = 42;
```

Object state table:

| Object | name | mark |
|---|---|---:|
| s1 | Alice | 85 |
| s2 | Ben | 42 |

Although both objects are created from the same class, their attribute values are different.

---

## 7. Methods

## 7.1 What is a Method?

Method example: `displayInfo()` uses object attributes to perform an action.

A method is a block of code that performs an action or returns a value.

Example:

```java
public void displayInfo() {
    System.out.println(name + " scored " + mark);
}
```

This method uses the object's attributes `name` and `mark`.

---

## 7.2 Method Call

Code-reading example: dot notation shows which object is asked to run which method.

To run a method, call it using dot notation:

```java
s1.displayInfo();
```

This means:

```text
Ask object s1 to run its displayInfo method.
```

If `s1.name = "Alice"` and `s1.mark = 85`, output is:

```text
Alice scored 85
```

---

## 8. Complete Basic Class Example

Code-reading example: read the attributes first, then follow the method calls in `main`.

### Student.java

```java
public class Student {
    String name;
    int mark;

    public void displayInfo() {
        System.out.println(name + " scored " + mark);
    }

    public boolean hasPassed() {
        return mark >= 50;
    }

    public void increaseMark(int amount) {
        mark = mark + amount;
    }
}
```

### TestStudent.java

```java
public class TestStudent {
    public static void main(String[] args) {
        Student s1 = new Student();

        s1.name = "Alice";
        s1.mark = 85;

        s1.displayInfo();

        boolean result = s1.hasPassed();
        System.out.println(result);

        s1.increaseMark(5);
        s1.displayInfo();
    }
}
```

### Output

```text
Alice scored 85
true
Alice scored 90
```

---

## 9. Code Explanation

| Code | Explanation |
|---|---|
| `String name;` | Attribute storing student name |
| `int mark;` | Attribute storing student mark |
| `displayInfo()` | Method that outputs student information |
| `hasPassed()` | Method that returns true if mark is at least 50 |
| `increaseMark(int amount)` | Method that changes the object's mark |
| `s1.displayInfo()` | Calls method on object `s1` |
| `s1.hasPassed()` | Calls method and stores returned Boolean |
| `s1.increaseMark(5)` | Passes 5 as an argument to the method |

---

## 10. Object State Trace

State change example: this trace shows how repeated method calls update `s1.mark`.

### Code

```java
Student s1 = new Student();

s1.name = "Alice";
s1.mark = 85;

s1.increaseMark(5);
s1.increaseMark(10);
```

### Trace Table

| Step | Code | s1.name | s1.mark |
|---:|---|---|---:|
| 1 | `new Student()` | null | 0 |
| 2 | `s1.name = "Alice"` | Alice | 0 |
| 3 | `s1.mark = 85` | Alice | 85 |
| 4 | `s1.increaseMark(5)` | Alice | 90 |
| 5 | `s1.increaseMark(10)` | Alice | 100 |

::: warning Java Default Values
For object attributes, Java may give default values such as `0` for `int` and `null` for `String`. However, it is better to initialize attributes clearly using constructors.
:::

---

## 11. `void` Methods

Common exam trap: a `void` method can do an action, but it does not send a value back.

A `void` method performs an action but does not return a value.

Example:

```java
public void displayInfo() {
    System.out.println(name + " scored " + mark);
}
```

This method outputs information, but does not send a value back.

### Method Call

```java
s1.displayInfo();
```

You should not write:

```java
int result = s1.displayInfo(); // wrong
```

because `displayInfo()` does not return an integer.

---

## 12. Methods with Return Values

Return value example: `hasPassed()` sends a Boolean value back to the calling code.

A method can return a value.

Example:

```java
public boolean hasPassed() {
    return mark >= 50;
}
```

This method returns a Boolean value.

### Method Call

```java
boolean passed = s1.hasPassed();
```

or:

```java
if (s1.hasPassed()) {
    System.out.println("Pass");
}
```

### Trace Example

If:

```text
s1.mark = 85
```

then:

```java
s1.hasPassed()
```

returns:

```text
true
```

---

## 13. Parameters and Arguments

Parameter example: `amount` receives the argument value used by `increaseMark`.

A **parameter** is a variable listed in a method definition.

```java
public void increaseMark(int amount) {
    mark = mark + amount;
}
```

Here, `amount` is a parameter.

An **argument** is the actual value supplied when calling the method.

```java
s1.increaseMark(5);
```

Here, `5` is the argument.

| Term | Example |
|---|---|
| Parameter | `int amount` |
| Argument | `5` |

---

## 14. Method with Parameter Trace

State change example: the parameter value is used to update the object's `mark` attribute.

### Code

```java
Student s1 = new Student();

s1.name = "Alice";
s1.mark = 70;

s1.increaseMark(10);
```

### Method Definition

```java
public void increaseMark(int amount) {
    mark = mark + amount;
}
```

### Trace

| Step | amount | s1.mark before | s1.mark after |
|---|---:|---:|---:|
| Method call `increaseMark(10)` | 10 | 70 | 80 |

The argument `10` is copied into the parameter `amount`.

---

## 15. Attributes vs Local Variables vs Parameters

This is a very common confusion.

| Type | Where Declared | Where It Can Be Used | Example |
|---|---|---|---|
| Attribute | Inside class, outside methods | Methods in the class | `int mark;` |
| Local variable | Inside a method | Only inside that method | `boolean passed = ...;` |
| Parameter | In method header | Only inside that method | `int amount` |

### Example

```java
public class Student {
    String name;     // attribute
    int mark;        // attribute

    public void increaseMark(int amount) { // parameter
        int oldMark = mark;                // local variable
        mark = mark + amount;
        System.out.println("Old mark: " + oldMark);
    }
}
```

| Variable | Type |
|---|---|
| `name` | Attribute |
| `mark` | Attribute |
| `amount` | Parameter |
| `oldMark` | Local variable |

---

## 16. Method that Uses Selection

Methods can use selection.

```java
public String getResult() {
    if (mark >= 50) {
        return "Pass";
    } else {
        return "Fail";
    }
}
```

### Method Call

```java
System.out.println(s1.getResult());
```

If `s1.mark = 85`, output is:

```text
Pass
```

If `s1.mark = 42`, output is:

```text
Fail
```

---

## 17. Method that Changes Object State

State change example: this method directly changes the stored value of `mark`.

Some methods change attribute values.

```java
public void setMarkToZero() {
    mark = 0;
}
```

Before:

| Object | mark |
|---|---:|
| s1 | 85 |

After:

```java
s1.setMarkToZero();
```

| Object | mark |
|---|---:|
| s1 | 0 |

::: tip Important Distinction
Some methods only return or output information. Other methods change the object's state.
:::

---

## 18. Method that Does Not Change Object State

Return value example: this method reads `mark` and returns a result without changing the object.

```java
public boolean hasPassed() {
    return mark >= 50;
}
```

This method checks the mark and returns a result. It does not change `mark`.

Before call:

| Object | mark |
|---|---:|
| s1 | 85 |

After call:

| Object | mark |
|---|---:|
| s1 | 85 |

The state stays the same.

---

## 19. Improved Student Class with Clear Methods

```java
public class Student {
    String name;
    int mark;

    public void displayInfo() {
        System.out.println(name + " scored " + mark);
    }

    public boolean hasPassed() {
        return mark >= 50;
    }

    public String getResult() {
        if (mark >= 50) {
            return "Pass";
        } else {
            return "Fail";
        }
    }

    public void increaseMark(int amount) {
        mark = mark + amount;
    }
}
```

### Method Summary

| Method | Return Type | Has Parameter? | Changes State? | Purpose |
|---|---|---|---|---|
| `displayInfo()` | `void` | No | No | Outputs object data |
| `hasPassed()` | `boolean` | No | No | Returns true/false |
| `getResult()` | `String` | No | No | Returns Pass/Fail |
| `increaseMark(int amount)` | `void` | Yes | Yes | Updates mark |

---

## 20. Detailed common mistakes table

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Confusing attributes and local variables | Local variables disappear after method ends | Attributes store object state |
| Forgetting method parentheses | Java needs `()` for method calls | Write `s1.displayInfo()` |
| Assigning result from a `void` method | `void` returns nothing | Only store returned values from non-void methods |
| Forgetting `return` in non-void method | Java expects a value | Return correct data type |
| Returning wrong type | Type mismatch | Match return type and returned value |
| Thinking all methods change state | Some only return information | Check whether attributes are assigned |
| Using parameter but not attribute | Object state may not change | Trace attribute values |
| Naming method like a variable | Code less readable | Use verb-style method names |
| Calling method on class instead of object | Instance methods need object | Use `s1.methodName()` |
| Making everything public | Weak design | Later use private attributes and getters/setters |

---

## 21. Guided Practice

### Practice 1: Attribute or Method?

For a `BankAccount` class, classify each item.

```text
balance
accountNumber
deposit()
withdraw()
displayBalance()
```

<details>
<summary>Suggested Answer</summary>

| Item | Type |
|---|---|
| `balance` | Attribute |
| `accountNumber` | Attribute |
| `deposit()` | Method |
| `withdraw()` | Method |
| `displayBalance()` | Method |

</details>

---

### Practice 2: Void or Return?

Classify each method as likely `void` or returning a value.

| Method | Likely Type |
|---|---|
| `displayInfo()` |
| `hasPassed()` |
| `getMark()` |
| `increaseMark(int amount)` |

<details>
<summary>Suggested Answer</summary>

| Method | Likely Type |
|---|---|
| `displayInfo()` | `void` |
| `hasPassed()` | returns `boolean` |
| `getMark()` | returns `int` |
| `increaseMark(int amount)` | usually `void` |

</details>

---

### Practice 3: Trace Object State

Given:

```java
Student s1 = new Student();
s1.name = "Ben";
s1.mark = 40;

s1.increaseMark(15);
```

What is the final state?

<details>
<summary>Suggested Answer</summary>

| Object | name | mark |
|---|---|---:|
| s1 | Ben | 55 |

</details>

---

### Practice 4: Return Value

If:

```java
s1.mark = 45;
```

What does this return?

```java
s1.hasPassed()
```

<details>
<summary>Suggested Answer</summary>

It returns:

```text
false
```

because `45 >= 50` is false.

</details>

---

### Practice 5: Find the Mistake

```java
int result = s1.displayInfo();
```

Assume `displayInfo()` is declared as:

```java
public void displayInfo()
```

What is wrong?

<details>
<summary>Suggested Answer</summary>

`displayInfo()` is a `void` method, so it does not return a value. Its result cannot be stored in an `int`.

Correct method call:

```java
s1.displayInfo();
```

</details>

---

## 22. Independent Practice

### Question 1

Explain the difference between an attribute and a method.

### Question 2

For a `GameCharacter` class, suggest four attributes and four methods.

### Question 3

Write a `Book` class with attributes:

```text
title
author
pages
```

and a method:

```text
displayInfo()
```

### Question 4

Add a method to your `Book` class called `isLongBook()` that returns true if pages are more than 300.

### Question 5

Create two Book objects and trace their states.

### Question 6

Explain the difference between a parameter and an argument.

### Question 7

Explain the difference between an attribute and a local variable.

### Question 8

Write a method called `increaseScore(int amount)` for a `Player` class.

### Question 9

Identify whether each method changes object state:

```text
displayInfo()
getResult()
increaseMark()
setMarkToZero()
```

### Question 10

Correct this method:

```java
public int hasPassed() {
    return mark >= 50;
}
```

---

## 23. Exam-style Questions

### Question 1 [4 marks]

Distinguish between an attribute and a method.

<details>
<summary>Mark Scheme Style Answer</summary>

An attribute is data stored inside an object and describes the object's state, such as a student's name or mark. A method is a block of code that defines behaviour or actions that the object can perform, such as displaying information or checking whether the student has passed.

</details>

---

### Question 2 [4 marks]

State two possible attributes and two possible methods for a `Car` class.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible attributes:

```text
colour
speed
fuelLevel
registrationNumber
```

Possible methods:

```text
accelerate()
brake()
displayInfo()
refuel()
```

Attributes store data about the car, while methods describe actions the car can perform.

</details>

---

### Question 3 [5 marks]

Explain the difference between a `void` method and a method with a return value.

<details>
<summary>Mark Scheme Style Answer</summary>

A `void` method performs an action but does not return a value to the calling code. For example, a method may display information. A method with a return value sends a value back, such as a Boolean or integer. The return type in the method header must match the value returned by the method.

</details>

---

### Question 4 [6 marks]

Trace the final object state.

```java
Student s1 = new Student();
s1.name = "Alice";
s1.mark = 70;

s1.increaseMark(5);
s1.increaseMark(10);
```

Assume `increaseMark(int amount)` adds `amount` to `mark`.

<details>
<summary>Mark Scheme Style Answer</summary>

| Step | s1.name | s1.mark |
|---|---|---:|
| After name assignment | Alice | 0 |
| After mark assignment | Alice | 70 |
| After `increaseMark(5)` | Alice | 75 |
| After `increaseMark(10)` | Alice | 85 |

Final state:

```text
name = "Alice"
mark = 85
```

</details>

---

### Question 5 [6 marks]

Explain why attributes are useful in object-oriented programming.

<details>
<summary>Mark Scheme Style Answer</summary>

Attributes are useful because they store the data or state of an object. Each object created from the same class can have its own attribute values. This allows one class to represent many different objects, such as different students with different names and marks. Methods can use or update these attributes to perform object behaviour.

</details>

---

## 24. Independent practice
### Independent practice part A: Concept Explanation

In 5-6 sentences, explain the difference between attributes and methods using one example class.

---

### Independent practice part B: Design Task

Design a `Laptop` class.

Include:

```text
at least 4 attributes
at least 4 methods
identify which methods return values and which are void
```

---

### Independent practice part C: Java Code

Write a `Player` class with:

```text
name
score
displayInfo()
increaseScore(int amount)
hasWon()
```

`hasWon()` should return true if score is at least 100.

---

### Independent practice part D: Trace

Given:

```java
Player p1 = new Player();
p1.name = "Hero";
p1.score = 80;
p1.increaseScore(15);
p1.increaseScore(10);
```

Create the final object state table and state the result of:

```java
p1.hasWon()
```

---

## 25. One-page Revision Summary

| Point | Summary |
|---|---|
| Attribute | Data stored inside an object |
| Method | Behaviour/action defined in a class |
| State | Current values of attributes |
| Behaviour | What methods allow an object to do |
| Method call | Running a method using dot notation |
| Dot notation | `objectName.methodName()` |
| `void` method | Performs action but returns no value |
| Return method | Sends a value back to calling code |
| Parameter | Variable in method header |
| Argument | Actual value passed to method |
| Local variable | Variable declared inside a method |
| Attribute vs local variable | Attribute belongs to object; local variable only exists in method |
| Exam phrase | Attributes define object state, while methods define object behaviour |

---

## 26. Quick Self-test

Before moving on, students should be able to answer these:

1. What is an attribute?
2. What is a method?
3. What is object state?
4. What is object behaviour?
5. What is a method call?
6. What is dot notation?
7. What is a `void` method?
8. What is a return value?
9. What is the difference between parameter and argument?
10. How can a method change object state?

