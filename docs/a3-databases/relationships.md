# Relationships

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what a relationship is in a relational database
- explain why tables are linked instead of storing all data in one table
- identify one-to-one, one-to-many, and many-to-many relationships
- explain how primary keys and foreign keys create relationships
- identify parent and child tables in a relationship
- interpret simple relationship diagrams
- explain why many-to-many relationships usually need a linking table
- use a school/course database to explain table relationships
- identify common relationship-design mistakes
- answer exam-style questions about database relationships

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding how tables are connected in relational databases |
| Connected topics | Tables, records, fields, primary keys, foreign keys, SQL joins, data integrity |
| Practical focus | Reading and designing relationships between tables |
| Exam relevance | Relationship interpretation, table design, foreign key explanation, scenario questions |

::: tip Learning Focus
A relational database is powerful because tables are linked. Students must understand that relationships are created through matching key fields, not just because tables look similar.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Relationship | 关系 | A link between tables in a database |
| Relational database | 关系型数据库 | A database that stores data in related tables |
| Primary key | 主键 | A field that uniquely identifies each record in a table |
| Foreign key | 外键 | A field in one table that refers to a primary key in another table |
| One-to-one | 一对一关系 | One record in Table A relates to one record in Table B |
| One-to-many | 一对多关系 | One record in Table A relates to many records in Table B |
| Many-to-many | 多对多关系 | Many records in Table A relate to many records in Table B |
| Linking table | 连接表 / 中间表 | A table used to break a many-to-many relationship into two one-to-many relationships |
| Junction table | 连接表 | Another name for a linking table |
| Parent table | 父表 | Table containing the primary key being referenced |
| Child table | 子表 | Table containing the foreign key |
| Referential integrity | 参照完整性 | Foreign key values must match existing primary key values |
| Entity relationship | 实体关系 | How entities such as Student and Course are connected |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在 relational database 中，数据通常不会全部放在一个大表里。  
更好的做法是把不同 entity 的数据放在不同 tables 中，然后通过 keys 建立 relationship。

例如，一个学校系统可以有：

```text
Student table
Course table
Enrollment table
Teacher table
```

这些 table 不是孤立的。它们之间有关系：

```text
一个 Teacher 可以教多个 Course
一个 Student 可以选择多个 Course
一个 Course 也可以有多个 Student
```

数据库中的 relationship 通常通过：

```text
primary key + foreign key
```

来建立。

例如：

```text
Student.studentId 是 primary key
Enrollment.studentId 是 foreign key
```

这样 Enrollment table 就可以连接到 Student table。

学习 relationships 的重点是：

1. 为什么要把数据分成多个 tables
2. 哪个 table 存 primary key
3. 哪个 table 存 foreign key
4. 一个 record 可以对应几个 related records
5. many-to-many 关系为什么需要 linking table

</template>

<template #en>

### English Explanation

In a relational database, data is usually not stored in one huge table.  
A better design separates different entities into different tables and then connects the tables using keys.

For example, a school system can have:

```text
Student table
Course table
Enrollment table
Teacher table
```

These tables are not isolated. They are related:

```text
one Teacher can teach many Courses
one Student can take many Courses
one Course can have many Students
```

Database relationships are usually created using:

```text
primary key + foreign key
```

For example:

```text
Student.studentId is a primary key
Enrollment.studentId is a foreign key
```

This allows the Enrollment table to connect to the Student table.

The key ideas in relationships are:

1. why data is split into multiple tables
2. which table stores the primary key
3. which table stores the foreign key
4. how many related records can match one record
5. why many-to-many relationships need a linking table

</template>
</LangBlock>

---

## 5. Why Relationships Are Needed

If all data is stored in one large table, data may be repeated many times.

### Poor Design: One Large Table

| studentId | studentName | courseId | courseName | teacherName |
|---|---|---|---|---|
| S001 | Alice | C001 | Computer Science | Mr Smith |
| S001 | Alice | C002 | Mathematics | Ms Green |
| S002 | Ben | C001 | Computer Science | Mr Smith |

Problems:

```text
Alice is repeated
Computer Science is repeated
Mr Smith is repeated
updates become harder
inconsistency can happen
```

### Better Design: Related Tables

Student table:

| studentId | name |
|---|---|
| S001 | Alice |
| S002 | Ben |

Course table:

| courseId | courseName | teacherId |
|---|---|---|
| C001 | Computer Science | T01 |
| C002 | Mathematics | T02 |

Enrollment table:

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S001 | C002 |
| E003 | S002 | C001 |

The Enrollment table links students to courses using IDs.

::: info Scenario Link
Relationships reduce repeated data and make updates more reliable.
:::

---

## 6. Relationship Using Primary Key and Foreign Key

A relationship is often created when a foreign key in one table refers to a primary key in another table.

### Student Table

| studentId | name |
|---|---|
| S001 | Alice |
| S002 | Ben |

Primary key:

```text
studentId
```

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S002 | C001 |

Foreign key:

```text
Enrollment.studentId
```

It refers to:

```text
Student.studentId
```

### Relationship

```text
Student 1 -------- many Enrollment
```

Meaning:

```text
One student can have many enrollment records.
Each enrollment record belongs to one student.
```

---

## 7. One-to-One Relationship

A **one-to-one relationship** means one record in Table A relates to one record in Table B.

### Example: Student and StudentProfile

Student table:

| studentId | name |
|---|---|
| S001 | Alice |
| S002 | Ben |

StudentProfile table:

| profileId | studentId | emergencyContact |
|---|---|---|
| P001 | S001 | 0400 111 222 |
| P002 | S002 | 0400 333 444 |

Relationship:

```text
Student 1 -------- 1 StudentProfile
```

### Meaning

```text
One student has one profile.
One profile belongs to one student.
```

### When Used

One-to-one relationships are less common. They may be used to:

```text
separate sensitive data
separate optional data
keep a main table smaller
```

---

## 8. One-to-Many Relationship

A **one-to-many relationship** means one record in Table A can relate to many records in Table B.

### Example: Teacher and Course

Teacher table:

| teacherId | teacherName |
|---|---|
| T01 | Mr Smith |
| T02 | Ms Green |

Course table:

| courseId | courseName | teacherId |
|---|---|---|
| C001 | Computer Science | T01 |
| C002 | Mathematics | T02 |
| C003 | Programming | T01 |

Relationship:

```text
Teacher 1 -------- many Course
```

### Meaning

```text
One teacher can teach many courses.
Each course has one teacher.
```

### Key Fields

| Table | Key |
|---|---|
| Teacher | `teacherId` is primary key |
| Course | `teacherId` is foreign key |

---

## 9. Many-to-Many Relationship

A **many-to-many relationship** means many records in Table A can relate to many records in Table B.

### Example: Student and Course

```text
One student can take many courses.
One course can have many students.
```

This is many-to-many.

### Problem

We should not directly store many courses inside Student table like this:

| studentId | name | course1 | course2 | course3 |
|---|---|---|---|---|
| S001 | Alice | C001 | C002 |  |
| S002 | Ben | C001 |  |  |

Problems:

```text
limited number of courses
empty fields
hard to search
poor design
```

---

## 10. Linking Table for Many-to-Many

A many-to-many relationship is usually solved using a linking table.

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
| E002 | S001 | C002 |
| E003 | S002 | C001 |

Now the many-to-many relationship is split into two one-to-many relationships:

```text
Student 1 -------- many Enrollment
Course 1 -------- many Enrollment
```

### Meaning

| Enrollment | Meaning |
|---|---|
| E001 | Alice takes Computer Science |
| E002 | Alice takes Mathematics |
| E003 | Ben takes Computer Science |

::: tip Key Point
A linking table stores foreign keys from both related tables.
:::

---

## 11. Relationship Types Summary

| Relationship Type | Meaning | Example |
|---|---|---|
| One-to-one | One record relates to one record | Student and StudentProfile |
| One-to-many | One record relates to many records | Teacher and Course |
| Many-to-many | Many records relate to many records | Student and Course |
| Linking table | Solves many-to-many | Enrollment |

### Quick Memory

```text
1:1 = one student has one profile
1:M = one teacher teaches many courses
M:N = many students take many courses
```

---

## 12. Parent and Child Tables

In a relationship:

```text
parent table = table with the primary key
child table = table with the foreign key
```

### Example

Teacher table:

| teacherId | teacherName |
|---|---|
| T01 | Mr Smith |

Course table:

| courseId | courseName | teacherId |
|---|---|---|
| C001 | Computer Science | T01 |

| Role | Table | Reason |
|---|---|---|
| Parent | Teacher | contains primary key `teacherId` |
| Child | Course | contains foreign key `teacherId` |

The Course table depends on Teacher because each `teacherId` in Course should match an existing teacher.

---

## 13. Referential Integrity in Relationships

Referential integrity ensures that foreign keys refer to existing primary keys.

### Valid

Teacher table contains:

```text
T01
```

Course table contains:

```text
C001, Computer Science, T01
```

This is valid because `T01` exists in Teacher.

### Invalid

Course table contains:

```text
C004, Physics, T99
```

If `T99` does not exist in Teacher, the relationship is invalid.

This creates an orphan record.

### Why It Matters

Without referential integrity:

```text
course may refer to non-existing teacher
enrollment may refer to non-existing student
order may refer to non-existing customer
```

This makes the database unreliable.

---

## 14. Relationship Diagrams

Database relationships can be shown using simple text diagrams.

### One-to-Many

```text
Teacher 1 -------- * Course
```

Meaning:

```text
one Teacher can have many Course records
```

### Many-to-Many with Linking Table

```text
Student 1 -------- * Enrollment * -------- 1 Course
```

Meaning:

```text
one Student can have many Enrollment records
one Course can have many Enrollment records
Enrollment links Student and Course
```

### Symbols

| Symbol | Meaning |
|---|---|
| `1` | one |
| `*` | many |

---

## 15. Worked Example: School Course Database

### Student Table

| studentId | name | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

### Teacher Table

| teacherId | teacherName |
|---|---|
| T01 | Mr Smith |
| T02 | Ms Green |

### Course Table

| courseId | courseName | teacherId |
|---|---|---|
| C001 | Computer Science | T01 |
| C002 | Mathematics | T02 |

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S001 | C002 |
| E003 | S002 | C001 |

### Relationships

| Relationship | Type | Explanation |
|---|---|---|
| Teacher to Course | One-to-many | One teacher can teach many courses |
| Student to Enrollment | One-to-many | One student can have many enrollments |
| Course to Enrollment | One-to-many | One course can have many enrollments |
| Student to Course | Many-to-many | Students can take many courses and courses can have many students |

---

## 16. Interpreting the Worked Example

### Question 1

Which teacher teaches Computer Science?

Course C001 has teacherId T01.  
Teacher T01 is Mr Smith.

Answer:

```text
Mr Smith
```

### Question 2

Which courses does Alice take?

Alice has studentId S001.  
Enrollment records with S001:

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S001 | C002 |

Courses:

```text
C001 = Computer Science
C002 = Mathematics
```

Answer:

```text
Computer Science and Mathematics
```

### Question 3

Which students take Computer Science?

Computer Science has courseId C001.  
Enrollment records with C001:

```text
S001
S002
```

Students:

```text
S001 = Alice
S002 = Ben
```

Answer:

```text
Alice and Ben
```

---

## 17. SQL Join Preview

Relationships are often used when writing SQL joins.

Example question:

```text
Show student names and course names.
```

This needs data from:

```text
Student
Enrollment
Course
```

Simple SQL preview:

```sql
SELECT Student.name, Course.courseName
FROM Student
INNER JOIN Enrollment
ON Student.studentId = Enrollment.studentId
INNER JOIN Course
ON Enrollment.courseId = Course.courseId;
```

You do not need to master joins yet on this page.  
The key idea is:

```text
joins use primary key and foreign key relationships to combine related records
```

---

## 18. Choosing Relationship Type

### Scenario 1

One country has many cities. Each city belongs to one country.

Relationship:

```text
Country 1 -------- * City
```

Type:

```text
one-to-many
```

### Scenario 2

One student can join many clubs. One club can have many students.

Relationship:

```text
Student many -------- many Club
```

Needs linking table:

```text
Membership
```

### Scenario 3

One person has one passport record. One passport record belongs to one person.

Relationship:

```text
Person 1 -------- 1 Passport
```

Type:

```text
one-to-one
```

---

## 19. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Saying relationship means tables have similar fields | Relationships are created through keys | Use primary key and foreign key |
| Confusing one-to-many and many-to-one | Same relationship from opposite direction | State both directions clearly |
| Directly storing many values in one field | Breaks good table design | Use separate records in linking table |
| Not using linking table for many-to-many | Causes repeated groups and poor queries | Use junction/linking table |
| Thinking foreign key must be unique | Foreign keys can repeat | Many child records may reference one parent |
| Putting foreign key in wrong table | Relationship becomes unclear | Foreign key usually goes in child table |
| Ignoring referential integrity | Broken links can happen | Foreign key should match existing primary key |
| Using names to link tables | Names may change or repeat | Use ID fields |
| Confusing table and relationship | A table stores data; relationship links tables | Keep terms separate |
| Treating linking table as unnecessary | It is essential for many-to-many | Store pairs of foreign keys |

---

## 20. Guided Practice

### Practice 1: Identify Relationship Type

One teacher can teach many courses. Each course has one teacher.

<details>
<summary>Suggested Answer</summary>

This is a one-to-many relationship:

```text
Teacher 1 -------- * Course
```

</details>

---

### Practice 2: Many-to-Many?

One student can take many courses. One course can have many students.

<details>
<summary>Suggested Answer</summary>

This is a many-to-many relationship. It should usually be implemented using a linking table such as `Enrollment`.

</details>

---

### Practice 3: Identify Parent and Child Table

Teacher table:

| teacherId | teacherName |
|---|---|
| T01 | Mr Smith |

Course table:

| courseId | courseName | teacherId |
|---|---|---|
| C001 | Computer Science | T01 |

Which is the parent table?

<details>
<summary>Suggested Answer</summary>

Teacher is the parent table because it contains the primary key `teacherId`. Course is the child table because it contains `teacherId` as a foreign key.

</details>

---

### Practice 4: Find the Broken Relationship

Student table contains:

```text
S001
S002
```

Enrollment table contains:

```text
E001, S001, C001
E002, S999, C002
```

Which record breaks referential integrity?

<details>
<summary>Suggested Answer</summary>

`E002, S999, C002` breaks referential integrity because `S999` does not exist in the Student table.

</details>

---

### Practice 5: Linking Table Fields

For a many-to-many relationship between `Book` and `Author`, suggest a linking table name and fields.

<details>
<summary>Suggested Answer</summary>

Possible linking table:

```text
BookAuthor(
    bookAuthorId,
    bookId,
    authorId
)
```

`bookId` is a foreign key to Book.  
`authorId` is a foreign key to Author.

</details>

---

## 21. Independent Practice

### Question 1

Define database relationship.

### Question 2

Explain how primary keys and foreign keys create relationships.

### Question 3

Classify each relationship as one-to-one, one-to-many, or many-to-many:

1. One customer can place many orders.
2. One person has one passport.
3. One actor can appear in many movies and one movie has many actors.
4. One department has many employees.

### Question 4

For a library database, design tables for:

```text
Book
Borrower
Loan
```

Identify primary keys and foreign keys.

### Question 5

Explain why a many-to-many relationship usually needs a linking table.

### Question 6

A school stores course1, course2, course3 in the Student table. Explain why this is poor design.

### Question 7

Draw a text relationship diagram for:

```text
Customer
Order
OrderItem
Product
```

### Question 8

Explain referential integrity using a Course and Teacher example.

### Question 9

Given this table, identify relationship type:

| orderId | customerId | orderDate |
|---|---|---|
| O001 | C001 | 2026-05-20 |
| O002 | C001 | 2026-05-21 |
| O003 | C002 | 2026-05-22 |

### Question 10

Explain how relationships reduce data redundancy.

---

## 22. Exam-style Questions

### Question 1 [4 marks]

Define relationship in a relational database.

<details>
<summary>Mark Scheme Style Answer</summary>

A relationship is a link between tables in a relational database. It is usually created by using a foreign key in one table that refers to a primary key in another table. Relationships allow related data to be stored in separate tables and connected when needed.

</details>

---

### Question 2 [5 marks]

Explain the difference between a one-to-many relationship and a many-to-many relationship.

<details>
<summary>Mark Scheme Style Answer</summary>

In a one-to-many relationship, one record in one table can be linked to many records in another table, such as one teacher teaching many courses. In a many-to-many relationship, many records in one table can link to many records in another table, such as many students taking many courses. A many-to-many relationship usually needs a linking table to store the pairs of related records.

</details>

---

### Question 3 [6 marks]

A school database has Student and Course tables. One student can take many courses, and one course can have many students. Explain how this relationship should be implemented.

<details>
<summary>Mark Scheme Style Answer</summary>

This is a many-to-many relationship. It should be implemented using a linking table, such as Enrollment. The Enrollment table should store a primary key such as enrollmentId and foreign keys such as studentId and courseId. studentId refers to the Student table's primary key, and courseId refers to the Course table's primary key. This breaks the many-to-many relationship into two one-to-many relationships.

</details>

---

### Question 4 [6 marks]

Explain referential integrity in the context of Teacher and Course tables.

<details>
<summary>Mark Scheme Style Answer</summary>

Referential integrity means that a foreign key value must refer to an existing primary key value in the related table. If Course.teacherId is a foreign key referring to Teacher.teacherId, then every teacherId stored in the Course table should already exist in the Teacher table. If a course refers to T99 but there is no teacher with teacherId T99, the relationship is invalid.

</details>

---

### Question 5 [6 marks]

Explain why using relationships can reduce data redundancy.

<details>
<summary>Mark Scheme Style Answer</summary>

Relationships allow data about different entities to be stored in separate tables. Instead of repeating student, course, or teacher details many times in one large table, each entity can be stored once in its own table. Other tables can then use foreign keys to refer to those records. This reduces repeated data, saves storage, and lowers the risk of inconsistent updates.

</details>

---

## 23. Classroom Activity

### Activity 1: Relationship Cards

Students receive cards:

```text
Teacher
Course
Student
Enrollment
Book
Author
BookAuthor
```

They arrange the cards and draw relationship lines:

```text
1 -------- *
* -------- *
```

Then they explain the relationship.

---

### Activity 2: Human Linking Table

Some students act as Student records.  
Some students act as Course records.  
Other students act as Enrollment records holding both studentId and courseId.

The class physically demonstrates how a linking table connects many students to many courses.

---

### Activity 3: Repair a Bad Design

Give students a table with repeated fields:

```text
studentId, name, course1, course2, course3
```

They redesign it into:

```text
Student
Course
Enrollment
```

---

## 24. Homework

### Homework Part A: Concept Explanation

In 5-6 sentences, explain the difference between one-to-many and many-to-many relationships using your own examples.

---

### Homework Part B: Relationship Design

Design a database structure for a music app with:

```text
User
Playlist
Song
PlaylistSong
```

For each table, list:

```text
primary key
foreign keys
relationship type
```

---

### Homework Part C: Referential Integrity

Explain what is wrong if an Order table contains:

```text
customerId = C999
```

but there is no customer with ID `C999`.

---

### Homework Part D: Interpretation

Given:

### Customer

| customerId | customerName |
|---|---|
| C001 | Amy |
| C002 | Ben |

### Order

| orderId | customerId |
|---|---|
| O001 | C001 |
| O002 | C001 |
| O003 | C002 |

Answer:

1. What is the relationship type?
2. Which table is parent?
3. Which table is child?
4. Which field is the foreign key?
5. How many orders does Amy have?

---

## 25. One-page Revision Summary

| Point | Summary |
|---|---|
| Relationship | Link between tables |
| Primary key | Uniquely identifies records |
| Foreign key | Links to primary key in another table |
| One-to-one | One record links to one record |
| One-to-many | One record links to many records |
| Many-to-many | Many records link to many records |
| Linking table | Resolves many-to-many relationship |
| Parent table | Contains referenced primary key |
| Child table | Contains foreign key |
| Referential integrity | Foreign key must match existing primary key |
| `1` | One |
| `*` | Many |
| Main benefit | Reduces repeated data and improves consistency |
| Exam phrase | Relationships connect tables using primary and foreign keys so related data can be stored separately and linked when needed |

---

## 26. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a relationship in a database?
2. How do primary keys and foreign keys create relationships?
3. What is a one-to-one relationship?
4. What is a one-to-many relationship?
5. What is a many-to-many relationship?
6. Why does many-to-many usually need a linking table?
7. What is a parent table?
8. What is a child table?
9. What is referential integrity?
10. How can relationships reduce data redundancy?
