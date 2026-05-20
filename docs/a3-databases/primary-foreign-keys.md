# Primary and Foreign Keys

## 1. Learning Objectives

By the end of this page, students should be able to:

- define primary key
- define foreign key
- explain why keys are used in relational databases
- identify keys in simple database tables

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Linking records and tables |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Primary key | A field that uniquely identifies each record in a table |
| Foreign key | A field in one table that refers to the primary key in another table |
| Unique | No two records have the same value |
| Relationship | A connection between tables |
| Referential integrity | Keeping links between tables valid |

## 4. Concept Explanation

A primary key is used to uniquely identify each record in a table.

A foreign key is used to link one table to another table.

Example:

STUDENT table:

| StudentID | StudentName |
|---|---|
| 1001 | Alice |
| 1002 | Ben |

ENROLMENT table:

| EnrolmentID | StudentID | CourseCode |
|---|---|---|
| 1 | 1001 | CS |
| 2 | 1002 | BIO |

In this example, STUDENT.StudentID is a primary key and ENROLMENT.StudentID is a foreign key.

## 5. Step-by-step Example

A student can enrol in a course.

To avoid repeating the full student name in every enrolment record, the ENROLMENT table stores StudentID as a foreign key.

## 6. Visual Structure

::: info Key Relationship
Primary key → uniquely identifies a record.  
Foreign key → stores a value from another table's primary key and creates a link between tables.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Choosing a non-unique primary key | Records cannot be identified reliably |
| Confusing primary key and foreign key | Table relationships become unclear |
| Using names as primary keys | Names may be duplicated or changed |
| Creating foreign key values that do not exist | Referential integrity is broken |

## 8. Exam-style Question

A database has a CUSTOMER table and an ORDER table.

**Explain why CustomerID may appear in both tables.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- CustomerID is the primary key in the CUSTOMER table
- CustomerID can be used as a foreign key in the ORDER table
- this links each order to the correct customer

## 10. Quick Check

1. What is a primary key?
2. What is a foreign key?
3. Why is StudentID better than StudentName as a primary key?
