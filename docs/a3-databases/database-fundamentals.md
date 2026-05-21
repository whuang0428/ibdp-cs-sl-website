# Database Fundamentals

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what a database is
- distinguish data and information
- explain why databases are used
- explain what a DBMS is
- distinguish database, table, record, and field at a basic level
- explain the difference between a flat file and a relational database
- describe common advantages of using a database
- identify basic database users and real-world database examples
- explain why data needs to be organized, stored, searched, and protected
- answer exam-style questions about database fundamentals

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding the purpose and structure of databases |
| Connected topics | Data storage, structured data, tables, records, fields, keys, SQL, data integrity |
| Practical focus | Relational database thinking + simple SQL preparation |
| Exam relevance | Definitions, comparisons, scenario explanation, database advantages and issues |

::: tip Learning Focus
This page is the foundation of A3. Before students write SQL, they must understand what data is, how databases organize data, and why a DBMS is useful.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Data | 数据 | Raw facts or values without full context |
| Information | 信息 | Data that has been processed or given meaning |
| Database | 数据库 | An organized collection of related data |
| DBMS | 数据库管理系统 | Software used to create, manage, access, and protect databases |
| Table | 表 | A structure that stores data about one type of entity |
| Record | 记录 | One row in a table; one complete set of related data |
| Field | 字段 | One column in a table; one data item in each record |
| Entity | 实体 | A real-world thing stored in a database, such as Student or Course |
| Attribute | 属性 | A property of an entity, often represented as a field |
| Flat file | 平面文件 | A simple file or single table with no relational structure |
| Relational database | 关系型数据库 | A database that stores data in related tables |
| Query | 查询 | A request to retrieve or manipulate data |
| SQL | 结构化查询语言 | A language used to query and manage relational databases |
| Data redundancy | 数据冗余 | Unnecessary repeated data |
| Data integrity | 数据完整性 | Accuracy, consistency, and reliability of data |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Database（数据库）** 是一个有组织的数据集合。它不是简单地把数据随便放在一起，而是按照一定结构保存数据，让程序和用户可以更容易地：

```text
store data
search data
update data
sort data
protect data
share data
```

例如，学校可能有很多学生信息：

```text
studentId
name
yearGroup
course
teacher
mark
```

如果这些数据只写在很多 Word 文件或文本文件里，查找和更新会很麻烦。  
数据库可以把这些数据放进 tables 里面，并且用 keys 和 relationships 把相关数据连接起来。

数据库通常由 **DBMS（Database Management System）** 管理。  
DBMS 是一种软件，用来帮助用户创建、查询、修改、保护数据库。

例如：

```text
MySQL
PostgreSQL
Microsoft Access
SQLite
Oracle Database
```

学习 A3 Databases 的第一步不是马上写 SQL，而是理解：

1. 数据为什么需要被组织
2. 数据库和普通文件有什么不同
3. table / record / field 是什么
4. 为什么 relational database 会使用多个相关表
5. DBMS 为什么重要

</template>

<template #en>

### English Explanation

A **database** is an organized collection of related data. It does not store data randomly. It stores data in a structured way so that programs and users can more easily:

```text
store data
search data
update data
sort data
protect data
share data
```

For example, a school may store many pieces of student information:

```text
studentId
name
yearGroup
course
teacher
mark
```

If this data is stored only in many Word documents or text files, searching and updating it becomes difficult.  
A database can store this data in tables and connect related data using keys and relationships.

A database is usually managed by a **DBMS**: Database Management System.  
A DBMS is software used to create, query, update, and protect databases.

Examples include:

```text
MySQL
PostgreSQL
Microsoft Access
SQLite
Oracle Database
```

The first step in A3 Databases is not writing SQL immediately. Students first need to understand:

1. why data needs to be organized
2. how a database is different from a normal file
3. what table / record / field mean
4. why a relational database uses multiple related tables
5. why a DBMS is important

</template>
</LangBlock>

---

## 5. Data vs Information

## 5.1 Data

Data is raw facts or values.

Examples:

```text
85
Alice
S001
12
C001
```

By themselves, these values may not have full meaning.

## 5.2 Information

Information is data that has been processed, organized, or given context.

Example:

```text
Alice, student S001, scored 85 in Computer Science.
```

Now the raw data has meaning.

### Comparison

| Data | Information |
|---|---|
| Raw facts | Meaningful result |
| May lack context | Has context |
| Example: `85` | Example: `Alice scored 85` |
| Input to processing | Output after processing |

### Example

| Raw Data | Context | Information |
|---|---|---|
| `85` | Alice's CS mark | Alice scored 85 in CS |
| `12` | Year group | Alice is in Year 12 |
| `C001` | Course code | Course is Computer Science |

::: tip Exam Phrase
Data is raw facts. Information is data that has been processed or given context so that it becomes meaningful.
:::

---

## 6. What is a Database?

A database is an organized collection of related data.

### Example: School Database

A school database may store:

```text
students
teachers
courses
enrollments
marks
attendance
```

These data items are related.

For example:

```text
A student enrolls in a course.
A teacher teaches a course.
A student receives a mark in a course.
```

### Why Organization Matters

Without organization:

```text
data is hard to search
data is hard to update
data may be repeated
data may become inconsistent
data may be less secure
```

With a database:

```text
data is structured
data can be queried
data can be validated
data can be protected
data can be shared
```

---

## 7. Database vs Simple File

A simple file can store data, but it usually has less structure and fewer management features.

| Feature | Simple File | Database |
|---|---|---|
| Structure | Often simple or unstructured | Organized into tables and relationships |
| Searching | May require custom code | Queries can retrieve data efficiently |
| Updating | Can be difficult for large data | DBMS supports controlled updates |
| Multi-user access | Usually limited | Often supports multiple users |
| Security | Basic file permissions | DBMS can provide user roles and access control |
| Data integrity | Must be handled manually | Constraints can help protect data |
| Backup/recovery | Manual or external | DBMS may support backup and recovery tools |

### Example

A text file:

```text
S001,Alice,12
S002,Ben,12
S003,Clara,13
```

A database table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

The table is easier to query, validate, and connect to other tables.

---

## 8. Database vs Spreadsheet

Students often know spreadsheets, so this comparison is useful.

| Feature | Spreadsheet | Database |
|---|---|---|
| Main purpose | Calculation, small data analysis, simple tables | Structured storage and management of related data |
| Data relationships | Limited | Designed for related tables |
| Large data | Can become slow or messy | Better for large structured datasets |
| Multi-user control | Limited depending on tool | DBMS can manage concurrent users |
| Data integrity | Manual or formula-based | Constraints and keys can enforce rules |
| Query language | Filters/formulas | SQL queries |
| Best use | Small tasks, quick calculations | Reliable long-term data storage |

::: warning Important
A spreadsheet can store tables, but that does not automatically make it a good relational database.
:::

---

## 9. What is a DBMS?

A **DBMS** is a Database Management System.

It is software that helps users and programs:

```text
create databases
create tables
insert data
update data
delete data
search data
control access
back up data
protect data integrity
```

### Examples of DBMS

```text
MySQL
PostgreSQL
SQLite
Microsoft Access
Oracle Database
Microsoft SQL Server
```

### DBMS Responsibilities

| Responsibility | Explanation |
|---|---|
| Store data | Keeps data in database files |
| Retrieve data | Allows queries to search data |
| Update data | Allows controlled changes |
| Security | Controls who can access data |
| Integrity | Helps keep data accurate and consistent |
| Backup/recovery | Helps restore data after problems |
| Concurrency | Manages multiple users accessing data |

---

## 10. Basic Database Structure Preview

A relational database usually stores data in tables.

### Student Table

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

### Basic Terms

| Term | Meaning | Example |
|---|---|---|
| Table | Stores data about one entity | Student |
| Field | A column in a table | studentId, name, yearGroup |
| Record | A row in a table | S001, Alice, 12 |
| Entity | Thing being stored | Student |
| Attribute | Property of the entity | name |

### Visual Reminder

```text
Table = whole grid
Field = column
Record = row
Value = one cell
```

---

## 11. Tables, Records, and Fields

### Table

A table stores data about one type of thing.

Example:

```text
Student table stores student data.
Course table stores course data.
Teacher table stores teacher data.
```

### Record

A record is one row in a table.

Example:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |

This row is one student record.

### Field

A field is one column in a table.

Example:

```text
studentId
name
yearGroup
```

Each field stores one type of data.

::: tip Common Confusion
Record = row.  
Field = column.
:::

---

## 12. Relational Database Preview

A relational database uses multiple related tables.

Instead of storing everything in one huge table, data is separated into smaller related tables.

### Student Table

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |

### Course Table

| courseId | courseName |
|---|---|
| C001 | Computer Science |
| C002 | Mathematics |

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |
| E003 | S001 | C002 |

This shows:

```text
Alice takes Computer Science and Mathematics.
Ben takes Computer Science.
```

The tables are connected by ID fields.

---

## 13. Why Not One Huge Table?

A poor design might store everything in one table:

| studentId | studentName | courseId | courseName | teacherName |
|---|---|---|---|---|
| S001 | Alice | C001 | Computer Science | Mr Smith |
| S001 | Alice | C002 | Mathematics | Ms Green |
| S002 | Ben | C001 | Computer Science | Mr Smith |

Problems:

| Problem | Explanation |
|---|---|
| Repetition | Alice's name is repeated |
| Redundancy | Course and teacher data are repeated |
| Update problem | If Mr Smith's name changes, many rows must be updated |
| Inconsistency risk | One row may be updated but another forgotten |
| Storage waste | Repeated data uses extra storage |

Relational databases reduce these problems by separating data into related tables.

---

## 14. Primary Key Preview

A **primary key** uniquely identifies each record in a table.

In the Student table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

The primary key can be:

```text
studentId
```

Why?

```text
Each studentId is unique.
It identifies one specific student.
```

### Bad Primary Key Example

`name` is not always a good primary key because two students may have the same name.

::: info Preview
Primary keys will be explained fully in the Primary Keys and Foreign Keys page.
:::

---

## 15. Foreign Key Preview

A **foreign key** is a field in one table that refers to a primary key in another table.

Example:

### Student Table

| studentId | name |
|---|---|
| S001 | Alice |
| S002 | Ben |

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |

In the Enrollment table:

```text
studentId
```

is a foreign key because it refers to `studentId` in the Student table.

This is how tables are linked.

::: info Preview
Foreign keys will be explained fully later. For now, remember that they connect related tables.
:::

---

## 16. Query Preview

A query is a request for data.

In relational databases, SQL is often used to write queries.

### Example Table: Student

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

### Example Query

```sql
SELECT name
FROM Student
WHERE yearGroup = 12;
```

### Result

| name |
|---|
| Alice |
| Ben |

This query asks:

```text
Show the names of students in Year 12.
```

SQL will be taught in detail later.

---

## 17. Advantages of Databases

| Advantage | Explanation |
|---|---|
| Reduced redundancy | Less unnecessary repeated data |
| Improved consistency | Data is stored in one correct place |
| Easier searching | Queries can retrieve specific data |
| Easier updating | DBMS can update records systematically |
| Data sharing | Multiple users/programs can access data |
| Security | Access permissions can protect data |
| Backup and recovery | Data can be backed up and restored |
| Data integrity | Constraints can help keep data valid |
| Scalability | Databases can handle large datasets better than simple files |

### Example

If a course name changes, a well-designed database may only need one update in the Course table, instead of updating many repeated rows.

---

## 18. Possible Issues with Databases

Databases are useful, but they also have issues.

| Issue | Explanation |
|---|---|
| Cost | DBMS software, servers, and maintenance may cost money |
| Complexity | Database design and administration can be difficult |
| Security risk | If compromised, large amounts of data may be exposed |
| Privacy concern | Personal data must be protected carefully |
| Need for backup | Data loss can be serious |
| Dependence on system | If database fails, many services may stop |
| Data quality issues | Poor input can still create poor data |
| Training required | Users and administrators need knowledge |

::: tip Balanced Answer
Exam answers often need both benefits and possible problems, depending on the question.
:::

---

## 19. Real-world Database Examples

| Scenario | Data Stored |
|---|---|
| School system | students, teachers, courses, marks, attendance |
| Library system | books, borrowers, loans, due dates |
| Online shop | products, customers, orders, payments |
| Hospital system | patients, doctors, appointments, treatments |
| Bank system | accounts, transactions, customers |
| Game system | players, scores, items, match history |
| Airline system | flights, passengers, bookings, seats |

### Example: Library System

A library database may store:

```text
Book
Borrower
Loan
```

This makes it possible to answer:

```text
Which books are currently borrowed?
Who borrowed this book?
Which books are overdue?
```

---

## 20. Worked Example: School Course Database

### Student Table

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

### Course Table

| courseId | courseName |
|---|---|
| C001 | Computer Science |
| C002 | Mathematics |

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |
| E003 | S001 | C002 |

### Interpretation Questions

| Question | Answer |
|---|---|
| How many student records are there? | 3 |
| Which field identifies each student? | studentId |
| Which table stores course names? | Course |
| Which table links students and courses? | Enrollment |
| Which student takes two courses? | Alice |
| Which students take Computer Science? | Alice and Ben |

---

## 21. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Saying database is just a file | A database is organized and usually managed by DBMS | Database stores structured related data |
| Confusing data and information | Raw values are not always meaningful | Information is processed/contextualized data |
| Saying table and database are the same | A database may contain many tables | Table is one structure inside a database |
| Record = column | Wrong direction | Record is a row |
| Field = row | Wrong direction | Field is a column |
| Thinking primary key is any important field | It must uniquely identify a record | Use unique ID |
| Thinking foreign key is always unique | Foreign keys can repeat | Foreign key links to another table |
| Storing all data in one table | Causes repetition and inconsistency | Use related tables |
| Confusing WHERE and ORDER BY | WHERE filters, ORDER BY sorts | Learn SQL clauses separately |
| Assuming DBMS is the database itself | DBMS manages the database | DBMS is software |

---

## 22. Guided Practice

### Practice 1: Data or Information?

Classify each as data or information.

| Item | Data or Information? |
|---|---|
| `85` |
| `Alice scored 85 in Computer Science` |
| `S001` |
| `Student S001 is Alice in Year 12` |

<details>
<summary>Suggested Answer</summary>

| Item | Data or Information? |
|---|---|
| `85` | Data |
| `Alice scored 85 in Computer Science` | Information |
| `S001` | Data |
| `Student S001 is Alice in Year 12` | Information |

</details>

---

### Practice 2: Record or Field?

Using this table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |

Answer:

1. How many records are there?
2. How many fields are there?
3. Name one field.

<details>
<summary>Suggested Answer</summary>

1. There are 2 records.
2. There are 3 fields.
3. Example field: `studentId`, `name`, or `yearGroup`.

</details>

---

### Practice 3: Identify the DBMS Role

What does a DBMS do?

<details>
<summary>Suggested Answer</summary>

A DBMS is software used to create, manage, query, update, and protect a database. It can also help with security, integrity, backup, and multi-user access.

</details>

---

### Practice 4: Why Not Use Name as Primary Key?

Why might `name` be a poor primary key for a Student table?

<details>
<summary>Suggested Answer</summary>

Two students may have the same name, so `name` may not uniquely identify each record. A unique student ID is better.

</details>

---

### Practice 5: Query Meaning

What does this query ask for?

```sql
SELECT name
FROM Student
WHERE yearGroup = 12;
```

<details>
<summary>Suggested Answer</summary>

It asks for the names of students whose year group is 12.

</details>

---

## 23. Independent Practice

### Question 1

Define database.

### Question 2

Explain the difference between data and information.

### Question 3

Explain what a DBMS is and give two tasks it performs.

### Question 4

Give three real-world examples of databases and state what data each stores.

### Question 5

Using this table, identify the table name, fields, and number of records.

| bookId | title | author |
|---|---|---|
| B001 | Dune | Frank Herbert |
| B002 | Animal Farm | George Orwell |
| B003 | The Hobbit | J.R.R. Tolkien |

### Question 6

Explain why a database may be better than a simple text file for a school system.

### Question 7

Explain why one huge table can cause data redundancy.

### Question 8

Suggest a suitable primary key for a table of library books.

### Question 9

Explain how a foreign key can link two tables.

### Question 10

Write one simple SQL query using `SELECT`, `FROM`, and `WHERE` for the Student table.

---

## 24. Exam-style Questions

### Question 1 [4 marks]

Define database and DBMS.

<details>
<summary>Mark Scheme Style Answer</summary>

A database is an organized collection of related data. A DBMS, or Database Management System, is software used to create, manage, query, update, and protect a database.

</details>

---

### Question 2 [4 marks]

Distinguish between data and information.

<details>
<summary>Mark Scheme Style Answer</summary>

Data is raw facts or values that may not have full meaning by themselves. Information is data that has been processed, organized, or given context so that it becomes meaningful. For example, `85` is data, while `Alice scored 85 in Computer Science` is information.

</details>

---

### Question 3 [5 marks]

Explain two advantages of using a database instead of a simple file.

<details>
<summary>Mark Scheme Style Answer</summary>

A database can reduce data redundancy by storing related data in structured tables rather than repeating the same data many times. It can also improve searching because queries can retrieve specific records quickly. Other valid advantages include improved consistency, data sharing, security, backup and recovery, and data integrity.

</details>

---

### Question 4 [6 marks]

A school stores all student, course, and teacher data in one large table. Explain two problems this may cause.

<details>
<summary>Mark Scheme Style Answer</summary>

One problem is data redundancy because student names, course names, or teacher names may be repeated in many rows. This wastes storage and makes updates harder. Another problem is inconsistency because if repeated data is changed in one row but not another, the database may contain conflicting values. Separating data into related tables can reduce these problems.

</details>

---

### Question 5 [6 marks]

Using the table below, identify the number of records, number of fields, and a possible primary key.

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

<details>
<summary>Mark Scheme Style Answer</summary>

There are 3 records because there are 3 rows of student data. There are 3 fields: `studentId`, `name`, and `yearGroup`. A suitable primary key is `studentId` because it uniquely identifies each student record.

</details>

---

## 25. Classroom Activity

### Activity 1: Human Table

Students stand in rows to represent records. Each student holds cards for fields:

```text
studentId
name
yearGroup
```

The class identifies:

```text
table
record
field
value
```

---

### Activity 2: One Huge Table Problem

Give students a repeated table with student and course data. Ask them to highlight repeated data and suggest separate tables.

---

### Activity 3: Database Examples Brainstorm

Groups choose one real-world system:

```text
library
online shop
hospital
game
school
```

They list:

```text
entities
possible tables
possible fields
possible primary keys
```

---

## 26. Homework

### Homework Part A: Concept Explanation

In 5-6 sentences, explain what a database is and why a school might use one.

---

### Homework Part B: Table Reading

Given this table:

| productId | productName | price | stock |
|---|---|---:|---:|
| P001 | Keyboard | 49.99 | 12 |
| P002 | Mouse | 19.99 | 30 |
| P003 | Monitor | 159.99 | 5 |

Answer:

1. How many records are there?
2. How many fields are there?
3. Which field could be the primary key?
4. Give one example of data.
5. Give one example of information based on the table.

---

### Homework Part C: Scenario Design

For a library system, suggest three possible tables and at least three fields for each table.

---

### Homework Part D: Written Answer

Explain two advantages and two possible issues of using a database.

---

## 27. One-page Revision Summary

| Point | Summary |
|---|---|
| Data | Raw facts or values |
| Information | Data with meaning or context |
| Database | Organized collection of related data |
| DBMS | Software that manages a database |
| Table | Stores data about one entity |
| Record | One row in a table |
| Field | One column in a table |
| Value | One item in a cell |
| Entity | Real-world thing stored in a database |
| Attribute | Property of an entity |
| Flat file | Simple file with limited relational structure |
| Relational database | Data stored in related tables |
| Primary key | Unique identifier for each record |
| Foreign key | Field that links to another table |
| Query | Request for data |
| SQL | Language used to query relational databases |
| Exam phrase | A database stores related data in an organized way so that it can be searched, updated, shared, and protected efficiently |

---

## 28. Quick Self-test

Before moving on, students should be able to answer these:

1. What is data?
2. What is information?
3. What is a database?
4. What is a DBMS?
5. What is a table?
6. What is a record?
7. What is a field?
8. What is the difference between a simple file and a database?
9. Why can one huge table be a poor design?
10. What is one advantage of using a database?
