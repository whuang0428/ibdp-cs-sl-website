# Encapsulation

## 1. Learning Objectives

By the end of this page, students should be able to:

- define encapsulation
- explain why data should be protected inside a class
- distinguish between public and private access
- explain how encapsulation improves program reliability

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Data protection |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Encapsulation | Bundling data and methods together inside a class and controlling access |
| Private | Can only be accessed inside the class |
| Public | Can be accessed from outside the class |
| Data hiding | Preventing direct access to internal data |
| Interface | The public methods used to interact with an object |

## 4. Concept Explanation

Encapsulation means keeping related data and methods together inside a class and controlling how the data is accessed.

A class may make attributes private so that other parts of the program cannot change them directly.

This helps prevent invalid or unsafe changes.

Example:

A BankAccount object should not allow any part of the program to set the balance directly to a negative value without checking.

Instead, the program should use methods such as:

- deposit
- withdraw
- get balance

## 5. Step-by-step Example

Problem: Protect a bank account balance.

Poor design:

| Action | Problem |
|---|---|
| Directly change balance to -500 | Invalid value may be allowed |

Better design:

| Action | Benefit |
|---|---|
| Use withdraw method | The method can check if enough money exists |

## 6. Visual Structure

::: info Encapsulation Idea

Private attributes are protected inside the class.

→ Outside code cannot change them directly  
→ Outside code uses public methods  
→ Public methods can validate data before changing attributes  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Making every attribute public | Data can be changed incorrectly |
| Thinking encapsulation means hiding everything | Public methods are still needed |
| Ignoring validation | Invalid data may still enter the object |
| Confusing private with deleted | Private data still exists, but access is restricted |

## 8. Exam-style Question

A class stores a student's exam mark.

**Explain why the mark attribute should be private and changed using a method.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- making the mark private prevents direct external changes
- a method can control how the mark is changed
- the method can validate the mark is within an allowed range
- this reduces errors and protects the object's data

## 10. Quick Check

1. What is encapsulation?
2. Why might an attribute be private?
3. What is one benefit of using public methods?
