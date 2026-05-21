# SQL WHERE and ORDER BY

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of the `WHERE` clause
- explain the purpose of the `ORDER BY` clause
- write SQL queries that filter records using `WHERE`
- write SQL queries that sort records using `ORDER BY`
- use comparison operators such as `=`, `>`, `<`, `>=`, `<=`, and `<>`
- use text values correctly in SQL conditions
- use `AND` and `OR` in simple conditions
- sort query results in ascending and descending order
- predict the result of SQL queries using `WHERE` and `ORDER BY`
- identify and correct common SQL filtering and sorting mistakes
- answer exam-style questions about SQL filtering and sorting

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Filtering and sorting data in SQL queries |
| Connected topics | SQL SELECT basics, tables, fields, records, data types, relationships |
| Practical focus | Writing `SELECT ... FROM ... WHERE ... ORDER BY ...` queries |
| Exam relevance | SQL writing, SQL interpretation, result prediction, error correction |

::: tip Learning Focus
`WHERE` filters records. `ORDER BY` sorts records. Students must not confuse these two clauses.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| `WHERE` | 条件筛选 | SQL clause used to filter records |
| `ORDER BY` | 排序 | SQL clause used to sort the result set |
| Condition | 条件 | A test used to decide which records are included |
| Comparison operator | 比较运算符 | Operator such as `=`, `>`, `<`, `>=`, `<=`, `<>` |
| `ASC` | 升序 | Sort in ascending order |
| `DESC` | 降序 | Sort in descending order |
| `AND` | 并且 | All conditions must be true |
| `OR` | 或者 | At least one condition must be true |
| Result set | 查询结果集 | The output table returned by a query |
| Filter | 筛选 | Include only records that match a condition |
| Sort | 排序 | Arrange records in a chosen order |
| String literal | 字符串值 | Text value written in quotes, such as `'Alice'` |
| Numeric value | 数值 | Number used without quotes in SQL conditions |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在上一页中，我们学习了基础 SQL：

```sql
SELECT fieldName
FROM tableName;
```

这个结构会显示 table 中所有 records 的指定 fields。

但是在真实查询中，我们经常不想显示所有 records。  
我们可能只想找：

```text
Year 12 的学生
成绩大于 80 的学生
库存小于 10 的商品
价格从低到高排列的商品
```

这时就需要：

```text
WHERE = filter records
ORDER BY = sort records
```

例如：

```sql
SELECT name, averageMark
FROM Student
WHERE averageMark >= 80;
```

意思是：

```text
从 Student table 中
显示 name 和 averageMark
只保留 averageMark 大于等于 80 的 records
```

如果还想排序：

```sql
SELECT name, averageMark
FROM Student
ORDER BY averageMark DESC;
```

意思是：

```text
显示学生姓名和平均分
按照 averageMark 从高到低排序
```

最重要的区分是：

```text
WHERE 决定哪些 records 出现
ORDER BY 决定 records 出现的顺序
```

</template>

<template #en>

### English Explanation

In the previous page, we learned basic SQL:

```sql
SELECT fieldName
FROM tableName;
```

This structure displays selected fields from all records in a table.

However, in real queries, we often do not want every record.  
We may only want:

```text
students in Year 12
students with marks above 80
products with stock below 10
products sorted from lowest price to highest price
```

This is where we use:

```text
WHERE = filter records
ORDER BY = sort records
```

For example:

```sql
SELECT name, averageMark
FROM Student
WHERE averageMark >= 80;
```

This means:

```text
from the Student table,
display name and averageMark,
but only include records where averageMark is at least 80
```

If we want sorting:

```sql
SELECT name, averageMark
FROM Student
ORDER BY averageMark DESC;
```

This means:

```text
display student names and average marks,
sorted from highest averageMark to lowest
```

The most important distinction is:

```text
WHERE decides which records appear
ORDER BY decides the order of the records
```

</template>
</LangBlock>

---

## 5. Example Table Used in This Page

### Student Table

| studentId | name | yearGroup | averageMark | active |
|---|---|---:|---:|---|
| S001 | Alice | 12 | 85.5 | true |
| S002 | Ben | 12 | 62.0 | true |
| S003 | Clara | 13 | 91.0 | true |
| S004 | David | 13 | 48.5 | false |
| S005 | Eva | 12 | 78.0 | true |

### Fields

```text
studentId
name
yearGroup
averageMark
active
```

---

## 6. WHERE Clause

The `WHERE` clause filters records.

### Basic Pattern

```sql
SELECT field1, field2
FROM tableName
WHERE condition;
```

### Example

```sql
SELECT name, averageMark
FROM Student
WHERE yearGroup = 12;
```

### Result

| name | averageMark |
|---|---:|
| Alice | 85.5 |
| Ben | 62.0 |
| Eva | 78.0 |

### Explanation

| SQL Part | Meaning |
|---|---|
| `SELECT name, averageMark` | Display these fields |
| `FROM Student` | Use the Student table |
| `WHERE yearGroup = 12` | Include only records where yearGroup is 12 |

::: tip Exam Phrase
`WHERE` filters records so that only records matching the condition are included in the result set.
:::

---

## 7. Comparison Operators

SQL uses comparison operators in conditions.

| Operator | Meaning | Example |
|---|---|---|
| `=` | equal to | `yearGroup = 12` |
| `>` | greater than | `averageMark > 80` |
| `<` | less than | `averageMark < 50` |
| `>=` | greater than or equal to | `averageMark >= 80` |
| `<=` | less than or equal to | `averageMark <= 60` |
| `<>` | not equal to | `yearGroup <> 12` |

Some DBMSs also allow `!=` for not equal, but `<>` is standard SQL style.

---

## 8. Numeric Conditions

Numbers are normally written without quotes.

### Query

```sql
SELECT name, averageMark
FROM Student
WHERE averageMark >= 80;
```

### Result

| name | averageMark |
|---|---:|
| Alice | 85.5 |
| Clara | 91.0 |

### Explanation

Only records where `averageMark` is at least 80 are included.

---

## 9. Text Conditions

Text values should usually be written in quotes.

### Query

```sql
SELECT studentId, name
FROM Student
WHERE name = 'Alice';
```

### Result

| studentId | name |
|---|---|
| S001 | Alice |

### Important

Use quotes around text values:

```sql
WHERE name = 'Alice'
```

Not:

```sql
WHERE name = Alice
```

Without quotes, the DBMS may think Alice is a field name.

---

## 10. Boolean Conditions

Boolean values depend on the DBMS. In teaching examples, we can use:

```sql
WHERE active = true;
```

### Query

```sql
SELECT name, active
FROM Student
WHERE active = true;
```

### Result

| name | active |
|---|---|
| Alice | true |
| Ben | true |
| Clara | true |
| Eva | true |

Some DBMSs may use `TRUE`, `1`, or different Boolean handling.  
For exam-style questions, follow the format used in the question.

---

## 11. ORDER BY Clause

The `ORDER BY` clause sorts the result set.

### Basic Pattern

```sql
SELECT field1, field2
FROM tableName
ORDER BY fieldName;
```

### Example

```sql
SELECT name, averageMark
FROM Student
ORDER BY averageMark;
```

### Result

| name | averageMark |
|---|---:|
| David | 48.5 |
| Ben | 62.0 |
| Eva | 78.0 |
| Alice | 85.5 |
| Clara | 91.0 |

By default, many SQL systems sort in ascending order.

---

## 12. ASC and DESC

| Keyword | Meaning | Example |
|---|---|---|
| `ASC` | ascending order | smallest to largest, A to Z |
| `DESC` | descending order | largest to smallest, Z to A |

### Ascending

```sql
SELECT name, averageMark
FROM Student
ORDER BY averageMark ASC;
```

Result:

| name | averageMark |
|---|---:|
| David | 48.5 |
| Ben | 62.0 |
| Eva | 78.0 |
| Alice | 85.5 |
| Clara | 91.0 |

### Descending

```sql
SELECT name, averageMark
FROM Student
ORDER BY averageMark DESC;
```

Result:

| name | averageMark |
|---|---:|
| Clara | 91.0 |
| Alice | 85.5 |
| Eva | 78.0 |
| Ben | 62.0 |
| David | 48.5 |

---

## 13. Sorting Text

Text can also be sorted.

### Query

```sql
SELECT name, yearGroup
FROM Student
ORDER BY name ASC;
```

### Result

| name | yearGroup |
|---|---:|
| Alice | 12 |
| Ben | 12 |
| Clara | 13 |
| David | 13 |
| Eva | 12 |

### Descending Text

```sql
SELECT name, yearGroup
FROM Student
ORDER BY name DESC;
```

Result:

| name | yearGroup |
|---|---:|
| Eva | 12 |
| David | 13 |
| Clara | 13 |
| Ben | 12 |
| Alice | 12 |

---

## 14. WHERE and ORDER BY Together

A query can filter records first, then sort the result.

### Pattern

```sql
SELECT field1, field2
FROM tableName
WHERE condition
ORDER BY fieldName ASC;
```

### Example

```sql
SELECT name, averageMark
FROM Student
WHERE yearGroup = 12
ORDER BY averageMark DESC;
```

### Result

| name | averageMark |
|---|---:|
| Alice | 85.5 |
| Eva | 78.0 |
| Ben | 62.0 |

### Explanation

First, `WHERE yearGroup = 12` keeps only:

```text
Alice
Ben
Eva
```

Then, `ORDER BY averageMark DESC` sorts them from highest mark to lowest.

::: warning Clause Order
Use `WHERE` before `ORDER BY`.

Correct:

```sql
SELECT name
FROM Student
WHERE yearGroup = 12
ORDER BY name;
```

Incorrect:

```sql
SELECT name
FROM Student
ORDER BY name
WHERE yearGroup = 12;
```
:::

---

## 15. AND Conditions

`AND` means all conditions must be true.

### Query

```sql
SELECT name, yearGroup, averageMark
FROM Student
WHERE yearGroup = 12 AND averageMark >= 75;
```

### Result

| name | yearGroup | averageMark |
|---|---:|---:|
| Alice | 12 | 85.5 |
| Eva | 12 | 78.0 |

### Explanation

A record must satisfy both:

```text
yearGroup = 12
averageMark >= 75
```

Ben is Year 12, but his averageMark is 62.0, so he is not included.

---

## 16. OR Conditions

`OR` means at least one condition must be true.

### Query

```sql
SELECT name, yearGroup, averageMark
FROM Student
WHERE yearGroup = 13 OR averageMark >= 85;
```

### Result

| name | yearGroup | averageMark |
|---|---:|---:|
| Alice | 12 | 85.5 |
| Clara | 13 | 91.0 |
| David | 13 | 48.5 |

### Explanation

A record is included if:

```text
yearGroup = 13
or
averageMark >= 85
```

Alice is included because averageMark is 85.5.  
Clara and David are included because yearGroup is 13.

---

## 17. AND vs OR

| Clause | Meaning | Records Included |
|---|---|---|
| `AND` | all conditions must be true | narrower result |
| `OR` | at least one condition true | wider result |

### Example

```sql
WHERE yearGroup = 12 AND averageMark >= 75
```

Includes only Year 12 students with averageMark at least 75.

```sql
WHERE yearGroup = 12 OR averageMark >= 75
```

Includes Year 12 students, plus any students from other year groups with averageMark at least 75.

::: tip Quick Memory
`AND` makes the filter stricter.  
`OR` makes the filter wider.
:::

---

## 18. Product Table Examples

### Product Table

| productId | productName | price | stock |
|---|---|---:|---:|
| P001 | Keyboard | 49.99 | 12 |
| P002 | Mouse | 19.99 | 30 |
| P003 | Monitor | 159.99 | 5 |
| P004 | Webcam | 69.99 | 8 |

### Example 1: Low stock

```sql
SELECT productName, stock
FROM Product
WHERE stock < 10;
```

Result:

| productName | stock |
|---|---:|
| Monitor | 5 |
| Webcam | 8 |

### Example 2: Sort by price

```sql
SELECT productName, price
FROM Product
ORDER BY price ASC;
```

Result:

| productName | price |
|---|---:|
| Mouse | 19.99 |
| Keyboard | 49.99 |
| Webcam | 69.99 |
| Monitor | 159.99 |

### Example 3: Expensive low-stock items

```sql
SELECT productName, price, stock
FROM Product
WHERE price > 50 AND stock < 10
ORDER BY price DESC;
```

Result:

| productName | price | stock |
|---|---:|---:|
| Monitor | 159.99 | 5 |
| Webcam | 69.99 | 8 |

---

## 19. Query Reading Method

When reading SQL with `WHERE` and `ORDER BY`, use this method:

```text
1. FROM: identify the table
2. WHERE: filter records
3. SELECT: choose displayed fields
4. ORDER BY: sort the result
```

### Example

```sql
SELECT name, averageMark
FROM Student
WHERE averageMark >= 70
ORDER BY name ASC;
```

Step-by-step:

| Step | Result |
|---|---|
| FROM | Use Student table |
| WHERE | Keep Alice, Clara, Eva |
| SELECT | Show name and averageMark |
| ORDER BY | Sort by name A to Z |

Final result:

| name | averageMark |
|---|---:|
| Alice | 85.5 |
| Clara | 91.0 |
| Eva | 78.0 |

---

## 20. Common Mistakes

| Mistake | Why it is wrong | Better habit |
|---|---|---|
| Confusing `WHERE` and `ORDER BY` | WHERE filters; ORDER BY sorts | Use correct clause |
| Putting `ORDER BY` before `WHERE` | SQL clause order is wrong | `WHERE` comes before `ORDER BY` |
| Forgetting quotes around text | Text may be treated as field name | Use `'Alice'` |
| Using `=` for text without quotes | Syntax/logical error | `WHERE name = 'Alice'` |
| Using Java `==` in SQL | SQL uses `=` for equality | Use `WHERE yearGroup = 12` |
| Writing `=>` instead of `>=` | Wrong operator | Use `>=` |
| Missing commas in SELECT | Syntax error | Separate selected fields with commas |
| Thinking `ORDER BY` removes records | It only changes order | Use WHERE to filter |
| Thinking `WHERE` sorts records | It only filters records | Use ORDER BY to sort |
| Wrong table or field name | Query cannot run | Copy names exactly from schema |
| Using AND when OR is needed | Result too narrow | Check condition meaning |
| Using OR when AND is needed | Result too broad | Check condition meaning |

---

## 21. Guided Practice

### Practice 1: Basic WHERE

Using Student table, write a query to show names of Year 13 students.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT name
FROM Student
WHERE yearGroup = 13;
```

</details>

---

### Practice 2: Numeric Filter

Write a query to show `name` and `averageMark` for students with `averageMark` below 50.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT name, averageMark
FROM Student
WHERE averageMark < 50;
```

</details>

---

### Practice 3: ORDER BY

Write a query to show all student names and average marks sorted from highest mark to lowest.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT name, averageMark
FROM Student
ORDER BY averageMark DESC;
```

</details>

---

### Practice 4: WHERE + ORDER BY

Write a query to show Year 12 students sorted by name A to Z.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT name, yearGroup
FROM Student
WHERE yearGroup = 12
ORDER BY name ASC;
```

</details>

---

### Practice 5: Find the Error

```sql
SELECT name
FROM Student
ORDER BY name
WHERE yearGroup = 12;
```

<details>
<summary>Suggested Answer</summary>

`WHERE` must come before `ORDER BY`.

Correct:

```sql
SELECT name
FROM Student
WHERE yearGroup = 12
ORDER BY name;
```

</details>

---

## 22. Independent Practice

### Question 1

Explain the difference between `WHERE` and `ORDER BY`.

### Question 2

Using the Student table, write a query to display names of active students.

### Question 3

Write a query to display `name` and `averageMark` for students with averageMark at least 80.

### Question 4

Write a query to display all student fields sorted by `yearGroup` ascending.

### Question 5

Write a query to display student names sorted Z to A.

### Question 6

Write a query to display Year 13 students sorted by averageMark descending.

### Question 7

Write a query using `AND` to display active Year 12 students.

### Question 8

Write a query using `OR` to display students who are either Year 13 or have averageMark below 50.

### Question 9

Correct this SQL:

```sql
SELECT name averageMark
FROM Student
WHERE averageMark => 80;
```

### Question 10

Correct this SQL:

```sql
SELECT name
FROM Student
WHERE name = Alice;
```

---

## 23. Exam-style Questions

### Question 1 [4 marks]

Explain the purpose of `WHERE` and `ORDER BY`.

<details>
<summary>Mark Scheme Style Answer</summary>

`WHERE` is used to filter records so that only records matching a condition are included in the result set. `ORDER BY` is used to sort the result set by a specified field, either in ascending or descending order.

</details>

---

### Question 2 [4 marks]

Using the Product table:

| productId | productName | price | stock |
|---|---|---:|---:|
| P001 | Keyboard | 49.99 | 12 |
| P002 | Mouse | 19.99 | 30 |
| P003 | Monitor | 159.99 | 5 |

Write a query to display product names and prices for products with price greater than 50.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT productName, price
FROM Product
WHERE price > 50;
```

</details>

---

### Question 3 [5 marks]

State the result of this query.

```sql
SELECT name, averageMark
FROM Student
WHERE averageMark >= 80
ORDER BY averageMark DESC;
```

Using:

| studentId | name | yearGroup | averageMark |
|---|---|---:|---:|
| S001 | Alice | 12 | 85.5 |
| S002 | Ben | 12 | 62.0 |
| S003 | Clara | 13 | 91.0 |
| S004 | David | 13 | 48.5 |

<details>
<summary>Mark Scheme Style Answer</summary>

| name | averageMark |
|---|---:|
| Clara | 91.0 |
| Alice | 85.5 |

Only records with averageMark at least 80 are included, then they are sorted by averageMark descending.

</details>

---

### Question 4 [5 marks]

Identify and correct the errors.

```sql
SELECT name averageMark
FROM Student
ORDER BY averageMark DESC
WHERE yearGroup = 12;
```

<details>
<summary>Mark Scheme Style Answer</summary>

Correct query:

```sql
SELECT name, averageMark
FROM Student
WHERE yearGroup = 12
ORDER BY averageMark DESC;
```

Errors:

- Missing comma between `name` and `averageMark`.
- `WHERE` must come before `ORDER BY`.

</details>

---

### Question 5 [6 marks]

Explain the difference between these two conditions:

```sql
WHERE yearGroup = 12 AND averageMark >= 75
```

```sql
WHERE yearGroup = 12 OR averageMark >= 75
```

<details>
<summary>Mark Scheme Style Answer</summary>

The first condition uses `AND`, so a record must satisfy both conditions: the student must be in Year 12 and have an average mark of at least 75. The second condition uses `OR`, so a record is included if either condition is true. This means it includes all Year 12 students as well as any students in other year groups with an average mark of at least 75. Therefore, `OR` usually returns more records than `AND`.

</details>

---

## 24. Classroom Activity

### Activity 1: Human Filter

Students act as records holding cards:

```text
name
yearGroup
averageMark
```

The teacher gives SQL conditions such as:

```sql
WHERE yearGroup = 12
WHERE averageMark >= 80
```

Only matching students remain standing.

---

### Activity 2: Human Sort

Students hold averageMark cards and arrange themselves according to:

```sql
ORDER BY averageMark ASC
ORDER BY averageMark DESC
```

---

### Activity 3: SQL Error Detective

Groups correct SQL snippets:

```sql
WHERE name = Alice
ORDER BY name WHERE yearGroup = 12
WHERE averageMark => 80
SELECT name averageMark
```

They must explain the mistake, not only correct it.

---

## 25. Homework

### Homework Part A: Concept Explanation

In 4-5 sentences, explain the difference between filtering and sorting in SQL.

---

### Homework Part B: Query Writing

Using this Player table:

| playerId | username | score | level | active |
|---|---|---:|---:|---|
| P001 | Dragon | 1500 | 12 | true |
| P002 | Shadow | 900 | 8 | true |
| P003 | Nova | 2100 | 15 | false |
| P004 | Echo | 1200 | 10 | true |

Write queries to:

1. display usernames with score greater than 1000
2. display all players sorted by score descending
3. display active players sorted by username ascending
4. display players with level at least 10 and active true
5. display players with score below 1000 or active false

---

### Homework Part C: Result Prediction

State the result of:

```sql
SELECT username, score
FROM Player
WHERE score >= 1200
ORDER BY score ASC;
```

---

### Homework Part D: Error Correction

Correct these queries:

```sql
SELECT username score
FROM Player
WHERE score > 1000;

SELECT username
FROM Player
ORDER BY username
WHERE active = true;

SELECT username
FROM Player
WHERE username = Dragon;
```

---

## 26. One-page Revision Summary

| Point | Summary |
|---|---|
| `WHERE` | Filters records |
| `ORDER BY` | Sorts result set |
| `ASC` | Ascending order |
| `DESC` | Descending order |
| `=` | Equal to in SQL |
| `<>` | Not equal to |
| `AND` | All conditions true |
| `OR` | At least one condition true |
| Text values | Usually use quotes |
| Numeric values | Usually no quotes |
| Correct clause order | `SELECT → FROM → WHERE → ORDER BY` |
| Common mistake | Using Java `==` instead of SQL `=` |
| Exam phrase | `WHERE` controls which records are returned, while `ORDER BY` controls the order of returned records |

---

## 27. Quick Self-test

Before moving on, students should be able to answer these:

1. What does `WHERE` do?
2. What does `ORDER BY` do?
3. What is the difference between filtering and sorting?
4. What does `ASC` mean?
5. What does `DESC` mean?
6. Which comes first: `WHERE` or `ORDER BY`?
7. How do you write a text condition for name Alice?
8. What operator means not equal to?
9. What is the difference between `AND` and `OR`?
10. What is wrong with `WHERE score => 100`?
