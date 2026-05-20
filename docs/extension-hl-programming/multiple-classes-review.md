# Multiple Classes Review

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why larger programs may use several classes
- identify class responsibilities
- understand simple object interaction
- connect this topic to B3 OOP

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Larger OOP program design |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Class responsibility | The main job of a class |
| Object interaction | Objects using each other to complete a task |
| Association | A relationship between classes |
| Coupling | How strongly classes depend on each other |
| Cohesion | How focused a class is on one responsibility |

## 4. Concept Explanation

In larger programs, one class is usually not enough.

Each class should have a clear responsibility.

Example: Library system

| Class | Responsibility |
|---|---|
| Book | Store book details |
| Member | Store member details |
| Loan | Store borrowing information |

This design is easier to maintain than one huge class containing everything.

## 5. Step-by-step Example

Borrowing a book may involve:

1. Member object requests a book.
2. Book object checks availability.
3. Loan object stores borrowing details.
4. Book availability is updated.

## 6. Visual Structure

::: info Multi-class Design
Identify system parts → assign responsibilities → create classes → define how objects interact.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Putting all logic into one class | The program becomes hard to maintain |
| Giving one class too many responsibilities | Low cohesion |
| Making classes depend too much on each other | High coupling |
| Creating classes without a clear purpose | The design becomes confusing |

## 8. Exam-style Question

A library system uses Book, Member, and Loan classes.

**Explain one advantage of using separate classes.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- each class has a clear responsibility
- the program becomes easier to understand and maintain
- changes to one class are less likely to affect unrelated parts

## 10. Quick Check

1. What is class responsibility?
2. What does object interaction mean?
3. Why should a class be cohesive?
