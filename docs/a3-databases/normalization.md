# Normalization

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what normalization is
- explain why normalization is used in relational database design
- identify data redundancy and update problems in poorly designed tables
- explain insertion, update, and deletion anomalies at a basic level
- explain first normal form, second normal form, and third normal form at a student-friendly level
- identify repeating groups and non-atomic fields
- explain how to split poorly designed tables into related tables
- use primary keys and foreign keys when normalizing data
- explain how normalization improves data consistency and integrity
- apply normalization to school, library, shop, hospital, and game examples
- avoid common misconceptions about normalization
- answer exam-style questions about normalization

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Improving relational database design by reducing redundancy and dependency problems |
| Connected topics | Tables, records and fields, primary/foreign keys, relationships, ERDs, SQL SELECT, database integrity |
| Practical focus | Taking a poorly designed table and turning it into related tables |
| Exam relevance | Redundancy, anomalies, 1NF/2NF/3NF concepts, table decomposition, justification |

::: tip Learning Focus
Normalization is a design process. It helps split data into well-structured related tables so that data is not unnecessarily repeated and updates are less likely to cause inconsistency.
:::

---

## Start here: normalization reduces repeated data

Normalization is used to organize data into well-structured tables.

The goal is to reduce duplicated data and avoid update, insert, and delete problems.

Learn normalization as a step-by-step design process, not only as definitions of 1NF, 2NF, and 3NF. In exam answers, explain both what changes in the table design and why the change improves the database.

---

## Core checklist

By the end of this page, you should be able to:

- explain why normalization is used
- identify repeated data
- explain data redundancy
- describe update, insert, and delete anomalies
- explain the purpose of 1NF, 2NF, and 3NF at a simple level
- identify when a table should be split
- use primary keys and foreign keys to link normalized tables
- explain how normalization improves database design

---

## Normalization workflow

Use this route when you are given a messy database table:

| Step | What to do | Why it matters |
|---:|---|---|
| 1 | Start with the unnormalized table. | Look at the data before deciding what to split. |
| 2 | Check whether each field contains only one value. | Fields with several values are harder to search and update. |
| 3 | Remove repeating groups to reach 1NF. | Avoid fields such as `Course1`, `Course2`, and `Course3`. |
| 4 | Check whether non-key fields depend on the whole primary key. | This is important when the key is made from more than one field. |
| 5 | Remove partial dependencies to reach 2NF. | Move data that depends on only part of a composite key. |
| 6 | Check whether non-key fields depend on other non-key fields. | This helps find transitive dependencies. |
| 7 | Remove transitive dependencies to reach 3NF. | Store the dependent data in its own table. |
| 8 | Add primary keys and foreign keys to keep tables linked. | Splitting tables must not lose the relationships. |
| 9 | Check that the new tables reduce redundancy and anomalies. | The design should be better, not just more complicated. |

---

## Normal forms quick table

| Normal form | Main idea | What to check |
|---|---|---|
| 1NF | each field should hold one value | no repeating groups or multiple values in one field |
| 2NF | non-key fields depend on the whole key | no partial dependency on part of a composite key |
| 3NF | non-key fields depend only on the key | no transitive dependency between non-key fields |

---

## Common anomalies

| Anomaly | What can go wrong | Simple example |
|---|---|---|
| Update anomaly | the same data must be changed in many places | changing a teacher's phone number in many records |
| Insert anomaly | data cannot be added unless unrelated data is also known | cannot add a new course until a student enrols |
| Delete anomaly | deleting one record accidentally removes useful data | deleting the last student in a course removes course details |

---

## Exam answer pattern

When you meet a normalization or database design question, use this order:

1. Identify repeated or duplicated data.
2. Identify the problem caused by the design.
3. Decide which fields belong together.
4. Split the data into separate tables.
5. Choose primary keys for the new tables.
6. Add foreign keys to keep relationships.
7. Explain how the new design reduces redundancy or anomalies.
8. Check that the scenario can still be represented.

---

## Common mistakes

- only defining 1NF, 2NF, or 3NF without applying them
- splitting tables but forgetting primary keys
- splitting tables but forgetting foreign keys
- removing duplicated data but losing the relationship between tables
- confusing a repeating group with repeated records
- treating all repeated values as wrong without checking the scenario
- not explaining why the new design is better
- making too many tiny tables without a clear reason

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Normalization | 规范化 | Process of organizing database tables to reduce redundancy and improve integrity |
| Redundancy | 冗余 | Unnecessary duplication of data |
| Data inconsistency | 数据不一致 | Same data stored with conflicting values |
| Anomaly | 异常 | Problem caused by poor database design |
| Insertion anomaly | 插入异常 | Cannot add data without unrelated data |
| Update anomaly | 更新异常 | Must update repeated data in many places |
| Deletion anomaly | 删除异常 | Deleting one record accidentally removes other needed data |
| 1NF | 第一范式 | First Normal Form; no repeating groups and fields contain atomic values |
| 2NF | 第二范式 | Second Normal Form; 1NF plus non-key fields depend on the whole primary key |
| 3NF | 第三范式 | Third Normal Form; 2NF plus non-key fields do not depend on other non-key fields |
| Atomic value | 原子值 | Single indivisible value in one field |
| Repeating group | 重复组 | Multiple similar fields such as Course1, Course2, Course3 |
| Primary key | 主键 | Field that uniquely identifies each record |
| Foreign key | 外键 | Field that links to a primary key in another table |
| Dependency | 依赖 | When one field value determines another field value |
| Partial dependency | 部分依赖 | Non-key field depends on part of a composite key |
| Transitive dependency | 传递依赖 | Non-key field depends on another non-key field |
| Decomposition | 分解 | Splitting one table into related tables |
| Integrity | 完整性 | Accuracy, consistency, and reliability of data |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Normalization（规范化）** 是整理 database tables 的过程。  
它的目的不是让表格看起来更复杂，而是让数据更干净、更少重复、更不容易出错。

如果一个 table 设计不好，可能会出现：

```text
same data repeated many times
same data updated in one row but not another row
cannot add new data unless unrelated data also exists
deleting one row accidentally removes useful data
```

这些问题叫做：

```text
anomalies
```

Normalization 通常会把一个很大的、混乱的 table 分成几个更小、更清楚的 related tables。

例如 poor design:

| StudentID | StudentName | Course1 | Course2 | TeacherName | TeacherEmail |
|---:|---|---|---|---|---|
| 101 | Amy Chen | CS | Math | Mr Lee | lee@school.edu |

这里有很多问题：

```text
Course1 / Course2 是 repeating groups
Teacher details may repeat
Student, Course, Teacher data are mixed together
hard to add more courses
hard to update teacher email consistently
```

更好的设计是：

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName, TeacherID)
Teacher(TeacherID, TeacherName, TeacherEmail)
Enrollment(StudentID, CourseID)
```

简单来说：

```text
normalization = split poorly designed tables into better related tables
goal = reduce redundancy and improve consistency
```

</template>

<template #en>

### English Explanation

**Normalization** is the process of organizing database tables.  
Its purpose is not to make tables more complicated, but to make data cleaner, less repeated, and less likely to become inconsistent.

If a table is poorly designed, problems may happen:

```text
same data repeated many times
same data updated in one row but not another row
cannot add new data unless unrelated data also exists
deleting one row accidentally removes useful data
```

These problems are called:

```text
anomalies
```

Normalization usually splits one large, messy table into smaller, clearer related tables.

Example of poor design:

| StudentID | StudentName | Course1 | Course2 | TeacherName | TeacherEmail |
|---:|---|---|---|---|---|
| 101 | Amy Chen | CS | Math | Mr Lee | lee@school.edu |

Problems include:

```text
Course1 / Course2 are repeating groups
Teacher details may repeat
Student, Course, Teacher data are mixed together
hard to add more courses
hard to update teacher email consistently
```

A better design is:

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName, TeacherID)
Teacher(TeacherID, TeacherName, TeacherEmail)
Enrollment(StudentID, CourseID)
```

In simple terms:

```text
normalization = split poorly designed tables into better related tables
goal = reduce redundancy and improve consistency
```

</template>
</LangBlock>

---

## 5. What Is Normalization?

Normalization is the process of organizing data in a relational database to reduce redundancy and improve data integrity.

### Main Goals

```text
reduce unnecessary duplicated data
avoid update problems
avoid insertion problems
avoid deletion problems
make relationships clearer
make tables focused on one entity
improve data consistency
```

### What Normalization Usually Does

It often changes one large table into several smaller related tables.

Example:

```text
one big StudentCourseTeacher table
```

may become:

```text
Student
Course
Teacher
Enrollment
```

These tables are then linked using primary and foreign keys.

::: tip Exam Phrase
Normalization is the process of organizing database tables to reduce data redundancy and avoid anomalies, usually by splitting data into related tables.
:::

---

## 6. Why Normalization Is Needed

Poorly designed tables can cause serious data problems.

### Example Poor Table

| StudentID | StudentName | CourseName | TeacherName | TeacherEmail |
|---:|---|---|---|---|
| 101 | Amy Chen | CS | Mr Lee | lee@school.edu |
| 102 | Ben Wang | CS | Mr Lee | lee@school.edu |
| 103 | Cara Liu | CS | Mr Lee | lee@school.edu |

### Problem

Teacher data is repeated:

```text
Mr Lee
lee@school.edu
```

If the teacher email changes, every row must be updated.

If one row is missed, the database becomes inconsistent.

### Better Direction

Separate teacher data:

```text
Teacher(TeacherID, TeacherName, TeacherEmail)
Course(CourseID, CourseName, TeacherID)
Student(StudentID, StudentName)
Enrollment(StudentID, CourseID)
```

---

## 7. Redundancy

Redundancy means unnecessary duplication of data.

### Example

| OrderID | CustomerName | CustomerEmail | ProductName |
|---:|---|---|---|
| 1 | Amy Chen | amy@email.com | Keyboard |
| 2 | Amy Chen | amy@email.com | Mouse |
| 3 | Amy Chen | amy@email.com | Monitor |

The customer name and email are repeated for every order.

### Why Redundancy Is Bad

Redundancy can cause:

```text
wasted storage
slower updates
inconsistent data
more difficult maintenance
higher chance of human error
```

### Normalized Direction

```text
Customer(CustomerID, CustomerName, CustomerEmail)
Order(OrderID, CustomerID, OrderDate)
Product(ProductID, ProductName)
OrderItem(OrderID, ProductID, Quantity)
```

---

## 8. Data Inconsistency

Data inconsistency happens when the same data is stored in multiple places with different values.

### Example

| OrderID | CustomerName | CustomerEmail |
|---:|---|---|
| 1 | Amy Chen | amy@email.com |
| 2 | Amy Chen | amy.new@email.com |
| 3 | Amy Chen | amy@email.com |

Now the database has conflicting emails for the same customer.

### Why It Happens

It often happens because:

```text
same data is repeated
one copy is updated
another copy is not updated
```

### How Normalization Helps

Normalization stores customer email once in Customer table.

Then all orders link to that customer using:

```text
CustomerID
```

---

## 9. Anomalies Overview

An anomaly is a problem caused by poor database design.

### Main Types

| Anomaly | Meaning |
|---|---|
| Insertion anomaly | cannot add data without unrelated data |
| Update anomaly | repeated data must be updated in many places |
| Deletion anomaly | deleting a row accidentally removes other useful data |

### Simple Memory

```text
insertion = problem adding data
update = problem changing data
deletion = problem removing data
```

---

## 10. Update Anomaly

An update anomaly happens when the same data is repeated and must be updated in many places.

### Example

| StudentID | StudentName | CourseName | TeacherEmail |
|---:|---|---|---|
| 101 | Amy | CS | lee@school.edu |
| 102 | Ben | CS | lee@school.edu |
| 103 | Cara | CS | lee@school.edu |

If Mr Lee changes email, every CS row must be updated.

If one row is missed:

| StudentID | StudentName | CourseName | TeacherEmail |
|---:|---|---|---|
| 101 | Amy | CS | new.lee@school.edu |
| 102 | Ben | CS | lee@school.edu |

Now the data is inconsistent.

### Normalization Fix

Store teacher email once:

```text
Teacher(TeacherID, TeacherName, TeacherEmail)
Course(CourseID, CourseName, TeacherID)
```

---

## 11. Insertion Anomaly

An insertion anomaly happens when you cannot add one type of data unless another unrelated type of data also exists.

### Example

Suppose this table stores courses only when at least one student enrolls:

| StudentID | StudentName | CourseName | TeacherName |
|---:|---|---|---|
| 101 | Amy | CS | Mr Lee |

Problem:

```text
Cannot add a new course unless a student is enrolled in it.
```

If a new course "Economics" exists but no student has enrolled yet, where do we store it?

### Normalization Fix

Separate Course table:

```text
Course(CourseID, CourseName, TeacherID)
```

Now a course can be added even if no student is enrolled yet.

---

## 12. Deletion Anomaly

A deletion anomaly happens when deleting one record accidentally removes other useful data.

### Example

| StudentID | StudentName | CourseName | TeacherName |
|---:|---|---|---|
| 101 | Amy | CS | Mr Lee |

If Amy is the only student enrolled in CS and we delete Amy's enrollment row, we also lose:

```text
CourseName = CS
TeacherName = Mr Lee
```

This is a problem because deleting an enrollment should not delete course or teacher information.

### Normalization Fix

Store course and teacher in separate tables:

```text
Course(CourseID, CourseName, TeacherID)
Teacher(TeacherID, TeacherName)
Enrollment(StudentID, CourseID)
```

---

## 13. Normal Forms Overview

Normal forms are stages/rules used in normalization.

### Common Student-Level Normal Forms

| Normal Form | Main Idea |
|---|---|
| 1NF | remove repeating groups; make fields atomic |
| 2NF | remove partial dependency on part of a composite key |
| 3NF | remove dependency between non-key fields |

### Simple Learning Version

```text
1NF = each field stores one value, no repeated groups
2NF = non-key fields depend on the whole key
3NF = non-key fields depend only on the key, not on other non-key fields
```

::: warning Exam Focus
Different courses may teach normalization depth differently. For SL-level understanding, focus on identifying redundancy, anomalies, repeating groups, and splitting tables logically with keys.
:::

---

## 14. First Normal Form: 1NF

A table is in first normal form if:

```text
each field contains atomic values
there are no repeating groups
each record can be uniquely identified
```

### Atomic Value

Core example: a field that stores several course names in one cell is not atomic.

An atomic value is one single value.

Poor:

| StudentID | StudentName | Courses |
|---:|---|---|
| 101 | Amy | CS, Math, English |

`Courses` contains multiple values.

Better:

| StudentID | StudentName | Course |
|---:|---|---|
| 101 | Amy | CS |
| 101 | Amy | Math |
| 101 | Amy | English |

Even better later:

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(StudentID, CourseID)
```

---

## 15. Repeating Groups

Repeating groups are repeated similar fields in the same table.

### Core example: repeated course fields

| StudentID | StudentName | Course1 | Course2 | Course3 |
|---:|---|---|---|---|
| 101 | Amy | CS | Math | English |
| 102 | Ben | CS | Physics | null |

### Problems

```text
limits number of courses
many empty fields
hard to search all students taking CS
hard to add Course4
hard to store course-specific details
```

### 1NF Fix

Create separate rows or, better, related tables.

Better direction:

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(StudentID, CourseID)
```

---

## 16. Non-atomic Fields

A non-atomic field stores multiple pieces of data in one field.

### Useful extra example: splitting stored details

| StudentID | FullName | Address |
|---:|---|---|
| 101 | Amy Chen | 12 Green Street, Sydney, NSW |

`FullName` contains first and last name.  
`Address` contains multiple pieces.

### Possible Better Design

| StudentID | FirstName | LastName | Street | City | State |
|---:|---|---|---|---|---|
| 101 | Amy | Chen | 12 Green Street | Sydney | NSW |

### Important

You only split fields when the system needs to search, sort, validate, or update the parts separately.

---

## 17. Second Normal Form: 2NF

A table is in second normal form if:

```text
it is already in 1NF
and every non-key field depends on the whole primary key
```

2NF mainly matters when a table has a composite key.

### Core example: composite key

| StudentID | CourseID | StudentName | CourseName | FinalGrade |
|---:|---|---|---|---|
| 101 | CS | Amy | Computer Science | A |
| 101 | MATH | Amy | Mathematics | B |

Composite key:

```text
StudentID + CourseID
```

Problems:

```text
StudentName depends only on StudentID
CourseName depends only on CourseID
FinalGrade depends on both StudentID and CourseID
```

### 2NF Fix

Split into:

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(StudentID, CourseID, FinalGrade)
```

Now non-key fields depend on the correct key.

---

## 18. Partial Dependency

A partial dependency happens when a non-key field depends on only part of a composite primary key.

### Example

Table:

```text
Enrollment(StudentID, CourseID, StudentName, CourseName, FinalGrade)
```

Composite key:

```text
StudentID + CourseID
```

Dependencies:

```text
StudentName depends only on StudentID
CourseName depends only on CourseID
FinalGrade depends on StudentID + CourseID
```

So:

```text
StudentName and CourseName are partial dependencies
```

### Fix

Move them to their own tables:

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(StudentID, CourseID, FinalGrade)
```

---

## 19. Third Normal Form: 3NF

A table is in third normal form if:

```text
it is already in 2NF
and non-key fields do not depend on other non-key fields
```

### Core example: tutor details

| StudentID | StudentName | TutorID | TutorName | TutorEmail |
|---:|---|---:|---|---|
| 101 | Amy | 7 | Mr Lee | lee@school.edu |
| 102 | Ben | 7 | Mr Lee | lee@school.edu |

Primary key:

```text
StudentID
```

Problem:

```text
TutorName and TutorEmail depend on TutorID
TutorID is not the primary key of this table
```

This is a transitive dependency.

### 3NF Fix

Split into:

```text
Student(StudentID, StudentName, TutorID)
Tutor(TutorID, TutorName, TutorEmail)
```

Now tutor details are stored once.

---

## 20. Transitive Dependency

A transitive dependency happens when:

```text
primary key determines non-key field
and that non-key field determines another non-key field
```

### Example

```text
StudentID → TutorID
TutorID → TutorName, TutorEmail
```

This means:

```text
TutorName depends on TutorID, not directly on StudentID
```

### Fix

Move tutor details to Tutor table.

```text
Student(StudentID, StudentName, TutorID)
Tutor(TutorID, TutorName, TutorEmail)
```

---

## 21. Simple Normalization Process

When normalizing a table:

```text
1. Identify the main entities.
2. Identify repeated groups.
3. Make fields atomic.
4. Choose primary keys.
5. Move data that describes different entities into separate tables.
6. Use foreign keys to link tables.
7. Check for partial dependencies.
8. Check for transitive dependencies.
9. Check whether the design reduces redundancy and anomalies.
```

### Practical Exam Approach

For most scenario questions, you can explain:

```text
split data into separate tables
use primary keys for each table
use foreign keys to link related tables
avoid repeating groups and duplicated data
```

---

## 22. Worked Example: Student Course Table

Core example: use this first when revising how to split student, course, and teacher data.

### Poor Table

| StudentID | StudentName | CourseID | CourseName | TeacherName |
|---:|---|---|---|---|
| 101 | Amy | CS | Computer Science | Mr Lee |
| 102 | Ben | CS | Computer Science | Mr Lee |
| 101 | Amy | MATH | Mathematics | Ms Smith |

### Problems

```text
StudentName repeated
CourseName repeated
TeacherName repeated
update anomaly if course or teacher changes
deletion anomaly if last student in course is removed
mixed student, course, and teacher data
```

### Normalized Tables

```text
Student(StudentID, StudentName)
Teacher(TeacherID, TeacherName)
Course(CourseID, CourseName, TeacherID)
Enrollment(StudentID, CourseID)
```

### Links

```text
Enrollment.StudentID → Student.StudentID
Enrollment.CourseID → Course.CourseID
Course.TeacherID → Teacher.TeacherID
```

---

## 23. Worked Example: Library Loan Table

Core example: this is a clear anomaly example for repeated member and book details.

### Poor Table

| LoanID | MemberName | MemberEmail | BookTitle | Author | LoanDate |
|---:|---|---|---|---|---|
| 1 | Amy | amy@email.com | Dune | Frank Herbert | 2026-05-01 |
| 2 | Amy | amy@email.com | Foundation | Isaac Asimov | 2026-05-03 |

### Problems

```text
member details repeated
book details repeated if borrowed many times
hard to update member email consistently
cannot easily store book if never borrowed
deleting loan may remove book/member details
```

### Normalized Tables

```text
Member(MemberID, MemberName, MemberEmail)
Book(BookID, Title, Author)
Loan(LoanID, MemberID, BookID, LoanDate, ReturnDate)
```

### Links

```text
Loan.MemberID → Member.MemberID
Loan.BookID → Book.BookID
```

---

## 24. Worked Example: Online Shop

Useful extra example: this shows how a linking table can store quantities in an order.

### Poor Table

| OrderID | CustomerName | CustomerEmail | ProductName | ProductPrice | Quantity |
|---:|---|---|---|---:|---:|
| 1 | Amy | amy@email.com | Keyboard | 49.99 | 1 |
| 1 | Amy | amy@email.com | Mouse | 19.99 | 2 |
| 2 | Amy | amy@email.com | Monitor | 179.99 | 1 |

### Problems

```text
customer details repeated
product price repeated
order data mixed with product data
updating product price may require many rows
deleting an order may remove product information
```

### Normalized Tables

```text
Customer(CustomerID, CustomerName, CustomerEmail)
Order(OrderID, CustomerID, OrderDate)
Product(ProductID, ProductName, ProductPrice)
OrderItem(OrderID, ProductID, Quantity)
```

### Explanation

`OrderItem` resolves the relationship between orders and products.

---

## 25. Worked Example: Hospital Appointment Table

Useful extra example: this shows why repeated staff or department details can cause update problems.

### Poor Table

| AppointmentID | PatientName | PatientDOB | DoctorName | DoctorDepartment | AppointmentDate |
|---:|---|---|---|---|---|
| 1 | Amy Chen | 2010-04-12 | Dr Singh | Cardiology | 2026-05-20 |
| 2 | Ben Wang | 2009-09-03 | Dr Singh | Cardiology | 2026-05-21 |

### Problems

```text
doctor details repeated
patient details repeated if patient has many appointments
department repeated
update anomaly if doctor changes department
privacy and access control harder
```

### Normalized Tables

```text
Patient(PatientID, PatientName, PatientDOB)
Doctor(DoctorID, DoctorName, DepartmentID)
Department(DepartmentID, DepartmentName)
Appointment(AppointmentID, PatientID, DoctorID, AppointmentDate, AppointmentTime)
```

---

## 26. Worked Example: Game Match Table

Useful extra example: this shows how normalization can avoid fixed fields such as Player1 and Player2.

### Poor Table

| MatchID | Player1 | Player1Score | Player2 | Player2Score | MapName |
|---:|---|---:|---|---:|---|
| 1 | Alpha | 20 | Beta | 18 | Desert |
| 2 | Alpha | 25 | Gamma | 21 | City |

### Problems

```text
fixed number of players
repeating fields
hard to search all matches for one player
hard to store player details consistently
cannot support squad matches easily
```

### Normalized Tables

```text
Player(PlayerID, Username, Rank)
Match(MatchID, MatchDate, MapName)
MatchPlayer(MatchID, PlayerID, Score, Result)
```

### Explanation

`MatchPlayer` links players to matches and supports any number of players.

---

## 27. Normalization and ERDs

Normalization often changes the ERD.

### Poor ERD Idea

```text
Student has Course1, Course2, Course3
```

### Improved ERD

```text
Student --- Enrollment --- Course
```

### Why?

The improved ERD:

```text
removes repeating groups
supports many courses
uses keys to link tables
reduces duplicated course data
```

### Key Idea

Normalization and ERD design work together.

A good ERD often already avoids many normalization problems.

---

## 28. Normalization and SQL

Normalized tables often require joins when querying.

### Example

Tables:

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(StudentID, CourseID)
```

To list student names and course names:

```sql
SELECT Student.StudentName, Course.CourseName
FROM Student
JOIN Enrollment ON Student.StudentID = Enrollment.StudentID
JOIN Course ON Enrollment.CourseID = Course.CourseID;
```

### Trade-off

Normalization reduces redundancy but may require more joins.

This is usually acceptable because it improves data consistency and design quality.

---

## 29. Benefits of Normalization

| Benefit | Explanation |
|---|---|
| Reduces redundancy | avoids unnecessary duplicated data |
| Improves consistency | data updated in one place |
| Prevents update anomalies | fewer repeated values to update |
| Prevents insertion anomalies | entities can be added independently |
| Prevents deletion anomalies | deleting one record does not remove unrelated data |
| Improves integrity | keys and relationships enforce valid links |
| Clearer structure | each table focuses on one entity |
| Easier maintenance | changes are easier to manage |

---

## 30. Possible Disadvantages or Trade-offs

Normalization is useful, but there are trade-offs.

| Trade-off | Explanation |
|---|---|
| More tables | design may look more complex |
| More joins | queries may need to combine tables |
| Learning difficulty | students/users may find structure harder at first |
| Performance considerations | many joins may affect performance in very large systems |
| Design time | careful analysis is needed |

### Important

These trade-offs do not mean normalization is bad.  
They mean database design must balance:

```text
integrity
performance
simplicity
maintenance
exam/system requirements
```

---

## 31. Denormalization Preview

Denormalization means intentionally adding some redundancy back into a database.

### Why It Might Be Done

```text
improve query performance
simplify reporting
reduce number of joins
support data warehousing
cache frequently used values
```

### Risk

Denormalization can reintroduce:

```text
redundancy
inconsistency
update anomalies
```

### Level Control

For this course, normalization is the main focus.  
Denormalization is only a useful preview for understanding trade-offs.

---

## 32. Scenario Answer Bank

### If Asked: “Why normalize?”

Use this structure:

```text
Normalization reduces unnecessary duplicated data and helps prevent insertion, update, and deletion anomalies. It organizes data into related tables with primary and foreign keys, improving data consistency and integrity.
```

### If Asked: “Identify poor design”

Use this structure:

```text
This table is poorly designed because it stores data about multiple entities in one table / contains repeating groups / repeats the same data many times. This can cause redundancy and anomalies.
```

### If Asked: “Suggest normalized tables”

Use this structure:

```text
The data should be split into separate tables such as [A], [B], and [C]. Each table should have a primary key, and foreign keys should be used to link related tables.
```

### If Asked: “Explain anomaly”

Use this structure:

```text
This is a [update/insertion/deletion] anomaly because [explain what operation causes the problem]. Normalization can reduce this by storing [data] in a separate table and linking it with keys.
```

---

## 33. Detailed misconception table

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Normalization means sorting data | It means organizing table structure | It reduces redundancy/anomalies |
| Normalization always means one table | It usually splits into several tables | Related tables are linked |
| Repeated Course1, Course2, Course3 is fine | This creates repeating groups | Use Enrollment table |
| Redundancy is always helpful | Unnecessary redundancy causes inconsistency | Store data once where possible |
| 1NF means one table only | 1NF means atomic fields and no repeating groups | Table count is not the point |
| 2NF applies only to single-field keys | 2NF mainly matters with composite keys | Avoid partial dependency |
| 3NF means no foreign keys | 3NF still uses foreign keys | It removes transitive dependency |
| Normalized database needs no security | Normalization is design, not security | Still need access controls |
| Normalization removes all data problems | It reduces design problems | Validation, security, backups still needed |
| More tables always worse | More tables can mean better structure | Use joins to combine data |

---

## 34. Guided Practice

### Practice 1: Redundancy

In this table, what data is repeated?

| StudentID | StudentName | CourseName | TeacherEmail |
|---:|---|---|---|
| 101 | Amy | CS | lee@school.edu |
| 102 | Ben | CS | lee@school.edu |

<details>
<summary>Suggested Answer</summary>

`CourseName = CS` and `TeacherEmail = lee@school.edu` are repeated. This may cause redundancy and update problems.

</details>

---

### Practice 2: Repeating Group

Why is this poor design?

```text
Student(StudentID, Name, Course1, Course2, Course3)
```

<details>
<summary>Suggested Answer</summary>

It uses repeating groups, limits the number of courses, and makes searching or updating course enrollments harder. A separate Enrollment table is better.

</details>

---

### Practice 3: Update Anomaly

What problem happens if a teacher email is repeated in many rows?

<details>
<summary>Suggested Answer</summary>

If the teacher email changes, every repeated row must be updated. If one row is missed, the database becomes inconsistent. This is an update anomaly.

</details>

---

### Practice 4: 1NF

What does 1NF require?

<details>
<summary>Suggested Answer</summary>

1NF requires fields to contain atomic values and no repeating groups.

</details>

---

### Practice 5: Normalized Tables

A student can take many courses. A course can have many students. What tables are suitable?

<details>
<summary>Suggested Answer</summary>

Suitable tables include `Student`, `Course`, and a linking table such as `Enrollment`.

</details>

---

## 35. Independent Practice

### Question 1

Define normalization.

### Question 2

Explain why normalization is useful.

### Question 3

Define redundancy and give one example.

### Question 4

Explain insertion, update, and deletion anomalies.

### Question 5

Explain first normal form using an example.

### Question 6

Explain why `Course1`, `Course2`, and `Course3` are poor design.

### Question 7

Normalize this table idea:

```text
StudentID, StudentName, CourseID, CourseName, TeacherName
```

### Question 8

Explain how primary and foreign keys are used after normalization.

### Question 9

Explain one benefit and one trade-off of normalization.

### Question 10

A shop stores customer, order, product, and quantity in one table. Suggest normalized tables.

---

## 36. Exam-style Questions

### Question 1 [4 marks]

Define normalization and state its purpose.

<details>
<summary>Mark Scheme Style Answer</summary>

Normalization is the process of organizing database tables to reduce unnecessary duplicated data and improve data integrity. Its purpose is to reduce redundancy and avoid problems such as insertion, update, and deletion anomalies by splitting data into related tables.

</details>

---

### Question 2 [5 marks]

Explain two problems caused by data redundancy.

<details>
<summary>Mark Scheme Style Answer</summary>

Data redundancy wastes storage because the same data is stored in multiple places. It can also cause data inconsistency because if one copy of the data is updated but another copy is not, the database will contain conflicting values. It can also make updates slower and more error-prone.

</details>

---

### Question 3 [6 marks]

Explain insertion, update, and deletion anomalies using a school course example.

<details>
<summary>Mark Scheme Style Answer</summary>

An insertion anomaly occurs if a new course cannot be added unless a student is enrolled in it. An update anomaly occurs if a teacher's email is repeated in many student-course rows and must be changed in every row; if one row is missed, the data becomes inconsistent. A deletion anomaly occurs if deleting the last student enrolled in a course also removes the only stored information about that course or teacher.

</details>

---

### Question 4 [6 marks]

A table contains these fields:

```text
StudentID, StudentName, Course1, Course2, Course3
```

Explain why this is not good database design and suggest an improvement.

<details>
<summary>Mark Scheme Style Answer</summary>

This design contains repeating groups because course data is stored in `Course1`, `Course2`, and `Course3`. It limits the number of courses, creates empty fields when students take fewer courses, and makes it difficult to search all students taking a particular course. A better design is to use separate `Student` and `Course` tables and a linking table such as `Enrollment(StudentID, CourseID)`.

</details>

---

### Question 5 [6 marks]

Normalize this table into suitable related tables:

```text
OrderID, CustomerName, CustomerEmail, ProductName, ProductPrice, Quantity
```

<details>
<summary>Mark Scheme Style Answer</summary>

The table should be split into related tables such as `Customer(CustomerID, CustomerName, CustomerEmail)`, `Order(OrderID, CustomerID, OrderDate)`, `Product(ProductID, ProductName, ProductPrice)`, and `OrderItem(OrderID, ProductID, Quantity)`. `CustomerID` in Order is a foreign key linking to Customer. `OrderID` and `ProductID` in OrderItem are foreign keys linking orders and products. This reduces repeated customer and product data and avoids update anomalies.

</details>

---

## 37. Practice task
### Activity 1: Find the Redundancy

Give students a large messy table.  
Students highlight repeated data and identify:

```text
entities mixed together
repeating groups
possible update anomalies
possible insertion anomalies
possible deletion anomalies
```

---

### Activity 2: Normalize Step by Step

Students convert this poor table:

```text
StudentID, StudentName, Course1, Course2, TeacherName, TeacherEmail
```

into:

```text
Student
Course
Teacher
Enrollment
```

They must explain each split.

---

### Activity 3: Anomaly Role-play

Students act as a database table.

One student updates teacher email in only some rows.  
Another deletes the last row for a course.  
Class identifies the anomaly.

---

## 38. Independent practice
### Independent practice part A: Concept Explanation

In 6-8 sentences, explain what normalization is and why it is useful.

---

### Independent practice part B: Anomaly Examples

For each anomaly, write one example using a school, library, or online shop database:

```text
insertion anomaly
update anomaly
deletion anomaly
```

---

### Independent practice part C: Normalize a Table

Normalize this poor table:

```text
MemberName, MemberEmail, BookTitle, BookAuthor, LoanDate, ReturnDate
```

Suggest suitable tables, primary keys, and foreign keys.

---

### Independent practice part D: Misconception Correction

Correct these statements:

```text
Normalization means sorting records alphabetically.
Repeating groups are good because they keep all data in one row.
Normalization removes the need for primary keys.
A normalized database always has only one table.
Deleting one row can never remove unrelated information.
```

---

## 39. One-page Revision Summary

| Point | Summary |
|---|---|
| Normalization | Organizing tables to reduce redundancy and anomalies |
| Redundancy | Unnecessary duplicated data |
| Inconsistency | Conflicting versions of same data |
| Anomaly | Problem caused by poor design |
| Insertion anomaly | Cannot add data without unrelated data |
| Update anomaly | Repeated data must be updated many times |
| Deletion anomaly | Deleting one row removes other useful data |
| 1NF | Atomic values, no repeating groups |
| 2NF | Non-key fields depend on whole key |
| 3NF | Non-key fields depend only on the key |
| Repeating group | Course1, Course2, Course3 style fields |
| Partial dependency | Depends on part of composite key |
| Transitive dependency | Non-key field depends on another non-key field |
| Decomposition | Splitting table into related tables |
| Key role | PK identifies records; FK links tables |
| Benefit | Better consistency, integrity, and maintainability |
| Trade-off | More tables and joins |
| Exam phrase | Normalization reduces redundancy and anomalies by splitting data into related tables with suitable primary and foreign keys |

---

## 40. Quick Self-test

Before moving on, students should be able to answer these:

1. What is normalization?
2. What is redundancy?
3. What is an update anomaly?
4. What is an insertion anomaly?
5. What is a deletion anomaly?
6. What does 1NF require?
7. Why are `Course1`, `Course2`, `Course3` poor design?
8. What is a partial dependency?
9. What is a transitive dependency?
10. How do primary and foreign keys support normalization?

