# Primary Keys and Foreign Keys

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what a **primary key** is
- explain what a **foreign key** is
- distinguish primary keys and foreign keys
- identify primary keys in database tables
- identify foreign keys in related tables
- explain why primary keys must be unique
- explain how foreign keys link tables
- understand basic referential integrity
- choose suitable primary keys for scenarios
- identify common key-design mistakes
- answer exam-style questions about primary keys and foreign keys

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding how records are uniquely identified and how tables are linked |
| Connected topics | Tables, records, fields, relationships, SQL joins, data integrity |
| Practical focus | Reading relational tables and identifying key fields |
| Exam relevance | Definitions, table interpretation, relationship explanation, database design |

::: tip Learning Focus
Primary keys identify records. Foreign keys link tables. These two ideas are the foundation of relational databases.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Primary key | 主键 | A field that uniquely identifies each record in a table |
| Foreign key | 外键 | A field in one table that refers to the primary key in another table |
| Unique | 唯一 | No two records have the same value for that field |
| Identifier | 标识符 | A value used to identify a specific record |
| Candidate key | 候选键 | A field that could potentially be used as a primary key |
| Composite key | 复合键 | A primary key made from more than one field |
| Referential integrity | 参照完整性 | Foreign key values must match existing primary key values |
| Relationship | 关系 | A link between tables using keys |
| Parent table | 父表 | The table containing the primary key being referenced |
| Child table | 子表 | The table containing the foreign key |
| Orphan record | 孤立记录 | A record with a foreign key that does not match an existing primary key |
| Constraint | 约束 | A rule that restricts what data can be stored |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在 relational database 中，数据通常被拆分到多个相关的 tables 中。  
如果要让这些 tables 正确连接，就需要 **primary key** 和 **foreign key**。

**Primary key（主键）** 用来唯一识别一个 table 中的每一条 record。

例如 Student table：

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

这里 `studentId` 可以作为 primary key，因为：

```text
每个 studentId 都是唯一的
每个 studentId 对应一个学生 record
```

**Foreign key（外键）** 是一个 table 中的 field，它引用另一个 table 的 primary key。

例如 Enrollment table：

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |
| E003 | S001 | C002 |

这里 `studentId` 是 foreign key，因为它引用 Student table 里的 `studentId`。  
`courseId` 也是 foreign key，因为它引用 Course table 里的 `courseId`。

简单来说：

```text
primary key = identify record in its own table
foreign key = link to record in another table
```

</template>

<template #en>

### English Explanation

In a relational database, data is usually separated into multiple related tables.  
To connect these tables correctly, we need **primary keys** and **foreign keys**.

A **primary key** uniquely identifies each record in a table.

For example, Student table:

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

Here, `studentId` can be the primary key because:

```text
each studentId is unique
each studentId identifies one student record
```

A **foreign key** is a field in one table that refers to the primary key in another table.

For example, Enrollment table:

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |
| E003 | S001 | C002 |

Here, `studentId` is a foreign key because it refers to `studentId` in the Student table.  
`courseId` is also a foreign key because it refers to `courseId` in the Course table.

In simple terms:

```text
primary key = identify record in its own table
foreign key = link to record in another table
```

</template>
</LangBlock>

---

## 5. Real-life Analogy

Imagine each student has a school ID card.

```text
studentId = unique school ID
```

Even if two students have the same name, their IDs are different.

| studentId | name |
|---|---|
| S001 | Alex Chen |
| S002 | Alex Chen |

The name is the same, but the ID uniquely identifies each student.

Now imagine a course enrollment list. Instead of writing the full student details again, the list stores the student ID:

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |

The enrollment table can use `studentId` to link back to the correct student.

::: info Scenario Link
Primary keys work like ID cards. Foreign keys work like references to those ID cards in another table.
:::

---

## 6. Primary Key

## 6.1 What is a Primary Key?

A primary key is a field that uniquely identifies each record in a table.

### Student Table

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

The primary key is:

```text
studentId
```

because each value is unique.

### Key Requirements

A primary key should:

```text
be unique
not be empty / null
not change often
identify exactly one record
```

---

## 6.2 Why Not Use Name as Primary Key?

Names are not always unique.

| studentId | name |
|---|---|
| S001 | Alex |
| S002 | Alex |

If `name` were the primary key, the database could not reliably identify which Alex is meant.

### Better Design

Use:

```text
studentId
```

because it is designed to be unique.

---

## 7. Good and Bad Primary Keys

| Field | Good Primary Key? | Reason |
|---|---|---|
| `studentId` | Yes | Unique and stable |
| `name` | Usually no | Names may repeat |
| `email` | Sometimes | Often unique, but can change |
| `phoneNumber` | Usually no | Can change or be shared |
| `dateOfBirth` | No | Many people may share same date |
| `productId` | Yes | Designed to identify products |
| `orderId` | Yes | Designed to identify orders |

### Exam-friendly sentence

A primary key should uniquely identify each record and should not contain duplicate or null values.

---

## 8. Foreign Key

## 8.1 What is a Foreign Key?

A foreign key is a field in one table that refers to the primary key in another table.

### Student Table

| studentId | name |
|---|---|
| S001 | Alice |
| S002 | Ben |

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |

In the Enrollment table:

```text
studentId
```

is a foreign key because it refers to the Student table's primary key.

### Purpose

Foreign keys are used to:

```text
link related tables
avoid repeating full data
support relationships
protect data consistency
```

---

## 9. Primary Key vs Foreign Key

| Primary Key | Foreign Key |
|---|---|
| Identifies a record in its own table | Refers to a record in another table |
| Must be unique in its table | Can repeat |
| Should not be null | May be null in some designs, but often required |
| Example: `Student.studentId` | Example: `Enrollment.studentId` |
| Used to identify | Used to link |

### Example

| Table | Field | Key Type |
|---|---|---|
| Student | `studentId` | Primary key |
| Course | `courseId` | Primary key |
| Enrollment | `enrollmentId` | Primary key |
| Enrollment | `studentId` | Foreign key |
| Enrollment | `courseId` | Foreign key |

::: warning Common Mistake
A foreign key does not have to be unique. Many records can refer to the same primary key.
:::

---

## 10. Worked Example: School Course Database

### Student Table

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

Primary key:

```text
studentId
```

### Course Table

| courseId | courseName |
|---|---|
| C001 | Computer Science |
| C002 | Mathematics |

Primary key:

```text
courseId
```

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |
| E003 | S001 | C002 |

Primary key:

```text
enrollmentId
```

Foreign keys:

```text
studentId references Student.studentId
courseId references Course.courseId
```

### Interpretation

| Enrollment | Meaning |
|---|---|
| E001 | Alice takes Computer Science |
| E002 | Ben takes Computer Science |
| E003 | Alice takes Mathematics |

---

## 11. How Foreign Keys Reduce Repetition

Without foreign keys, a table may repeat data:

| studentName | courseName |
|---|---|
| Alice | Computer Science |
| Ben | Computer Science |
| Alice | Mathematics |

Better design:

### Student Table

| studentId | name |
|---|---|
| S001 | Alice |
| S002 | Ben |

### Course Table

| courseId | courseName |
|---|---|
| C001 | Computer Science |
| C002 | Mathematics |

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |
| E003 | S001 | C002 |

Now student and course names are stored once in their own tables.  
Enrollment stores IDs to link them.

---

## 12. Referential Integrity

Referential integrity means foreign key values must match existing primary key values.

### Valid Example

Student table has:

| studentId | name |
|---|---|
| S001 | Alice |

Enrollment table:

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |

This is valid because `S001` exists in Student.

### Invalid Example

Enrollment table:

| enrollmentId | studentId | courseId |
|---|---|---|
| E009 | S999 | C001 |

This is invalid if `S999` does not exist in Student.

### Why It Matters

If the database allowed `S999`, the enrollment record would refer to a student that does not exist.

This creates an **orphan record**.

::: tip Exam Phrase
Referential integrity ensures that a foreign key value corresponds to an existing primary key value in the related table.
:::

---

## 13. Parent Table and Child Table

When a foreign key points to another table:

```text
parent table = table with the primary key
child table = table with the foreign key
```

Example:

| Role | Table | Field |
|---|---|---|
| Parent table | Student | `studentId` primary key |
| Child table | Enrollment | `studentId` foreign key |

The Enrollment table depends on existing Student records.

---

## 14. Can Foreign Keys Repeat?

Yes.

Example:

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E003 | S001 | C002 |

`S001` appears twice in Enrollment because the same student can enroll in more than one course.

This is allowed because a foreign key is not necessarily unique.

### Key Idea

```text
Primary key values are unique in their own table.
Foreign key values can repeat in the child table.
```

---

## 15. Composite Key Preview

Sometimes one field is not enough to uniquely identify a record.

Example Enrollment table without `enrollmentId`:

| studentId | courseId |
|---|---|
| S001 | C001 |
| S001 | C002 |
| S002 | C001 |

Here, neither `studentId` nor `courseId` alone is unique.

But the combination:

```text
studentId + courseId
```

can uniquely identify each enrollment.

This is called a **composite key**.

::: info Preview
For this course, students usually only need a basic awareness of composite keys unless the syllabus or teacher requires deeper detail.
:::

---

## 16. Choosing a Suitable Primary Key

### Scenario: Library Book Table

| Field | Good Primary Key? | Reason |
|---|---|---|
| `bookId` | Yes | Unique identifier |
| `title` | No | Different books can have same title |
| `author` | No | One author can write many books |
| `isbn` | Sometimes yes | Usually unique for a book edition |
| `publicationYear` | No | Many books share same year |

### Best Choice

```text
bookId
```

or sometimes:

```text
isbn
```

if it is available and unique.

---

## 17. Key Design Examples

### Product Table

| productId | productName | price |
|---|---|---:|
| P001 | Keyboard | 49.99 |
| P002 | Mouse | 19.99 |

Primary key:

```text
productId
```

### Order Table

| orderId | customerId | orderDate |
|---|---|---|
| O001 | C001 | 2026-05-20 |
| O002 | C002 | 2026-05-21 |

Primary key:

```text
orderId
```

Foreign key:

```text
customerId
```

because it likely refers to:

```text
Customer.customerId
```

### Customer Table

| customerId | customerName | email |
|---|---|---|
| C001 | Amy | amy@email.com |
| C002 | Ben | ben@email.com |

Primary key:

```text
customerId
```

---

## 18. SQL Preview with Keys

Keys are often used in SQL joins.

### Student Table

| studentId | name |
|---|---|
| S001 | Alice |
| S002 | Ben |

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |

A join connects:

```text
Student.studentId = Enrollment.studentId
```

SQL joins will be explained later, but the idea depends on primary and foreign keys.

---

## 19. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Thinking primary key means “important field” | It must uniquely identify each record | Use a unique identifier |
| Choosing name as primary key | Names can repeat | Use ID fields |
| Thinking foreign key must be unique | Foreign keys can repeat | Foreign key links to another table |
| Confusing primary key and foreign key | They have different roles | Primary identifies; foreign links |
| Foreign key points to a non-existing record | Breaks referential integrity | Foreign key should match parent primary key |
| Using changing data as primary key | Updates become risky | Choose stable identifier |
| Allowing null primary key | Cannot identify record | Primary key should not be null |
| Duplicating primary key values | Records cannot be uniquely identified | Keep primary key unique |
| Storing full repeated data instead of foreign key | Causes redundancy | Store ID reference |
| Not naming key fields clearly | Hard to understand design | Use names like `studentId`, `courseId` |

---

## 20. Guided Practice

### Practice 1: Identify the Primary Key

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

Which field is the best primary key?

<details>
<summary>Suggested Answer</summary>

```text
studentId
```

It is the best primary key because it uniquely identifies each student record.

</details>

---

### Practice 2: Identify Foreign Keys

Given:

### Student

| studentId | name |
|---|---|
| S001 | Alice |
| S002 | Ben |

### Enrollment

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |

Which field in Enrollment links to Student?

<details>
<summary>Suggested Answer</summary>

```text
studentId
```

It is a foreign key in Enrollment because it refers to `studentId` in Student.

</details>

---

### Practice 3: Is This Valid?

Student table contains:

```text
S001
S002
```

Enrollment record:

```text
E010, S999, C001
```

Is `S999` valid as a foreign key?

<details>
<summary>Suggested Answer</summary>

No. `S999` is not valid if there is no matching `studentId` in the Student table. This breaks referential integrity.

</details>

---

### Practice 4: Can a Foreign Key Repeat?

Can this be valid?

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S001 | C002 |

<details>
<summary>Suggested Answer</summary>

Yes. The foreign key `studentId` can repeat because one student can enroll in multiple courses.

</details>

---

### Practice 5: Choose a Key

For a Product table, choose the best primary key:

```text
productName
productId
price
category
```

<details>
<summary>Suggested Answer</summary>

```text
productId
```

It is designed to uniquely identify each product. Product names and categories may repeat, and price is not unique.

</details>

---

## 21. Independent Practice

### Question 1

Define primary key.

### Question 2

Define foreign key.

### Question 3

Explain the difference between a primary key and a foreign key.

### Question 4

For this table, choose a suitable primary key and explain why.

| bookId | title | author |
|---|---|---|
| B001 | Dune | Frank Herbert |
| B002 | Dune | Another Author |
| B003 | Animal Farm | George Orwell |

### Question 5

Given these tables, identify all primary keys and foreign keys.

### Customer

| customerId | customerName |
|---|---|
| C001 | Amy |
| C002 | Ben |

### Order

| orderId | customerId | orderDate |
|---|---|---|
| O001 | C001 | 2026-05-20 |
| O002 | C002 | 2026-05-21 |
| O003 | C001 | 2026-05-22 |

### Question 6

Explain why `customerId` can repeat in the Order table.

### Question 7

Explain what referential integrity means.

### Question 8

Give an example of an orphan record.

### Question 9

Explain why using phone number as a primary key may be risky.

### Question 10

Design three tables for a library system and identify primary and foreign keys.

---

## 22. Exam-style Questions

### Question 1 [4 marks]

Define primary key and foreign key.

<details>
<summary>Mark Scheme Style Answer</summary>

A primary key is a field that uniquely identifies each record in a table. A foreign key is a field in one table that refers to the primary key in another table, allowing the tables to be linked.

</details>

---

### Question 2 [5 marks]

Explain why `studentId` is a better primary key than `name` in a Student table.

<details>
<summary>Mark Scheme Style Answer</summary>

`studentId` is better because it is designed to be unique for each student record. A name may not be unique because two students can have the same name. A primary key must uniquely identify each record and should not contain duplicate values. Therefore, `studentId` is more reliable than `name`.

</details>

---

### Question 3 [6 marks]

Using the tables below, identify the primary key in each table and the foreign key in Enrollment.

### Student

| studentId | name |
|---|---|
| S001 | Alice |
| S002 | Ben |

### Course

| courseId | courseName |
|---|---|
| C001 | Computer Science |
| C002 | Mathematics |

### Enrollment

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |

<details>
<summary>Mark Scheme Style Answer</summary>

In the Student table, the primary key is `studentId`. In the Course table, the primary key is `courseId`. In the Enrollment table, the primary key is `enrollmentId`. In Enrollment, `studentId` is a foreign key referencing Student.studentId, and `courseId` is a foreign key referencing Course.courseId.

</details>

---

### Question 4 [6 marks]

Explain referential integrity using an example.

<details>
<summary>Mark Scheme Style Answer</summary>

Referential integrity means that a foreign key value must match an existing primary key value in the related table. For example, if Enrollment.studentId is a foreign key referring to Student.studentId, then every studentId in Enrollment should already exist in the Student table. If Enrollment contains S999 but no student with studentId S999 exists, referential integrity is broken.

</details>

---

### Question 5 [6 marks]

A student says: “A foreign key must be unique.” Explain why this is incorrect.

<details>
<summary>Mark Scheme Style Answer</summary>

This is incorrect because a foreign key is used to link to a primary key in another table, but it does not have to be unique in the child table. For example, the same studentId may appear multiple times in an Enrollment table if one student takes several courses. Primary key values must be unique in their own table, but foreign key values can repeat.

</details>

---

## 23. Classroom Activity

### Activity 1: ID Card Matching

Students receive Student ID cards:

```text
S001 Alice
S002 Ben
S003 Clara
```

Other students receive Enrollment cards:

```text
E001 S001 C001
E002 S002 C001
E003 S001 C002
```

They physically match foreign keys to primary keys.

---

### Activity 2: Find the Broken Link

Give students tables with one invalid foreign key value. They must find the record that breaks referential integrity.

---

### Activity 3: Choose the Best Key

Groups receive scenarios:

```text
Student
Book
Product
Customer
Order
GamePlayer
```

They choose suitable primary keys and explain why other fields are weaker choices.

---

## 24. Homework

### Homework Part A: Concept Explanation

In 5-6 sentences, explain the difference between primary keys and foreign keys using a school database example.

---

### Homework Part B: Table Analysis

Given:

### Product

| productId | productName | price |
|---|---|---:|
| P001 | Keyboard | 49.99 |
| P002 | Mouse | 19.99 |

### OrderItem

| orderItemId | orderId | productId | quantity |
|---|---|---|---:|
| I001 | O001 | P001 | 2 |
| I002 | O001 | P002 | 1 |

Answer:

1. Primary key of Product
2. Primary key of OrderItem
3. Foreign key linking OrderItem to Product
4. Whether `productId` in OrderItem can repeat
5. Why foreign keys are useful

---

### Homework Part C: Design Task

Design tables for a simple library loan system:

```text
Book
Borrower
Loan
```

For each table, list:

```text
fields
primary key
foreign keys if any
```

---

### Homework Part D: Error Explanation

Explain what is wrong if a Loan record contains:

```text
borrowerId = B999
```

but there is no borrower with ID `B999` in the Borrower table.

---

## 25. One-page Revision Summary

| Point | Summary |
|---|---|
| Primary key | Uniquely identifies each record in a table |
| Foreign key | Refers to a primary key in another table |
| Unique | No duplicate values |
| Primary key rule | Unique and not null |
| Foreign key rule | Should match existing primary key value |
| Primary key example | `Student.studentId` |
| Foreign key example | `Enrollment.studentId` |
| Foreign keys can repeat | Many child records can link to one parent record |
| Referential integrity | Foreign key values must refer to existing primary keys |
| Parent table | Table containing referenced primary key |
| Child table | Table containing foreign key |
| Orphan record | Foreign key refers to missing record |
| Exam phrase | Primary keys identify records; foreign keys create links between related tables |

---

## 26. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a primary key?
2. What is a foreign key?
3. Why must a primary key be unique?
4. Can a foreign key repeat?
5. Why is `name` usually a weak primary key?
6. What is referential integrity?
7. What is an orphan record?
8. Which table contains the primary key in a relationship?
9. Which table contains the foreign key?
10. How do primary and foreign keys help relational databases?
