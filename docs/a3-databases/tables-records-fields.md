# Tables, Records, and Fields

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what a database table is
- distinguish records, fields, and values
- identify rows and columns in a table
- explain how entities and attributes relate to tables and fields
- identify suitable fields for a table
- choose suitable data types for fields
- read information from a database table
- explain why each table should store one type of entity
- identify common table design mistakes
- answer exam-style questions about tables, records, fields, and values

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding how data is organized in database tables |
| Connected topics | Database fundamentals, primary keys, foreign keys, relationships, SQL SELECT |
| Practical focus | Reading and designing simple relational tables |
| Exam relevance | Definitions, table interpretation, field selection, scenario-based table design |

::: tip Learning Focus
Most database mistakes start with weak understanding of table structure. Students must clearly know: **table = whole structure, record = row, field = column, value = one cell**.
:::

---

## Start here: table, record, field, value

Use one fixed pattern:

```text
table = the whole structure for one entity type
record = one row about one entity instance
field = one column describing an attribute
value = one item stored in a cell
```

For example, in a `Student` table, one student is a record, `dateOfBirth` is a field, and `2009-04-18` is a value.

## Core checklist

After studying this page, you should be able to:

- distinguish tables, records, fields, and values
- connect entities to tables and attributes to fields
- choose suitable field names and data types
- read a value from a specified row and column
- explain why a table should normally represent one entity type

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Table | 表 | A structure that stores data about one type of entity |
| Record | 记录 | One row in a table; one complete set of data about one item |
| Field | 字段 | One column in a table; one category of data |
| Value | 值 | One item of data stored in one cell |
| Entity | 实体 | A real-world thing represented in a database |
| Attribute | 属性 | A property of an entity, represented as a field |
| Row | 行 | Horizontal line of data; usually one record |
| Column | 列 | Vertical category of data; usually one field |
| Data type | 数据类型 | The type of data stored in a field |
| Field name | 字段名 | The name of a column, such as `studentId` |
| Table name | 表名 | The name of a table, such as `Student` |
| Schema | 模式 / 结构 | The design structure of a database table |
| Cell | 单元格 | One position where a record and field intersect |
| Entity type | 实体类型 | The kind of thing stored in a table, such as Student or Course |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

数据库中的数据通常放在 **tables（表）** 里面。

一个 table 通常存储一种类型的 entity，例如：

```text
Student table 存储学生
Course table 存储课程
Book table 存储书
Product table 存储商品
```

在 table 中：

```text
record = row = 一行数据
field = column = 一列数据
value = cell = 一个具体数据
```

例如：

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

这个表中：

```text
Table name: Student
Fields: studentId, name, yearGroup
Records: 3 rows
One value: Alice
```

每一行 record 表示一个完整的学生。  
每一列 field 表示学生的一个属性。

学习这一页时，最重要的是不要混淆：

```text
record 是横向的一行
field 是纵向的一列
value 是单元格里的一个数据
```

</template>

<template #en>

### English Explanation

Data in a database is usually stored in **tables**.

A table usually stores one type of entity, for example:

```text
Student table stores students
Course table stores courses
Book table stores books
Product table stores products
```

In a table:

```text
record = row = one complete row of data
field = column = one category of data
value = cell = one specific data item
```

For example:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

In this table:

```text
Table name: Student
Fields: studentId, name, yearGroup
Records: 3 rows
One value: Alice
```

Each record represents one complete student.  
Each field represents one attribute of a student.

The most important idea in this page is not to confuse:

```text
record is a horizontal row
field is a vertical column
value is one item in a cell
```

</template>
</LangBlock>

---

## 5. Visual Structure of a Table

### Student Table

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

### Table Parts

```text
Whole table = Student table
Column = field
Row = record
Cell = value
```

| Part | Example |
|---|---|
| Table | Student |
| Field | `studentId` |
| Field | `name` |
| Field | `yearGroup` |
| Record | `S001, Alice, 12` |
| Value | `Alice` |
| Value | `13` |

::: info Scenario Link
A table is like a structured grid. But in a database, each field should have a clear meaning and each record should represent one item of the same entity type.
:::

---

## 6. Table

A **table** stores data about one type of entity.

Examples:

| Table Name | Entity Stored |
|---|---|
| `Student` | students |
| `Course` | courses |
| `Teacher` | teachers |
| `Book` | books |
| `Product` | products |
| `Customer` | customers |
| `Order` | orders |

### Good Table Rule

A table should usually store one type of thing.

Good:

```text
Student table stores student data.
Course table stores course data.
Book table stores book data.
```

Poor:

```text
StudentCourseTeacher table stores students, courses, and teachers all together.
```

A huge mixed table can cause repeated data and confusion.

---

## 7. Record

A **record** is one row in a table.

It contains a complete set of data about one item.

### Example

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |

This is one student record.

It contains:

```text
studentId = S001
name = Alice
yearGroup = 12
```

### Count Records

In this table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

There are:

```text
3 records
```

because there are 3 rows of student data.

---

## 8. Field

A **field** is one column in a table.

It stores one category of data.

### Example Fields

In the Student table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |

The fields are:

```text
studentId
name
yearGroup
```

### Count Fields

There are:

```text
3 fields
```

because there are 3 columns.

### Field Meaning

| Field | Meaning |
|---|---|
| `studentId` | unique student identifier |
| `name` | student name |
| `yearGroup` | school year group |

---

## 9. Value

A **value** is one single data item in a cell.

In this table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |

Examples of values:

```text
S001
Alice
12
S002
Ben
```

### Field vs Value

| Field | Example Values |
|---|---|
| `studentId` | S001, S002 |
| `name` | Alice, Ben |
| `yearGroup` | 12, 12 |

The field is the category.  
The value is the actual data in one record.

---

## 10. Entity and Attribute

Database terms connect closely to OOP terms.

| Database Term | Meaning | OOP Connection |
|---|---|---|
| Entity | Real-world thing stored | Class-like idea |
| Attribute | Property of entity | Object attribute-like idea |
| Table | Stores entity records | Similar to a collection of objects |
| Record | One entity instance | Similar to one object |
| Field | One attribute/category | Similar to an attribute name |

### Example

Entity:

```text
Student
```

Attributes:

```text
studentId
name
yearGroup
```

Table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |

Each record represents one Student entity.

::: tip Connection to B3
In B3, a `Student` object has attributes. In A3, a Student table has fields. They are not exactly the same thing, but the idea of structured data is similar.
:::

---

## 11. Field Data Types

Each field should store a suitable type of data.

| Field | Example Value | Suitable Type |
|---|---|---|
| `studentId` | S001 | Text/String |
| `name` | Alice | Text/String |
| `yearGroup` | 12 | Integer |
| `averageMark` | 82.5 | Real/Decimal |
| `enrolled` | true | Boolean |
| `dateOfBirth` | 2008-04-12 | Date |
| `price` | 49.99 | Currency/Decimal |

### Important

Not every number-looking field should be numeric.

Examples usually better as text:

```text
studentId = S001
phoneNumber = 0400123456
postcode = 02138
productCode = P001
```

Why?

```text
They are identifiers, not values used for calculation.
They may contain letters or leading zeros.
```

---

## 12. Choosing Suitable Fields

A good table includes fields that describe the entity clearly.

### Student Table

Suitable fields:

```text
studentId
firstName
lastName
yearGroup
email
dateOfBirth
```

Less suitable fields:

```text
teacherName
courseName
courseRoom
```

Why?

Those fields belong better in Teacher or Course tables.

### Good Design Principle

```text
A table should store fields directly related to its entity.
```

If a field describes another entity, it may belong in another table.

---

## 13. Worked Example 1: Reading a Student Table

### Student Table

| studentId | name | yearGroup | email |
|---|---|---:|---|
| S001 | Alice | 12 | alice@school.edu |
| S002 | Ben | 12 | ben@school.edu |
| S003 | Clara | 13 | clara@school.edu |

### Questions

| Question | Answer |
|---|---|
| What is the table name? | Student |
| How many records are there? | 3 |
| How many fields are there? | 4 |
| Name two fields. | `studentId`, `name` |
| What is the value of `name` for record S002? | Ben |
| What is Clara's year group? | 13 |
| Which field could identify each student? | studentId |

---

## 14. Worked Example 2: Reading a Product Table

### Product Table

| productId | productName | price | stock |
|---|---|---:|---:|
| P001 | Keyboard | 49.99 | 12 |
| P002 | Mouse | 19.99 | 30 |
| P003 | Monitor | 159.99 | 5 |

### Interpretation

| Item | Answer |
|---|---|
| Entity | Product |
| Number of records | 3 |
| Number of fields | 4 |
| Field storing product price | `price` |
| Value in `stock` for P002 | 30 |
| Suitable type for `price` | Decimal/Currency |
| Suitable type for `stock` | Integer |
| Possible primary key preview | `productId` |

---

## 15. Table Design: One Entity per Table

A table should usually represent one entity type.

### Good Design

Student table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |

Course table:

| courseId | courseName |
|---|---|
| C001 | Computer Science |
| C002 | Mathematics |

### Poor Design

Mixed table:

| studentId | studentName | courseId | courseName | teacherName |
|---|---|---|---|---|
| S001 | Alice | C001 | Computer Science | Mr Smith |
| S001 | Alice | C002 | Mathematics | Ms Green |
| S002 | Ben | C001 | Computer Science | Mr Smith |

Problems:

```text
student data is repeated
course data is repeated
teacher data is repeated
updates become harder
inconsistency can happen
```

---

## 16. Repeated Data Problem

Repeated data can cause several issues.

### Example

| studentId | studentName | courseName |
|---|---|---|
| S001 | Alice | Computer Science |
| S001 | Alice | Mathematics |
| S001 | Alicia | Physics |

Problem:

```text
Is the student's name Alice or Alicia?
```

This is an inconsistency caused by repeated data.

### Better Design

Store student name once in Student table:

| studentId | name |
|---|---|
| S001 | Alice |

Then connect course enrollment using another table later.

::: warning Preview
Keys and relationships will solve many repeated data problems. They will be covered in later pages.
:::

---

## 17. Table Schema

A **schema** describes the structure of a table.

### Student Schema

```text
Student(studentId, name, yearGroup, email)
```

A more detailed schema can include data types:

```text
Student(
    studentId : Text,
    name : Text,
    yearGroup : Integer,
    email : Text
)
```

### Why Schema Matters

A schema tells us:

```text
what fields exist
what type of data each field stores
how the table is structured
```

The schema is the design; the records are the actual data.

---

## 18. Field Naming Conventions

Good field names should be clear and consistent.

| Weak Field Name | Better Field Name |
|---|---|
| `id` | `studentId` |
| `n` | `name` |
| `yr` | `yearGroup` |
| `mail` | `email` |
| `DOB` | `dateOfBirth` |

### Good Field Names

Good field names should:

```text
describe the data clearly
avoid spaces
be consistent
avoid unclear abbreviations
```

Common style:

```text
studentId
courseName
dateOfBirth
productPrice
```

---

## 19. Null or Missing Values

Sometimes a field value may be missing.

Example:

| studentId | name | email |
|---|---|---|
| S001 | Alice | alice@school.edu |
| S002 | Ben |  |
| S003 | Clara | clara@school.edu |

The missing email may be called:

```text
NULL
```

or a blank value, depending on the database system.

### Why Missing Values Matter

Missing values can cause problems:

```text
emails cannot be sent
reports may be incomplete
queries may not find expected data
validation may be needed
```

Some fields should not be allowed to be empty, such as `studentId`.

---

## 20. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Saying record is a column | Record is horizontal | Record = row |
| Saying field is a row | Field is vertical | Field = column |
| Counting the header row as a record | Header contains field names, not data records | Count only data rows |
| Calling one cell a field | One cell is a value | Field is the whole column/category |
| Putting different entities in one table | Causes repeated data | Use separate related tables |
| Using name as unique identifier | Names may repeat | Use an ID field |
| Choosing numeric type for phone number | Leading zeros may be lost | Use text/string |
| Field names with spaces | Can cause query inconvenience | Use consistent names like `studentId` |
| Storing calculated data unnecessarily | Can become inconsistent | Calculate when needed, unless stored for a reason |
| Confusing schema and data | Schema is structure; records are data | Separate design from actual rows |

---

## 21. Guided Practice

### Practice 1: Count Records and Fields

| bookId | title | author |
|---|---|---|
| B001 | Dune | Frank Herbert |
| B002 | Animal Farm | George Orwell |
| B003 | The Hobbit | J.R.R. Tolkien |

Answer:

1. How many records?
2. How many fields?
3. Name one value.

<details>
<summary>Suggested Answer</summary>

1. 3 records.
2. 3 fields.
3. Example value: `Dune`, `B001`, or `George Orwell`.

</details>

---

### Practice 2: Record or Field?

Classify each.

| Item | Record / Field / Value? |
|---|---|
| `studentId` |
| `S001, Alice, 12` |
| `Alice` |
| `yearGroup` |

<details>
<summary>Suggested Answer</summary>

| Item | Type |
|---|---|
| `studentId` | Field |
| `S001, Alice, 12` | Record |
| `Alice` | Value |
| `yearGroup` | Field |

</details>

---

### Practice 3: Choose Field Types

Choose suitable field data types.

| Field | Best Type |
|---|---|
| `studentId` |
| `yearGroup` |
| `averageMark` |
| `email` |
| `enrolled` |

<details>
<summary>Suggested Answer</summary>

| Field | Best Type |
|---|---|
| `studentId` | Text/String |
| `yearGroup` | Integer |
| `averageMark` | Decimal/Real |
| `email` | Text/String |
| `enrolled` | Boolean |

</details>

---

### Practice 4: Identify Poor Field

A Student table has these fields:

```text
studentId
name
yearGroup
courseName
teacherName
```

Which fields may belong better in another table?

<details>
<summary>Suggested Answer</summary>

`courseName` belongs better in a Course table.  
`teacherName` belongs better in a Teacher table.

The Student table should mainly store data about students.

</details>

---

### Practice 5: Schema Reading

Given:

```text
Product(productId : Text, productName : Text, price : Decimal, stock : Integer)
```

Answer:

1. What is the table name?
2. Name two fields.
3. What type is `price`?

<details>
<summary>Suggested Answer</summary>

1. Table name: `Product`
2. Example fields: `productId`, `productName`
3. `price` is Decimal.

</details>

---

## 22. Independent Practice

### Question 1

Define table, record, field, and value.

### Question 2

Using this table, answer the questions.

| customerId | customerName | city |
|---|---|---|
| C001 | Amy | Tokyo |
| C002 | Brian | Sydney |
| C003 | Chloe | London |

1. How many records are there?
2. How many fields are there?
3. Name all fields.
4. Give two values.
5. Which field could identify each customer?

### Question 3

Design a `Book` table with at least five suitable fields.

### Question 4

Choose suitable data types for your `Book` table fields.

### Question 5

Explain why a table should normally store one type of entity.

### Question 6

Explain why phone numbers are often stored as text rather than integer.

### Question 7

Given this schema, explain what it stores:

```text
Order(orderId : Text, customerId : Text, orderDate : Date, totalPrice : Decimal)
```

### Question 8

Identify two problems with this table design:

| studentName | courseName | teacherName | teacherEmail |
|---|---|---|---|
| Alice | Computer Science | Mr Smith | smith@school.edu |
| Alice | Mathematics | Ms Green | green@school.edu |
| Ben | Computer Science | Mr Smith | smith@school.edu |

### Question 9

Rewrite the poor table in Question 8 as separate table names and possible fields.

### Question 10

Explain the difference between schema and actual table data.

---

## 23. Exam-style Questions

### Question 1 [4 marks]

Define record and field.

<details>
<summary>Mark Scheme Style Answer</summary>

A record is one row in a table and contains a complete set of data about one item or entity. A field is one column in a table and stores one category of data, such as name or date of birth.

</details>

---

### Question 2 [5 marks]

Using the table below, state the number of records, number of fields, and one example of a value.

| productId | productName | price | stock |
|---|---|---:|---:|
| P001 | Keyboard | 49.99 | 12 |
| P002 | Mouse | 19.99 | 30 |
| P003 | Monitor | 159.99 | 5 |

<details>
<summary>Mark Scheme Style Answer</summary>

There are 3 records because there are 3 rows of product data. There are 4 fields: `productId`, `productName`, `price`, and `stock`. One example of a value is `Keyboard`, `49.99`, or `P001`.

</details>

---

### Question 3 [6 marks]

Explain why it is poor design to store students, courses, and teachers in one large table.

<details>
<summary>Mark Scheme Style Answer</summary>

Storing students, courses, and teachers in one large table can cause repeated data. For example, the same student name or teacher name may appear in many rows. This wastes storage and can cause inconsistency if one copy is updated but another is not. A better design is to separate the data into related tables such as Student, Course, and Teacher.

</details>

---

### Question 4 [5 marks]

A database table stores phone numbers. Explain why a phone number may be stored as text rather than an integer.

<details>
<summary>Mark Scheme Style Answer</summary>

A phone number is an identifier rather than a value normally used for arithmetic calculations. It may contain leading zeros, spaces, plus signs, or country codes. If stored as an integer, leading zeros may be lost. Storing it as text preserves the exact format.

</details>

---

### Question 5 [6 marks]

Design a suitable table for storing library books. Include at least four fields and suggest suitable data types.

<details>
<summary>Mark Scheme Style Answer</summary>

Example:

```text
Book(
    bookId : Text,
    title : Text,
    author : Text,
    publicationYear : Integer,
    available : Boolean
)
```

`bookId` can identify each book. `title` and `author` are text. `publicationYear` is an integer. `available` can be Boolean because the book is either available or not available.

</details>

---

## 24. Independent practice
### Independent practice part A: Concept Explanation

In 5-6 sentences, explain table, record, field, and value using your own example.

---

### Independent practice part B: Table Reading

Using this table:

| movieId | title | releaseYear | rating |
|---|---|---:|---|
| M001 | Dune | 2021 | PG-13 |
| M002 | Interstellar | 2014 | PG-13 |
| M003 | Spirited Away | 2001 | PG |

Answer:

1. Number of records
2. Number of fields
3. All field names
4. Three example values
5. A suitable primary key preview

---

### Independent practice part C: Design Task

Design a `GamePlayer` table.

Include:

```text
at least 6 fields
suitable data types
one field that could identify each player
```

---

### Independent practice part D: Bad Design Explanation

Explain why this table design may cause problems:

| orderId | customerName | customerEmail | productName | productPrice |
|---|---|---|---|---|
| O001 | Amy | amy@email.com | Keyboard | 49.99 |
| O002 | Amy | amy@email.com | Mouse | 19.99 |
| O003 | Ben | ben@email.com | Keyboard | 49.99 |

---

## 25. One-page Revision Summary

| Point | Summary |
|---|---|
| Table | Stores data about one entity type |
| Record | One row; one complete item |
| Field | One column; one category of data |
| Value | One data item in a cell |
| Entity | Real-world thing stored |
| Attribute | Property of an entity |
| Row | Record |
| Column | Field |
| Schema | Table structure/design |
| Field data type | Type of data a field stores |
| Good table design | One table stores one entity type |
| Poor table design | Mixed entities and repeated data |
| Common phrase | Record = row; field = column; value = cell |
| Exam phrase | A table stores records about one entity, where each field stores one category of data |

---

## 26. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a table?
2. What is a record?
3. What is a field?
4. What is a value?
5. Is a record a row or a column?
6. Is a field a row or a column?
7. What is an entity?
8. What is a table schema?
9. Why should phone numbers often be stored as text?
10. Why is it poor design to mix many entities in one table?
