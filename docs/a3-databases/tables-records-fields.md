# Tables, Records and Fields

## 1. Learning Objectives

By the end of this page, students should be able to:

- define table, record, and field
- identify records and fields in a database table
- explain how data is organized in a relational table
- distinguish between rows and columns

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding table structure |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Table | A structure that stores data about one entity |
| Record | A row in a table |
| Field | A column in a table |
| Entity | A thing about which data is stored |
| Attribute | A property of an entity, often represented as a field |

## 4. Concept Explanation

A relational database stores data in tables.

Each table usually stores data about one type of entity.

Example table: STUDENT

| StudentID | FirstName | Surname | YearGroup |
|---|---|---|---|
| 1001 | Alice | Chen | 11 |
| 1002 | Ben | Smith | 12 |

In this table, each row is a record and each column is a field.

## 5. Step-by-step Example

Look at this record:

| StudentID | FirstName | Surname | YearGroup |
|---|---|---|---|
| 1002 | Ben | Smith | 12 |

This record stores all the data about one student.

## 6. Visual Structure

::: info Table Structure
Table → contains records → each record is a row → each field is a column → fields describe attributes of the entity.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Confusing records and fields | Rows and columns have different meanings |
| Putting unrelated data in one table | The database design becomes unclear |
| Repeating the same data many times | Data redundancy increases |
| Not identifying the entity | The purpose of the table becomes unclear |

## 8. Exam-style Question

A table stores information about books in a library.

**State what is meant by a record and a field in this table.** [2]

## 9. Mark Scheme Style Answer

Award marks for:

- a record is one row storing data about one book
- a field is one column storing one type of data, such as title or author

## 10. Quick Check

1. What is a table?
2. What is a record?
3. What is a field?
