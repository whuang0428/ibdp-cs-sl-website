# SQL SELECT

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of SQL
- write simple SELECT queries
- identify fields and table names in SQL
- use SELECT and FROM correctly
- interpret simple query results
- avoid common SQL syntax errors

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Retrieving data |
| Connected units | Tables, Fields, SQL Conditions and Sorting |
| Exam relevance | SQL writing, query interpretation, field selection |

::: tip Learning Focus
`SELECT` chooses fields. `FROM` chooses the table.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| SQL | 结构化查询语言 | Structured Query Language used with relational databases |
| Query | 查询 | An instruction to retrieve or manipulate data |
| SELECT | 选择字段 | SQL keyword used to choose fields to display |
| FROM | 来自表 | SQL keyword used to choose the table |
| Field list | 字段列表 | The fields shown in the query result |
| Wildcard | 通配符 | `*`, used to select all fields |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**SQL（Structured Query Language）** 是用于关系型数据库的查询语言。

最基本的查询结构是：

```sql
SELECT fieldName
FROM tableName;
```

`SELECT` 决定显示哪些字段。  
`FROM` 决定从哪个表中取数据。

如果要显示所有字段，可以使用 `*`：

```sql
SELECT *
FROM STUDENT;
```

</template>

<template #en>

### English Explanation

**SQL** stands for Structured Query Language. It is used with relational databases.

The most basic query structure is:

```sql
SELECT fieldName
FROM tableName;
```

`SELECT` decides which fields to display.  
`FROM` decides which table to retrieve data from.

To display all fields, use `*`:

```sql
SELECT *
FROM STUDENT;
```

</template>
</LangBlock>

---

## 5. Real-life Example

STUDENT table:

| StudentID | FirstName | Surname | YearGroup |
|---|---|---|---|
| 1001 | Alice | Chen | 11 |
| 1002 | Ben | Smith | 12 |

Query:

```sql
SELECT FirstName, Surname
FROM STUDENT;
```

Result:

| FirstName | Surname |
|---|---|
| Alice | Chen |
| Ben | Smith |

---

## 6. SQL Pattern

```sql
SELECT field1, field2
FROM tableName;
```

All fields:

```sql
SELECT *
FROM tableName;
```

---

## 7. SQL Examples

```sql
SELECT Title, Author
FROM BOOK;
```

```sql
SELECT ProductName, Price
FROM PRODUCT;
```

```sql
SELECT *
FROM CUSTOMER;
```

---

## 8. Line-by-line Explanation

| SQL Part | Explanation |
|---|---|
| `SELECT Title, Author` | Display only the Title and Author fields |
| `FROM BOOK` | Use the BOOK table |
| `;` | Ends the SQL statement |

---

## 9. Step-by-step Query Execution

| Step | Action |
|---|---|
| 1 | Read selected fields |
| 2 | Identify the table |
| 3 | Retrieve each record |
| 4 | Display only requested fields |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Forgetting FROM | Database does not know table | Always include FROM |
| Misspelling field names | Query may fail | Copy names accurately |
| Using table name as field | Wrong structure | SELECT fields, FROM table |
| Selecting unnecessary fields | Output may not match question | Select only required fields |
| Forgetting commas between fields | Syntax error | Separate fields with commas |

---

## 11. Guided Practice

### Practice 1

Write SQL to display Title and Price from PRODUCT.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT Title, Price
FROM PRODUCT;
```

</details>

### Practice 2

Write SQL to display all fields from STUDENT.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT *
FROM STUDENT;
```

</details>

---

## 12. Independent Practice

1. Display Name and Email from CUSTOMER.
2. Display all fields from BOOK.
3. Display ProductName and Stock from PRODUCT.
4. Explain what `SELECT *` means.

---

## 13. Exam-style Questions

### Question 1 [3 marks]

A table called BOOK contains BookID, Title, Author, and Price. Write a query to display only Title and Author.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT Title, Author
FROM BOOK;
```

</details>

### Question 2 [2 marks]

Explain the purpose of SELECT and FROM.

<details>
<summary>Mark Scheme Style Answer</summary>

SELECT specifies the fields to display. FROM specifies the table from which the data is retrieved.

</details>

---

## 14. Classroom Activity

Students receive table structures and write SELECT queries. Partners check whether fields and tables are correctly used.

---

## 15. Homework

Write 10 SELECT queries using STUDENT, BOOK, PRODUCT, and CUSTOMER tables.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| SQL | Structured Query Language |
| SELECT | Chooses fields |
| FROM | Chooses table |
| `*` | All fields |
| Exam phrase | "`SELECT` identifies the fields to display, while `FROM` identifies the table used." |
