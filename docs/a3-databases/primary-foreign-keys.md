# Primary and Foreign Keys

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **primary key**
- define **foreign key**
- explain why keys are needed
- identify keys in simple database tables
- explain how foreign keys create relationships
- choose suitable primary keys for scenarios

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Linking records and tables |
| Connected units | Tables, Relationships, ERD, Normalization |
| Exam relevance | Key identification, table relationships, scenario explanation |

::: tip Learning Focus
A primary key uniquely identifies a record. A foreign key links to a primary key in another table.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Primary key | 主键 | A field that uniquely identifies each record in a table |
| Foreign key | 外键 | A field in one table that refers to a primary key in another table |
| Unique | 唯一 | No two records have the same value |
| Relationship | 关系 | A link between tables |
| Referential integrity | 引用完整性 | Ensuring foreign keys refer to valid primary key values |
| Composite key | 复合键 | A key made from more than one field |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Primary key（主键）** 用来唯一识别表中的每一条 record。主键不能重复，也不应该为空。

例如在 STUDENT 表中，`StudentID` 很适合作为主键，因为每个学生的 ID 都不同。

**Foreign key（外键）** 用来连接两个表。它在一个表中保存另一个表的 primary key 值。

例如：

STUDENT 表：

| StudentID | StudentName |
|---|---|
| 1001 | Alice |
| 1002 | Ben |

ENROLMENT 表：

| EnrolmentID | StudentID | CourseCode |
|---|---|---|
| 1 | 1001 | CS |
| 2 | 1002 | BIO |

这里 `STUDENT.StudentID` 是主键，而 `ENROLMENT.StudentID` 是外键。

</template>

<template #en>

### English Explanation

A **primary key** uniquely identifies each record in a table. It should not be duplicated and should not be empty.

For example, in a STUDENT table, `StudentID` is a suitable primary key because each student has a different ID.

A **foreign key** links two tables. It stores the value of a primary key from another table.

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

Here, `STUDENT.StudentID` is the primary key, and `ENROLMENT.StudentID` is a foreign key.

</template>
</LangBlock>

---

## 5. Real-life Example

### Customer and Order

CUSTOMER table:

| CustomerID | CustomerName |
|---|---|
| C001 | Alice |
| C002 | Ben |

ORDER table:

| OrderID | CustomerID | OrderDate |
|---|---|---|
| O101 | C001 | 2026-05-01 |
| O102 | C001 | 2026-05-03 |
| O103 | C002 | 2026-05-04 |

`CustomerID` links each order to the correct customer.

---

## 6. Database Design Pattern

```text
One table:
Primary key uniquely identifies records.

Another table:
Foreign key stores that primary key value to create a link.
```

---

## 7. SQL Example

```sql
SELECT OrderID, CustomerID
FROM ORDERS;
```

In a more advanced query, `CustomerID` can be used to connect CUSTOMER and ORDERS.

---

## 8. Explanation of Key Choice

| Candidate Key | Suitable? | Reason |
|---|---|---|
| StudentID | Yes | Unique and stable |
| StudentName | No | Names may repeat or change |
| Email | Maybe | Usually unique, but may change |
| DateOfBirth | No | Many students may share the same date |

---

## 9. Step-by-step Relationship Creation

| Step | Action |
|---|---|
| 1 | Create CUSTOMER table with primary key CustomerID |
| 2 | Create ORDER table with primary key OrderID |
| 3 | Add CustomerID to ORDER table |
| 4 | Use ORDER.CustomerID as foreign key |
| 5 | Each order now links to one customer |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Choosing name as primary key | Names may duplicate | Use ID |
| Confusing primary and foreign key | Relationship explanation becomes wrong | Primary identifies, foreign links |
| Using a foreign key value that does not exist | Referential integrity breaks | Foreign key must match existing primary key |
| Thinking a table can only have one foreign key | Tables can have multiple foreign keys | Think about relationships |
| Not explaining uniqueness | Definition incomplete | Say primary key uniquely identifies record |

---

## 11. Guided Practice

### Practice 1

In a STUDENT table, choose a primary key.

<details>
<summary>Suggested Answer</summary>

`StudentID`, because it uniquely identifies each student.

</details>

### Practice 2

Why is `StudentName` a weak primary key?

<details>
<summary>Suggested Answer</summary>

Students may have the same name, and names may change, so it may not uniquely or reliably identify each record.

</details>

---

## 12. Independent Practice

1. Identify primary and foreign keys in a library borrowing database.
2. Explain why OrderID is better than OrderDate as a primary key.
3. Design two linked tables for a school club membership system.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by a primary key.

<details>
<summary>Mark Scheme Style Answer</summary>

A primary key is a field that uniquely identifies each record in a table.

</details>

### Question 2 [2 marks]

State what is meant by a foreign key.

<details>
<summary>Mark Scheme Style Answer</summary>

A foreign key is a field in one table that refers to the primary key in another table, creating a relationship between the tables.

</details>

### Question 3 [4 marks]

A database has a CUSTOMER table and an ORDER table. Explain why CustomerID appears in both tables.

<details>
<summary>Mark Scheme Style Answer</summary>

CustomerID is the primary key in the CUSTOMER table, uniquely identifying each customer. CustomerID can appear as a foreign key in the ORDER table to link each order to the correct customer. This avoids repeating all customer details in every order record.

</details>

---

## 14. Classroom Activity

Students receive table cards and key cards. They match primary keys to foreign keys and draw relationship lines.

---

## 15. Homework

Design a small database with three tables for a school event system. Identify each primary key and foreign key.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Primary key | Uniquely identifies record |
| Foreign key | Links to primary key in another table |
| Good key | Unique, stable, not empty |
| Referential integrity | Foreign keys must refer to valid records |
| Exam phrase | "The foreign key links each record to the matching record in another table." |
