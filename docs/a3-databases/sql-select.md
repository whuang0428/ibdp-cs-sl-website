# SQL SELECT Basics

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what SQL is
- explain what a query is
- use `SELECT` and `FROM` to retrieve data from a table
- select one field, multiple fields, or all fields
- interpret the result of a simple SQL query
- use aliases to make output headings clearer at a basic level
- understand that SQL is declarative, not step-by-step like Java
- avoid common SQL syntax mistakes
- write simple `SELECT` queries from a scenario
- answer exam-style questions about SQL SELECT basics

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Retrieving data from database tables |
| Connected topics | Tables, records, fields, primary keys, relationships, filtering, sorting, joins |
| Practical focus | Writing and interpreting simple SQL queries |
| Exam relevance | SQL output prediction, query writing, query explanation |

::: tip Learning Focus
Students should first master simple `SELECT ... FROM ...` queries before adding `WHERE`, `ORDER BY`, or joins.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| SQL | 结构化查询语言 | A language used to query and manage relational databases |
| Query | 查询 | A request for data from a database |
| SELECT | 选择字段 | SQL clause used to choose which fields to display |
| FROM | 来自哪张表 | SQL clause used to state which table to use |
| Field | 字段 | A column in a table |
| Record | 记录 | A row in a table |
| Result set | 查询结果集 | The table of results returned by a query |
| `*` | 所有字段 | Wildcard meaning all fields |
| Clause | 子句 | A part of an SQL statement, such as `SELECT` or `FROM` |
| Alias | 别名 | A temporary display name for a field or table |
| Syntax | 语法 | The rules for writing SQL correctly |
| Case-insensitive | 不区分大小写 | SQL keywords can usually be written in uppercase or lowercase |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**SQL** 是 Structured Query Language，用来从 relational database 中查询和管理数据。

最基础的查询结构是：

```sql
SELECT fieldName
FROM tableName;
```

意思是：

```text
从某个 table 中
选择某些 fields 显示出来
```

例如有一个 Student table：

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

如果我们写：

```sql
SELECT name
FROM Student;
```

意思是：

```text
从 Student table 中显示 name field
```

结果是：

| name |
|---|
| Alice |
| Ben |
| Clara |

SQL 和 Java 不一样。  
Java 通常一步一步告诉电脑怎么做。  
SQL 更像是在描述：

```text
我想要什么数据
```

而不是详细写出每一步如何找数据。

</template>

<template #en>

### English Explanation

**SQL** means Structured Query Language. It is used to query and manage data in relational databases.

The most basic query structure is:

```sql
SELECT fieldName
FROM tableName;
```

This means:

```text
from a certain table,
display certain fields
```

For example, given a Student table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

If we write:

```sql
SELECT name
FROM Student;
```

This means:

```text
display the name field from the Student table
```

The result is:

| name |
|---|
| Alice |
| Ben |
| Clara |

SQL is different from Java.  
Java usually tells the computer how to do something step by step.  
SQL describes:

```text
what data you want
```

rather than every step used to find it.

</template>
</LangBlock>

---

## 5. Example Table Used in This Page

Most examples on this page use this Student table.

### Student Table

| studentId | name | yearGroup | averageMark |
|---|---|---:|---:|
| S001 | Alice | 12 | 85.5 |
| S002 | Ben | 12 | 62.0 |
| S003 | Clara | 13 | 91.0 |
| S004 | David | 13 | 48.5 |

### Fields

```text
studentId
name
yearGroup
averageMark
```

### Records

There are:

```text
4 records
```

---

## 6. Basic SELECT FROM Structure

The simplest SQL query usually uses:

```sql
SELECT fieldName
FROM tableName;
```

### Example

```sql
SELECT name
FROM Student;
```

### Result

| name |
|---|
| Alice |
| Ben |
| Clara |
| David |

### Explanation

| SQL Part | Meaning |
|---|---|
| `SELECT name` | Display the `name` field |
| `FROM Student` | Use data from the Student table |
| `;` | Ends the SQL statement |

::: tip Exam Phrase
`SELECT` chooses the fields to display. `FROM` states the table that the data comes from.
:::

---

## 7. Selecting One Field

### Query

```sql
SELECT averageMark
FROM Student;
```

### Result

| averageMark |
|---:|
| 85.5 |
| 62.0 |
| 91.0 |
| 48.5 |

### Meaning

This query displays only the `averageMark` field for every record in the Student table.

---

## 8. Selecting Multiple Fields

To select more than one field, separate field names with commas.

### Query

```sql
SELECT name, averageMark
FROM Student;
```

### Result

| name | averageMark |
|---|---:|
| Alice | 85.5 |
| Ben | 62.0 |
| Clara | 91.0 |
| David | 48.5 |

### Important Syntax

Use commas between fields:

```sql
SELECT name, averageMark
FROM Student;
```

Not:

```sql
SELECT name averageMark
FROM Student;
```

The second version is incorrect or may be interpreted differently depending on the DBMS.

---

## 9. Selecting All Fields with `*`

The `*` symbol means all fields.

### Query

```sql
SELECT *
FROM Student;
```

### Result

| studentId | name | yearGroup | averageMark |
|---|---|---:|---:|
| S001 | Alice | 12 | 85.5 |
| S002 | Ben | 12 | 62.0 |
| S003 | Clara | 13 | 91.0 |
| S004 | David | 13 | 48.5 |

### When to Use `*`

`SELECT *` is useful for quick viewing.

However, in a real system, it is often better to select only the fields needed.

| Choice | Use |
|---|---|
| `SELECT *` | Show all fields |
| `SELECT name, averageMark` | Show only needed fields |

::: warning Good Habit
In exam answers, use `SELECT *` only when the question asks for all fields or when all fields are clearly needed.
:::

---

## 10. Result Set

The output of a query is called a **result set**.

### Query

```sql
SELECT name, yearGroup
FROM Student;
```

### Result Set

| name | yearGroup |
|---|---:|
| Alice | 12 |
| Ben | 12 |
| Clara | 13 |
| David | 13 |

The result set is itself table-like, but it is not necessarily a stored table.  
It is the output produced by the query.

---

## 11. SQL Keywords and Case

SQL keywords are often written in uppercase:

```sql
SELECT name
FROM Student;
```

Many database systems also accept lowercase:

```sql
select name
from Student;
```

For teaching and exams, use uppercase keywords because they are clearer.

### Recommended Style

```sql
SELECT name, averageMark
FROM Student;
```

### Style Rule

| Part | Style |
|---|---|
| SQL keywords | uppercase |
| Table/field names | match the given table |
| Each main clause | often on a new line |
| End statement | semicolon if expected |

---

## 12. Field Names Must Match the Table

Given Student table:

| studentId | name | yearGroup | averageMark |
|---|---|---:|---:|

This is valid:

```sql
SELECT name
FROM Student;
```

This is invalid:

```sql
SELECT studentName
FROM Student;
```

Why?

```text
There is no field called studentName in the Student table.
```

### Exam Tip

Always copy field names exactly from the table given in the question.

---

## 13. Table Names Must Match

Given the table is called:

```text
Student
```

This is valid:

```sql
SELECT name
FROM Student;
```

This may be invalid if the table is not called Students:

```sql
SELECT name
FROM Students;
```

### Common Mistake

Adding `s` to table names when the schema uses singular names.

```text
Student ≠ Students
Course ≠ Courses
Book ≠ Books
```

Use the table name exactly as given.

---

## 14. Selecting Fields from a Product Table

### Product Table

| productId | productName | price | stock |
|---|---|---:|---:|
| P001 | Keyboard | 49.99 | 12 |
| P002 | Mouse | 19.99 | 30 |
| P003 | Monitor | 159.99 | 5 |

### Query 1

```sql
SELECT productName
FROM Product;
```

Result:

| productName |
|---|
| Keyboard |
| Mouse |
| Monitor |

### Query 2

```sql
SELECT productName, price
FROM Product;
```

Result:

| productName | price |
|---|---:|
| Keyboard | 49.99 |
| Mouse | 19.99 |
| Monitor | 159.99 |

### Query 3

```sql
SELECT *
FROM Product;
```

Result:

| productId | productName | price | stock |
|---|---|---:|---:|
| P001 | Keyboard | 49.99 | 12 |
| P002 | Mouse | 19.99 | 30 |
| P003 | Monitor | 159.99 | 5 |

---

## 15. Query Reading Method

When reading a simple SQL query, follow this method:

```text
1. Look at FROM first: which table is used?
2. Look at SELECT: which fields are displayed?
3. Create the result table with only those fields.
4. Include all records unless there is a WHERE clause.
```

### Example

```sql
SELECT name, yearGroup
FROM Student;
```

Step-by-step:

| Step | Answer |
|---|---|
| FROM | Student table |
| SELECT | name and yearGroup |
| Records included | all Student records |
| Result headings | name, yearGroup |

Result:

| name | yearGroup |
|---|---:|
| Alice | 12 |
| Ben | 12 |
| Clara | 13 |
| David | 13 |

---

## 16. SQL Does Not Change Data Here

Basic `SELECT` queries retrieve data. They do not change the stored table.

```sql
SELECT name
FROM Student;
```

This only displays data.

It does not:

```text
insert new records
update values
delete records
change table structure
```

### Important Distinction

| SQL Type | Purpose |
|---|---|
| `SELECT` | retrieve data |
| `INSERT` | add data |
| `UPDATE` | change data |
| `DELETE` | remove data |

This course page focuses only on `SELECT`.

---

## 17. Alias with AS

An alias gives a temporary display name to a field in the result set.

### Query

```sql
SELECT name AS studentName
FROM Student;
```

### Result

| studentName |
|---|
| Alice |
| Ben |
| Clara |
| David |

The stored field name is still:

```text
name
```

The alias only changes the output heading.

### Another Example

```sql
SELECT averageMark AS average
FROM Student;
```

Result:

| average |
|---:|
| 85.5 |
| 62.0 |
| 91.0 |
| 48.5 |

::: info Note
Aliases are useful, but students should master normal SELECT queries first.
:::

---

## 18. Calculated Fields Preview

Some SQL systems allow calculations in `SELECT`.

### Product Table

| productName | price | stock |
|---|---:|---:|
| Keyboard | 49.99 | 12 |
| Mouse | 19.99 | 30 |

### Query

```sql
SELECT productName, price * stock AS stockValue
FROM Product;
```

### Result

| productName | stockValue |
|---|---:|
| Keyboard | 599.88 |
| Mouse | 599.70 |

This calculates a value for the result set.  
The original table is not changed.

::: warning Preview Only
Calculated fields may not be required in every syllabus or exam style. Treat this as an extension unless your course requires it.
:::

---

## 19. SQL vs Java Thinking

SQL is different from Java.

### Java-like Thinking

```text
Loop through each record.
Get the name.
Print the name.
```

### SQL Thinking

```sql
SELECT name
FROM Student;
```

SQL describes the result wanted. The DBMS decides how to retrieve it.

| Java | SQL |
|---|---|
| Step-by-step instructions | Result-based query |
| Procedural style | Declarative style |
| Often uses loops | Uses query clauses |
| Programmer controls process | DBMS handles retrieval process |

---

## 20. Common Mistakes

| Mistake | Why it is wrong | Better habit |
|---|---|---|
| Forgetting `FROM` | DBMS does not know which table to use | Include `FROM tableName` |
| Misspelling field name | Field cannot be found | Copy field names exactly |
| Misspelling table name | Table cannot be found | Copy table name exactly |
| Missing comma between fields | Syntax error or wrong interpretation | Use commas |
| Using `SELECT *` when only one field is needed | Output contains unnecessary data | Select only required fields |
| Thinking SELECT changes the table | SELECT only retrieves data | Use SELECT for output/query |
| Confusing field and value | SELECT uses field names, not values | Write `SELECT name`, not `SELECT Alice` |
| Using quotes around field names as text | May be interpreted as string literal | Usually do not quote field names |
| Adding plural to table names | Table name may not match schema | Use exact table name |
| Writing Java-style output code | SQL has different syntax | Use SQL clauses |

---

## 21. Guided Practice

### Practice 1: Select One Field

Using Student table:

| studentId | name | yearGroup | averageMark |
|---|---|---:|---:|
| S001 | Alice | 12 | 85.5 |
| S002 | Ben | 12 | 62.0 |

Write a query to show only student names.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT name
FROM Student;
```

</details>

---

### Practice 2: Select Multiple Fields

Write a query to show `name` and `averageMark`.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT name, averageMark
FROM Student;
```

</details>

---

### Practice 3: Predict Result

Given:

```sql
SELECT studentId, name
FROM Student;
```

What fields appear in the result?

<details>
<summary>Suggested Answer</summary>

The result shows:

```text
studentId
name
```

It includes all records unless there is a `WHERE` clause.

</details>

---

### Practice 4: Find the Error

```sql
SELECT name averageMark
FROM Student;
```

What is wrong?

<details>
<summary>Suggested Answer</summary>

There should be a comma between the fields:

```sql
SELECT name, averageMark
FROM Student;
```

</details>

---

### Practice 5: SELECT *

What does this query do?

```sql
SELECT *
FROM Product;
```

<details>
<summary>Suggested Answer</summary>

It displays all fields from the Product table.

</details>

---

## 22. Independent Practice

### Question 1

Define SQL.

### Question 2

Define query.

### Question 3

Using this table, write a query to display all book titles.

| bookId | title | author | pages |
|---|---|---|---:|
| B001 | Dune | Frank Herbert | 412 |
| B002 | Animal Farm | George Orwell | 112 |
| B003 | The Hobbit | J.R.R. Tolkien | 310 |

### Question 4

Write a query to display `title` and `author`.

### Question 5

Write a query to display all fields from the Book table.

### Question 6

Predict the result headings:

```sql
SELECT bookId, pages
FROM Book;
```

### Question 7

Explain the difference between `SELECT title FROM Book;` and `SELECT * FROM Book;`.

### Question 8

Find and correct the error:

```sql
SELECT title author
FROM Book;
```

### Question 9

Find and correct the error:

```sql
SELECT bookTitle
FROM Book;
```

Assume the field is called `title`.

### Question 10

Write a query using an alias so that `title` is displayed as `bookTitle`.

---

## 23. Exam-style Questions

### Question 1 [4 marks]

Explain the purpose of `SELECT` and `FROM` in an SQL query.

<details>
<summary>Mark Scheme Style Answer</summary>

`SELECT` states which field or fields should be displayed in the query result. `FROM` states which table the data should be retrieved from. Together, they allow data to be selected from a specific database table.

</details>

---

### Question 2 [4 marks]

Given the Product table:

| productId | productName | price |
|---|---|---:|
| P001 | Keyboard | 49.99 |
| P002 | Mouse | 19.99 |

Write an SQL query to display only product names.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT productName
FROM Product;
```

</details>

---

### Question 3 [5 marks]

Given the Student table:

| studentId | name | yearGroup | averageMark |
|---|---|---:|---:|
| S001 | Alice | 12 | 85.5 |
| S002 | Ben | 12 | 62.0 |

State the result of:

```sql
SELECT name, averageMark
FROM Student;
```

<details>
<summary>Mark Scheme Style Answer</summary>

| name | averageMark |
|---|---:|
| Alice | 85.5 |
| Ben | 62.0 |

The query displays only the `name` and `averageMark` fields for all records in the Student table.

</details>

---

### Question 4 [5 marks]

Explain why `SELECT *` may not always be the best choice.

<details>
<summary>Mark Scheme Style Answer</summary>

`SELECT *` returns all fields from a table. This may include unnecessary data, making the result harder to read and less efficient, especially if the table has many fields. It is usually better to select only the fields needed for the task.

</details>

---

### Question 5 [6 marks]

Identify and correct two errors in the query below.

```sql
SELECT studentName averageMark
FROM Students;
```

The table is called `Student` and the fields are `name` and `averageMark`.

<details>
<summary>Mark Scheme Style Answer</summary>

Correct query:

```sql
SELECT name, averageMark
FROM Student;
```

Errors:

- `studentName` is not the correct field name; the field is `name`.
- A comma is missing between selected fields.
- `Students` is not the correct table name; the table is `Student`.

Any two correctly explained errors can receive credit.

</details>

---

## 24. Classroom Activity

### Activity 1: Query Builder Cards

Give students cards:

```text
SELECT
FROM
Student
name
averageMark
,
;
```

Students arrange them into valid SQL queries.

---

### Activity 2: Result Set Prediction

Give students a small table and several `SELECT ... FROM ...` queries.  
They must draw the result set for each query.

---

### Activity 3: Error Detective

Students correct SQL mistakes such as:

```sql
SELECT name averageMark FROM Student;
SELECT studentName FROM Student;
SELECT name FROM Students;
```

They must explain each correction.

---

## 25. Homework

### Homework Part A: Concept Explanation

In 4-5 sentences, explain what SQL is and how `SELECT` and `FROM` are used.

---

### Homework Part B: Query Writing

Using this table:

| playerId | username | score | level |
|---|---|---:|---:|
| P001 | Dragon | 1500 | 12 |
| P002 | Shadow | 900 | 8 |
| P003 | Nova | 2100 | 15 |

Write queries to:

1. display all usernames
2. display username and score
3. display all fields
4. display `username` as `playerName`

---

### Homework Part C: Result Prediction

State the result of:

```sql
SELECT username, level
FROM Player;
```

---

### Homework Part D: Error Correction

Correct these queries:

```sql
SELECT username score
FROM Player;

SELECT playerName
FROM Player;

SELECT *
Player;
```

---

## 26. One-page Revision Summary

| Point | Summary |
|---|---|
| SQL | Language used to query relational databases |
| Query | Request for data |
| `SELECT` | Chooses fields to display |
| `FROM` | States the table used |
| Field list | Fields separated by commas |
| `*` | Selects all fields |
| Result set | Output returned by a query |
| Alias | Temporary display name |
| `AS` | Used to create an alias |
| SQL style | Keywords often uppercase |
| SELECT effect | Retrieves data; does not change table |
| Common syntax | `SELECT field FROM table;` |
| Exam phrase | `SELECT` specifies the fields to return and `FROM` specifies the table to retrieve them from |

---

## 27. Quick Self-test

Before moving on, students should be able to answer these:

1. What does SQL stand for?
2. What is a query?
3. What does `SELECT` do?
4. What does `FROM` do?
5. What does `*` mean in `SELECT *`?
6. How do you select two fields?
7. Does `SELECT` change the stored table?
8. What is a result set?
9. Why should field names match the table exactly?
10. What is wrong with `SELECT name score FROM Player;`?
