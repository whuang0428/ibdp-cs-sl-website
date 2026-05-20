# SQL Conditions and Sorting

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- use `WHERE` to filter records
- use comparison operators in SQL
- use `AND`, `OR`, and `NOT`
- use `ORDER BY` to sort results
- distinguish filtering and sorting
- write SQL queries for scenarios

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Filtering and ordering data |
| Connected units | SQL SELECT, Tables, Data Types |
| Exam relevance | SQL query construction and interpretation |

::: tip Learning Focus
`WHERE` filters records. `ORDER BY` sorts the final result.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| WHERE | 条件筛选 | SQL keyword used to filter records |
| Condition | 条件 | A rule that records must satisfy |
| ORDER BY | 排序 | SQL keyword used to sort results |
| ASC | 升序 | Ascending order |
| DESC | 降序 | Descending order |
| AND | 与 | Both conditions must be true |
| OR | 或 | At least one condition must be true |
| NOT | 非 | Reverses a condition |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

SQL 不仅可以选择字段，还可以筛选和排序数据。

`WHERE` 用来筛选符合条件的 records：

```sql
SELECT Name
FROM STUDENT
WHERE YearGroup = 11;
```

`ORDER BY` 用来排序：

```sql
SELECT Name, Mark
FROM STUDENT
ORDER BY Mark DESC;
```

如果是文本条件，通常需要引号：

```sql
WHERE Category = 'Food'
```

</template>

<template #en>

### English Explanation

SQL can select fields, but it can also filter and sort data.

`WHERE` filters records that match a condition:

```sql
SELECT Name
FROM STUDENT
WHERE YearGroup = 11;
```

`ORDER BY` sorts the result:

```sql
SELECT Name, Mark
FROM STUDENT
ORDER BY Mark DESC;
```

Text values usually need quotation marks:

```sql
WHERE Category = 'Food'
```

</template>
</LangBlock>

---

## 5. Real-life Example

PRODUCT table:

| ProductName | Category | Price |
|---|---|---:|
| Apple | Food | 1.20 |
| Notebook | Stationery | 3.50 |
| Bread | Food | 2.00 |

Query:

```sql
SELECT ProductName, Price
FROM PRODUCT
WHERE Category = 'Food'
ORDER BY Price ASC;
```

Result:

| ProductName | Price |
|---|---:|
| Apple | 1.20 |
| Bread | 2.00 |

---

## 6. SQL Pattern

```sql
SELECT field1, field2
FROM tableName
WHERE condition
ORDER BY fieldName ASC;
```

Descending:

```sql
ORDER BY fieldName DESC;
```

Multiple conditions:

```sql
WHERE Price > 10 AND Stock > 0
```

---

## 7. SQL Examples

```sql
SELECT FirstName, Surname
FROM STUDENT
WHERE YearGroup = 12;
```

```sql
SELECT ProductName, Price
FROM PRODUCT
WHERE Price < 10
ORDER BY Price ASC;
```

```sql
SELECT Title, Author
FROM BOOK
WHERE Available = true;
```

---

## 8. Explanation of Example

| SQL Part | Meaning |
|---|---|
| `SELECT ProductName, Price` | Display product name and price |
| `FROM PRODUCT` | Use PRODUCT table |
| `WHERE Category = 'Food'` | Only include food products |
| `ORDER BY Price ASC` | Sort from lowest to highest price |

---

## 9. Step-by-step Query Execution

Conceptually:

| Step | Action |
|---|---|
| 1 | Choose table |
| 2 | Filter records using WHERE |
| 3 | Select required fields |
| 4 | Sort final result using ORDER BY |
| 5 | Display output |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using WHERE to sort | WHERE filters only | Use ORDER BY |
| Forgetting quotes around text | Query may fail | Use quotes for text values |
| Confusing ASC and DESC | Wrong order | ASC low to high, DESC high to low |
| Putting ORDER BY before WHERE | Wrong syntax | WHERE before ORDER BY |
| Using AND when OR is needed | Too few records returned | Read condition carefully |

---

## 11. Guided Practice

### Practice 1

Display Food products from PRODUCT.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT ProductName
FROM PRODUCT
WHERE Category = 'Food';
```

</details>

### Practice 2

Display students ordered by Mark from highest to lowest.

<details>
<summary>Suggested Answer</summary>

```sql
SELECT Name, Mark
FROM STUDENT
ORDER BY Mark DESC;
```

</details>

---

## 12. Independent Practice

1. Display books where Author is `'Frank Herbert'`.
2. Display products with Price greater than 50, ordered by Price descending.
3. Display students in YearGroup 11 with Mark at least 80.
4. Explain the difference between WHERE and ORDER BY.

---

## 13. Exam-style Questions

### Question 1 [5 marks]

A table called PRODUCT contains ProductName, Category, and Price. Write a query to display ProductName and Price for products where Category is `'Food'`, ordered by Price from lowest to highest.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT ProductName, Price
FROM PRODUCT
WHERE Category = 'Food'
ORDER BY Price ASC;
```

Award marks for selected fields, table, condition, ordering field, and ascending order.

</details>

### Question 2 [3 marks]

Explain the purpose of WHERE and ORDER BY.

<details>
<summary>Mark Scheme Style Answer</summary>

WHERE filters records so only records meeting a condition are included. ORDER BY sorts the query result using a specified field, either ascending or descending.

</details>

---

## 14. Classroom Activity

Students act as database records. The teacher gives SQL queries and students decide who remains after WHERE and then arrange themselves after ORDER BY.

---

## 15. Homework

Write 10 SQL queries using WHERE, AND, OR, and ORDER BY from a given STUDENT or PRODUCT table.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| WHERE | Filters records |
| ORDER BY | Sorts results |
| ASC | Ascending |
| DESC | Descending |
| AND | Both true |
| OR | At least one true |
| Exam phrase | "`WHERE` reduces the records returned, while `ORDER BY` changes the order of the result." |
