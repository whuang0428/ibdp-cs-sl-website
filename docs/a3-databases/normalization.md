# Normalization

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of normalization
- identify data redundancy
- explain why repeated data can cause problems
- understand the basic idea of splitting data into related tables

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Improving database design |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Normalization | Organizing data to reduce redundancy and improve consistency |
| Redundancy | Unnecessary repetition of data |
| Anomaly | A problem caused by poor database design |
| 1NF | First Normal Form |
| 2NF | Second Normal Form |
| 3NF | Third Normal Form |

## 4. Concept Explanation

Normalization is a process used to improve database design.

Poorly designed tables may repeat the same data many times.

Repeated data can cause update, insert, and delete problems.

## 5. Step-by-step Example

Poor table:

| StudentID | StudentName | CourseID | CourseName |
|---|---|---|---|
| 1001 | Alice | CS01 | Computer Science |
| 1002 | Ben | CS01 | Computer Science |

The course name is repeated.

Better design:

- STUDENT table stores student data
- COURSE table stores course data
- ENROLMENT table links students and courses

## 6. Visual Structure

::: info Normalization Idea
Start with one large table → find repeated data → identify separate entities → split data into smaller tables → use keys to link the tables.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking repeated data is harmless | It can cause inconsistent updates |
| Splitting tables without keys | Tables cannot be linked properly |
| Removing necessary data | The database may lose meaning |
| Confusing normalization with sorting | Normalization is about structure, not order |

## 8. Exam-style Question

A table stores the same teacher name many times for different classes.

**Explain one reason why this may be poor database design.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the teacher name is repeated, causing redundancy
- if the teacher name changes, it must be updated in many places
- this can lead to inconsistent data if some records are not updated

## 10. Quick Check

1. What is normalization?
2. What is redundancy?
3. Why can repeated data be a problem?
