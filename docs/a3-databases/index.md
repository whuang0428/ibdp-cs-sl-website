# A3 Databases

::: info Syllabus area
Theme A: Concepts of computer science. A3 Databases helps you understand how structured data is stored, linked, queried, protected, and recovered.
:::

## What you will learn

- how relational databases organize data using tables, records, fields, and keys
- how relationships connect tables and support meaningful data retrieval
- how to write and read simple SQL `SELECT` queries
- how normalization, transactions, security, privacy, and ERDs support database quality

## Assessment connection

- Paper 1: tests database concepts, relationships, keys, SQL, normalization, security, and recovery.
- Paper 2: may be especially useful if your selected option includes databases or applied data systems.
- IA: helps you design persistent data storage, justify table structures, and explain data handling choices.

## 1. Module Overview

A3 Databases introduces how data is stored, organized, linked, queried, protected, and recovered in database systems.

In previous modules, students learned how programs store and process data using:

```text
variables
arrays
objects
attributes
methods
```

In A3, students move from program-level data to database-level data:

```text
tables
records
fields
keys
relationships
SQL queries
normalization
transactions
security
privacy
```

The main goal is for students to understand how a relational database stores structured data and how users can retrieve meaningful information from it.

---

## 2. Learning Goals

By the end of A3 Databases, students should be able to:

- explain what a database is
- distinguish data and information
- explain the role of a DBMS
- distinguish tables, records, fields, and values
- identify entities and attributes in a scenario
- explain primary keys and foreign keys
- explain how relationships link tables
- distinguish one-to-one, one-to-many, and many-to-many relationships
- write simple SQL `SELECT` queries
- use `WHERE` to filter records
- use `ORDER BY` to sort records
- explain why normalization is used
- identify repeated data and poor table design
- explain transactions, commit, rollback, and recovery
- explain database security and privacy issues
- interpret and design simple ERDs
- answer exam-style database questions using correct terminology

---

## 3. A3 Learning Path

Recommended learning order:

```text
Database Fundamentals
→ Tables, Records, and Fields
→ Primary Keys and Foreign Keys
→ Relationships
→ SQL SELECT
→ SQL Conditions and Sorting
→ Normalization
→ Transactions and Recovery
→ Database Security and Privacy
→ ERD Basics
```

This order is intentional.

Students first learn how data is structured in tables.  
Then they learn how tables are linked using keys and relationships.  
After that, they learn how to query data using SQL.  
Finally, they learn design quality, reliability, recovery, security, privacy, and ERD modelling.

---

## 4. Topic Index

| Order | Topic | Main Focus | Link |
|---:|---|---|---|
| 1 | Database Fundamentals | database, DBMS, data vs information, database purpose | [Open](./database-fundamentals) |
| 2 | Tables, Records, and Fields | table structure, records, fields, values, schema | [Open](./tables-records-fields) |
| 3 | Primary Keys and Foreign Keys | unique identifiers, links between tables, referential integrity | [Open](./primary-foreign-keys) |
| 4 | Relationships | one-to-one, one-to-many, many-to-many, linking tables | [Open](./relationships) |
| 5 | SQL SELECT | SELECT, FROM, result sets, selecting fields | [Open](./sql-select) |
| 6 | SQL Conditions and Sorting | WHERE, ORDER BY, AND, OR, ASC, DESC | [Open](./sql-conditions-sorting) |
| 7 | Normalization | reducing redundancy, repeated groups, 1NF/2NF/3NF intro | [Open](./normalization) |
| 8 | Transactions and Recovery | transaction, commit, rollback, ACID, backup, recovery | [Open](./transactions-recovery) |
| 9 | Database Security and Privacy | access control, authentication, encryption, privacy principles | [Open](./database-security-privacy) |
| 10 | ERD Basics | entities, attributes, relationships, cardinality, ERD to tables | [Open](./erd-basics) |

## 5. Concept Map

```text
Database Fundamentals
        ↓
Tables / Records / Fields
        ↓
Primary Keys / Foreign Keys
        ↓
Relationships
        ↓
SQL SELECT
        ↓
WHERE / ORDER BY
        ↓
Normalization
        ↓
Transactions / Recovery
        ↓
Security / Privacy
        ↓
ERD Design
```

::: tip How to study this page
Learn tables, fields, keys, and relationships before SQL. This makes it easier to understand where query results come from instead of writing SQL mechanically.
:::

---

## 6. Bilingual Module Explanation

<LangBlock>
<template #cn>

### 中文说明

A3 Databases 这一单元的核心不是单纯背定义，而是理解：

```text
数据如何被组织
表之间如何连接
如何从数据库中查询需要的信息
如何保证数据可靠、安全、隐私合规
```

一个数据库通常不会只包含一个表。  
例如学校系统可能有：

```text
Student table
Course table
Teacher table
Enrollment table
```

这些表通过 keys 和 relationships 连接起来。

例如：

```text
Student.studentId 是 primary key
Enrollment.studentId 是 foreign key
```

这样数据库就知道 Enrollment 中的学生编号对应 Student 表中的哪一个学生。

后面 SQL 查询也依赖这些结构。  
例如：

```sql
SELECT name
FROM Student
WHERE yearGroup = 12;
```

这条查询的意思是：

```text
从 Student 表中
找出 yearGroup 等于 12 的 records
显示 name field
```

学习 A3 时，学生最容易混淆：

```text
record 和 field
primary key 和 foreign key
WHERE 和 ORDER BY
security 和 privacy
relationship 和 table
normalization 和 sorting
```

所以本模块会反复通过表格、场景、SQL、ERD 和 exam-style questions 来帮助学生建立清楚理解。

</template>

<template #en>

### English Explanation

A3 Databases is not only about memorizing definitions. The core ideas are:

```text
how data is organized
how tables are linked
how useful information is retrieved
how data remains reliable, secure, and private
```

A database usually does not contain only one table.  
For example, a school system may have:

```text
Student table
Course table
Teacher table
Enrollment table
```

These tables are connected using keys and relationships.

For example:

```text
Student.studentId is a primary key
Enrollment.studentId is a foreign key
```

This tells the database which student record an enrollment record refers to.

Later SQL queries depend on this structure.  
For example:

```sql
SELECT name
FROM Student
WHERE yearGroup = 12;
```

This query means:

```text
from the Student table,
find records where yearGroup equals 12,
and display the name field
```

In A3, students often confuse:

```text
record and field
primary key and foreign key
WHERE and ORDER BY
security and privacy
relationship and table
normalization and sorting
```

Therefore, this module uses tables, scenarios, SQL, ERDs, and exam-style questions to build clear understanding.

</template>
</LangBlock>

---

## 7. Core Database Ideas

| Idea | Simple Meaning | Example |
|---|---|---|
| Data | Raw values | `85`, `Alice`, `S001` |
| Information | Data with meaning | Alice scored 85 |
| Database | Organized collection of related data | school database |
| DBMS | Software that manages a database | MySQL, SQLite, Access |
| Table | Stores one type of entity | Student |
| Record | One row | one student's data |
| Field | One column | `studentId`, `name` |
| Value | One cell | `Alice` |
| Primary key | Uniquely identifies a record | `studentId` |
| Foreign key | Links to another table | `Enrollment.studentId` |
| Relationship | Link between tables | Student to Enrollment |
| Query | Request for data | SQL SELECT |
| ERD | Diagram of entities and relationships | Student-Course diagram |

---

## 8. Core Example: School Course Database

This module repeatedly uses a school course database.

### Student Table

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

### Course Table

| courseId | courseName | teacherId |
|---|---|---|
| C001 | Computer Science | T01 |
| C002 | Mathematics | T02 |

### Teacher Table

| teacherId | teacherName |
|---|---|
| T01 | Mr Smith |
| T02 | Ms Green |

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S001 | C002 |
| E003 | S002 | C001 |

### Relationships

```text
Teacher 1 -------- * Course
Student 1 -------- * Enrollment
Course 1 -------- * Enrollment
```

This example supports:

```text
tables
records
fields
primary keys
foreign keys
relationships
many-to-many relationship
SQL queries
normalization
ERD design
```

---

## 9. Table Structure Pattern

A relational table should usually represent one entity.

### Good Design

```text
Student(studentId, name, yearGroup)
Course(courseId, courseName, teacherId)
Teacher(teacherId, teacherName)
Enrollment(enrollmentId, studentId, courseId)
```

### Poor Design

```text
StudentCourse(studentId, studentName, course1, course2, teacher1, teacher2)
```

Problems:

```text
repeated fields
empty cells
limited number of courses
repeated teacher data
harder searching
risk of inconsistency
```

---

## 10. Keys and Relationships Pattern

### Primary Key

```text
Student.studentId
```

uniquely identifies each student.

### Foreign Key

```text
Enrollment.studentId
```

links to:

```text
Student.studentId
```

### Relationship

```text
Student 1 -------- * Enrollment
```

Meaning:

```text
One student can have many enrollment records.
Each enrollment record belongs to one student.
```

::: tip Exam Phrase
Primary keys identify records. Foreign keys link records in different tables.
:::

---

## 11. SQL Pattern

### Basic SELECT

```sql
SELECT name
FROM Student;
```

### SELECT with WHERE

```sql
SELECT name, yearGroup
FROM Student
WHERE yearGroup = 12;
```

### SELECT with ORDER BY

```sql
SELECT name, yearGroup
FROM Student
ORDER BY name ASC;
```

### SELECT with WHERE and ORDER BY

```sql
SELECT name, yearGroup
FROM Student
WHERE yearGroup = 12
ORDER BY name ASC;
```

### Clause Meaning

| Clause | Purpose |
|---|---|
| `SELECT` | chooses fields to display |
| `FROM` | chooses table |
| `WHERE` | filters records |
| `ORDER BY` | sorts result set |
| `ASC` | ascending order |
| `DESC` | descending order |

---

## 12. SQL Reading Method

When reading a query:

```text
1. FROM: Which table is used?
2. WHERE: Which records are kept?
3. SELECT: Which fields are displayed?
4. ORDER BY: How are results sorted?
```

Example:

```sql
SELECT name, yearGroup
FROM Student
WHERE yearGroup = 12
ORDER BY name DESC;
```

Interpretation:

```text
Use Student table.
Keep only Year 12 records.
Display name and yearGroup.
Sort names from Z to A.
```

---

## 13. Normalization Pattern

Normalization improves poor table design.

### Poor Table

| studentId | studentName | course1 | course2 | teacher1 | teacher2 |
|---|---|---|---|---|---|
| S001 | Alice | CS | Maths | Mr Smith | Ms Green |
| S002 | Ben | CS |  | Mr Smith |  |

### Better Tables

```text
Student(studentId, studentName)
Teacher(teacherId, teacherName)
Course(courseId, courseName, teacherId)
Enrollment(enrollmentId, studentId, courseId)
```

### Why Better?

```text
reduces repeated data
removes repeated groups
improves consistency
makes updates safer
supports many-to-many relationships
```

---

## 14. Transactions and Recovery Pattern

A transaction is a logical unit of database work.

Example: bank transfer.

```text
subtract money from Amy
add money to Ben
```

These operations should be:

```text
all completed
or all undone
```

### Important Terms

| Term | Meaning |
|---|---|
| Transaction | logical unit of work |
| Commit | save successful changes |
| Rollback | undo failed transaction |
| Atomicity | all-or-nothing |
| Consistency | valid database state |
| Isolation | transactions do not interfere incorrectly |
| Durability | committed changes survive failure |
| Backup | copy for recovery |
| Transaction log | record of changes |

---

## 15. Security and Privacy Pattern

### Security

Security focuses on protecting data from:

```text
unauthorized access
damage
theft
loss
malicious changes
```

### Privacy

Privacy focuses on:

```text
how personal data is collected
why it is collected
who can access it
how it is used
how long it is kept
whether it is shared fairly
```

### Common Controls

| Control | Purpose |
|---|---|
| Authentication | checks identity |
| Authorization | decides allowed actions |
| Access control | limits data access |
| Encryption | protects data if intercepted or stolen |
| Backup | supports recovery |
| Audit log | tracks actions |
| Data minimization | collects only needed data |

---

## 16. ERD Pattern

An ERD shows:

```text
entities
attributes
relationships
primary keys
foreign keys
cardinality
```

### Example

```text
Student
------------------------
PK studentId
studentName
yearGroup

Course
------------------------
PK courseId
courseName

Enrollment
------------------------
PK enrollmentId
FK studentId
FK courseId
```

Relationships:

```text
Student 1 -------- * Enrollment
Course 1 -------- * Enrollment
```

This resolves the many-to-many relationship between Student and Course.

---

## 19. Student Revision Routine

Students should revise A3 using this method:

```text
read key terms
→ explain using one table
→ identify records and fields
→ mark primary and foreign keys
→ draw relationships
→ write one SQL query
→ predict one query result
→ explain one design/security/recovery issue
```

For each database scenario, students should ask:

```text
What entities exist?
What tables are needed?
What fields does each table need?
What is the primary key?
What foreign keys are needed?
What relationships exist?
Is there repeated data?
What SQL query retrieves the required data?
What security/privacy issues exist?
```

---

## 20. Common A3 Mistakes Overview

| Mistake | Topic | Fix |
|---|---|---|
| Database = table | Fundamentals | Database can contain many related tables |
| Data = information | Fundamentals | Data is raw; information has meaning |
| Record = column | Tables | Record is row |
| Field = row | Tables | Field is column |
| Primary key = important field | Keys | Primary key uniquely identifies record |
| Foreign key must be unique | Keys | Foreign key can repeat |
| Relationship means similar fields | Relationships | Relationship is made through keys |
| Direct many-to-many without linking table | Relationships / ERD | Use linking entity/table |
| `WHERE` sorts data | SQL | WHERE filters |
| `ORDER BY` filters data | SQL | ORDER BY sorts |
| Java `==` in SQL | SQL | SQL uses `=` |
| Normalization = sorting | Normalization | Normalization improves table design |
| Backup = rollback | Transactions | Backup restores; rollback undoes transaction |
| Security = privacy | Security | Security protects; privacy governs use |
| Attribute shown as entity | ERD | Attribute describes entity |

---

## 21. Assessment Focus

A3 questions may ask students to:

- define database, DBMS, table, record, field
- distinguish data and information
- identify records and fields in a table
- choose suitable data types
- identify primary keys and foreign keys
- explain relationships between tables
- classify relationship types
- explain why linking tables are needed
- write SQL SELECT queries
- predict SQL query results
- correct SQL syntax errors
- explain normalization and redundancy
- identify poor table design
- redesign a table into related tables
- explain transactions, commit, rollback
- explain backup, recovery, and transaction logs
- explain security and privacy controls
- design or interpret ERDs

---

## 22. Common Exam-style Command Words

| Command | What Students Should Do |
|---|---|
| State | Give a short direct answer |
| Identify | Name a field, key, table, relationship, or error |
| Define | Give a clear meaning |
| Describe | Give features |
| Explain | Give reason and effect |
| Distinguish | Show clear difference |
| Construct / Write | Produce SQL, table design, or ERD-style structure |
| Interpret | Explain what a table/query/diagram means |
| Justify | Give a reason for a design choice |
| Compare | Give similarities and differences |

---

## 23. Mini Diagnostic Check

Use this before the end-of-module review.

### Question 1

What is the difference between a record and a field?

<details>
<summary>Answer</summary>

A record is one row in a table and stores a complete set of data about one item.  
A field is one column in a table and stores one category of data.

</details>

---

### Question 2

Which field is the best primary key?

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alex | 12 |
| S002 | Alex | 12 |

<details>
<summary>Answer</summary>

`studentId`, because it uniquely identifies each student.  
`name` is not suitable because two students can have the same name.

</details>

---

### Question 3

What is the result of this query?

```sql
SELECT name
FROM Student
WHERE yearGroup = 12;
```

Using:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

<details>
<summary>Answer</summary>

| name |
|---|
| Alice |
| Ben |

</details>

---

### Question 4

Why is this poor design?

```text
Student(studentId, name, course1, course2, course3)
```

<details>
<summary>Answer</summary>

It uses repeated fields and limits the number of courses. It may create empty cells and makes searching harder. A better design uses Student, Course, and Enrollment tables.

</details>

---

### Question 5

What is the difference between authentication and authorization?

<details>
<summary>Answer</summary>

Authentication checks who the user is.  
Authorization checks what that user is allowed to do.

</details>

---

## 24. End-of-module Practice Plan

After finishing A3, students should complete:

| Practice Type | Purpose |
|---|---|
| 10 vocabulary questions | strengthen definitions |
| 5 table reading questions | identify records, fields, keys |
| 5 relationship questions | classify relationship types |
| 8 SQL writing questions | practise SELECT, WHERE, ORDER BY |
| 5 SQL result prediction questions | read queries accurately |
| 3 normalization tasks | redesign poor tables |
| 3 transaction/security written questions | practise explanations |
| 2 ERD design tasks | scenario to database design |

---

## 25. Suggested Mini Project

### School Course Database Design

Create a small database design for:

```text
students
teachers
courses
enrollments
```

Students should produce:

```text
1. table names
2. fields for each table
3. primary keys
4. foreign keys
5. relationship types
6. ERD-style text diagram
7. at least 5 SQL queries
8. one normalization explanation
9. one security/privacy consideration
```

### Required Tables

```text
Student
Teacher
Course
Enrollment
```

### Example SQL Queries

```sql
SELECT name
FROM Student;

SELECT name
FROM Student
WHERE yearGroup = 12;

SELECT courseName
FROM Course
ORDER BY courseName ASC;
```

Advanced students can write join queries if taught.

---

## 26. A3 Completion Checklist

Before moving to A1 Computer Fundamentals, students should be able to:

- [ ] define database
- [ ] define DBMS
- [ ] distinguish data and information
- [ ] explain table, record, field, and value
- [ ] identify records and fields in a table
- [ ] choose suitable field data types
- [ ] explain primary key
- [ ] explain foreign key
- [ ] identify primary and foreign keys
- [ ] explain referential integrity
- [ ] classify relationship types
- [ ] explain many-to-many and linking tables
- [ ] write simple SQL SELECT queries
- [ ] use WHERE to filter
- [ ] use ORDER BY to sort
- [ ] explain normalization
- [ ] identify repeated data and repeated groups
- [ ] explain transactions, commit, and rollback
- [ ] explain backup and recovery
- [ ] distinguish security and privacy
- [ ] explain authentication and authorization
- [ ] interpret simple ERDs
- [ ] convert a scenario into entities, attributes, and relationships

---

## 27. One-page Module Summary

| Area | Key Idea |
|---|---|
| Database Fundamentals | Databases store organized related data |
| Tables, Records, Fields | Table = whole structure; record = row; field = column |
| Keys | Primary keys identify; foreign keys link |
| Relationships | Tables are connected through keys |
| SQL SELECT | Retrieves selected fields from a table |
| SQL Conditions and Sorting | WHERE filters; ORDER BY sorts |
| Normalization | Reduces repeated data and improves consistency |
| Transactions | Related updates should complete fully or be undone |
| Recovery | Backups and logs help restore data |
| Security | Protect data from unauthorized access or loss |
| Privacy | Use personal data responsibly |
| ERD | Visual design of entities, attributes, and relationships |

::: tip Next Module
After A3, the teaching sequence moves to **A1 Computer Fundamentals**. Students will shift from database systems to hardware, software, operating systems, and fundamental computer architecture ideas.
:::

