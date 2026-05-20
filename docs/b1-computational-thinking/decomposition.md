# Decomposition

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **decomposition**
- explain why decomposition is useful in computational thinking
- break a large problem into smaller sub-problems
- identify inputs, processes, and outputs for each sub-problem
- apply decomposition to simple programming problems
- write an exam-style explanation using clear CS vocabulary

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Breaking down problems |
| Connected units | B2 Programming, B3 OOP, A3 Databases, IA project |
| Exam relevance | Short-answer explanation questions, algorithm design, scenario-based questions |

::: tip Learning Focus
Decomposition is not just a definition. Students must be able to **use it** when analysing a scenario, designing an algorithm, or planning a program.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Decomposition | 问题分解 | Breaking a complex problem into smaller, manageable sub-problems |
| Sub-problem | 子问题 | A smaller part of a larger problem |
| Module | 模块 | A separate part of a solution with a specific responsibility |
| Input | 输入 | Data needed by a process |
| Process | 处理 | Operations performed on data |
| Output | 输出 | Result produced by a process |
| Computational thinking | 计算思维 | A way of solving problems using CS-style methods |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Decomposition（问题分解）** 指的是把一个复杂的大问题拆成几个更小、更容易处理的子问题。

在计算机科学中，我们通常不会一开始就直接写完整程序。因为如果问题太大，学生很容易不知道从哪里开始，也很容易把代码写得很乱。更好的方法是先问：

- 这个系统要完成哪些主要任务？
- 每个任务需要什么输入？
- 每个任务要做什么处理？
- 每个任务会产生什么输出？
- 哪些任务可以分开设计、编写和测试？

例如，一个“学生成绩管理系统”听起来很大，但可以拆成：

1. 输入学生信息  
2. 输入成绩  
3. 计算总分  
4. 计算平均分  
5. 判断等级  
6. 输出成绩报告  

拆分后，每一个小任务都更容易理解，也更容易写成一个函数、方法或模块。

Decomposition 的核心价值是：

- 降低问题难度
- 让程序结构更清晰
- 方便多人合作
- 方便测试和调试
- 方便后期维护和修改

</template>

<template #en>

### English Explanation

**Decomposition** means breaking a complex problem into smaller, more manageable sub-problems.

In computer science, programmers usually should not start by writing the whole program immediately. If the problem is too large, the solution can become confusing and difficult to test.

A better approach is to ask:

- What are the main tasks of the system?
- What input does each task need?
- What processing does each task perform?
- What output does each task produce?
- Which tasks can be designed, coded, and tested separately?

For example, a student grade management system can be decomposed into:

1. input student information  
2. input marks  
3. calculate total mark  
4. calculate average mark  
5. decide grade  
6. output grade report  

After decomposition, each smaller task is easier to understand and can later become a function, method, or module.

The main benefits of decomposition are:

- reducing complexity
- improving program structure
- supporting teamwork
- making testing and debugging easier
- making maintenance easier

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: School Library System

A school wants to create a simple library system.

At first, this sounds like one large problem:

> Create a library system.

This is too vague. We need to decompose it.

| Sub-problem | Input | Process | Output |
|---|---|---|---|
| Add a book | Book title, author, ISBN | Store book details | New book record |
| Search for a book | Search keyword | Compare keyword with book records | Matching books |
| Borrow a book | Student ID, Book ID | Check availability and update status | Borrowing record |
| Return a book | Book ID | Change status back to available | Updated book status |
| Check overdue books | Current date, due dates | Compare dates | List of overdue books |

::: info Why this is better
Each sub-problem has a clear purpose. It can be designed, coded, tested, and improved separately.
:::

---

## 6. IB Pseudocode Pattern

Decomposition can be shown by writing a main algorithm that calls smaller procedures.

Example: Grade report system

```text
BEGIN GradeReportSystem
    INPUT studentName
    CALL inputMarks
    CALL calculateTotal
    CALL calculateAverage
    CALL decideGrade
    CALL outputReport
END
```

Each called part can be designed separately:

```text
PROCEDURE calculateAverage
    average = total / numberOfSubjects
END PROCEDURE
```

::: tip Exam Note
In an exam, you may not need to write full code. You may need to explain that each smaller task can be developed and tested separately.
:::

---

## 7. Java Code Example

Below is a simple Java example showing decomposition using methods.

```java
public class GradeReport {
    public static void main(String[] args) {
        String studentName = "Alice";
        int math = 82;
        int english = 76;
        int computerScience = 91;

        int total = calculateTotal(math, english, computerScience);
        double average = calculateAverage(total, 3);
        String grade = decideGrade(average);

        printReport(studentName, total, average, grade);
    }

    public static int calculateTotal(int mark1, int mark2, int mark3) {
        return mark1 + mark2 + mark3;
    }

    public static double calculateAverage(int total, int numberOfSubjects) {
        return (double) total / numberOfSubjects;
    }

    public static String decideGrade(double average) {
        if (average >= 80) {
            return "A";
        } else if (average >= 60) {
            return "B";
        } else {
            return "C";
        }
    }

    public static void printReport(String name, int total, double average, String grade) {
        System.out.println("Student: " + name);
        System.out.println("Total: " + total);
        System.out.println("Average: " + average);
        System.out.println("Grade: " + grade);
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `main` method | Controls the overall program flow |
| `studentName`, `math`, `english`, `computerScience` | Store input data |
| `calculateTotal(...)` | Handles the sub-problem of calculating total |
| `calculateAverage(...)` | Handles the sub-problem of calculating average |
| `decideGrade(...)` | Handles the sub-problem of deciding the grade |
| `printReport(...)` | Handles the sub-problem of displaying the result |

### Why this shows decomposition

Instead of placing all logic inside `main`, the solution is split into smaller methods.

Each method has one main responsibility:

| Method | Responsibility |
|---|---|
| `calculateTotal` | Add marks |
| `calculateAverage` | Calculate average |
| `decideGrade` | Choose grade based on average |
| `printReport` | Display final report |

This makes the program easier to read, test, and maintain.

---

## 9. Step-by-step Execution

Given:

| Variable | Value |
|---|---:|
| math | 82 |
| english | 76 |
| computerScience | 91 |

Execution:

| Step | Action | Result |
|---|---|---|
| 1 | calculateTotal(82, 76, 91) | total = 249 |
| 2 | calculateAverage(249, 3) | average = 83.0 |
| 3 | decideGrade(83.0) | grade = "A" |
| 4 | printReport(...) | output report |

Final output:

```text
Student: Alice
Total: 249
Average: 83.0
Grade: A
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Trying to solve the whole problem at once | The solution becomes confusing | Break the problem into sub-problems first |
| Making sub-problems too large | They are still hard to solve | Each sub-problem should have a clear responsibility |
| Creating too many tiny sub-problems | The design becomes unnecessarily complicated | Group closely related actions together |
| Ignoring how sub-problems connect | The final program may not work | Define input and output for each sub-problem |
| Only listing tasks without explaining benefit | Exam answer may be too shallow | Explain how it helps design, testing, debugging, or maintenance |

---

## 11. Guided Practice

### Practice 1: Online Food Ordering System

A restaurant wants to create an online food ordering system.

Break the system into at least five sub-problems.

<details>
<summary>Suggested Answer</summary>

Possible sub-problems:

1. Display menu  
2. Select food items  
3. Calculate total price  
4. Enter customer details  
5. Choose delivery or pickup  
6. Process payment  
7. Confirm order  

Each sub-problem can be designed and tested separately.

</details>

---

### Practice 2: Identify Input, Process, Output

Sub-problem: Calculate total price

| Category | Answer |
|---|---|
| Input | selected food items, item prices, quantities |
| Process | multiply price by quantity and add all item costs |
| Output | total price |

---

### Practice 3: Java Method Planning

For the food ordering system, suggest one Java method name for each task.

<details>
<summary>Suggested Answer</summary>

| Task | Possible Java Method |
|---|---|
| Display menu | `displayMenu()` |
| Calculate total price | `calculateTotal()` |
| Confirm order | `confirmOrder()` |
| Apply discount | `applyDiscount()` |
| Print receipt | `printReceipt()` |

</details>

---

## 12. Independent Practice

Complete these tasks without looking at answers first.

### Task 1

A school wants to create an attendance system.

Break it into at least six sub-problems.

### Task 2

Choose three of your sub-problems and identify:

| Sub-problem | Input | Process | Output |
|---|---|---|---|

### Task 3

Write suitable Java method names for four of your sub-problems.

Example format:

```java
recordAttendance()
generateReport()
```

### Task 4

Explain why decomposition would make this attendance system easier to test.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by decomposition.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for:

- breaking a complex problem into smaller parts/sub-problems
- the smaller parts are easier to manage, solve, or develop

Example answer:

Decomposition is breaking a large or complex problem into smaller sub-problems so that each part is easier to understand and solve.

</details>

---

### Question 2 [4 marks]

A school wants to develop a system for recording attendance.

Explain how decomposition could be used when designing this system.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for points such as:

- the attendance system can be broken into smaller sub-problems
- examples include recording student details, marking attendance, saving attendance records, and generating reports
- each sub-problem can be designed or coded separately
- this makes the system easier to test, debug, maintain, or update

Example answer:

The attendance system can be decomposed into smaller tasks such as storing student details, recording daily attendance, saving attendance records, and producing absence reports. Each task can be designed and tested separately. This makes the final system easier to develop, debug, and maintain.

</details>

---

### Question 3 [6 marks]

A hospital wants to create a patient appointment system.

Discuss how decomposition can help the development team create the system.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for points such as:

- the whole appointment system can be divided into smaller sub-problems
- examples may include patient registration, doctor availability, appointment booking, appointment cancellation, reminders, and report generation
- each sub-problem can have clear inputs, processes, and outputs
- different developers can work on different modules
- each module can be tested separately before integration
- this improves maintainability because one part can be updated without rewriting the whole system

Example answer:

Decomposition helps the team divide the appointment system into smaller parts such as patient registration, doctor availability, booking appointments, cancelling appointments, and sending reminders. Each part can be designed with its own inputs, processing, and outputs. Different developers can work on separate modules, and each module can be tested before being combined. This reduces complexity and makes the system easier to debug and maintain.

</details>

---

## 14. Classroom Activity

### Activity: Break the System

**Time:** 10-15 minutes  
**Grouping:** Pairs or small groups

Choose one system:

1. school canteen ordering system  
2. sports club membership system  
3. online quiz system  
4. library borrowing system  

For your chosen system, complete this table:

| Sub-problem | Input | Process | Output |
|---|---|---|---|

Then answer:

1. Which sub-problem should be developed first? Why?  
2. Which sub-problem is most likely to cause errors? Why?  
3. Which sub-problem could become a Java method?

::: tip Exit Ticket
Before leaving, write one sentence explaining why decomposition is useful in programming.
:::

---

## 15. Homework

### Homework Task

Choose one real-world system:

- online shopping system
- student grade system
- hospital appointment system
- cinema booking system
- personal finance tracker

Complete the following:

1. Write a short description of the system.
2. Break it into at least six sub-problems.
3. For each sub-problem, identify input, process, and output.
4. Write Java-style method names for at least four sub-problems.
5. Write one exam-style paragraph explaining how decomposition helps design this system.

### Suggested Paragraph Structure

```text
The system can be decomposed into smaller sub-problems such as ..., ..., and ... .
Each sub-problem can be designed and tested separately.
This reduces complexity because ...
It also improves maintenance because ...
```

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Definition | Decomposition breaks a large problem into smaller sub-problems |
| Main benefit | It reduces complexity |
| Programming link | Sub-problems can become methods, procedures, or modules |
| Testing link | Each part can be tested separately |
| Exam phrase | "This makes the system easier to design, test, debug, and maintain." |
