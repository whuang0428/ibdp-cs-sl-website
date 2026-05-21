# Normalization

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what normalization means in database design
- explain why normalization is used
- identify repeated data and repeated groups in a poor table design
- explain how normalization reduces redundancy
- explain how normalization improves consistency
- distinguish unnormalized data, first normal form, second normal form, and third normal form at a suitable introductory level
- split a poorly designed table into related tables
- identify primary keys and foreign keys after normalization
- explain the disadvantages of overcomplicated database design
- answer exam-style questions about normalization and data redundancy

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Improving database design by reducing repeated data and dependency problems |
| Connected topics | Tables, records, fields, primary keys, foreign keys, relationships, data integrity |
| Practical focus | Turning one poor table into several related tables |
| Exam relevance | Database design explanation, redundancy, consistency, normalization purpose |

::: tip Learning Focus
Normalization is not mainly about memorizing names such as 1NF, 2NF, and 3NF. The most important classroom skill is seeing why a table design is poor and how to split it into better related tables.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Normalization | 规范化 | A process of organizing database tables to reduce redundancy and improve consistency |
| Redundancy | 冗余 | Unnecessary repeated data |
| Data inconsistency | 数据不一致 | Same data stored in different ways in different places |
| Repeated group | 重复组 | Multiple similar fields or values repeated in one record |
| Dependency | 依赖关系 | When one field's value depends on another field |
| First Normal Form | 第一范式 / 1NF | Each field contains a single value and repeated groups are removed |
| Second Normal Form | 第二范式 / 2NF | Non-key fields depend on the whole primary key |
| Third Normal Form | 第三范式 / 3NF | Non-key fields do not depend on other non-key fields |
| Primary key | 主键 | Field that uniquely identifies each record |
| Foreign key | 外键 | Field that links to a primary key in another table |
| Anomaly | 异常 | Problem caused by poor design, such as update, insert, or delete problems |
| Update anomaly | 更新异常 | Repeated data must be updated in many places |
| Insert anomaly | 插入异常 | Cannot add data without unrelated data |
| Delete anomaly | 删除异常 | Deleting one record accidentally removes other needed data |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Normalization（规范化）** 是数据库设计中的一种整理方法。  
它的目标是让 table 设计更合理，减少重复数据，并降低数据不一致的风险。

一个没有规范化的 table 可能是这样：

| studentId | studentName | course1 | course2 | teacher1 | teacher2 |
|---|---|---|---|---|---|
| S001 | Alice | Computer Science | Mathematics | Mr Smith | Ms Green |
| S002 | Ben | Computer Science |  | Mr Smith |  |

这个设计有几个问题：

```text
course1 / course2 是重复字段
teacher1 / teacher2 是重复字段
如果一个学生选更多课，表就不够用了
Computer Science 和 Mr Smith 被重复存储
更新时容易出现不一致
```

更好的设计是把不同 entity 分成不同 tables：

```text
Student
Course
Teacher
Enrollment
```

这样每种数据只放在适合自己的 table 里，然后用 primary key 和 foreign key 连接。

简单来说：

```text
normalization = split poor large tables into better related tables
```

它的好处是：

```text
reduce repeated data
improve consistency
make updates safer
make relationships clearer
```

</template>

<template #en>

### English Explanation

**Normalization** is a database design process.  
Its goal is to make table design more logical, reduce repeated data, and lower the risk of inconsistent data.

An unnormalized table may look like this:

| studentId | studentName | course1 | course2 | teacher1 | teacher2 |
|---|---|---|---|---|---|
| S001 | Alice | Computer Science | Mathematics | Mr Smith | Ms Green |
| S002 | Ben | Computer Science |  | Mr Smith |  |

This design has several problems:

```text
course1 / course2 are repeated fields
teacher1 / teacher2 are repeated fields
if a student takes more courses, the table structure is not enough
Computer Science and Mr Smith are stored repeatedly
updates can easily become inconsistent
```

A better design separates different entities into different tables:

```text
Student
Course
Teacher
Enrollment
```

Each type of data is stored in the most suitable table, and tables are linked using primary keys and foreign keys.

In simple terms:

```text
normalization = split poor large tables into better related tables
```

Its benefits include:

```text
reduce repeated data
improve consistency
make updates safer
make relationships clearer
```

</template>
</LangBlock>

---

## 5. Why Normalization Is Needed

Poor database design can cause:

| Problem | Explanation |
|---|---|
| Data redundancy | Same data is stored many times |
| Data inconsistency | Repeated data may not match after updates |
| Update anomaly | One fact must be updated in several places |
| Insert anomaly | Some data cannot be added unless other data exists |
| Delete anomaly | Deleting one row may remove important unrelated data |
| Poor scalability | Table structure cannot handle more repeated values |
| Harder queries | Repeated columns make searching harder |

### Example Problem

If `Mr Smith` changes his name to `Mr John Smith`, every repeated row must be updated.  
If one row is missed, the database becomes inconsistent.

---

## 6. Unnormalized Table Example

### Poor Table: StudentCourse

| studentId | studentName | yearGroup | course1 | teacher1 | course2 | teacher2 |
|---|---|---:|---|---|---|---|
| S001 | Alice | 12 | Computer Science | Mr Smith | Mathematics | Ms Green |
| S002 | Ben | 12 | Computer Science | Mr Smith |  |  |
| S003 | Clara | 13 | Mathematics | Ms Green | Physics | Mr Brown |

### Problems

| Problem | Example |
|---|---|
| Repeated groups | `course1`, `course2`, `teacher1`, `teacher2` |
| Empty fields | Ben has no course2 |
| Limited structure | What if Alice takes 5 courses? |
| Repeated teacher data | Mr Smith appears more than once |
| Mixed entities | Student, Course, and Teacher data are in one table |

::: warning Key Point
A table should not use repeated columns such as `course1`, `course2`, `course3`. Related records should usually be stored as separate rows in a related table.
:::

---

## 7. Step 1: Identify Entities

From the poor table, identify real-world entities.

### Entities

```text
Student
Course
Teacher
Enrollment
```

| Entity | Data About It |
|---|---|
| Student | studentId, studentName, yearGroup |
| Course | courseId, courseName, teacherId |
| Teacher | teacherId, teacherName |
| Enrollment | which student takes which course |

### Why Enrollment?

Student and Course have a many-to-many relationship:

```text
one student can take many courses
one course can have many students
```

So we need a linking table:

```text
Enrollment
```

---

## 8. Step 2: Create Better Tables

### Student Table

| studentId | studentName | yearGroup |
|---|---|---:|
| S001 | Alice | 12 |
| S002 | Ben | 12 |
| S003 | Clara | 13 |

Primary key:

```text
studentId
```

### Teacher Table

| teacherId | teacherName |
|---|---|
| T01 | Mr Smith |
| T02 | Ms Green |
| T03 | Mr Brown |

Primary key:

```text
teacherId
```

### Course Table

| courseId | courseName | teacherId |
|---|---|---|
| C001 | Computer Science | T01 |
| C002 | Mathematics | T02 |
| C003 | Physics | T03 |

Primary key:

```text
courseId
```

Foreign key:

```text
teacherId references Teacher.teacherId
```

### Enrollment Table

| enrollmentId | studentId | courseId |
|---|---|---|
| E001 | S001 | C001 |
| E002 | S001 | C002 |
| E003 | S002 | C001 |
| E004 | S003 | C002 |
| E005 | S003 | C003 |

Primary key:

```text
enrollmentId
```

Foreign keys:

```text
studentId references Student.studentId
courseId references Course.courseId
```

---

## 9. Step 3: Explain the Improved Design

The normalized design is better because:

| Improvement | Explanation |
|---|---|
| Student data stored once | Alice's name appears once in Student table |
| Teacher data stored once | Mr Smith appears once in Teacher table |
| Course data stored once | Computer Science appears once in Course table |
| Enrollments are flexible | Students can take any number of courses |
| Empty repeated fields removed | No need for course1/course2/course3 |
| Relationships are clearer | Enrollment links Student and Course |
| Updates are safer | Changing teacher name happens in one place |

### Example

If Mr Smith's name changes, update only:

```text
Teacher table, record T01
```

You do not need to update many student-course rows.

---

## 10. First Normal Form: 1NF

At an introductory level, **1NF** means:

```text
each field contains a single value
there are no repeated groups
```

### Not 1NF

| studentId | name | courses |
|---|---|---|
| S001 | Alice | Computer Science, Mathematics |
| S002 | Ben | Computer Science |

Problem:

```text
courses contains multiple values in one field
```

### Better 1NF Style

| studentId | name | course |
|---|---|---|
| S001 | Alice | Computer Science |
| S001 | Alice | Mathematics |
| S002 | Ben | Computer Science |

This removes multiple values from one field, but it still repeats student data.  
Further normalization can improve it.

---

## 11. Repeated Columns and 1NF

### Not 1NF

| studentId | name | course1 | course2 | course3 |
|---|---|---|---|---|
| S001 | Alice | CS | Maths |  |
| S002 | Ben | CS |  |  |

Problems:

```text
course1, course2, course3 are repeated groups
the number of courses is limited by table structure
many empty cells may appear
```

### Better Design

Use Enrollment records:

| studentId | courseId |
|---|---|
| S001 | C001 |
| S001 | C002 |
| S002 | C001 |

Each row stores one student-course relationship.

---

## 12. Second Normal Form: 2NF Intro

For this course, keep 2NF at a simple level.

**2NF** means:

```text
non-key fields should depend on the whole primary key
```

This matters most when a table uses a composite key.

### Poor Table

| studentId | courseId | studentName | courseName |
|---|---|---|---|
| S001 | C001 | Alice | Computer Science |
| S001 | C002 | Alice | Mathematics |
| S002 | C001 | Ben | Computer Science |

Possible composite key:

```text
studentId + courseId
```

Problem:

```text
studentName depends only on studentId
courseName depends only on courseId
```

So the table mixes data that belongs in Student and Course.

### Better Tables

```text
Student(studentId, studentName)
Course(courseId, courseName)
Enrollment(studentId, courseId)
```

::: info Simple Understanding
2NF helps avoid storing fields in a table when they only depend on part of a composite key.
:::

---

## 13. Third Normal Form: 3NF Intro

At a simple level, **3NF** means:

```text
non-key fields should not depend on other non-key fields
```

### Poor Table

| studentId | studentName | tutorId | tutorName |
|---|---|---|---|
| S001 | Alice | T01 | Mr Smith |
| S002 | Ben | T01 | Mr Smith |
| S003 | Clara | T02 | Ms Green |

Primary key:

```text
studentId
```

Problem:

```text
tutorName depends on tutorId
tutorId is not the primary key of this table
```

So tutor data should be separated.

### Better Tables

Student table:

| studentId | studentName | tutorId |
|---|---|---|
| S001 | Alice | T01 |
| S002 | Ben | T01 |
| S003 | Clara | T02 |

Tutor table:

| tutorId | tutorName |
|---|---|
| T01 | Mr Smith |
| T02 | Ms Green |

Now tutorName is stored once in Tutor table.

---

## 14. 1NF, 2NF, 3NF Summary

| Normal Form | Simple Meaning | Main Problem Removed |
|---|---|---|
| 1NF | Each field contains a single value; no repeated groups | Repeating columns / multiple values in one field |
| 2NF | Non-key fields depend on the whole key | Partial dependency |
| 3NF | Non-key fields depend only on the key, not another non-key field | Transitive dependency |

### Beginner-friendly Version

```text
1NF: no list inside one cell, no course1/course2/course3
2NF: put student data in Student table, course data in Course table
3NF: put teacher/tutor data in Teacher/Tutor table, not repeated everywhere
```

---

## 15. Update, Insert, and Delete Anomalies

Poor table design can cause anomalies.

### Poor Table

| studentId | studentName | courseName | teacherName |
|---|---|---|---|
| S001 | Alice | Computer Science | Mr Smith |
| S002 | Ben | Computer Science | Mr Smith |
| S003 | Clara | Mathematics | Ms Green |

### Update Anomaly

If Mr Smith changes name, all rows with Mr Smith must be updated.  
If one row is missed, data becomes inconsistent.

### Insert Anomaly

If a new course exists but no student has enrolled yet, it may be difficult to store the course without student data.

### Delete Anomaly

If Ben is the only student in Computer Science and his row is deleted, the database may lose the information that Computer Science exists.

---

## 16. Normalization and Relationships

Normalization creates several related tables.

These tables must be connected using:

```text
primary keys
foreign keys
relationships
```

### Example

```text
Student 1 -------- * Enrollment
Course 1 -------- * Enrollment
Teacher 1 -------- * Course
```

### Key Fields

| Table | Primary Key | Foreign Key |
|---|---|---|
| Student | studentId | none |
| Teacher | teacherId | none |
| Course | courseId | teacherId |
| Enrollment | enrollmentId | studentId, courseId |

Normalization and relationships work together.

---

## 17. Normalization and SQL

Normalized tables often require SQL joins to combine related data.

Example question:

```text
Show student names and course names.
```

Data is stored in:

```text
Student
Enrollment
Course
```

SQL join preview:

```sql
SELECT Student.studentName, Course.courseName
FROM Student
INNER JOIN Enrollment
ON Student.studentId = Enrollment.studentId
INNER JOIN Course
ON Enrollment.courseId = Course.courseId;
```

You do not need to master joins here.  
The key idea is:

```text
normalization reduces redundancy, but queries may need to combine tables
```

---

## 18. Advantages of Normalization

| Advantage | Explanation |
|---|---|
| Reduces redundancy | Data is not repeated unnecessarily |
| Improves consistency | One fact is stored in one place |
| Reduces update anomalies | Less repeated data to update |
| Reduces insert anomalies | New entities can be added more cleanly |
| Reduces delete anomalies | Deleting one record is less likely to remove unrelated facts |
| Improves structure | Tables represent clear entities |
| Improves data integrity | Keys and relationships can enforce rules |

---

## 19. Possible Disadvantages or Trade-offs

Normalization is useful, but overcomplicated design can have trade-offs.

| Trade-off | Explanation |
|---|---|
| More tables | Database may become harder for beginners to understand |
| More joins | Queries may become more complex |
| Performance concerns | Some queries may require joining multiple tables |
| Design time | Careful design takes time |
| Over-normalization | Splitting too much can make design unnecessarily complex |

### Balanced View

A good database design should:

```text
reduce unnecessary repetition
keep relationships clear
avoid making the design more complex than needed
```

---

## 20. Worked Example: Library Loans

### Poor Table

| loanId | borrowerName | borrowerEmail | bookTitle | author | loanDate |
|---|---|---|---|---|---|
| L001 | Amy | amy@email.com | Dune | Frank Herbert | 2026-05-01 |
| L002 | Amy | amy@email.com | Animal Farm | George Orwell | 2026-05-02 |
| L003 | Ben | ben@email.com | Dune | Frank Herbert | 2026-05-03 |

### Problems

```text
Amy's email is repeated
Dune and Frank Herbert are repeated
borrower data and book data are mixed with loan data
```

### Better Tables

Borrower:

| borrowerId | borrowerName | borrowerEmail |
|---|---|---|
| B001 | Amy | amy@email.com |
| B002 | Ben | ben@email.com |

Book:

| bookId | bookTitle | author |
|---|---|---|
| BK001 | Dune | Frank Herbert |
| BK002 | Animal Farm | George Orwell |

Loan:

| loanId | borrowerId | bookId | loanDate |
|---|---|---|---|
| L001 | B001 | BK001 | 2026-05-01 |
| L002 | B001 | BK002 | 2026-05-02 |
| L003 | B002 | BK001 | 2026-05-03 |

### Explanation

Borrower data is stored once.  
Book data is stored once.  
Loan table links borrowers and books.

---

## 21. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Thinking normalization means sorting data | It is about table design, not ordering rows | Normalization reduces redundancy |
| Keeping `course1`, `course2`, `course3` fields | Repeated groups break good design | Use a linking table |
| Storing multiple values in one field | Hard to search and update | Store one value per field |
| Splitting tables without keys | Tables cannot be linked properly | Add primary and foreign keys |
| Removing too much data | Data may become hard to interpret | Keep necessary fields |
| Confusing normalization with validation | Different ideas | Normalization organizes tables |
| Thinking one big table is always easier | It causes anomalies | Use related tables |
| Forgetting foreign keys | Relationships become unclear | Add linking fields |
| Using names instead of IDs for links | Names may repeat/change | Use ID keys |
| Over-normalizing simple data | Design becomes too complex | Balance simplicity and structure |

---

## 22. Guided Practice

### Practice 1: Identify Repeated Groups

What is wrong with this table?

| studentId | name | course1 | course2 |
|---|---|---|---|
| S001 | Alice | CS | Maths |
| S002 | Ben | CS |  |

<details>
<summary>Suggested Answer</summary>

`course1` and `course2` are repeated groups. The design limits the number of courses and creates empty fields. A better design would use a Course table and Enrollment table.

</details>

---

### Practice 2: Identify Entities

From this table, identify possible entities.

| orderId | customerName | customerEmail | productName | productPrice |
|---|---|---|---|---:|
| O001 | Amy | amy@email.com | Keyboard | 49.99 |

<details>
<summary>Suggested Answer</summary>

Possible entities:

```text
Customer
Product
Order
OrderItem
```

</details>

---

### Practice 3: Split a Table

Split this poor design into better table names:

```text
borrowerName
borrowerEmail
bookTitle
author
loanDate
```

<details>
<summary>Suggested Answer</summary>

Possible tables:

```text
Borrower(borrowerId, borrowerName, borrowerEmail)
Book(bookId, bookTitle, author)
Loan(loanId, borrowerId, bookId, loanDate)
```

</details>

---

### Practice 4: Explain Update Anomaly

Why is repeated teacherName a problem?

<details>
<summary>Suggested Answer</summary>

If the teacher's name changes, every repeated copy must be updated. If one copy is missed, the database contains inconsistent data.

</details>

---

### Practice 5: Identify Foreign Keys

In this design:

```text
Student(studentId, studentName)
Course(courseId, courseName)
Enrollment(enrollmentId, studentId, courseId)
```

What are the foreign keys?

<details>
<summary>Suggested Answer</summary>

In Enrollment:

```text
studentId references Student.studentId
courseId references Course.courseId
```

</details>

---

## 23. Independent Practice

### Question 1

Define normalization.

### Question 2

Explain why normalization is useful.

### Question 3

Identify three problems with this table:

| studentId | studentName | course1 | course2 | teacher1 | teacher2 |
|---|---|---|---|---|---|
| S001 | Alice | CS | Maths | Mr Smith | Ms Green |
| S002 | Ben | CS |  | Mr Smith |  |

### Question 4

Redesign the table in Question 3 using separate tables.

### Question 5

Explain what 1NF means at a simple level.

### Question 6

Explain why storing `course1`, `course2`, and `course3` is poor design.

### Question 7

Explain update anomaly using your own example.

### Question 8

Explain how normalization can reduce inconsistency.

### Question 9

For a music app, redesign this poor table:

| playlistId | playlistName | song1 | artist1 | song2 | artist2 |
|---|---|---|---|---|---|

### Question 10

Explain one trade-off of normalization.

---

## 24. Exam-style Questions

### Question 1 [4 marks]

Define normalization and state one reason why it is used.

<details>
<summary>Mark Scheme Style Answer</summary>

Normalization is the process of organizing database tables to reduce unnecessary repeated data and improve data consistency. It is used to reduce redundancy, avoid update anomalies, and make database relationships clearer.

</details>

---

### Question 2 [5 marks]

Explain why the following design is poor.

| studentId | name | course1 | course2 | course3 |
|---|---|---|---|---|
| S001 | Alice | CS | Maths |  |
| S002 | Ben | CS |  |  |

<details>
<summary>Mark Scheme Style Answer</summary>

The table has repeated fields such as course1, course2, and course3. This limits the number of courses that can be stored and creates empty fields when students take fewer courses. It also makes searching and updating course data harder. A better design would use a separate Course table and an Enrollment table.

</details>

---

### Question 3 [6 marks]

A school stores student, course, and teacher data in one large table. Explain two problems this can cause.

<details>
<summary>Mark Scheme Style Answer</summary>

One problem is redundancy because student, course, or teacher data may be repeated in many rows. Another problem is inconsistency because if repeated data is updated in one place but not another, the table may contain conflicting values. It can also cause update, insert, or delete anomalies. Splitting the data into related tables reduces these problems.

</details>

---

### Question 4 [6 marks]

Normalize this poor table into suitable tables.

| loanId | borrowerName | borrowerEmail | bookTitle | author | loanDate |
|---|---|---|---|---|---|

<details>
<summary>Mark Scheme Style Answer</summary>

A suitable normalized design is:

```text
Borrower(borrowerId, borrowerName, borrowerEmail)
Book(bookId, bookTitle, author)
Loan(loanId, borrowerId, bookId, loanDate)
```

`borrowerId` in Loan is a foreign key referencing Borrower. `bookId` in Loan is a foreign key referencing Book. This reduces repeated borrower and book data.

</details>

---

### Question 5 [6 marks]

Explain one advantage and one possible disadvantage of normalization.

<details>
<summary>Mark Scheme Style Answer</summary>

One advantage of normalization is that it reduces redundant data by storing each fact in one appropriate table. This improves consistency and makes updates safer. One possible disadvantage is that the database may contain more tables, so queries may need joins and can become more complex for users or programmers.

</details>

---

## 25. Classroom Activity

### Activity 1: Bad Table Surgery

Give students a poor table with repeated fields.  
They must highlight:

```text
repeated data
repeated groups
mixed entities
empty fields
```

Then they cut it into better table designs.

---

### Activity 2: Entity Sorting

Students receive field cards:

```text
studentName
courseName
teacherName
loanDate
bookTitle
borrowerEmail
```

They sort fields into entity tables.

---

### Activity 3: Anomaly Role-play

Students act as repeated records.  
When a teacher name changes, multiple students must update their cards.  
If one student forgets, the class sees inconsistency.

---

## 26. Homework

### Homework Part A: Concept Explanation

In 5-6 sentences, explain what normalization is and why databases use it.

---

### Homework Part B: Redesign Task

Normalize this table:

| orderId | customerName | customerEmail | productName | productPrice | quantity |
|---|---|---|---|---:|---:|
| O001 | Amy | amy@email.com | Keyboard | 49.99 | 1 |
| O001 | Amy | amy@email.com | Mouse | 19.99 | 2 |
| O002 | Ben | ben@email.com | Keyboard | 49.99 | 1 |

Suggest suitable tables, primary keys, and foreign keys.

---

### Homework Part C: Written Explanation

Explain the difference between:

```text
repeated data
repeated groups
```

Give one example of each.

---

### Homework Part D: Trade-off

Explain why normalization can make queries more complex, even though it improves table design.

---

## 27. One-page Revision Summary

| Point | Summary |
|---|---|
| Normalization | Organizing tables to reduce redundancy |
| Redundancy | Unnecessary repeated data |
| Inconsistency | Same data stored differently |
| Repeated group | Similar fields repeated, such as course1/course2 |
| 1NF | Single values in fields; no repeated groups |
| 2NF | Non-key fields depend on the whole key |
| 3NF | Non-key fields do not depend on other non-key fields |
| Update anomaly | Must update repeated data in many places |
| Insert anomaly | Cannot add data without unrelated data |
| Delete anomaly | Deleting one row removes other facts |
| Good design | Separate entities into related tables |
| Keys needed | Primary and foreign keys connect normalized tables |
| Trade-off | More tables may require more complex queries |
| Exam phrase | Normalization reduces redundancy and improves consistency by splitting data into related tables |

---

## 28. Quick Self-test

Before moving on, students should be able to answer these:

1. What is normalization?
2. Why is normalization used?
3. What is data redundancy?
4. What is data inconsistency?
5. What is a repeated group?
6. What does 1NF mean at a simple level?
7. Why are `course1`, `course2`, `course3` poor design?
8. What is an update anomaly?
9. Why do normalized tables need keys?
10. What is one trade-off of normalization?
