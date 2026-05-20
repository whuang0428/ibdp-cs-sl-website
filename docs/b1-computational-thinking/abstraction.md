# Abstraction

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **abstraction**
- explain why abstraction is useful in computational thinking
- distinguish between relevant and irrelevant details
- simplify a real-world problem into a useful model
- apply abstraction when designing algorithms and programs
- write an exam-style explanation using clear CS vocabulary

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Simplifying problems by focusing on important details |
| Connected units | B2 Programming, B3 OOP, A3 Databases, A4 Machine Learning, IA project |
| Exam relevance | Scenario-based explanation questions, algorithm design, modelling, data selection |

::: tip Learning Focus
Abstraction is about deciding **what matters** and **what can be ignored** for a specific problem. It is not random guessing or deleting information blindly.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Abstraction | 抽象化 | Focusing on essential details and ignoring unnecessary details |
| Relevant detail | 相关信息 | Information needed to solve the problem |
| Irrelevant detail | 无关信息 | Information that does not affect the solution |
| Model | 模型 | A simplified representation of a real-world system |
| Complexity | 复杂度 | The amount of detail or difficulty in a problem |
| Generalization | 概括 | Creating a solution that works for a group of similar cases |
| Requirement | 需求 | Something the system needs to do |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Abstraction（抽象化）** 指的是在解决问题时，只保留重要的信息，忽略暂时不需要的细节。

现实世界的问题通常非常复杂。如果我们把所有细节都放进程序里，程序会变得很难设计、很难测试，也很难维护。所以在计算机科学中，我们会先判断：

- 哪些信息是解决问题必须用到的？
- 哪些信息不会影响程序结果？
- 哪些细节可以先忽略？
- 我们能不能把现实问题简化成一个模型？

例如，我们要设计一个“公交车到站提醒系统”。重要的信息可能包括：

- 公交车编号
- 当前站点
- 目标站点
- 预计到达时间
- 车辆当前位置

不重要的信息可能包括：

- 司机今天穿什么鞋
- 座椅的颜色
- 乘客正在听什么音乐
- 车窗上有没有贴纸

这些细节在现实中存在，但对“到站提醒”这个程序没有帮助，所以可以忽略。

Abstraction 的核心作用是：

- 降低问题复杂度
- 帮助程序员专注于关键需求
- 让算法更清晰
- 让模型更容易实现
- 避免程序包含太多无用信息

</template>

<template #en>

### English Explanation

**Abstraction** means focusing on the essential details of a problem and ignoring unnecessary details.

Real-world problems are often very complex. If a program tries to include every detail, the solution may become difficult to design, test, and maintain. In computer science, we first decide:

- Which information is needed to solve the problem?
- Which information does not affect the result?
- Which details can be ignored?
- Can the real-world problem be simplified into a useful model?

For example, if we design a bus arrival reminder system, relevant details may include:

- bus number
- current stop
- destination stop
- estimated arrival time
- bus location

Irrelevant details may include:

- the driver's shoes
- the colour of the seats
- what music a passenger is listening to
- stickers on the window

These details may exist in the real world, but they do not help solve the bus arrival problem, so they can be ignored.

The main benefits of abstraction are:

- reducing complexity
- helping programmers focus on key requirements
- making algorithms clearer
- making models easier to implement
- avoiding unnecessary information in a program

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Food Delivery App

A company wants to create a food delivery app.

The real world contains many details:

- restaurant name
- restaurant location
- customer address
- menu items
- item prices
- delivery driver location
- payment status
- weather
- colour of restaurant walls
- chef's favourite song
- customer's phone wallpaper

A good programmer must decide which details are relevant.

| Detail | Relevant? | Reason |
|---|---|---|
| Restaurant name | Yes | User needs to choose a restaurant |
| Customer address | Yes | Needed for delivery |
| Menu items | Yes | User needs to order food |
| Item prices | Yes | Needed to calculate cost |
| Driver location | Yes | Needed for delivery tracking |
| Weather | Maybe | Could affect delivery time, but may not be needed in first version |
| Colour of restaurant walls | No | Does not affect ordering or delivery |
| Chef's favourite song | No | Does not affect the system |
| Customer's phone wallpaper | No | Not needed for food ordering |

::: info Abstraction Decision
The programmer keeps the details needed for ordering, payment, and delivery, and ignores details that do not affect the system.
:::

---

## 6. IB Pseudocode Pattern

Abstraction can be shown by designing an algorithm that only uses relevant data.

Example: Calculate delivery cost

Relevant inputs:

- distance
- base fee
- price per kilometre

Irrelevant details:

- driver name
- restaurant wall colour
- music in restaurant

```text
BEGIN CalculateDeliveryFee
    INPUT distance
    baseFee = 5
    pricePerKm = 1.2
    deliveryFee = baseFee + distance * pricePerKm
    OUTPUT deliveryFee
END
```

This algorithm abstracts the real delivery situation into only the values needed to calculate the fee.

::: tip Exam Note
If an exam asks how abstraction is used, explain **which details are kept**, **which details are ignored**, and **why this makes the problem easier to solve**.
:::

---

## 7. Java Code Example

Below is a simple Java example showing abstraction in a delivery fee calculation.

```java
public class DeliveryFeeCalculator {
    public static void main(String[] args) {
        double distance = 4.5;

        double fee = calculateDeliveryFee(distance);

        System.out.println("Delivery fee: $" + fee);
    }

    public static double calculateDeliveryFee(double distance) {
        double baseFee = 5.0;
        double pricePerKm = 1.2;

        return baseFee + distance * pricePerKm;
    }
}
```

This program ignores many real-world details and focuses only on the data needed for the calculation.

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `double distance = 4.5;` | Stores the relevant input: delivery distance |
| `calculateDeliveryFee(distance)` | Calls a method that calculates the fee |
| `baseFee = 5.0` | Stores the fixed starting fee |
| `pricePerKm = 1.2` | Stores the cost per kilometre |
| `return baseFee + distance * pricePerKm;` | Calculates and returns the delivery fee |
| `System.out.println(...)` | Outputs the result |

### Why this shows abstraction

The program does not include every real-world detail about delivery.

It ignores:

- driver's clothes
- restaurant decoration
- food smell
- customer's phone model

It keeps:

- distance
- base fee
- price per kilometre

This is abstraction because the program focuses only on the essential details needed for the calculation.

---

## 9. Step-by-step Execution

Given:

| Variable | Value |
|---|---:|
| distance | 4.5 |
| baseFee | 5.0 |
| pricePerKm | 1.2 |

Execution:

| Step | Action | Result |
|---|---|---|
| 1 | Store distance | distance = 4.5 |
| 2 | Call calculateDeliveryFee(4.5) | method starts |
| 3 | Set baseFee | baseFee = 5.0 |
| 4 | Set pricePerKm | pricePerKm = 1.2 |
| 5 | Calculate fee | 5.0 + 4.5 × 1.2 = 10.4 |
| 6 | Output fee | Delivery fee: $10.4 |

Final output:

```text
Delivery fee: $10.4
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Thinking abstraction means removing random details | Important information may be lost | Remove only details that do not affect the solution |
| Keeping every real-world detail | The system becomes too complex | Focus on requirements |
| Ignoring the purpose of the system | You may keep the wrong information | Ask what the system needs to achieve |
| Confusing abstraction with decomposition | They are different skills | Decomposition breaks into parts; abstraction simplifies details |
| Saying “ignore details” without examples | Exam answer may be too vague | Name specific relevant and irrelevant details |

---

## 11. Guided Practice

### Practice 1: School Attendance System

A school wants to design an attendance system.

Identify relevant and irrelevant details.

<details>
<summary>Suggested Answer</summary>

Relevant details:

- student ID
- student name
- date
- attendance status
- class
- teacher

Irrelevant details:

- student's favourite food
- colour of student's bag
- teacher's hairstyle
- classroom wall colour

Explanation:

The relevant details are needed to record and check attendance. The irrelevant details do not affect whether a student is present or absent.

</details>

---

### Practice 2: Choose Useful Data

A cinema booking system needs to reserve seats.

| Detail | Relevant or Irrelevant? |
|---|---|
| movie title | Relevant |
| show time | Relevant |
| seat number | Relevant |
| payment status | Relevant |
| customer's shoe size | Irrelevant |
| cinema carpet pattern | Irrelevant |

---

### Practice 3: Java Variable Planning

For a cinema booking system, choose suitable variables for the important details.

<details>
<summary>Suggested Answer</summary>

| Detail | Possible Java Variable |
|---|---|
| movie title | `movieTitle` |
| show time | `showTime` |
| seat number | `seatNumber` |
| payment status | `isPaid` |
| ticket price | `ticketPrice` |

</details>

---

## 12. Independent Practice

Complete these tasks without looking at answers first.

### Task 1

A hospital wants to create an appointment booking system.

List at least six relevant details and four irrelevant details.

### Task 2

Choose three relevant details and explain why each one is needed.

| Detail | Why it is needed |
|---|---|

### Task 3

Write suitable Java variable names for five relevant details.

Example format:

```java
patientName
appointmentTime
doctorID
```

### Task 4

Explain how abstraction would make the hospital appointment system easier to design.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by abstraction.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for:

- focusing on important or essential details
- ignoring unnecessary or irrelevant details

Example answer:

Abstraction is the process of focusing on the important details of a problem while ignoring unnecessary details.

</details>

---

### Question 2 [4 marks]

A school is designing a system to manage student grades.

Explain how abstraction could be used when designing this system.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for points such as:

- abstraction identifies the details needed for the grade system
- relevant details may include student ID, subject, marks, grade boundaries, and final grade
- irrelevant details such as favourite food or bag colour can be ignored
- this reduces complexity and makes the system easier to design and implement

Example answer:

Abstraction can be used by focusing only on details needed for the grade system, such as student ID, subject, marks, and grade boundaries. Irrelevant details such as a student's favourite food or bag colour can be ignored. This reduces complexity and helps programmers design a clearer system.

</details>

---

### Question 3 [6 marks]

A delivery company wants to build a system that estimates delivery time.

Discuss how abstraction can help the company design the system.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for points such as:

- abstraction helps identify the essential data needed for estimating delivery time
- relevant data may include distance, traffic level, delivery address, driver location, and order time
- irrelevant details such as the colour of the delivery vehicle or customer's phone wallpaper can be ignored
- the real-world delivery situation can be simplified into a model
- this model is easier to implement as an algorithm
- reducing unnecessary detail makes the system easier to test, maintain, and improve

Example answer:

Abstraction helps the company focus on the data needed to estimate delivery time, such as distance, traffic conditions, driver location, delivery address, and order time. Details such as the colour of the delivery vehicle or the driver's clothes can be ignored because they do not affect the calculation. This simplifies the real-world problem into a model that can be implemented as an algorithm. It also makes the system easier to test and maintain.

</details>

---

## 14. Classroom Activity

### Activity: Relevant or Irrelevant?

**Time:** 10-15 minutes  
**Grouping:** Pairs or small groups

Choose one system:

1. online shopping system  
2. school bus tracking system  
3. hospital appointment system  
4. student grade system  

For your chosen system, complete this table:

| Detail | Relevant or Irrelevant? | Reason |
|---|---|---|

Then answer:

1. Which three details are most important? Why?  
2. Which details can be ignored in the first version? Why?  
3. How does abstraction make the system easier to design?

::: tip Exit Ticket
Before leaving, write one sentence explaining the difference between abstraction and decomposition.
:::

---

## 15. Homework

### Homework Task

Choose one real-world system:

- food delivery app
- school library system
- fitness tracking app
- cinema booking system
- online learning platform

Complete the following:

1. Write a short description of the system.
2. List at least eight possible real-world details.
3. Mark each detail as relevant or irrelevant.
4. Explain why at least three irrelevant details can be ignored.
5. Write suitable Java-style variable names for at least five relevant details.
6. Write one exam-style paragraph explaining how abstraction helps design this system.

### Suggested Paragraph Structure

```text
Abstraction can be used by focusing on important details such as ..., ..., and ... .
Details such as ... can be ignored because they do not affect ... .
This reduces complexity because ...
It also makes the system easier to design and test because ...
```

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Definition | Abstraction focuses on essential details and ignores unnecessary details |
| Main benefit | It reduces complexity |
| Programming link | Relevant details become variables, inputs, outputs, or data fields |
| Modelling link | Real-world systems can be simplified into models |
| Exam phrase | "This reduces complexity and helps programmers focus on the requirements of the system." |
