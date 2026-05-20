# Tables, Records and Fields

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **table**, **record**, and **field**
- identify rows and columns in a database table
- explain entity and attribute
- distinguish a database table from a spreadsheet-style view
- design simple tables for a scenario
- explain why each table should focus on one entity

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding relational table structure |
| Connected units | Primary and Foreign Keys, Relationships, ERD Basics |
| Exam relevance | Identify records/fields, table design, scenario questions |

::: tip Learning Focus
A table stores data about one entity. A record is a row. A field is a column.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Table | 表 | A structure that stores data about one entity |
| Record | 记录 | A row in a table, storing data about one instance |
| Field | 字段 | A column in a table, storing one type of data |
| Entity | 实体 | A thing about which data is stored |
| Attribute | 属性 | A property of an entity, often represented by a field |
| Data type | 数据类型 | The type of value stored in a field |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

关系型数据库把数据存储在 **tables（表）** 中。每个表通常存储一种 entity 的数据。

例如 `STUDENT` 表存储学生数据：

| StudentID | FirstName | Surname | YearGroup |
|---|---|---|---|
| 1001 | Alice | Chen | 11 |
| 1002 | Ben | Smith | 12 |

在这个表中：

- `STUDENT` 是 entity
- 每一行是一个 record
- 每一列是一个 field
- `StudentID`, `FirstName`, `Surname`, `YearGroup` 是 attributes

一个好的表应该只关注一个 entity。如果把学生、课程、老师、成绩都混在一个大表里，数据会重复，也更容易出错。

</template>

<template #en>

### English Explanation

A relational database stores data in **tables**. Each table usually stores data about one entity.

For example, a `STUDENT` table stores student data:

| StudentID | FirstName | Surname | YearGroup |
|---|---|---|---|
| 1001 | Alice | Chen | 11 |
| 1002 | Ben | Smith | 12 |

In this table:

- `STUDENT` is the entity
- each row is a record
- each column is a field
- `StudentID`, `FirstName`, `Surname`, and `YearGroup` are attributes

A good table should focus on one entity. If students, courses, teachers, and grades are all mixed in one large table, data may be repeated and errors may occur.

</template>
</LangBlock>

---

## 5. Real-life Example

### Library BOOK Table

| BookID | Title | Author | Available |
|---|---|---|---|
| B001 | Dune | Frank Herbert | Yes |
| B002 | The Hobbit | J.R.R. Tolkien | No |

| Term | Example |
|---|---|
| Table | BOOK |
| Record | B001, Dune, Frank Herbert, Yes |
| Field | Title |
| Entity | Book |
| Attribute | Author |

---

## 6. Database Design Pattern

```text
Entity → Table
Attribute → Field
Instance → Record
```

Example:

```text
Entity: Student
Attributes: StudentID, Name, YearGroup
Records: each individual student
```

---

## 7. SQL Example

```sql
SELECT FirstName, Surname
FROM STUDENT;
```

This query displays two fields from the STUDENT table.

---

## 8. Explanation of SQL Example

| SQL Part | Meaning |
|---|---|
| `SELECT FirstName, Surname` | Display these two fields |
| `FROM STUDENT` | Use records from the STUDENT table |

---

## 9. Step-by-step Table Design

Scenario: A school wants to store club members.

| Step | Decision |
|---|---|
| 1 | Entity is ClubMember |
| 2 | Table name is CLUB_MEMBER |
| 3 | Fields include MemberID, Name, YearGroup, ClubName |
| 4 | Each student member becomes one record |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Confusing record and field | Rows and columns have different meanings | Record = row, field = column |
| Putting unrelated data in one table | Causes redundancy and confusion | One table per entity |
| Treating field names as records | Misunderstanding table structure | Identify example row vs column |
| Forgetting data types | Field design incomplete | Choose suitable type for each field |
| Repeating same data unnecessarily | Update problems may occur | Split into related tables |

---

## 11. Guided Practice

### Practice 1

In the BOOK table, identify one record and one field.

<details>
<summary>Suggested Answer</summary>

A record could be: `B001, Dune, Frank Herbert, Yes`.  
A field could be: `Title`.

</details>

### Practice 2

Design three fields for a `TEACHER` table.

<details>
<summary>Suggested Answer</summary>

Possible fields:

- TeacherID
- FirstName
- Department
- Email

</details>

---

## 12. Independent Practice

1. Design a table for a school club.
2. Give five fields for the table.
3. Write two example records.
4. Explain why all fields should relate to the same entity.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by a record and a field.

<details>
<summary>Mark Scheme Style Answer</summary>

A record is a row in a table that stores data about one instance of an entity. A field is a column that stores one type of data.

</details>

### Question 2 [4 marks]

A table stores library book data. Identify two suitable fields and explain why they are needed.

<details>
<summary>Mark Scheme Style Answer</summary>

Suitable fields include BookID, Title, Author, and Availability. BookID uniquely identifies a book, Title helps users find books, Author supports searching, and Availability shows whether the book can be borrowed.

</details>

---

## 14. Classroom Activity

Students receive a messy table containing student, course, and teacher data. They identify entities and separate the data into better table ideas.

---

## 15. Homework

Create a table design for a cinema booking system. Include table name, six fields, data types, and three example records.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Table | Stores data about one entity |
| Record | Row |
| Field | Column |
| Entity | Thing being stored |
| Attribute | Property of entity |
| Exam phrase | "Each record represents one instance of the entity." |
