# SQL Conditions and Sorting

## Page map

- [Lesson goals](#1-lesson-goals)
- [Syllabus mapping](#2-syllabus-mapping)
- [Core checklist](#core-checklist)
- [Key terms and detailed lesson](#3-key-terms)

---

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of the `WHERE` clause
- write SQL queries that filter records using conditions
- use comparison operators such as `=`, `<>`, `<`, `>`, `<=`, and `>=`
- use text and numeric conditions correctly
- combine conditions using `AND`, `OR`, and `NOT`
- use `ORDER BY` to sort query results
- sort results in ascending and descending order
- distinguish selecting fields, filtering records, and sorting results
- interpret SQL queries with `WHERE` and `ORDER BY`
- identify common SQL syntax and logic mistakes
- apply SQL filtering and sorting to school, library, shop, hospital, and game examples
- answer exam-style questions about SQL conditions and sorting

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Retrieving specific records from database tables using SQL conditions and sorting |
| Connected topics | SQL SELECT, tables/records/fields, keys, relationships, normalization, database security |
| Practical focus | Writing queries that filter and order data clearly |
| Exam relevance | `WHERE`, comparison operators, `AND`/`OR`, `ORDER BY`, query interpretation |

::: tip Learning Focus
`SELECT` chooses fields. `FROM` chooses the table. `WHERE` filters records. `ORDER BY` sorts the result.
:::

---

## Start here: SQL pattern first

SQL questions often reward correct structure more than long explanations.

Students should first master the basic `SELECT` + `WHERE` + `ORDER BY` pattern. The goal is to write clear queries that match the field names, table names, and conditions in the question.

---

## Core SQL patterns

Basic filter:

```sql
SELECT field1, field2
FROM tableName
WHERE condition;
```

Two conditions that must both be true:

```sql
SELECT field1, field2
FROM tableName
WHERE condition1 AND condition2;
```

Two conditions where either can be true:

```sql
SELECT field1, field2
FROM tableName
WHERE condition1 OR condition2;
```

Filter and sort ascending:

```sql
SELECT field1, field2
FROM tableName
WHERE condition
ORDER BY fieldName ASC;
```

Filter and sort descending:

```sql
SELECT field1, field2
FROM tableName
WHERE condition
ORDER BY fieldName DESC;
```

---

## Core checklist

After studying this page, you should be able to:

- write a `SELECT` query using specific fields
- use `WHERE` to filter records
- use comparison operators such as `=`, `<`, `>`, `<=`, `>=`, `<>`
- combine conditions using `AND` and `OR`
- use brackets when logic may be ambiguous
- sort results using `ORDER BY ASC` or `DESC`
- match field names and table names exactly from the question

---

## Common mistakes

Check for these before you finish a SQL answer:

- using the wrong field name
- forgetting quotation marks around text values
- using `AND` when `OR` is needed
- using `OR` when `AND` is needed
- forgetting `ORDER BY`
- sorting in the wrong direction
- selecting too many fields
- missing `DISTINCT` when the question asks for each result only once
- writing conditions that do not match the scenario

---

## Exam answer pattern

When writing a SQL query from a question, use this order:

1. Identify the table name.
2. Identify the fields to display.
3. Identify the condition or conditions.
4. Decide whether `AND` or `OR` is needed.
5. Decide whether sorting is needed.
6. Write the query using the exact field names from the question.

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| SQL | 结构化查询语言 | Language used to query and manage relational databases |
| Query | 查询 | Request for data from a database |
| SELECT | 选择字段 | Chooses fields/columns to display |
| FROM | 来自哪个表 | Chooses the table to query |
| WHERE | 条件过滤 | Filters records based on a condition |
| Condition | 条件 | Test that each record must satisfy |
| Comparison operator | 比较运算符 | Operator used to compare values |
| `=` | 等于 | Equal to |
| `<>` | 不等于 | Not equal to |
| `<` | 小于 | Less than |
| `>` | 大于 | Greater than |
| `<=` | 小于等于 | Less than or equal to |
| `>=` | 大于等于 | Greater than or equal to |
| AND | 并且 | Both conditions must be true |
| OR | 或者 | At least one condition must be true |
| NOT | 非 | Reverses a condition |
| ORDER BY | 排序 | Sorts query results |
| ASC | 升序 | Ascending order |
| DESC | 降序 | Descending order |
| String literal | 字符串常量 | Text value written in quotes |
| Numeric value | 数值 | Number used without quotes in many SQL systems |
| Result set | 结果集 | Data returned by a query |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

上一页我们学习了最基础的 SQL：

```sql
SELECT FirstName, LastName
FROM Student;
```

这个 query 会显示 Student table 中所有 records 的名字。

但实际使用中，我们经常只想找一部分 records。  
这时候就需要：

```sql
WHERE
```

例如只找 GradeLevel 是 10 的学生：

```sql
SELECT FirstName, LastName
FROM Student
WHERE GradeLevel = 10;
```

这里：

```text
SELECT FirstName, LastName = 显示哪些 fields
FROM Student = 从哪个 table 查
WHERE GradeLevel = 10 = 只保留符合条件的 records
```

如果想排序，就使用：

```sql
ORDER BY
```

例如按 LastName 排序：

```sql
SELECT FirstName, LastName
FROM Student
ORDER BY LastName ASC;
```

简单来说：

```text
SELECT = choose columns
FROM = choose table
WHERE = filter rows
ORDER BY = sort the result
```

</template>

<template #en>

### English Explanation

In the previous page, we learned basic SQL:

```sql
SELECT FirstName, LastName
FROM Student;
```

This query displays the names of all records in the Student table.

But in real use, we often want only some records.  
For this, we use:

```sql
WHERE
```

For example, to find only students in GradeLevel 10:

```sql
SELECT FirstName, LastName
FROM Student
WHERE GradeLevel = 10;
```

Here:

```text
SELECT FirstName, LastName = which fields to display
FROM Student = which table to query
WHERE GradeLevel = 10 = only keep records that match the condition
```

If we want to sort the result, we use:

```sql
ORDER BY
```

For example, sort by LastName:

```sql
SELECT FirstName, LastName
FROM Student
ORDER BY LastName ASC;
```

In simple terms:

```text
SELECT = choose columns
FROM = choose table
WHERE = filter rows
ORDER BY = sort the result
```

</template>
</LangBlock>

---

## 5. Basic Query Structure

A basic SQL query with filtering and sorting can follow this structure:

```sql
SELECT field1, field2
FROM table_name
WHERE condition
ORDER BY field_name ASC;
```

### Clause Order

The usual order is:

```text
SELECT
FROM
WHERE
ORDER BY
```

### Example

```sql
SELECT FirstName, LastName, GradeLevel
FROM Student
WHERE GradeLevel = 10
ORDER BY LastName ASC;
```

### Meaning

```text
Show FirstName, LastName, and GradeLevel
from the Student table
only for students in GradeLevel 10
sorted by LastName in ascending order
```

::: warning Common Exam Mistake
Do not write `ORDER BY` before `WHERE`. The usual order is `WHERE` before `ORDER BY`.
:::

---

## 6. Sample Tables Used in This Page

### Student Table

| StudentID | FirstName | LastName | GradeLevel | Score |
|---:|---|---|---:|---:|
| 101 | Amy | Chen | 10 | 92 |
| 102 | Ben | Wang | 10 | 78 |
| 103 | Cara | Liu | 11 | 88 |
| 104 | David | Zhang | 11 | 65 |
| 105 | Eva | Li | 10 | 95 |

### Product Table

| ProductID | ProductName | Category | Price | StockQuantity |
|---:|---|---|---:|---:|
| 201 | Keyboard | Accessory | 49.99 | 30 |
| 202 | Mouse | Accessory | 19.99 | 50 |
| 203 | Monitor | Display | 179.99 | 12 |
| 204 | Laptop | Computer | 999.99 | 5 |
| 205 | USB Cable | Accessory | 9.99 | 100 |

### Book Table

| BookID | Title | Author | PublicationYear | Available |
|---:|---|---|---:|---|
| 501 | Dune | Frank Herbert | 1965 | true |
| 502 | The Hobbit | J.R.R. Tolkien | 1937 | false |
| 503 | Foundation | Isaac Asimov | 1951 | true |
| 504 | Neuromancer | William Gibson | 1984 | true |

---

## 7. WHERE Clause

The `WHERE` clause filters records.

### Pattern

```sql
SELECT field1, field2
FROM table_name
WHERE condition;
```

### Example

```sql
SELECT FirstName, LastName, GradeLevel
FROM Student
WHERE GradeLevel = 10;
```

### Result

| FirstName | LastName | GradeLevel |
|---|---|---:|
| Amy | Chen | 10 |
| Ben | Wang | 10 |
| Eva | Li | 10 |

### Key Idea

`WHERE` does not choose columns.  
It chooses which rows/records should be included.

---

## 8. Comparison Operators

SQL conditions often use comparison operators.

| Operator | Meaning | Example |
|---|---|---|
| `=` | equal to | `GradeLevel = 10` |
| `<>` | not equal to | `GradeLevel <> 10` |
| `<` | less than | `Price < 50` |
| `>` | greater than | `Score > 80` |
| `<=` | less than or equal to | `Score <= 70` |
| `>=` | greater than or equal to | `StockQuantity >= 20` |

### Example

```sql
SELECT FirstName, Score
FROM Student
WHERE Score > 80;
```

This returns students with scores greater than 80.

---

## 9. Equal To Condition

Use `=` to match exact values.

### Numeric Example

```sql
SELECT FirstName, LastName
FROM Student
WHERE GradeLevel = 10;
```

### Text Example

```sql
SELECT ProductName, Price
FROM Product
WHERE Category = 'Accessory';
```

### Important

Text values are usually written in quotes:

```sql
'Accessory'
'Computer Science'
'Amy'
```

Numeric values usually do not need quotes:

```sql
10
92
49.99
```

---

## 10. Not Equal To Condition

Use `<>` to mean not equal to.

### Example

```sql
SELECT FirstName, LastName, GradeLevel
FROM Student
WHERE GradeLevel <> 10;
```

### Result

| FirstName | LastName | GradeLevel |
|---|---|---:|
| Cara | Liu | 11 |
| David | Zhang | 11 |

### Note

Some SQL systems also support `!=`, but `<>` is standard SQL and exam-friendly.

---

## 11. Greater Than and Less Than

Use comparison operators for numbers and dates.

### Greater Than

```sql
SELECT FirstName, Score
FROM Student
WHERE Score > 80;
```

### Less Than

```sql
SELECT ProductName, Price
FROM Product
WHERE Price < 50;
```

### Result for Product Query

| ProductName | Price |
|---|---:|
| Keyboard | 49.99 |
| Mouse | 19.99 |
| USB Cable | 9.99 |

---

## 12. Greater Than or Equal To and Less Than or Equal To

### Greater Than or Equal To

```sql
SELECT FirstName, Score
FROM Student
WHERE Score >= 90;
```

### Less Than or Equal To

```sql
SELECT FirstName, Score
FROM Student
WHERE Score <= 70;
```

### Key Difference

```text
> 90 means more than 90
>= 90 means 90 or more
```

```text
< 70 means less than 70
<= 70 means 70 or less
```

---

## 13. Text Conditions

Text values usually need quotes.

### Correct

```sql
SELECT ProductName, Price
FROM Product
WHERE Category = 'Accessory';
```

### Incorrect

```sql
SELECT ProductName, Price
FROM Product
WHERE Category = Accessory;
```

### Why Incorrect?

Without quotes, SQL may treat `Accessory` as a field name instead of a text value.

---

## 14. Boolean Conditions

Some tables include Boolean fields.

Example:

| BookID | Title | Available |
|---:|---|---|
| 501 | Dune | true |
| 502 | The Hobbit | false |

### Example

```sql
SELECT Title
FROM Book
WHERE Available = true;
```

### Note

Boolean syntax can vary slightly between database systems.

Some systems use:

```sql
WHERE Available = 1
```

For exam-style answers, use the style shown in the question or table.

---

## 15. Date Conditions Preview

Date values are often written in quotes.

### Example

```sql
SELECT Title, PublicationYear
FROM Book
WHERE PublicationYear > 1960;
```

For actual date fields, you may see:

```sql
SELECT AppointmentID, AppointmentDate
FROM Appointment
WHERE AppointmentDate = '2026-05-22';
```

### Important

Different database systems may format dates differently.  
In exams, follow the date format given in the question.

---

## 16. AND

`AND` combines conditions where both conditions must be true.

### Pattern

```sql
SELECT field1, field2
FROM table_name
WHERE condition1 AND condition2;
```

### Example

```sql
SELECT FirstName, LastName, GradeLevel, Score
FROM Student
WHERE GradeLevel = 10 AND Score >= 90;
```

### Result

| FirstName | LastName | GradeLevel | Score |
|---|---|---:|---:|
| Amy | Chen | 10 | 92 |
| Eva | Li | 10 | 95 |

### Meaning

Only students who are both:

```text
GradeLevel = 10
Score >= 90
```

are returned.

---

## 17. OR

`OR` combines conditions where at least one condition must be true.

### Example

```sql
SELECT FirstName, LastName, GradeLevel
FROM Student
WHERE GradeLevel = 10 OR GradeLevel = 11;
```

This returns records where either condition is true.

### Product Example

```sql
SELECT ProductName, Category
FROM Product
WHERE Category = 'Accessory' OR Category = 'Display';
```

### Meaning

Show products that are either:

```text
Accessory
or Display
```

---

## 18. AND vs OR

| Operator | Meaning | Result |
|---|---|---|
| AND | both conditions true | narrower result |
| OR | at least one condition true | wider result |

### Example

```sql
WHERE Category = 'Accessory' AND Price < 20
```

means:

```text
Accessory products that are also cheaper than 20
```

```sql
WHERE Category = 'Accessory' OR Price < 20
```

means:

```text
products that are Accessory, plus any product cheaper than 20
```

### Common Mistake

Students often use `OR` when they need `AND`.

---

## 19. NOT

`NOT` reverses a condition.

### Example

```sql
SELECT ProductName, Category
FROM Product
WHERE NOT Category = 'Accessory';
```

This means:

```text
show products that are not in the Accessory category
```

Equivalent idea:

```sql
WHERE Category <> 'Accessory'
```

### Use Carefully

`NOT` can make conditions harder to read.  
For simple not-equal comparisons, `<>` is often clearer.

---

## 20. Parentheses in Conditions

Parentheses make the logic clearer when using `AND` and `OR`.

### Example

```sql
SELECT ProductName, Category, Price
FROM Product
WHERE Category = 'Accessory' AND (Price < 20 OR StockQuantity > 80);
```

### Why Parentheses Matter

They show which conditions should be grouped together.

Without parentheses, the database may interpret the condition differently from what the student intended.

### Exam Advice

Use parentheses when a query has both `AND` and `OR`.

---

## 21. ORDER BY

`ORDER BY` sorts the result set.

### Pattern

```sql
SELECT field1, field2
FROM table_name
ORDER BY field_name;
```

### Example

```sql
SELECT FirstName, LastName, Score
FROM Student
ORDER BY Score;
```

By default, many SQL systems sort in ascending order.

### Result

| FirstName | LastName | Score |
|---|---|---:|
| David | Zhang | 65 |
| Ben | Wang | 78 |
| Cara | Liu | 88 |
| Amy | Chen | 92 |
| Eva | Li | 95 |

---

## 22. ASC and DESC

`ASC` means ascending order.

```sql
SELECT FirstName, Score
FROM Student
ORDER BY Score ASC;
```

`DESC` means descending order.

```sql
SELECT FirstName, Score
FROM Student
ORDER BY Score DESC;
```

### Ascending

```text
small to large
A to Z
oldest to newest in many date contexts
```

### Descending

```text
large to small
Z to A
newest to oldest in many date contexts
```

---

## 23. Sort by Text Field

### Example

```sql
SELECT FirstName, LastName
FROM Student
ORDER BY LastName ASC;
```

### Result

| FirstName | LastName |
|---|---|
| Amy | Chen |
| Eva | Li |
| Cara | Liu |
| Ben | Wang |
| David | Zhang |

### Explanation

The result is sorted alphabetically by `LastName`.

---

## 24. Sort by Numeric Field

### Example

```sql
SELECT ProductName, Price
FROM Product
ORDER BY Price DESC;
```

### Result

| ProductName | Price |
|---|---:|
| Laptop | 999.99 |
| Monitor | 179.99 |
| Keyboard | 49.99 |
| Mouse | 19.99 |
| USB Cable | 9.99 |

### Explanation

`DESC` sorts the products from highest price to lowest price.

---

## 25. WHERE and ORDER BY Together

You can filter records first, then sort the result.

### Example

```sql
SELECT ProductName, Category, Price
FROM Product
WHERE Category = 'Accessory'
ORDER BY Price ASC;
```

### Result

| ProductName | Category | Price |
|---|---|---:|
| USB Cable | Accessory | 9.99 |
| Mouse | Accessory | 19.99 |
| Keyboard | Accessory | 49.99 |

### Meaning

```text
First filter to only Accessory products.
Then sort those products by Price from low to high.
```

---

## 26. Sorting by Multiple Fields

SQL can sort by more than one field.

### Example

```sql
SELECT FirstName, LastName, GradeLevel, Score
FROM Student
ORDER BY GradeLevel ASC, Score DESC;
```

### Meaning

```text
Sort by GradeLevel from low to high.
For students with the same GradeLevel, sort by Score from high to low.
```

### Level Control

This is useful, but many exam questions only require sorting by one field.

---

## 27. Selecting, Filtering, and Sorting

These three actions are different.

| SQL Part | What It Does | Example |
|---|---|---|
| SELECT | chooses fields/columns | `SELECT FirstName, Score` |
| FROM | chooses table | `FROM Student` |
| WHERE | filters records/rows | `WHERE Score >= 90` |
| ORDER BY | sorts output | `ORDER BY Score DESC` |

### Example

```sql
SELECT FirstName, Score
FROM Student
WHERE GradeLevel = 10
ORDER BY Score DESC;
```

Meaning:

```text
show FirstName and Score
from Student
only GradeLevel 10 records
sort from highest score to lowest
```

---

## 28. Query Interpretation Method

When reading a query, use this order:

```text
1. FROM: identify the table.
2. WHERE: identify which records are included.
3. SELECT: identify which fields are displayed.
4. ORDER BY: identify how results are sorted.
```

### Example

```sql
SELECT ProductName, Price
FROM Product
WHERE Price < 50
ORDER BY Price DESC;
```

Interpretation:

```text
Table = Product
Filter = Price less than 50
Fields shown = ProductName and Price
Sort = highest price first among matching products
```

---

## 29. Writing Query Method

When writing a query from a prompt:

```text
1. Identify table.
2. Identify fields to display.
3. Identify condition.
4. Identify sorting requirement.
5. Write clauses in SQL order.
```

### Prompt

```text
Show product names and prices for products cheaper than 50, sorted by price from highest to lowest.
```

### SQL

```sql
SELECT ProductName, Price
FROM Product
WHERE Price < 50
ORDER BY Price DESC;
```

---

## 30. Basic WHERE example: grade 10 students

### Prompt

Show the first and last names of Grade 10 students.

### SQL

```sql
SELECT FirstName, LastName
FROM Student
WHERE GradeLevel = 10;
```

### Explanation

```text
SELECT chooses name fields.
FROM uses Student table.
WHERE filters to GradeLevel 10 only.
```

---

## 31. ORDER BY example: high scores

### Prompt

Show students with scores of at least 90, highest score first.

### SQL

```sql
SELECT FirstName, LastName, Score
FROM Student
WHERE Score >= 90
ORDER BY Score DESC;
```

### Result

| FirstName | LastName | Score |
|---|---|---:|
| Eva | Li | 95 |
| Amy | Chen | 92 |

---

## 32. Worked Example: Accessory Products

### Prompt

Show accessory products sorted by price from low to high.

### SQL

```sql
SELECT ProductName, Price
FROM Product
WHERE Category = 'Accessory'
ORDER BY Price ASC;
```

### Result

| ProductName | Price |
|---|---:|
| USB Cable | 9.99 |
| Mouse | 19.99 |
| Keyboard | 49.99 |

---

## 33. Worked Example: Low Stock Products

### Prompt

Show products with stock quantity less than 20.

### SQL

```sql
SELECT ProductName, StockQuantity
FROM Product
WHERE StockQuantity < 20;
```

### Result

| ProductName | StockQuantity |
|---|---:|
| Monitor | 12 |
| Laptop | 5 |

---

## 34. Worked Example: Available Books

### Prompt

Show available books sorted by publication year.

### SQL

```sql
SELECT Title, Author, PublicationYear
FROM Book
WHERE Available = true
ORDER BY PublicationYear ASC;
```

### Result

| Title | Author | PublicationYear |
|---|---|---:|
| Foundation | Isaac Asimov | 1951 |
| Dune | Frank Herbert | 1965 |
| Neuromancer | William Gibson | 1984 |

---

## 35. AND example: AND condition

### Prompt

Show Grade 10 students with score above 80.

### SQL

```sql
SELECT FirstName, LastName, Score
FROM Student
WHERE GradeLevel = 10 AND Score > 80;
```

### Result

| FirstName | LastName | Score |
|---|---|---:|
| Amy | Chen | 92 |
| Eva | Li | 95 |

---

## 36. OR example: OR condition

### Prompt

Show products in the Accessory or Display category.

### SQL

```sql
SELECT ProductName, Category
FROM Product
WHERE Category = 'Accessory' OR Category = 'Display';
```

### Result

| ProductName | Category |
|---|---|
| Keyboard | Accessory |
| Mouse | Accessory |
| Monitor | Display |
| USB Cable | Accessory |

---

## 37. Common exam trap: correct the query

### Incorrect Query

```sql
SELECT ProductName, Price
FROM Product
ORDER BY Price DESC
WHERE Price < 50;
```

### Problem

`WHERE` must come before `ORDER BY`.

### Correct Query

```sql
SELECT ProductName, Price
FROM Product
WHERE Price < 50
ORDER BY Price DESC;
```

---

## 38. Worked Example: Text Quotes

### Incorrect Query

```sql
SELECT ProductName
FROM Product
WHERE Category = Accessory;
```

### Problem

Text value should be in quotes.

### Correct Query

```sql
SELECT ProductName
FROM Product
WHERE Category = 'Accessory';
```

---

## 39. LIKE Preview

Some SQL systems use `LIKE` to match patterns in text.

### Example

```sql
SELECT FirstName, LastName
FROM Student
WHERE LastName LIKE 'C%';
```

This may mean:

```text
last names starting with C
```

### Level Control

`LIKE` is useful, but if your syllabus or exam question only expects basic comparison operators, use simple `=` conditions unless pattern matching is requested.

---

## 40. IN Preview

Some SQL systems use `IN` as a shorter way to check multiple values.

### Example

```sql
SELECT ProductName, Category
FROM Product
WHERE Category IN ('Accessory', 'Display');
```

This is similar to:

```sql
WHERE Category = 'Accessory' OR Category = 'Display'
```

### Level Control

Use `OR` if the exam expects simpler SQL.

---

## 41. Scenario Answer Bank

### If Asked: “Filter records”

Use:

```sql
SELECT Field1, Field2
FROM TableName
WHERE FieldName = value;
```

### If Asked: “Sort records”

Use:

```sql
SELECT Field1, Field2
FROM TableName
ORDER BY FieldName ASC;
```

or:

```sql
ORDER BY FieldName DESC;
```

### If Asked: “Filter and sort”

Use:

```sql
SELECT Field1, Field2
FROM TableName
WHERE condition
ORDER BY FieldName ASC;
```

### If Asked: “Explain a query”

Use this structure:

```text
The query retrieves [fields] from the [table] table. It only includes records where [condition]. The result is sorted by [field] in [ascending/descending] order.
```

---

## 42. Common Mistakes

| Mistake | Why it is wrong | Correct idea |
|---|---|---|
| Putting `ORDER BY` before `WHERE` | wrong clause order | `WHERE` before `ORDER BY` |
| Forgetting quotes around text | SQL treats it as field name | use `'text'` |
| Using `=` for all comparisons | sometimes need `<`, `>`, `<>`, etc. | choose operator carefully |
| Confusing `AND` and `OR` | changes result size | `AND` narrows, `OR` widens |
| Thinking `WHERE` selects columns | `WHERE` filters rows | `SELECT` chooses columns |
| Thinking `ORDER BY` filters data | it only sorts result | use `WHERE` to filter |
| Using field not in table | invalid query | check table schema |
| Forgetting comma in SELECT fields | syntax error | separate fields with commas |
| Sorting by wrong field | result order incorrect | match prompt carefully |
| Using DESC when ASC needed | reverse order | ASC low-to-high, DESC high-to-low |

---

## 43. Guided Practice

### Practice 1: WHERE

Write a query to show students in GradeLevel 10.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT *
FROM Student
WHERE GradeLevel = 10;
```

</details>

---

### Practice 2: Greater Than

Write a query to show students with Score greater than 80.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT FirstName, LastName, Score
FROM Student
WHERE Score > 80;
```

</details>

---

### Practice 3: Text Condition

Write a query to show products in the Accessory category.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT ProductName, Price
FROM Product
WHERE Category = 'Accessory';
```

</details>

---

### Practice 4: ORDER BY

Write a query to show product names and prices sorted from highest price to lowest price.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT ProductName, Price
FROM Product
ORDER BY Price DESC;
```

</details>

---

### Practice 5: AND

Write a query to show GradeLevel 10 students with Score at least 90.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT FirstName, LastName, Score
FROM Student
WHERE GradeLevel = 10 AND Score >= 90;
```

</details>

---

## 44. Independent Practice

### Question 1

Explain what the `WHERE` clause does.

### Question 2

Explain what the `ORDER BY` clause does.

### Question 3

Write a query to show all products cheaper than 50.

### Question 4

Write a query to show products in the `Accessory` category.

### Question 5

Write a query to show students with Score greater than or equal to 90.

### Question 6

Write a query to show students not in GradeLevel 10.

### Question 7

Write a query to show products sorted by price from low to high.

### Question 8

Write a query to show available books sorted by title alphabetically.

### Question 9

Explain the difference between `AND` and `OR`.

### Question 10

Correct this query:

```sql
SELECT ProductName, Price
FROM Product
ORDER BY Price ASC
WHERE Category = 'Accessory';
```

---

## 45. Exam-style Questions

### Question 1 [4 marks]

Explain what this query does.

```sql
SELECT FirstName, LastName
FROM Student
WHERE GradeLevel = 10;
```

<details>
<summary>Mark Scheme Style Answer</summary>

The query retrieves the `FirstName` and `LastName` fields from the `Student` table. It only returns records where `GradeLevel` is equal to 10.

</details>

---

### Question 2 [5 marks]

Write an SQL query to display `ProductName` and `Price` from the `Product` table for products with price less than 50.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT ProductName, Price
FROM Product
WHERE Price < 50;
```

</details>

---

### Question 3 [5 marks]

Write an SQL query to display all fields from the `Book` table for books that are available.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT *
FROM Book
WHERE Available = true;
```

Equivalent Boolean syntax may be accepted depending on the DBMS or question format.

</details>

---

### Question 4 [6 marks]

Write an SQL query to display product names and prices for products in the `Accessory` category, sorted by price from highest to lowest.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT ProductName, Price
FROM Product
WHERE Category = 'Accessory'
ORDER BY Price DESC;
```

</details>

---

### Question 5 [6 marks]

A student writes this query:

```sql
SELECT ProductName, Price
FROM Product
ORDER BY Price DESC
WHERE Price < 50;
```

Identify the error and correct the query.

<details>
<summary>Mark Scheme Style Answer</summary>

The error is that `ORDER BY` has been placed before `WHERE`. The `WHERE` clause should come before `ORDER BY`. The corrected query is:

```sql
SELECT ProductName, Price
FROM Product
WHERE Price < 50
ORDER BY Price DESC;
```

</details>

---

## 46. Independent practice
### Independent practice part A: Concept Explanation

In 6-8 sentences, explain how `SELECT`, `FROM`, `WHERE`, and `ORDER BY` work together.

---

### Independent practice part B: Write Queries

Using this table:

```text
Book(BookID, Title, Author, PublicationYear, Available)
```

Write queries to:

```text
1. show all available books
2. show titles published after 1960
3. show titles and authors sorted by title
4. show unavailable books
5. show all books sorted by publication year from newest to oldest
```

---

### Independent practice part C: Interpret Queries

Explain what each query returns:

```sql
SELECT Title, Author
FROM Book
WHERE Available = true;
```

```sql
SELECT ProductName, Price
FROM Product
WHERE Price >= 100
ORDER BY Price DESC;
```

```sql
SELECT FirstName, LastName, Score
FROM Student
WHERE GradeLevel = 10 AND Score >= 90;
```

---

### Independent practice part D: Misconception Correction

Correct these statements:

```text
WHERE chooses which columns are displayed.
ORDER BY removes records that do not match a condition.
Text values never need quotes in SQL.
AND means at least one condition is true.
DESC sorts from low to high.
```

---

## 47. One-page Revision Summary

| Point | Summary |
|---|---|
| SELECT | Chooses fields/columns |
| FROM | Chooses table |
| WHERE | Filters records/rows |
| ORDER BY | Sorts result |
| `=` | Equal to |
| `<>` | Not equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal |
| `<=` | Less than or equal |
| AND | Both conditions true |
| OR | At least one condition true |
| NOT | Reverses condition |
| ASC | Ascending order |
| DESC | Descending order |
| Text values | Usually written in quotes |
| Clause order | `SELECT`, `FROM`, `WHERE`, `ORDER BY` |
| Exam phrase | `WHERE` filters records based on a condition, and `ORDER BY` sorts the result set in ascending or descending order |

---

## 48. Quick Self-test

Before moving on, students should be able to answer these:

1. What does `WHERE` do?
2. What does `ORDER BY` do?
3. What does `ASC` mean?
4. What does `DESC` mean?
5. What is the difference between `AND` and `OR`?
6. How do you write a text value in SQL?
7. What operator means not equal to?
8. Which clause comes first: `WHERE` or `ORDER BY`?
9. Does `ORDER BY` filter records?
10. Write one query using both `WHERE` and `ORDER BY`.
