# Multiple Classes

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why larger programs may use multiple classes
- identify simple relationships between classes
- understand how objects can work together
- distinguish this extension content from SL core content

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | HL Extension |
| Main skill | Designing larger OOP programs |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Multiple classes | A program design that uses more than one class |
| Relationship | A connection between classes |
| Association | A general link between classes |
| Aggregation | A whole-part relationship where parts can exist independently |
| Composition | A stronger whole-part relationship where parts depend on the whole |

## 4. Concept Explanation

In larger programs, one class is often not enough.

Multiple classes allow different parts of a system to be represented separately.

Example:

A school system might use:

| Class | Purpose |
|---|---|
| Student | Store student information |
| Course | Store course information |
| Teacher | Store teacher information |
| GradeBook | Manage marks |

Each class has its own responsibility.

## 5. Step-by-step Example

System: Library borrowing system

Possible classes:

| Class | Responsibility |
|---|---|
| Book | Store book details |
| Member | Store member details |
| Loan | Store borrowing date and return date |

These classes work together to model the full system.

## 6. Visual Structure

::: warning HL Extension
This page is not the main SL focus. It is included to improve programming understanding and prepare students for more complex OOP tasks.
:::

::: info Multiple-Class Thinking

Break the system into responsibilities.

→ Choose one class for each major responsibility  
→ Give each class suitable attributes and methods  
→ Decide how objects need to interact  
→ Keep each class focused and clear  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Putting everything into one large class | The class becomes hard to maintain |
| Creating too many tiny classes | The design becomes unnecessarily complex |
| Giving a class unrelated responsibilities | The design becomes unclear |
| Confusing object interaction with inheritance | Not all class relationships are inheritance |

## 8. Exam-style Question

A library system uses books, members, and loans.

**Explain why using multiple classes may be better than using one large class.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- each class can represent a separate part of the system
- Book, Member, and Loan can each have their own attributes and methods
- this makes the program easier to understand and maintain
- changes to one class are less likely to affect unrelated parts of the program

## 10. Quick Check

1. Why might a program use multiple classes?
2. Give two possible classes in a shopping system.
3. Why should a class have a clear responsibility?
