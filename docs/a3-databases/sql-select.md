# SQL SELECT

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what SQL is
- explain what a SELECT query does
- identify the basic structure of a SELECT statement
- retrieve all fields from a table using `SELECT *`
- retrieve selected fields from a table
- use `FROM` to specify the table
- use column aliases at a simple level
- explain the difference between fields, records, and query results
- interpret simple SQL SELECT queries
- write simple SQL SELECT queries from a scenario
- understand how SELECT connects to tables, fields, records, keys, and relationships
- avoid common syntax and logic mistakes in SQL SELECT
- answer exam-style questions about SQL SELECT

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Retrieving data from database tables using SQL |
| Connected topics | Database fundamentals, tables/records/fields, primary/foreign keys, relationships, normalization, SQL conditions and sorting |
| Practical focus | Writing and interpreting simple SELECT queries |
| Exam relevance | SQL syntax, query interpretation, choosing fields, reading result tables |

::: tip Learning Focus
This page focuses on basic `SELECT` and `FROM`. Conditions such as `WHERE`, sorting with `ORDER BY`, and more complex filtering are covered in the next SQL page.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| SQL | 结构化查询语言 | Structured Query Language used to work with relational databases |
| Query | 查询 | Request for data or operation in a database |
| SELECT | 选择字段 | SQL command used to retrieve data |
| FROM | 来自哪个表 | SQL clause that states which table to query |
| Field / Column | 字段 / 列 | One attribute stored in a table |
| Record / Row | 记录 / 行 | One row in a table |
| Table | 表 | Structure storing records about one entity |
| Result set | 结果集 | Data returned by a query |
| `*` | 所有字段 | Wildcard meaning all fields |
| Alias | 别名 | Alternative name for a field or output column |
| Clause | 子句 | Part of an SQL statement, such as SELECT or FROM |
| Statement | 语句 | Complete SQL instruction |
| Syntax | 语法 | Rules for writing SQL correctly |
| Database | 数据库 | Organized collection of related data |
| Relational database | 关系型数据库 | Database using related tables |
| Primary key | 主键 | Field that uniquely identifies each record |
| Foreign key | 外键 | Field that links to another table |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**SQL** 全称是：

```text
Structured Query Language
```

它是关系型数据库中常用的查询语言。

最基础、最常见的 SQL 操作之一是：

```sql
SELECT
```

`SELECT` 用来从表中取出数据。

例如有一个 Student table：

| StudentID | FirstName | LastName | GradeLevel |
|---:|---|---|---:|
| 101 | Amy | Chen | 10 |
| 102 | Ben | Wang | 10 |
| 103 | Cara | Liu | 11 |

如果我们想查看所有字段，可以写：

```sql
SELECT *
FROM Student;
```

这里：

```text
SELECT * = select all fields
FROM Student = from the Student table
```

如果只想显示名字，可以写：

```sql
SELECT FirstName, LastName
FROM Student;
```

结果只会显示：

| FirstName | LastName |
|---|---|
| Amy | Chen |
| Ben | Wang |
| Cara | Liu |

简单来说：

```text
SELECT = choose which fields to show
FROM = choose which table to get data from
```

</template>

<template #en>

### English Explanation

**SQL** stands for:

```text
Structured Query Language
```

It is a common language used with relational databases.

One of the most basic and common SQL operations is:

```sql
SELECT
```

`SELECT` is used to retrieve data from a table.

For example, suppose there is a Student table:

| StudentID | FirstName | LastName | GradeLevel |
|---:|---|---|---:|
| 101 | Amy | Chen | 10 |
| 102 | Ben | Wang | 10 |
| 103 | Cara | Liu | 11 |

If we want to display all fields, we can write:

```sql
SELECT *
FROM Student;
```

Here:

```text
SELECT * = select all fields
FROM Student = from the Student table
```

If we only want to show names, we can write:

```sql
SELECT FirstName, LastName
FROM Student;
```

The result only shows:

| FirstName | LastName |
|---|---|
| Amy | Chen |
| Ben | Wang |
| Cara | Liu |

In simple terms:

```text
SELECT = choose which fields to show
FROM = choose which table to get data from
```

</template>
</LangBlock>

---

## 5. What Is SQL?

SQL stands for **Structured Query Language**.

SQL is used to:

```text
retrieve data
insert data
update data
delete data
create database objects
control access
```

This page focuses on retrieving data using:

```sql
SELECT
```

### SQL in Relational Databases

SQL is commonly used with relational databases such as:

```text
MySQL
PostgreSQL
SQLite
Microsoft SQL Server
Oracle Database
Microsoft Access
```

### Main Idea

A query asks the database a question.

Example question:

```text
Show all students.
```

SQL query:

```sql
SELECT *
FROM Student;
```

::: tip Exam Phrase
SQL is a language used to manage and query relational databases. A SELECT query retrieves data from one or more tables.
:::

---

## 6. What Is a SELECT Query?

A `SELECT` query retrieves data from a database table.

### Basic Structure

```sql
SELECT field1, field2
FROM table_name;
```

### Meaning

```text
SELECT = which fields to display
FROM = which table to read from
```

### Example

```sql
SELECT FirstName, LastName
FROM Student;
```

This means:

```text
Show the FirstName and LastName fields from the Student table.
```

---

## 7. Sample Tables Used in This Page

### Student Table

| StudentID | FirstName | LastName | GradeLevel | Email |
|---:|---|---|---:|---|
| 101 | Amy | Chen | 10 | amy.chen@school.edu |
| 102 | Ben | Wang | 10 | ben.wang@school.edu |
| 103 | Cara | Liu | 11 | cara.liu@school.edu |

### Course Table

| CourseID | CourseName | TeacherName |
|---|---|---|
| CS | Computer Science | Mr Lee |
| MATH | Mathematics | Ms Smith |
| ENG | English | Mr Brown |

### Product Table

| ProductID | ProductName | Category | Price |
|---:|---|---|---:|
| 201 | Keyboard | Accessory | 49.99 |
| 202 | Mouse | Accessory | 19.99 |
| 203 | Monitor | Display | 179.99 |

These examples will be used to explain basic SELECT syntax.

---

## 8. SELECT All Fields

To retrieve all fields from a table, use:

```sql
SELECT *
FROM Student;
```

The `*` means:

```text
all fields / all columns
```

### Result

| StudentID | FirstName | LastName | GradeLevel | Email |
|---:|---|---|---:|---|
| 101 | Amy | Chen | 10 | amy.chen@school.edu |
| 102 | Ben | Wang | 10 | ben.wang@school.edu |
| 103 | Cara | Liu | 11 | cara.liu@school.edu |

### When Useful

`SELECT *` is useful for:

```text
quickly viewing all data
checking a small table
testing during learning
```

### Caution

In real systems, selecting all fields may be inefficient or may reveal unnecessary sensitive data.

---

## 9. SELECT Specific Fields

To retrieve only certain fields, list the field names after `SELECT`.

### Example

```sql
SELECT FirstName, LastName
FROM Student;
```

### Result

| FirstName | LastName |
|---|---|
| Amy | Chen |
| Ben | Wang |
| Cara | Liu |

### Why Select Specific Fields?

It can:

```text
show only needed data
reduce unnecessary output
improve readability
avoid exposing sensitive fields
make reports cleaner
```

### Another Example

```sql
SELECT ProductName, Price
FROM Product;
```

Result:

| ProductName | Price |
|---|---:|
| Keyboard | 49.99 |
| Mouse | 19.99 |
| Monitor | 179.99 |

---

## 10. FROM Clause

The `FROM` clause tells the database which table to get data from.

### Example

```sql
SELECT CourseName
FROM Course;
```

This means:

```text
Show the CourseName field from the Course table.
```

### Result

| CourseName |
|---|
| Computer Science |
| Mathematics |
| English |

### Common Mistake

Forgetting `FROM`:

```sql
SELECT CourseName;
```

This is incomplete in normal table queries because the database does not know which table to read.

---

## 11. SQL Statement Format

A simple SELECT statement often has this layout:

```sql
SELECT field1, field2
FROM table_name;
```

### Style Notes

SQL keywords are often written in uppercase:

```sql
SELECT
FROM
```

Field and table names use the database's naming style:

```sql
StudentID
FirstName
Student
```

### Semicolon

Many SQL environments use semicolon `;` to mark the end of a statement.

```sql
SELECT FirstName
FROM Student;
```

### Important

SQL formatting can be flexible, but clear formatting makes queries easier to read.

---

## 12. SQL Keywords and Case

SQL keywords are usually not case-sensitive in many database systems.

These may all work in many SQL environments:

```sql
SELECT FirstName FROM Student;
select FirstName from Student;
Select FirstName From Student;
```

### Recommended Style

Use uppercase for SQL keywords:

```sql
SELECT FirstName
FROM Student;
```

This makes the query clearer for exams and readers.

### Caution

Table and field name case sensitivity may depend on the database system.  
In exams, follow the exact names given in the question.

---

## 13. Result Set

A result set is the data returned by a query.

### Example Query

```sql
SELECT FirstName, GradeLevel
FROM Student;
```

### Result Set

| FirstName | GradeLevel |
|---|---:|
| Amy | 10 |
| Ben | 10 |
| Cara | 11 |

### Key Idea

A query does not usually change the original table when using simple `SELECT`.  
It returns a view of selected data.

---

## 14. Fields and Records in Query Results

A query result may include:

```text
some fields
some records
or both
```

In this page, without `WHERE`, the query normally returns:

```text
selected fields
for all records in the table
```

### Example

```sql
SELECT FirstName, LastName
FROM Student;
```

This returns:

```text
FirstName and LastName fields
for every Student record
```

Filtering records with `WHERE` is covered in the next page.

---

## 15. Field Order in SELECT

The order of fields in the `SELECT` clause controls the order of columns in the result.

### Query 1

```sql
SELECT FirstName, LastName
FROM Student;
```

Result:

| FirstName | LastName |
|---|---|
| Amy | Chen |

### Query 2

```sql
SELECT LastName, FirstName
FROM Student;
```

Result:

| LastName | FirstName |
|---|---|
| Chen | Amy |

### Key Idea

The same fields can be shown in different order.

---

## 16. Selecting Fields from Product Table

### Query

```sql
SELECT ProductName, Price
FROM Product;
```

### Result

| ProductName | Price |
|---|---:|
| Keyboard | 49.99 |
| Mouse | 19.99 |
| Monitor | 179.99 |

### Explanation

The query shows only two fields:

```text
ProductName
Price
```

from the table:

```text
Product
```

---

## 17. Selecting Fields from Course Table

### Query

```sql
SELECT CourseID, CourseName
FROM Course;
```

### Result

| CourseID | CourseName |
|---|---|
| CS | Computer Science |
| MATH | Mathematics |
| ENG | English |

### Explanation

This query does not show `TeacherName` because it was not listed after `SELECT`.

---

## 18. Column Aliases

An alias gives a field a different name in the query result.

### Example

```sql
SELECT FirstName AS GivenName, LastName AS FamilyName
FROM Student;
```

### Result

| GivenName | FamilyName |
|---|---|
| Amy | Chen |
| Ben | Wang |
| Cara | Liu |

### Why Use Aliases?

Aliases can make output:

```text
clearer
more readable
more user-friendly
better for reports
```

### Simple Rule

```text
original field name AS output name
```

---

## 19. Aliases Without AS

Some SQL systems allow aliases without `AS`.

```sql
SELECT FirstName GivenName
FROM Student;
```

However, for student learning and exams, this is clearer:

```sql
SELECT FirstName AS GivenName
FROM Student;
```

### Recommendation

Use `AS` when writing aliases because it shows your intention clearly.

---

## 20. Selecting Calculated Values Preview

SQL can sometimes calculate values in a SELECT query.

### Example

Product table:

| ProductName | Price |
|---|---:|
| Keyboard | 49.99 |
| Mouse | 19.99 |

Query:

```sql
SELECT ProductName, Price * 2 AS DoublePrice
FROM Product;
```

### Result

| ProductName | DoublePrice |
|---|---:|
| Keyboard | 99.98 |
| Mouse | 39.98 |

### Level Control

This is a useful preview.  
Most basic SELECT questions only require selecting fields from a table.

---

## 21. SELECT Does Not Mean “Choose Records” Only

Students sometimes think `SELECT` means selecting rows.

Actually, in basic SQL:

```text
SELECT chooses fields/columns to display
FROM chooses table
WHERE chooses records/rows to include
```

### Example Without WHERE

```sql
SELECT FirstName
FROM Student;
```

This shows the FirstName field for all records.

### Filtering Records

To choose only Grade 10 students, use `WHERE`:

```sql
SELECT FirstName
FROM Student
WHERE GradeLevel = 10;
```

`WHERE` is covered in the next page.

---

## 22. Reading a SELECT Query

When reading SQL, use this process:

```text
1. Look at FROM to identify the table.
2. Look at SELECT to identify the fields.
3. Predict the output columns.
4. Without WHERE, include all records.
5. Check field order.
6. Check aliases if used.
```

### Example

```sql
SELECT LastName, FirstName
FROM Student;
```

Interpretation:

```text
Table = Student
Fields = LastName and FirstName
Records = all student records
Output order = LastName first, FirstName second
```

---

## 23. Writing a SELECT Query

When writing SQL from a question:

```text
1. Identify the table.
2. Identify the fields to show.
3. Write SELECT field list.
4. Write FROM table name.
5. Add semicolon.
```

### Example Prompt

```text
Show the first name and email of all students.
```

### SQL

```sql
SELECT FirstName, Email
FROM Student;
```

### Prompt

```text
Show the product name and price of all products.
```

### SQL

```sql
SELECT ProductName, Price
FROM Product;
```

---

## 24. Common SELECT Patterns

### Pattern 1: All Fields

```sql
SELECT *
FROM TableName;
```

### Pattern 2: Selected Fields

```sql
SELECT Field1, Field2
FROM TableName;
```

### Pattern 3: Alias

```sql
SELECT Field1 AS NewName
FROM TableName;
```

### Pattern 4: Calculated Output Preview

```sql
SELECT Field1, Field2 * 2 AS NewField
FROM TableName;
```

---

## 25. SELECT and Database Design

Good database design makes SELECT queries easier.

### Example

If student names and emails are stored clearly:

```text
Student(StudentID, FirstName, LastName, Email)
```

then this is simple:

```sql
SELECT FirstName, LastName, Email
FROM Student;
```

### Poor Design

If names are mixed in one field:

```text
FullName
```

it may be harder to sort or search by last name.

### Connection

SQL SELECT depends on:

```text
clear table names
clear field names
suitable data types
good normalization
```

---

## 26. SELECT and Keys

Keys can be selected like normal fields.

### Example

```sql
SELECT StudentID, FirstName, LastName
FROM Student;
```

### Why Include Keys?

Keys help identify records clearly.

Example:

| StudentID | FirstName | LastName |
|---:|---|---|
| 101 | Amy | Chen |
| 103 | Amy | Chen |

If two students have the same name, `StudentID` distinguishes them.

### Good Practice

When output needs to identify a specific record, include the primary key.

---

## 27. SELECT and Sensitive Data

A query should only retrieve data that is needed.

### Example

If a teacher only needs student names:

```sql
SELECT FirstName, LastName
FROM Student;
```

It may be unnecessary to retrieve:

```text
home address
date of birth
parent phone
medical information
```

### Security Link

Selecting only required fields supports:

```text
privacy
least privilege
data minimization
reduced accidental exposure
```

---

## 28. Worked Example: Student Names

### Prompt

Show all students' first names and last names.

### SQL

```sql
SELECT FirstName, LastName
FROM Student;
```

### Explanation

```text
SELECT chooses FirstName and LastName.
FROM tells the database to use Student table.
No WHERE means all student records are included.
```

---

## 29. Worked Example: Course List

### Prompt

Show all course IDs and course names.

### SQL

```sql
SELECT CourseID, CourseName
FROM Course;
```

### Result

| CourseID | CourseName |
|---|---|
| CS | Computer Science |
| MATH | Mathematics |
| ENG | English |

### Explanation

This shows two selected fields from the Course table.

---

## 30. Worked Example: Product Prices

### Prompt

Show the product name and price for all products.

### SQL

```sql
SELECT ProductName, Price
FROM Product;
```

### Result

| ProductName | Price |
|---|---:|
| Keyboard | 49.99 |
| Mouse | 19.99 |
| Monitor | 179.99 |

---

## 31. Worked Example: All Product Fields

### Prompt

Show all fields from the Product table.

### SQL

```sql
SELECT *
FROM Product;
```

### Explanation

`*` means all fields in the Product table.

---

## 32. Worked Example: Alias

### Prompt

Show product names under the heading `Item`.

### SQL

```sql
SELECT ProductName AS Item
FROM Product;
```

### Result

| Item |
|---|
| Keyboard |
| Mouse |
| Monitor |

### Explanation

`AS Item` changes the output heading.  
It does not rename the actual database field permanently.

---

## 33. Worked Example: Identify the Output

### Query

```sql
SELECT LastName, Email
FROM Student;
```

### Output

| LastName | Email |
|---|---|
| Chen | amy.chen@school.edu |
| Wang | ben.wang@school.edu |
| Liu | cara.liu@school.edu |

### Explanation

The query returns:

```text
LastName and Email
for all records in Student
```

---

## 34. Worked Example: Correct the Query

### Incorrect Query

```sql
SELECT FirstName LastName
FROM Student;
```

### Problem

There is a missing comma between field names.

### Correct Query

```sql
SELECT FirstName, LastName
FROM Student;
```

---

## 35. Worked Example: Correct Missing FROM

### Incorrect Query

```sql
SELECT ProductName, Price;
```

### Problem

The query does not say which table to retrieve data from.

### Correct Query

```sql
SELECT ProductName, Price
FROM Product;
```

---

## 36. Scenario Answer Bank

### If Asked: “Write a query to show all fields”

Use:

```sql
SELECT *
FROM TableName;
```

### If Asked: “Write a query to show selected fields”

Use:

```sql
SELECT Field1, Field2
FROM TableName;
```

### If Asked: “Explain a SELECT query”

Use this structure:

```text
The query retrieves [fields] from the [table] table. Since there is no WHERE clause, it returns those fields for all records in the table.
```

### If Asked: “Identify error”

Check for:

```text
missing comma
missing FROM
wrong table name
wrong field name
missing semicolon if required
using a field not in the table
```

---

## 37. Common Mistakes

| Mistake | Why it is wrong | Correct idea |
|---|---|---|
| Forgetting `FROM` | database does not know table | include `FROM TableName` |
| Missing comma between fields | field list syntax is wrong | `SELECT FirstName, LastName` |
| Using wrong field name | field does not exist | use exact field names from table |
| Using wrong table name | table does not exist | use exact table name |
| Thinking `SELECT *` selects one record | `*` means all fields | records are filtered by `WHERE` |
| Thinking SELECT changes data | basic SELECT only retrieves data | UPDATE/INSERT/DELETE change data |
| Selecting unnecessary sensitive fields | privacy risk | select only needed fields |
| Confusing field and table | fields are columns, table stores records | `SELECT fields FROM table` |
| Forgetting aliases are temporary | alias changes result heading only | original field name unchanged |
| Writing values instead of field names | SELECT usually lists fields | use column names unless selecting literal values |

---

## 38. Guided Practice

### Practice 1: Select All

Write a query to show all fields from the Student table.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT *
FROM Student;
```

</details>

---

### Practice 2: Select Names

Write a query to show `FirstName` and `LastName` from Student.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT FirstName, LastName
FROM Student;
```

</details>

---

### Practice 3: Interpret Query

What does this query show?

```sql
SELECT ProductName, Price
FROM Product;
```

<details>
<summary>Suggested Answer</summary>

It shows the `ProductName` and `Price` fields for all records in the Product table.

</details>

---

### Practice 4: Fix Syntax

Fix this query:

```sql
SELECT FirstName Email
FROM Student;
```

<details>
<summary>Suggested Answer</summary>

```sql
SELECT FirstName, Email
FROM Student;
```

</details>

---

### Practice 5: Alias

Write a query to show `ProductName` with the heading `ItemName`.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT ProductName AS ItemName
FROM Product;
```

</details>

---

## 39. Independent Practice

### Question 1

What does SQL stand for?

### Question 2

What does a SELECT query do?

### Question 3

Explain the purpose of the `FROM` clause.

### Question 4

Write a query to show all fields from the Course table.

### Question 5

Write a query to show `CourseID` and `CourseName` from the Course table.

### Question 6

Write a query to show `ProductName` and `Category` from Product.

### Question 7

Explain the difference between `SELECT *` and `SELECT ProductName, Price`.

### Question 8

Correct this query:

```sql
SELECT StudentID FirstName LastName
FROM Student;
```

### Question 9

Explain what this query returns:

```sql
SELECT FirstName AS GivenName, LastName AS FamilyName
FROM Student;
```

### Question 10

Why might `SELECT *` be a poor choice in a real system?

---

## 40. Exam-style Questions

### Question 1 [4 marks]

Explain what this SQL query does.

```sql
SELECT FirstName, LastName
FROM Student;
```

<details>
<summary>Mark Scheme Style Answer</summary>

The query retrieves the `FirstName` and `LastName` fields from the `Student` table. Since there is no `WHERE` clause, it returns these fields for all records in the Student table.

</details>

---

### Question 2 [4 marks]

Write an SQL query to display all fields from the `Product` table.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT *
FROM Product;
```

</details>

---

### Question 3 [5 marks]

Write an SQL query to display `ProductName` and `Price` from the `Product` table.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT ProductName, Price
FROM Product;
```

</details>

---

### Question 4 [5 marks]

A table called `Course` contains these fields:

```text
CourseID, CourseName, TeacherName
```

Write a query to show only `CourseID` and `CourseName`.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT CourseID, CourseName
FROM Course;
```

</details>

---

### Question 5 [6 marks]

A student writes:

```sql
SELECT FirstName LastName
FROM Student;
```

Identify the error and correct the query.

<details>
<summary>Mark Scheme Style Answer</summary>

The error is that there is no comma between `FirstName` and `LastName`. In a SELECT field list, fields must be separated by commas. The corrected query is:

```sql
SELECT FirstName, LastName
FROM Student;
```

</details>

---

## 41. Classroom Activity

### Activity 1: Query Matching

Students match prompts to SQL queries.

Prompts:

```text
show all students
show student names
show product names and prices
show all courses
show course ID and course name
```

Queries:

```sql
SELECT * FROM Student;
SELECT FirstName, LastName FROM Student;
SELECT ProductName, Price FROM Product;
SELECT * FROM Course;
SELECT CourseID, CourseName FROM Course;
```

---

### Activity 2: Result Prediction

Give students a small table and a SELECT query.  
Students predict the result set.

Focus on:

```text
which fields appear
what order fields appear
whether all records appear
whether aliases change headings
```

---

### Activity 3: Fix Broken Queries

Students fix common errors:

```sql
SELECT FirstName LastName FROM Student;
SELECT ProductName, Price;
SELECT * Student;
SELECT CourseID, CourseName FROM Courses;
SELECT Student.Email FROM Product;
```

---

## 42. Homework

### Homework Part A: Concept Explanation

In 5-6 sentences, explain what SQL SELECT is and how `SELECT` and `FROM` work together.

---

### Homework Part B: Write Queries

Using this table:

```text
Book(BookID, Title, Author, PublicationYear, Available)
```

Write SQL queries to:

```text
1. show all fields
2. show only Title and Author
3. show BookID and Title
4. show Available
5. show Title using alias BookTitle
```

---

### Homework Part C: Interpret Queries

Explain what each query returns:

```sql
SELECT *
FROM Book;
```

```sql
SELECT Title, Author
FROM Book;
```

```sql
SELECT Title AS BookTitle
FROM Book;
```

---

### Homework Part D: Misconception Correction

Correct these statements:

```text
SELECT always changes the data in a table.
SELECT * means select one field only.
FROM tells the database which fields to display.
A comma is not needed between selected fields.
Aliases permanently rename database fields.
```

---

## 43. One-page Revision Summary

| Point | Summary |
|---|---|
| SQL | Structured Query Language |
| Query | Request to database |
| SELECT | Chooses fields to display |
| FROM | Chooses table to read from |
| `*` | All fields |
| Field | Column |
| Record | Row |
| Result set | Data returned by query |
| Alias | Temporary output name |
| Basic pattern | `SELECT Field1, Field2 FROM TableName;` |
| All fields pattern | `SELECT * FROM TableName;` |
| Common error | missing comma between fields |
| Common error | missing FROM clause |
| No WHERE | returns selected fields for all records |
| Privacy tip | select only needed fields |
| Exam phrase | A SELECT query retrieves specified fields from a table and returns them as a result set |

---

## 44. Quick Self-test

Before moving on, students should be able to answer these:

1. What does SQL stand for?
2. What does SELECT do?
3. What does FROM do?
4. What does `*` mean in `SELECT *`?
5. What does a basic SELECT query look like?
6. What is a result set?
7. Does basic SELECT change data?
8. How do you select two fields?
9. What does `AS` do?
10. Why might selecting only needed fields be better than `SELECT *`?
