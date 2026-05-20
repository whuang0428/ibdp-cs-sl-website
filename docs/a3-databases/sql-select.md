# SQL SELECT

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of SQL
- write simple SELECT queries
- identify table names and field names in a query
- use SELECT and FROM correctly

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Querying databases |

## 3. Key Terms

| Term | Meaning |
|---|---|
| SQL | Structured Query Language |
| Query | An instruction used to retrieve or manipulate data |
| SELECT | SQL keyword used to choose fields to display |
| FROM | SQL keyword used to choose the table |
| Field list | The fields to be shown in the query result |

## 4. Concept Explanation

SQL is used to work with relational databases.

A simple SELECT query retrieves data from a table.

| SQL Part | Purpose |
|---|---|
| SELECT | Choose which fields to display |
| FROM | Choose which table to use |

## 5. Step-by-step Example

Table: STUDENT

| StudentID | FirstName | Surname | YearGroup |
|---|---|---|---|
| 1001 | Alice | Chen | 11 |
| 1002 | Ben | Smith | 12 |

Query goal: show FirstName and Surname fields.

Result:

| FirstName | Surname |
|---|---|
| Alice | Chen |
| Ben | Smith |

## 6. Visual Structure

::: info SELECT Query Structure
SELECT fields to display → FROM table name → database returns matching columns.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Forgetting FROM | The database does not know which table to use |
| Misspelling field names | The query may not run |
| Selecting unnecessary fields | The output may not match the question |
| Confusing table name and field name | The query structure becomes incorrect |

## 8. Exam-style Question

A table called BOOK contains fields BookID, Title, Author, and Price.

**Write an SQL query to display only the Title and Author fields.** [3]

## 9. Mark Scheme Style Answer

Expected structure:

| SQL Part | Answer |
|---|---|
| SELECT | Title, Author |
| FROM | BOOK |

Award marks for selecting correct fields and using the correct table.

## 10. Quick Check

1. What does SELECT do?
2. What does FROM do?
3. Why should field names be written accurately?
