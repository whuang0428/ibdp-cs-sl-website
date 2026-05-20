# SQL Conditions and Sorting

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of WHERE
- explain the purpose of ORDER BY
- use simple comparison conditions
- understand how SQL results can be filtered and sorted

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Filtering and ordering query results |

## 3. Key Terms

| Term | Meaning |
|---|---|
| WHERE | SQL keyword used to filter records |
| Condition | A rule that records must satisfy |
| ORDER BY | SQL keyword used to sort query results |
| ASC | Ascending order |
| DESC | Descending order |
| Logical operator | AND, OR, NOT |

## 4. Concept Explanation

The WHERE clause filters records.

The ORDER BY clause sorts the result.

Example:

A query can show only students in YearGroup 11 and sort the output alphabetically.

## 5. Step-by-step Example

Query goal: show names of students in YearGroup 11.

| SQL Part | Purpose |
|---|---|
| SELECT Name | Display only names |
| FROM STUDENT | Use the STUDENT table |
| WHERE YearGroup = 11 | Filter only YearGroup 11 |

## 6. Visual Structure

::: info SQL Filtering and Sorting
SELECT fields → FROM table → WHERE condition filters records → ORDER BY sorts the final result.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Using WHERE for sorting | WHERE filters; ORDER BY sorts |
| Forgetting quotes around text values | Text comparisons may not work |
| Using wrong comparison operators | The wrong records are selected |
| Sorting before filtering conceptually | Students may misunderstand the result process |

## 8. Exam-style Question

A table called PRODUCT contains ProductName, Category, and Price.

**Write a query to display ProductName and Price for products where Category is "Food", ordered by Price from lowest to highest.** [5]

## 9. Mark Scheme Style Answer

Award marks for:

- selecting ProductName and Price
- using PRODUCT table
- filtering Category = "Food"
- using ORDER BY Price
- using ascending order or default ascending order

## 10. Quick Check

1. What does WHERE do?
2. What does ORDER BY do?
3. What is the difference between ASC and DESC?
