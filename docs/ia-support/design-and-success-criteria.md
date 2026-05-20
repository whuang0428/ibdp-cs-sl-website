# Design and Success Criteria

## 1. Purpose

Design explains how the solution will work before it is built. Success criteria define how the final product will be judged.

A strong IA design includes:

- system overview
- data design
- interface design
- algorithm design
- validation design
- testable success criteria

## 2. Success Criteria

Good success criteria are specific and measurable.

Weak:

```text
The system should be good.
```

Better:

```text
The system should allow the teacher to add a new student record with name, class, and student ID.
```

Very strong:

```text
The system should allow the teacher to add a new student record with name, class, and student ID, and reject the record if the student ID is empty or already exists.
```

## 3. Success Criteria Table

| Criterion ID | Success Criterion | How to Test |
|---|---|---|
| SC1 | Add a new student record | Enter valid student data and check record appears |
| SC2 | Reject duplicate student ID | Enter existing ID and check error message |
| SC3 | Search by student name | Search existing and non-existing names |
| SC4 | Generate missing homework report | Use test data and compare report |
| SC5 | Save and load data | Restart program and check data remains |

## 4. Design Diagrams

Possible design evidence:

| Design Type | Purpose |
|---|---|
| Flowchart | Show algorithm steps |
| UML class diagram | Show classes, attributes, and methods |
| ERD | Show database tables and relationships |
| Wireframe | Show interface layout |
| Data dictionary | Show fields, data types, and validation |
| Test plan | Show how criteria will be tested |

## 5. Algorithm Design Example

```text
INPUT studentID
IF studentID is empty THEN
    OUTPUT "Student ID required"
ELSE IF studentID already exists THEN
    OUTPUT "Duplicate ID"
ELSE
    ADD student record
    OUTPUT "Student added"
END IF
```

## 6. Common Mistakes

| Mistake | Fix |
|---|---|
| Criteria not measurable | Add test method |
| Design written after coding only | Plan before and update honestly |
| No validation design | Include invalid input handling |
| Diagrams not explained | Add short explanation |
| Too many vague criteria | Use clear actions and expected outcomes |

## 7. Practice

### Task

Improve this criterion:

```text
The app should manage books.
```

<details>
<summary>Improved Answer</summary>

The system should allow the user to add a book record with BookID, title, author, and availability status, and reject the record if BookID is empty or already exists.

</details>
