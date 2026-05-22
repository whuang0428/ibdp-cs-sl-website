# Relationships

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what a relationship is in a relational database
- identify one-to-one, one-to-many, and many-to-many relationships
- explain how primary keys and foreign keys create relationships
- distinguish parent and child tables
- explain why many-to-many relationships usually need a linking table
- identify relationship types from real-world scenarios
- design simple related tables for a scenario
- explain why relationships reduce data redundancy
- explain referential integrity in relationships
- avoid common relationship design mistakes
- apply relationships to school, library, shop, hospital, and game examples
- answer exam-style questions about database relationships

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding how tables are linked in relational databases |
| Connected topics | Tables, records and fields, primary/foreign keys, ERDs, normalization, SQL joins |
| Practical focus | Identifying and designing relationships between tables |
| Exam relevance | Relationship type identification, table design, key explanation, scenario-based questions |

::: tip Learning Focus
A relationship connects records in different tables. In a relational database, relationships are usually implemented using primary keys and foreign keys.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Relationship | 关系 | Link between tables/entities in a database |
| Entity | 实体 | Real-world object or concept stored about |
| Table | 表 | Structure storing data about one entity type |
| Primary key | 主键 | Field that uniquely identifies each record |
| Foreign key | 外键 | Field that references a primary key in another table |
| One-to-one | 一对一 | One record in table A relates to one record in table B |
| One-to-many | 一对多 | One record in table A relates to many records in table B |
| Many-to-many | 多对多 | Many records in table A relate to many records in table B |
| Linking table | 连接表 | Table used to resolve a many-to-many relationship |
| Junction table | 连接表 | Another name for linking table |
| Associative entity | 关联实体 | Entity/table used to connect two entities |
| Parent table | 父表 | Table referenced by a foreign key |
| Child table | 子表 | Table containing the foreign key |
| Cardinality | 基数 | Number relationship between records |
| Optional relationship | 可选关系 | A relationship that may not exist for every record |
| Mandatory relationship | 必须关系 | A relationship that must exist |
| Referential integrity | 引用完整性 | Foreign key values must match existing primary key values |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在 relational database 中，数据通常不会全部放在一张大表里。  
我们会把不同类型的数据放在不同的 tables 中，然后用 **relationships（关系）** 把它们连接起来。

例如学校数据库可以有：

```text
Student table
Course table
Teacher table
Enrollment table
Grade table
```

这些表之间不是孤立的。  
它们需要通过 keys 连接：

```text
Student.StudentID → Enrollment.StudentID
Course.CourseID → Enrollment.CourseID
Teacher.TeacherID → Course.TeacherID
```

关系的常见类型有三种：

```text
one-to-one
one-to-many
many-to-many
```

例如：

```text
one teacher teaches many courses = one-to-many
one student can take many courses, and one course can have many students = many-to-many
```

Many-to-many 通常不能直接放在两个表之间。  
它需要一个 linking table。

例如：

```text
Student ↔ Course
```

应该改成：

```text
Student → Enrollment ← Course
```

简单来说：

```text
relationship = link between tables
primary key = identifies record
foreign key = creates link
linking table = handles many-to-many
```

</template>

<template #en>

### English Explanation

In a relational database, data is usually not placed in one huge table.  
Different types of data are stored in different tables, and **relationships** connect those tables.

For example, a school database may contain:

```text
Student table
Course table
Teacher table
Enrollment table
Grade table
```

These tables are not isolated.  
They need to be connected using keys:

```text
Student.StudentID → Enrollment.StudentID
Course.CourseID → Enrollment.CourseID
Teacher.TeacherID → Course.TeacherID
```

There are three common relationship types:

```text
one-to-one
one-to-many
many-to-many
```

For example:

```text
one teacher teaches many courses = one-to-many
one student can take many courses, and one course can have many students = many-to-many
```

A many-to-many relationship is usually not stored directly between two tables.  
It needs a linking table.

For example:

```text
Student ↔ Course
```

should become:

```text
Student → Enrollment ← Course
```

In simple terms:

```text
relationship = link between tables
primary key = identifies record
foreign key = creates link
linking table = handles many-to-many
```

</template>
</LangBlock>

---

## 5. What Is a Database Relationship?

A relationship is a connection between tables in a relational database.

It shows how records in one table are related to records in another table.

### Example

Student table:

| StudentID | FirstName |
|---:|---|
| 101 | Amy |
| 102 | Ben |

Grade table:

| GradeID | StudentID | Subject | Score |
|---:|---:|---|---:|
| 1 | 101 | CS | 95 |
| 2 | 101 | Math | 91 |
| 3 | 102 | CS | 88 |

Relationship:

```text
Student.StudentID → Grade.StudentID
```

This means each grade belongs to a student.

::: tip Exam Phrase
A relationship links records in different tables, usually by using a foreign key in one table that refers to a primary key in another table.
:::

---

## 6. Why Relationships Are Used

Relationships are used to organize data correctly and avoid unnecessary duplication.

### Without Relationships

A database may repeat data many times.

Example:

| StudentName | CourseName | TeacherName | TeacherEmail |
|---|---|---|---|
| Amy Chen | CS | Mr Lee | lee@school.edu |
| Ben Wang | CS | Mr Lee | lee@school.edu |
| Cara Liu | CS | Mr Lee | lee@school.edu |

Teacher data is repeated.

### With Relationships

Use separate tables:

```text
Teacher(TeacherID, TeacherName, TeacherEmail)
Course(CourseID, CourseName, TeacherID)
Student(StudentID, StudentName)
Enrollment(StudentID, CourseID)
```

Now the database can link data using keys instead of repeating full details.

### Benefits

```text
reduced redundancy
better consistency
easier updates
clearer structure
better data integrity
supports queries across tables
```

---

## 7. Relationship Types Overview

There are three main relationship types.

| Relationship Type | Meaning | Example |
|---|---|---|
| One-to-one | one record relates to one record | one person has one passport |
| One-to-many | one record relates to many records | one customer places many orders |
| Many-to-many | many records relate to many records | students take many courses |

### Quick Memory

```text
1:1 = one to one
1:M = one to many
M:N = many to many
```

---

## 8. One-to-One Relationship

A one-to-one relationship means one record in Table A is related to one record in Table B.

### Example

```text
Person → Passport
```

One person has one passport.  
One passport belongs to one person.

### Possible Tables

```text
Person(PersonID, Name, DateOfBirth)
Passport(PassportID, PersonID, PassportNumber, ExpiryDate)
```

### Diagram

```text
Person 1 ─── 1 Passport
```

### When Used

One-to-one relationships are less common than one-to-many.

They may be used when:

```text
separating sensitive data
separating optional data
splitting a very large table
storing different security/access levels
```

---

## 9. One-to-Many Relationship

A one-to-many relationship means one record in Table A can relate to many records in Table B.

### Example

```text
Customer → Order
```

One customer can place many orders.  
Each order belongs to one customer.

### Tables

```text
Customer(CustomerID, CustomerName)
Order(OrderID, CustomerID, OrderDate)
```

### Key Link

```text
Order.CustomerID → Customer.CustomerID
```

### Diagram

```text
Customer 1 ─── many Orders
```

::: tip Exam Phrase
In a one-to-many relationship, the foreign key is normally placed in the table on the many side.
:::

---

## 10. Many-to-Many Relationship

A many-to-many relationship means many records in Table A can relate to many records in Table B.

### Example

```text
Student ↔ Course
```

One student can take many courses.  
One course can have many students.

### Problem

A direct many-to-many relationship is hard to store correctly in relational tables.

### Solution

Use a linking table.

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(EnrollmentID, StudentID, CourseID)
```

### Links

```text
Enrollment.StudentID → Student.StudentID
Enrollment.CourseID → Course.CourseID
```

### Diagram

```text
Student 1 ─── many Enrollment many ─── 1 Course
```

---

## 11. Linking Table

A linking table is used to resolve a many-to-many relationship.

It is also called:

```text
junction table
associative table
bridge table
```

### Example: Student and Course

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(EnrollmentID, StudentID, CourseID, EnrollDate)
```

### Why Enrollment Exists

Enrollment records the fact that:

```text
a particular student takes a particular course
```

It can also store extra attributes about the relationship:

```text
EnrollDate
FinalGrade
Status
```

### Important

The linking table usually contains foreign keys to both related tables.

---

## 12. Cardinality

Cardinality describes how many records can be related.

### Common Cardinalities

```text
1:1
1:M
M:N
```

### Examples

| Relationship | Cardinality |
|---|---|
| person has passport | 1:1 |
| teacher teaches courses | 1:M |
| customer places orders | 1:M |
| student takes courses | M:N |
| order contains products | M:N |
| doctor sees patients | M:N |

### Exam Use

You may be asked to identify whether a relationship is one-to-one, one-to-many, or many-to-many.

---

## 13. Optional and Mandatory Relationships

A relationship may be optional or mandatory.

### Optional

A record may exist without a related record.

Example:

```text
A student may or may not have a school locker.
```

### Mandatory

A record must have a related record.

Example:

```text
An order must belong to a customer.
```

### Simple Explanation

```text
optional = may exist
mandatory = must exist
```

### Level Control

At SL level, focus mainly on relationship type and key placement. Optional/mandatory details help with ERDs but should not distract from the core.

---

## 14. Parent and Child Tables

In a one-to-many relationship:

```text
parent table = one side
child table = many side
```

### Example

```text
Customer(CustomerID, CustomerName)
Order(OrderID, CustomerID, OrderDate)
```

Here:

```text
Customer = parent table
Order = child table
Order.CustomerID = foreign key
```

### Why?

One customer can have many orders.  
Each order references one customer.

---

## 15. Foreign Key Placement

Foreign key placement depends on relationship type.

### One-to-Many

Place the foreign key in the many-side table.

Example:

```text
Customer 1 ─── many Order
```

Foreign key:

```text
Order.CustomerID
```

### Many-to-Many

Create a linking table with foreign keys to both tables.

Example:

```text
Student ↔ Course
```

Linking table:

```text
Enrollment(StudentID, CourseID)
```

### One-to-One

A foreign key can be placed in one of the tables, depending on design.

---

## 16. Referential Integrity in Relationships

Referential integrity ensures foreign key values refer to existing primary key values.

### Example

Customer table:

| CustomerID | CustomerName |
|---:|---|
| 1 | Amy |
| 2 | Ben |

Order table:

| OrderID | CustomerID | OrderDate |
|---:|---:|---|
| 1001 | 1 | 2026-05-01 |
| 1002 | 9 | 2026-05-02 |

Problem:

```text
CustomerID 9 does not exist
```

This breaks referential integrity.

### Why It Matters

It prevents:

```text
orders without valid customers
grades without valid students
appointments without valid patients
loan records without valid books
```

---

## 17. Relationship and Redundancy

Relationships reduce redundancy by storing each type of data once.

### Poor Design

| OrderID | CustomerName | CustomerEmail | ProductName | Price |
|---:|---|---|---|---:|
| 1 | Amy | amy@email.com | Keyboard | 49.99 |
| 2 | Amy | amy@email.com | Mouse | 19.99 |

Customer data is repeated.

### Better Design

```text
Customer(CustomerID, CustomerName, CustomerEmail)
Order(OrderID, CustomerID, OrderDate)
Product(ProductID, ProductName, Price)
OrderItem(OrderID, ProductID, Quantity)
```

Now customer details are stored once and linked by `CustomerID`.

---

## 18. Relationship and SQL Joins Preview

Relationships allow SQL queries to combine data from different tables.

### Example Tables

```text
Customer(CustomerID, CustomerName)
Order(OrderID, CustomerID, OrderDate)
```

### Query Idea

```sql
SELECT Customer.CustomerName, Order.OrderDate
FROM Customer
JOIN Order
ON Customer.CustomerID = Order.CustomerID;
```

### Meaning

The query matches:

```text
Customer.CustomerID
```

with:

```text
Order.CustomerID
```

to show which customer placed each order.

SQL joins will be developed later, but the relationship is the reason the join works.

---

## 19. Relationship and ERD Preview

An ERD shows entities and relationships visually.

Example:

```text
Customer 1 ─── many Order
```

This means:

```text
one customer can place many orders
each order belongs to one customer
```

### ERD Basics

In ERDs, you may see:

```text
entity boxes
attributes
primary keys
foreign keys
relationship lines
cardinality symbols
```

ERD basics are covered in the next page.

---

## 20. Worked Example: School Enrollment

### Scenario

Students can take many courses.  
Courses can have many students.

This is many-to-many.

### Tables

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(EnrollmentID, StudentID, CourseID, EnrollDate)
```

### Keys

```text
Student.StudentID = primary key
Course.CourseID = primary key
Enrollment.EnrollmentID = primary key
Enrollment.StudentID = foreign key
Enrollment.CourseID = foreign key
```

### Explanation

The Enrollment table resolves the many-to-many relationship between Student and Course.

---

## 21. Worked Example: Library Loans

### Scenario

A member can make many loans.  
A book can appear in many loan records over time.  
Each loan refers to one member and one book.

### Tables

```text
Member(MemberID, MemberName)
Book(BookID, Title)
Loan(LoanID, MemberID, BookID, LoanDate, ReturnDate)
```

### Relationships

```text
Member 1 ─── many Loan
Book 1 ─── many Loan
```

### Keys

```text
Loan.MemberID → Member.MemberID
Loan.BookID → Book.BookID
```

---

## 22. Worked Example: Online Shop

### Scenario

A customer can place many orders.  
An order can contain many products.  
A product can appear in many orders.

### Tables

```text
Customer(CustomerID, CustomerName)
Order(OrderID, CustomerID, OrderDate)
Product(ProductID, ProductName, Price)
OrderItem(OrderItemID, OrderID, ProductID, Quantity)
```

### Relationships

```text
Customer 1 ─── many Order
Order 1 ─── many OrderItem
Product 1 ─── many OrderItem
```

### Many-to-Many Resolved

The many-to-many relationship between Order and Product is resolved using:

```text
OrderItem
```

---

## 23. Worked Example: Hospital Appointments

### Scenario

A patient can have many appointments.  
A doctor can have many appointments.  
Each appointment is with one patient and one doctor.

### Tables

```text
Patient(PatientID, PatientName)
Doctor(DoctorID, DoctorName)
Appointment(AppointmentID, PatientID, DoctorID, AppointmentDate, AppointmentTime)
```

### Relationships

```text
Patient 1 ─── many Appointment
Doctor 1 ─── many Appointment
```

### Explanation

Appointment acts like a linking table between Patient and Doctor, and it also stores appointment details.

---

## 24. Worked Example: Game Matches

### Scenario

Players can join many matches.  
Each match contains many players.

This is many-to-many.

### Tables

```text
Player(PlayerID, Username)
Match(MatchID, MatchDate, MapName)
MatchPlayer(MatchID, PlayerID, Score, Result)
```

### Relationships

```text
Player 1 ─── many MatchPlayer
Match 1 ─── many MatchPlayer
```

### Explanation

`MatchPlayer` links players to matches and stores relationship-specific data such as score and result.

---

## 25. Worked Example: Teacher and Course

### Scenario

One teacher can teach many courses.  
Each course has one main teacher.

This is one-to-many.

### Tables

```text
Teacher(TeacherID, TeacherName)
Course(CourseID, CourseName, TeacherID)
```

### Relationship

```text
Teacher 1 ─── many Course
```

### Foreign Key

```text
Course.TeacherID → Teacher.TeacherID
```

---

## 26. Identifying Relationship Type

Ask these questions:

### Step 1

Can one A relate to many B?

### Step 2

Can one B relate to many A?

### Results

| Answer | Relationship |
|---|---|
| no and no | one-to-one |
| yes and no | one-to-many |
| yes and yes | many-to-many |

### Example

Question:

```text
Can one student take many courses? yes
Can one course have many students? yes
```

Therefore:

```text
many-to-many
```

---

## 27. Designing Relationships

When designing relationships:

```text
1. Identify entities.
2. Create one table for each entity.
3. Choose primary keys.
4. Decide relationship type.
5. Add foreign keys for one-to-many relationships.
6. Add linking table for many-to-many relationships.
7. Check referential integrity.
8. Avoid unnecessary duplicated data.
```

### Example

Scenario:

```text
Customers place orders.
```

Design:

```text
Customer(CustomerID, CustomerName)
Order(OrderID, CustomerID, OrderDate)
```

Relationship:

```text
Customer 1 ─── many Order
```

---

## 28. Poor Relationship Design Example

### Poor Table

| StudentID | StudentName | Course1 | Course2 | Course3 |
|---:|---|---|---|---|
| 101 | Amy | CS | Math | English |

### Problems

```text
limits number of courses
hard to search all students in CS
many empty fields possible
repeating groups
not flexible
```

### Better Design

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(StudentID, CourseID)
```

Now a student can take any number of courses.

---

## 29. Another Poor Design Example

### Poor Table

| OrderID | Product1 | Product2 | Product3 |
|---:|---|---|---|
| 1001 | Keyboard | Mouse | Monitor |

### Problems

```text
limits products per order
hard to store quantity per product
hard to calculate totals
hard to query all orders containing a product
```

### Better Design

```text
Order(OrderID, CustomerID, OrderDate)
Product(ProductID, ProductName, Price)
OrderItem(OrderID, ProductID, Quantity)
```

---

## 30. Relationship Design Pattern

### One-to-Many Pattern

```text
Parent(ParentID, ...)
Child(ChildID, ParentID, ...)
```

Example:

```text
Customer(CustomerID, CustomerName)
Order(OrderID, CustomerID, OrderDate)
```

### Many-to-Many Pattern

```text
A(AID, ...)
B(BID, ...)
AB(AID, BID, extra fields...)
```

Example:

```text
Student(StudentID, StudentName)
Course(CourseID, CourseName)
Enrollment(StudentID, CourseID, EnrollDate)
```

### One-to-One Pattern

```text
A(AID, ...)
B(BID, AID, ...)
```

Example:

```text
Person(PersonID, Name)
Passport(PassportID, PersonID, PassportNumber)
```

---

## 31. Relationship Scenario Answer Bank

### If Asked: “Identify relationship type”

Use this structure:

```text
This is a [one-to-many / many-to-many / one-to-one] relationship because one [A] can be linked to [number] [B], and one [B] can be linked to [number] [A].
```

### If Asked: “Explain why a linking table is needed”

Use this structure:

```text
A linking table is needed because the relationship is many-to-many. One [A] can relate to many [B], and one [B] can relate to many [A]. The linking table stores the foreign keys from both tables and represents each relationship instance.
```

### If Asked: “Design related tables”

Use this structure:

```text
Create a [A] table with [AID] as primary key.
Create a [B] table with [BID] as primary key.
For a one-to-many relationship, place [AID] as a foreign key in the many-side table.
For a many-to-many relationship, create a linking table containing [AID] and [BID] as foreign keys.
```

---

## 32. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Relationship means two tables have same name | Relationship is made by key links | Use PK/FK |
| Foreign key goes on one-side table in 1:M | Usually it goes on many-side table | Child table stores FK |
| Many-to-many can be stored with Course1, Course2 | This creates repeating groups | Use linking table |
| Linking table is unnecessary | Needed to resolve M:N properly | Stores relationship records |
| One-to-many and many-to-one are different designs | They describe same relationship from opposite direction | Focus on which side is many |
| Foreign key must be unique | It can repeat in many-side table | Many records may share same parent |
| Relationship removes need for keys | Relationships depend on keys | PK/FK create links |
| Referential integrity means no duplicate data | It means valid FK references | Redundancy is separate issue |
| A table should store everything for convenience | Causes redundancy and inconsistency | Separate entities into tables |
| Many-to-many has no primary keys | Tables still need primary keys | Linking table may use composite or surrogate key |

---

## 33. Guided Practice

### Practice 1: Relationship Type

One customer can place many orders. Each order belongs to one customer. What relationship type is this?

<details>
<summary>Suggested Answer</summary>

One-to-many. One customer can have many orders, but each order belongs to one customer.

</details>

---

### Practice 2: Foreign Key Placement

In `Customer 1 ─── many Order`, where should the foreign key go?

<details>
<summary>Suggested Answer</summary>

The foreign key should go in the Order table, because Order is the many-side/child table.

</details>

---

### Practice 3: Many-to-Many

Students can take many courses, and courses can have many students. What table is needed?

<details>
<summary>Suggested Answer</summary>

A linking table such as `Enrollment` is needed.

</details>

---

### Practice 4: Referential Integrity

Why is an order with `CustomerID = 999` invalid if Customer 999 does not exist?

<details>
<summary>Suggested Answer</summary>

It breaks referential integrity because the foreign key value does not match an existing primary key in the Customer table.

</details>

---

### Practice 5: Better Design

Why is `Course1`, `Course2`, `Course3` poor design?

<details>
<summary>Suggested Answer</summary>

It creates repeating groups and limits the number of courses. A separate Enrollment linking table is better.

</details>

---

## 34. Independent Practice

### Question 1

Define database relationship.

### Question 2

Explain one-to-one, one-to-many, and many-to-many relationships.

### Question 3

Explain how primary keys and foreign keys create relationships.

### Question 4

For `Customer` and `Order`, identify the relationship type and foreign key placement.

### Question 5

For `Student` and `Course`, explain why a linking table is needed.

### Question 6

Design tables for a library loan system with `Book`, `Member`, and `Loan`.

### Question 7

Explain referential integrity using a hospital appointment example.

### Question 8

Explain how relationships reduce redundancy.

### Question 9

Identify the problems with storing `Product1`, `Product2`, and `Product3` inside an Order table.

### Question 10

Design relationships for a game database with players and matches.

---

## 35. Exam-style Questions

### Question 1 [4 marks]

Define a relationship in a relational database.

<details>
<summary>Mark Scheme Style Answer</summary>

A relationship is a link between records in different tables. It is usually created using a foreign key in one table that refers to a primary key in another table, allowing related data to be connected and queried.

</details>

---

### Question 2 [5 marks]

Explain the difference between one-to-many and many-to-many relationships.

<details>
<summary>Mark Scheme Style Answer</summary>

In a one-to-many relationship, one record in one table can relate to many records in another table, but each record on the many side relates to one record on the one side. For example, one customer can place many orders. In a many-to-many relationship, many records in one table can relate to many records in another table. For example, many students can take many courses, so a linking table is usually needed.

</details>

---

### Question 3 [6 marks]

A school stores students and courses. One student can take many courses, and one course can have many students. Explain how this should be represented in a relational database.

<details>
<summary>Mark Scheme Style Answer</summary>

This is a many-to-many relationship because one student can take many courses and one course can have many students. It should be represented using a linking table, such as Enrollment. The Student table has `StudentID` as a primary key, the Course table has `CourseID` as a primary key, and the Enrollment table stores `StudentID` and `CourseID` as foreign keys to link students to courses. The Enrollment table may also store extra data such as enrollment date or final grade.

</details>

---

### Question 4 [6 marks]

Given these tables, identify the relationship and explain the foreign key.

```text
Customer(CustomerID, CustomerName)
Order(OrderID, CustomerID, OrderDate)
```

<details>
<summary>Mark Scheme Style Answer</summary>

This is a one-to-many relationship because one customer can place many orders, while each order belongs to one customer. `CustomerID` is the primary key in the Customer table. `CustomerID` in the Order table is a foreign key that refers to `Customer.CustomerID`, linking each order to the customer who placed it.

</details>

---

### Question 5 [6 marks]

Explain how database relationships can reduce data redundancy and improve consistency.

<details>
<summary>Mark Scheme Style Answer</summary>

Relationships allow data about different entities to be stored in separate tables and linked using keys. For example, customer details can be stored once in a Customer table and orders can refer to customers using `CustomerID`. This avoids repeating the customer's name and email in every order record. If the customer's email changes, it can be updated in one place, reducing inconsistency and update errors.

</details>

---

## 36. Classroom Activity

### Activity 1: Relationship Sorting

Students classify scenarios as one-to-one, one-to-many, or many-to-many:

```text
customer places orders
student takes courses
person has passport
doctor has appointments
order contains products
teacher teaches courses
player joins matches
```

---

### Activity 2: Design a Linking Table

Students choose one many-to-many scenario and design:

```text
two main tables
one linking table
primary keys
foreign keys
extra relationship attributes
```

---

### Activity 3: Fix Poor Relationships

Students improve poor table designs:

```text
Student(StudentID, Name, Course1, Course2, Course3)
Order(OrderID, Product1, Product2, Product3)
Patient(PatientID, Doctor1, Doctor2, Doctor3)
```

They explain the relationship problem and propose better related tables.

---

## 37. Homework

### Homework Part A: Concept Explanation

In 6-8 sentences, explain how primary keys and foreign keys create relationships between tables.

---

### Homework Part B: Relationship Identification

Identify the relationship type for each:

```text
1. one teacher teaches many classes
2. students join many clubs, clubs have many students
3. one person has one school ID card
4. one customer places many orders
5. one order contains many products, and products appear in many orders
```

Explain each answer.

---

### Homework Part C: Table Design

Design related tables for a hospital appointment system with:

```text
Patient
Doctor
Appointment
```

Include primary keys, foreign keys, and relationship types.

---

### Homework Part D: Misconception Correction

Correct these statements:

```text
A many-to-many relationship can always be stored using Course1, Course2, Course3.
A foreign key must be unique.
Relationships do not need primary keys.
Referential integrity means data is encrypted.
The foreign key in a one-to-many relationship usually goes in the one-side table.
```

---

## 38. One-page Revision Summary

| Point | Summary |
|---|---|
| Relationship | Link between tables |
| Primary key | Uniquely identifies record |
| Foreign key | Links to primary key in another table |
| One-to-one | One A relates to one B |
| One-to-many | One A relates to many B |
| Many-to-many | Many A relate to many B |
| Linking table | Resolves many-to-many |
| Parent table | One-side / referenced table |
| Child table | Many-side / table with foreign key |
| Cardinality | Number relationship between records |
| Referential integrity | Foreign key must match existing primary key |
| Redundancy reduction | Store data once and reference by key |
| One-to-many FK placement | Foreign key goes in many-side table |
| Many-to-many design | Use linking table with foreign keys |
| Exam phrase | Relationships connect tables using primary and foreign keys, reducing duplication and allowing related data to be queried correctly |

---

## 39. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a database relationship?
2. What is a one-to-one relationship?
3. What is a one-to-many relationship?
4. What is a many-to-many relationship?
5. Why is a linking table needed?
6. Where does the foreign key go in a one-to-many relationship?
7. What is referential integrity?
8. How do relationships reduce redundancy?
9. Give one example of a many-to-many relationship.
10. Why is `Course1`, `Course2`, `Course3` poor design?
