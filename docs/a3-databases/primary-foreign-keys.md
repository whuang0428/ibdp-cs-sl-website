# Primary and Foreign Keys

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define primary key
- define foreign key
- explain why primary keys are needed
- explain why foreign keys are needed
- identify primary keys and foreign keys in database tables
- distinguish candidate key, primary key, and foreign key at a basic level
- explain how keys link related tables
- explain referential integrity at a basic level
- choose suitable primary keys for tables
- identify common mistakes when choosing keys
- explain why names are often poor primary keys
- explain how keys reduce confusion and support relationships
- apply keys to school, library, shop, hospital, and game database examples
- answer exam-style questions about primary and foreign keys

---

## Start here: identify key roles

A primary key uniquely identifies each record in a table.

A foreign key links one table to another table.

Students should first identify what each table stores, then decide which field uniquely identifies each record, and which field creates the relationship. Key questions often connect to ERDs, relationships, and database integrity.

---

## Primary key vs foreign key

| Key type | Main role | Simple question | Example |
|---|---|---|---|
| Primary key | uniquely identifies a record in its own table | Which field makes each record unique? | StudentID in STUDENT |
| Foreign key | links to a primary key in another table | Which field shows the relationship to another table? | StudentID in Enrollment |
| Candidate key | a possible field that could be chosen as primary key | Could this field uniquely identify records? | SchoolEmail, StudentID |
| Composite key | a key made from more than one field | Do we need two fields together to identify a record? | StudentID + CourseID |

---

## Key choice workflow

1. Identify each table.
   List the tables before choosing any keys.
2. Decide what one record in the table represents.
   Check whether one row means one student, one grade, one loan, or one order item.
3. Find a field that uniquely identifies each record.
   Prefer stable ID fields when names or descriptions may repeat.
4. Mark that field as the primary key.
   The primary key gives the record its identity in its own table.
5. Look for fields that refer to records in another table.
   These fields usually store another table's ID.
6. Mark those fields as foreign keys.
   A foreign key creates a relationship between tables.
7. Check whether a many-to-many relationship needs a link table or composite key.
   Link tables often store two foreign keys together.

---

## Core checklist

After studying this page, you should be able to:

- explain the purpose of a primary key
- explain the purpose of a foreign key
- distinguish primary keys from foreign keys
- identify candidate keys
- explain when a composite key may be used
- explain how foreign keys support relationships between tables
- explain referential integrity in simple terms
- choose suitable keys from a database scenario

---

## Scenario answer pattern

Use this order when answering key or relationship questions:

1. Identify the tables in the scenario.
2. Decide what each table stores.
3. Choose a primary key for each table.
4. Identify fields that connect tables.
5. Mark those fields as foreign keys.
6. Check whether the relationship is one-to-many or many-to-many.
7. Explain how the keys help keep records linked correctly.

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding how records are uniquely identified and how tables are linked |
| Connected topics | Tables, records and fields, relationships, ERDs, normalization, SQL SELECT, database integrity |
| Practical focus | Identifying and designing keys in relational database tables |
| Exam relevance | Definitions, key identification, table linking, referential integrity, scenario design |

::: tip Learning Focus
A primary key uniquely identifies each record in its own table. A foreign key stores a value from another table's primary key to create a link between tables.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Primary key | 主键 | Field or combination of fields that uniquely identifies each record in a table |
| Foreign key | 外键 | Field in one table that refers to the primary key of another table |
| Candidate key | 候选键 | Field that could uniquely identify records |
| Composite key | 复合键 | Key made from more than one field |
| Surrogate key | 代理键 | Artificial ID created only to identify records |
| Natural key | 自然键 | Real-world value used as a key |
| Unique | 唯一 | No two records have the same value |
| Null | 空值 | Missing or unknown value |
| Entity | 实体 | Object or concept stored about |
| Relationship | 关系 | Link between tables/entities |
| Referential integrity | 引用完整性 | Rule that foreign key values must match valid primary key values |
| Parent table | 父表 | Table being referenced by a foreign key |
| Child table | 子表 | Table containing a foreign key |
| Orphan record | 孤立记录 | Record that refers to a non-existing related record |
| Constraint | 约束 | Rule enforced by DBMS |
| Record identifier | 记录标识符 | Value used to identify a record |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在 database table 中，每一条 record 都需要被清楚地区分。  
如果没有唯一标识，系统可能不知道你说的是哪一条记录。

例如 Student table 中：

| StudentID | FirstName | LastName |
|---:|---|---|
| 101 | Amy | Chen |
| 102 | Ben | Wang |
| 103 | Amy | Chen |

如果只用 name 来找学生，会出问题，因为两个学生可能同名。  
所以我们通常使用：

```text
StudentID
```

作为 **primary key（主键）**。

Primary key 的作用是：

```text
uniquely identify each record in a table
```

也就是说，每个 record 的 primary key value 必须唯一，通常不能是 null。

**Foreign key（外键）** 用来连接两个表。

例如：

Student table:

| StudentID | FirstName |
|---:|---|
| 101 | Amy |
| 102 | Ben |

Enrollment table:

| EnrollmentID | StudentID | CourseID |
|---:|---:|---|
| 1 | 101 | CS |
| 2 | 102 | Math |

这里 Enrollment table 里的 `StudentID` 是 foreign key。  
它引用 Student table 里的 primary key `StudentID`。

简单来说：

```text
primary key = uniquely identifies records in its own table
foreign key = links to primary key in another table
```

</template>

<template #en>

### English Explanation

In a database table, each record needs to be clearly identified.  
Without a unique identifier, the system may not know which record is being referred to.

For example, in a Student table:

| StudentID | FirstName | LastName |
|---:|---|---|
| 101 | Amy | Chen |
| 102 | Ben | Wang |
| 103 | Amy | Chen |

If we only use name to find a student, problems can happen because two students may have the same name.  
So we usually use:

```text
StudentID
```

as the **primary key**.

The purpose of a primary key is to:

```text
uniquely identify each record in a table
```

This means each primary key value must be unique and normally cannot be null.

A **foreign key** is used to connect two tables.

Example:

Student table:

| StudentID | FirstName |
|---:|---|
| 101 | Amy |
| 102 | Ben |

Enrollment table:

| EnrollmentID | StudentID | CourseID |
|---:|---:|---|
| 1 | 101 | CS |
| 2 | 102 | Math |

Here, `StudentID` in the Enrollment table is a foreign key.  
It refers to the primary key `StudentID` in the Student table.

In simple terms:

```text
primary key = uniquely identifies records in its own table
foreign key = links to primary key in another table
```

</template>
</LangBlock>

---

## 5. Why Keys Are Needed

Keys are needed because databases must identify and link records accurately.

### Without Keys

A database may have problems such as:

```text
duplicate names
confusing records
wrong updates
difficulty linking tables
orphan records
inconsistent data
```

### With Keys

A database can:

```text
identify each record uniquely
link related data
avoid ambiguity
support relationships
enforce data integrity
make queries more accurate
```

### Example

If two students are both called Amy Chen, `StudentID` avoids confusion.

```text
Amy Chen with StudentID 101
Amy Chen with StudentID 103
```

The system can clearly identify the correct student.

---

## 6. Primary Key

A primary key is a field, or combination of fields, that uniquely identifies each record in a table.

### Primary Key Rules

A primary key should be:

```text
unique
not null
stable
simple
clear
```

### Primary key example

### Example

| StudentID | FirstName | LastName |
|---:|---|---|
| 101 | Amy | Chen |
| 102 | Ben | Wang |
| 103 | Cara | Liu |

`StudentID` is a good primary key because:

```text
each student has a different StudentID
StudentID is not blank
StudentID identifies one student record
```

::: tip Exam Phrase
A primary key is a field or set of fields that uniquely identifies each record in a table.
:::

---

## 7. Good Primary Key Features

| Feature | Explanation |
|---|---|
| Unique | no two records have same value |
| Not null | every record must have a value |
| Stable | value should not change often |
| Simple | easy to store and compare |
| Minimal | no unnecessary extra fields |
| Non-sensitive | should not expose private information if possible |

### Good Examples

```text
StudentID
BookID
CustomerID
OrderID
ProductID
AppointmentID
PlayerID
```

### Risky Examples

```text
FirstName
LastName
Email
PhoneNumber
Address
DateOfBirth
```

These may change, repeat, or be sensitive.

---

## 8. Why Names Are Poor Primary Keys

Names are often poor primary keys because they are not guaranteed to be unique.

### Example

| FirstName | LastName | GradeLevel |
|---|---|---:|
| Amy | Chen | 10 |
| Amy | Chen | 11 |
| Ben | Wang | 10 |

If `FirstName + LastName` is used to identify students:

```text
Amy Chen
```

matches two records.

### Other Problems

Names can:

```text
repeat
change
contain spelling variations
include different formats
be entered incorrectly
```

### Better Choice

Use a unique ID:

```text
StudentID
```

---

## 9. Candidate Key

A candidate key is a field or combination of fields that could uniquely identify records.

### Example

In a Student table:

### Candidate key example

```text
StudentID
SchoolEmail
NationalStudentNumber
```

may all be unique.

These are candidate keys.

The database designer chooses one candidate key to be the primary key.

### Simple Memory

```text
candidate key = possible primary key
primary key = chosen main unique identifier
```

---

## 10. Natural Key and Surrogate Key

### Natural Key

A natural key is a real-world value used as a key.

Examples:

```text
ISBN for a book edition
email address
passport number
vehicle registration number
```

### Surrogate Key

A surrogate key is an artificial ID created by the database.

Examples:

```text
StudentID
CustomerID
OrderID
AppointmentID
```

### Comparison

| Natural Key | Surrogate Key |
|---|---|
| real-world meaning | artificial identifier |
| may be familiar to users | usually simple and stable |
| may change or be sensitive | easier to control |
| example: ISBN | example: BookID |

### Exam Level

You usually only need primary key and foreign key, but knowing this helps explain why IDs are often used.

---

## 11. Composite Key

A composite key uses more than one field to uniquely identify a record.

### Composite key example

### Example: Enrollment Table

| StudentID | CourseID | EnrollDate |
|---:|---|---|
| 101 | CS | 2026-02-01 |
| 101 | Math | 2026-02-01 |
| 102 | CS | 2026-02-02 |

A combination of:

```text
StudentID + CourseID
```

could uniquely identify each enrollment if a student can enroll in a course only once.

### Why Composite Keys Are Used

They are useful when one field alone is not enough.

### Alternative

A table may also use a surrogate key:

```text
EnrollmentID
```

and still store `StudentID` and `CourseID` as foreign keys.

---

## 12. Foreign Key

A foreign key is a field in one table that refers to the primary key in another table.

### Foreign key example

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
| 2 | 102 | CS | 88 |
| 3 | 101 | Math | 91 |

In Grade table:

```text
StudentID
```

is a foreign key because it links each grade to a student in the Student table.

::: tip Exam Phrase
A foreign key is a field in one table that refers to the primary key of another table, creating a relationship between the tables.
:::

---

## 13. Parent Table and Child Table

When one table references another:

```text
parent table = table with primary key being referenced
child table = table with foreign key
```

### Example

Student table:

```text
Student(StudentID, FirstName, LastName)
```

Grade table:

```text
Grade(GradeID, StudentID, Subject, Score)
```

Here:

```text
Student = parent table
Grade = child table
Student.StudentID = primary key
Grade.StudentID = foreign key
```

### Why This Matters

The child table depends on the parent table for valid references.

---

## 14. How Foreign Keys Link Tables

Foreign keys allow related information to be stored in separate tables and linked when needed.

### Example

Student table:

| StudentID | FirstName | LastName |
|---:|---|---|
| 101 | Amy | Chen |
| 102 | Ben | Wang |

Course table:

| CourseID | CourseName |
|---|---|
| CS | Computer Science |
| MATH | Mathematics |

Enrollment table:

| EnrollmentID | StudentID | CourseID |
|---:|---:|---|
| 1 | 101 | CS |
| 2 | 101 | MATH |
| 3 | 102 | CS |

### Links

```text
Enrollment.StudentID → Student.StudentID
Enrollment.CourseID → Course.CourseID
```

This means:

```text
Amy is enrolled in CS and MATH
Ben is enrolled in CS
```

---

## 15. Referential Integrity

Referential integrity means foreign key values must refer to existing primary key values.

### Referential integrity example

### Example

Student table:

| StudentID | FirstName |
|---:|---|
| 101 | Amy |
| 102 | Ben |

Grade table:

| GradeID | StudentID | Score |
|---:|---:|---:|
| 1 | 101 | 95 |
| 2 | 999 | 88 |

Problem:

```text
StudentID 999 does not exist in Student table
```

This breaks referential integrity.

### Why It Matters

Referential integrity prevents:

```text
orphan records
invalid links
inconsistent relationships
wrong query results
```

::: tip Exam Phrase
Referential integrity ensures that a foreign key value matches an existing primary key value in the related table.
:::

---

## 16. Orphan Records

An orphan record is a record that refers to a missing related record.

### Example

Order table:

| OrderID | CustomerID | OrderDate |
|---:|---:|---|
| 501 | 10 | 2026-05-01 |

Customer table does not contain:

```text
CustomerID = 10
```

This order is an orphan record because it refers to a customer that does not exist.

### Why Orphan Records Are Bad

They can cause:

```text
confusing reports
incorrect queries
data integrity problems
missing context
business errors
```

---

## 17. Updating and Deleting Related Records

Foreign keys affect what happens when records are updated or deleted.

### Example

If a student has grades, what should happen when the student record is deleted?

Possible rules:

```text
prevent deletion if related grades exist
delete related grades automatically
set foreign key to null
archive the student instead of deleting
```

### School Example

Usually, deleting a student record with grades should be controlled carefully because grades need to remain accurate and auditable.

### Level Control

You do not need deep database administration here.  
Just understand that foreign keys help protect valid links.

---

## 18. Primary Key vs Foreign Key

| Feature | Primary Key | Foreign Key |
|---|---|---|
| Main role | uniquely identifies record in own table | links to record in another table |
| Uniqueness | must be unique in its table | may repeat |
| Null allowed? | normally not allowed | may be allowed depending on design |
| Location | table being identified | table that references another |
| Example | Student.StudentID | Grade.StudentID |
| Purpose | identification | relationship/link |

### Important

A foreign key can repeat.

Example:

```text
StudentID 101
```

may appear many times in Grade table because one student can have many grades.

---

## 19. Same Field Name, Different Role

The same field name can appear in two tables with different roles.

### Example

Student table:

```text
StudentID = primary key
```

Grade table:

```text
StudentID = foreign key
```

### Why?

In Student table, `StudentID` identifies a student record.  
In Grade table, `StudentID` links a grade record to a student.

### Memory

```text
Primary key: own table identity
Foreign key: link to another table
```

---

## 20. One-to-Many Relationship Preview

Foreign keys often represent one-to-many relationships.

### Example

One student can have many grades.

```text
Student 1 → many Grade records
```

Student table:

| StudentID | FirstName |
|---:|---|
| 101 | Amy |

Grade table:

| GradeID | StudentID | Subject | Score |
|---:|---:|---|---:|
| 1 | 101 | CS | 95 |
| 2 | 101 | Math | 91 |
| 3 | 101 | English | 87 |

Here:

```text
Grade.StudentID is a foreign key
```

and it can repeat because one student has many grades.

---

## 21. Many-to-Many Relationship Preview

Sometimes two entities have a many-to-many relationship.

Example:

```text
students can take many courses
courses can have many students
```

This is usually handled with a linking table.

### Tables

```text
Student(StudentID, FirstName)
Course(CourseID, CourseName)
Enrollment(EnrollmentID, StudentID, CourseID)
```

### Foreign Keys

```text
Enrollment.StudentID → Student.StudentID
Enrollment.CourseID → Course.CourseID
```

The Enrollment table connects students and courses.

Relationships are covered in more detail in the next pages.

---

## 22. Keys and Reducing Redundancy

Keys allow data to be stored once and referenced many times.

### Poor Design

| StudentName | CourseName | TeacherName | TeacherEmail |
|---|---|---|---|
| Amy Chen | CS | Mr Lee | lee@school.edu |
| Ben Wang | CS | Mr Lee | lee@school.edu |
| Cara Liu | CS | Mr Lee | lee@school.edu |

Teacher details are repeated many times.

### Better Design

```text
Teacher(TeacherID, TeacherName, TeacherEmail)
Course(CourseID, CourseName, TeacherID)
Student(StudentID, StudentName)
Enrollment(StudentID, CourseID)
```

Now `TeacherID` can link Course to Teacher.

This reduces duplicate teacher data.

---

## 23. Keys and SQL Preview

SQL uses keys to join related tables.

### Example Tables

```text
Student(StudentID, FirstName)
Grade(GradeID, StudentID, Subject, Score)
```

### Query Idea

```sql
SELECT Student.FirstName, Grade.Subject, Grade.Score
FROM Student
JOIN Grade
ON Student.StudentID = Grade.StudentID;
```

### Meaning

The database matches:

```text
Student.StudentID
```

with:

```text
Grade.StudentID
```

to combine related records.

SQL joins are covered later, but the key idea is that keys make table linking possible.

---

## 24. Keys and ERD Preview

In an ERD, keys help show how entities are related.

### Example

```text
Student 1 ----- many Grade
```

This can be implemented as:

```text
Student(StudentID primary key)
Grade(GradeID primary key, StudentID foreign key)
```

### ERD Notation

Different diagrams show keys differently, for example:

```text
PK StudentID
FK StudentID
```

or underlining primary key attributes.

---

## 25. Choosing a Primary Key

When choosing a primary key, ask:

```text
Is it unique?
Can it ever be blank?
Can it change?
Is it simple?
Is it stable?
Does it avoid sensitive information?
```

### Good Choice

```text
StudentID
CustomerID
ProductID
OrderID
AppointmentID
```

### Poor Choice

```text
FirstName
Address
PhoneNumber
DateOfBirth
CourseName
```

### Depends

Some natural keys may be valid in certain contexts, but IDs are often safer.

Example:

```text
ISBN may identify a book edition
```

but a library may still use:

```text
BookCopyID
```

to identify each physical copy.

---

## 26. Worked Example: School Grades

### Tables

```text
Student(StudentID, FirstName, LastName)
Grade(GradeID, StudentID, Subject, Score)
```

### Primary Keys

```text
Student.StudentID
Grade.GradeID
```

### Foreign Key

```text
Grade.StudentID → Student.StudentID
```

### Explanation

Each student is identified by `StudentID`.  
Each grade record is identified by `GradeID`.  
`StudentID` in Grade links each grade to the correct student.

---

## 27. Worked Example: Library Loans

### Tables

```text
Book(BookID, Title, ISBN)
Member(MemberID, MemberName, Email)
Loan(LoanID, BookID, MemberID, LoanDate, ReturnDate)
```

### Primary Keys

```text
Book.BookID
Member.MemberID
Loan.LoanID
```

### Foreign Keys

```text
Loan.BookID → Book.BookID
Loan.MemberID → Member.MemberID
```

### Explanation

A loan record must refer to a valid book and a valid member.  
Foreign keys make these links clear.

---

## 28. Worked Example: Online Shop Orders

### Tables

```text
Customer(CustomerID, CustomerName, Email)
Order(OrderID, CustomerID, OrderDate)
Product(ProductID, ProductName, Price)
OrderItem(OrderItemID, OrderID, ProductID, Quantity)
```

### Primary Keys

```text
Customer.CustomerID
Order.OrderID
Product.ProductID
OrderItem.OrderItemID
```

### Foreign Keys

```text
Order.CustomerID → Customer.CustomerID
OrderItem.OrderID → Order.OrderID
OrderItem.ProductID → Product.ProductID
```

### Explanation

An order belongs to a customer.  
An order item belongs to an order and refers to a product.

---

## 29. Worked Example: Hospital Appointments

### Tables

```text
Patient(PatientID, PatientName, DateOfBirth)
Doctor(DoctorID, DoctorName, Department)
Appointment(AppointmentID, PatientID, DoctorID, AppointmentDate, AppointmentTime)
```

### Primary Keys

```text
Patient.PatientID
Doctor.DoctorID
Appointment.AppointmentID
```

### Foreign Keys

```text
Appointment.PatientID → Patient.PatientID
Appointment.DoctorID → Doctor.DoctorID
```

### Explanation

Each appointment must refer to a valid patient and a valid doctor.

---

## 30. Worked Example: Game Players and Matches

### Tables

```text
Player(PlayerID, Username, Rank)
Match(MatchID, MatchDate, MapName)
MatchPlayer(MatchID, PlayerID, Score, Result)
```

### Possible Composite Key

For MatchPlayer, the combination:

```text
MatchID + PlayerID
```

could uniquely identify one player's participation in one match.

### Foreign Keys

```text
MatchPlayer.MatchID → Match.MatchID
MatchPlayer.PlayerID → Player.PlayerID
```

### Explanation

This linking table connects players and matches.

---

## 31. Scenario Answer Bank

### If Asked: “Identify primary key”

Use this structure:

```text
The primary key is [field] because it uniquely identifies each record in the [table] table and should not be repeated or null.
```

### If Asked: “Identify foreign key”

Use this structure:

```text
The foreign key is [field] in the [child table] because it refers to [field] in the [parent table] and links the two tables.
```

### If Asked: “Explain why a key is unsuitable”

Use this structure:

```text
[Field] is unsuitable as a primary key because it may not be unique / may change / may be null / may contain sensitive information. A better choice is [ID field].
```

### If Asked: “Explain referential integrity”

Use this structure:

```text
Referential integrity means every foreign key value must match an existing primary key value in the related table. This prevents records from referring to non-existing records.
```

---

## Common mistakes

Watch for these mistakes in key and relationship questions:

- choosing a field as primary key even though it is not unique
- confusing a foreign key with a primary key
- forgetting that a foreign key references another table
- using a person's name as a key when names may repeat
- missing the need for a link table in a many-to-many relationship
- not explaining referential integrity
- thinking every table can only have one possible candidate key
- forgetting that a composite key uses more than one field

### Common exam trap

Do not label a field as a key only because it has `ID` in the name. Explain whether it uniquely identifies records in its own table or links to another table.

---

## 32. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Primary key can repeat | It must uniquely identify records | No duplicate primary key values |
| Primary key can be blank | It normally cannot be null | Every record needs identity |
| Foreign key must be unique | It can repeat | Many child records may link to same parent |
| Foreign key is always in parent table | It is in child/reference table | It points to parent primary key |
| Name is a good primary key | Names can repeat/change | Use unique ID |
| Foreign key creates data copy | It creates link/reference | Related data stays in parent table |
| Same field cannot be PK and FK in different tables | Same field name can have different roles | Role depends on table |
| Referential integrity means data is encrypted | It means valid relationships | Foreign key must match primary key |
| Deleting parent record is always safe | Child records may become orphaned | Use constraints/rules |
| Composite key means duplicate key | Composite key uses multiple fields together | Combination is unique |

---

## 33. Guided Practice

### Practice 1: Identify Primary Key

In this table, which field is the best primary key?

| StudentID | FirstName | LastName |
|---:|---|---|
| 101 | Amy | Chen |
| 102 | Ben | Wang |

<details>
<summary>Suggested Answer</summary>

`StudentID`, because it uniquely identifies each student record.

</details>

---

### Practice 2: Identify Foreign Key

Student table:

| StudentID | FirstName |
|---:|---|
| 101 | Amy |
| 102 | Ben |

Grade table:

| GradeID | StudentID | Score |
|---:|---:|---:|
| 1 | 101 | 95 |
| 2 | 102 | 88 |

Which field is the foreign key?

<details>
<summary>Suggested Answer</summary>

`StudentID` in the Grade table is the foreign key because it refers to `StudentID` in the Student table.

</details>

---

### Practice 3: Can Foreign Keys Repeat?

Can `StudentID` repeat in the Grade table?

<details>
<summary>Suggested Answer</summary>

Yes. One student can have many grade records, so the same `StudentID` can appear multiple times as a foreign key.

</details>

---

### Practice 4: Referential Integrity

Why is this Grade record invalid if no student has `StudentID = 999`?

| GradeID | StudentID | Score |
|---:|---:|---:|
| 3 | 999 | 70 |

<details>
<summary>Suggested Answer</summary>

It breaks referential integrity because the foreign key value `999` does not match any existing `StudentID` in the Student table.

</details>

---

### Practice 5: Better Key

Why is `Email` sometimes risky as a primary key?

<details>
<summary>Suggested Answer</summary>

Email may change, may be entered incorrectly, and may be considered personal data. A stable artificial ID such as `UserID` is often safer.

</details>

---

## 34. Independent Practice

### Question 1

Define primary key.

### Question 2

Define foreign key.

### Question 3

Explain the difference between primary key and foreign key.

### Question 4

Explain why names are usually poor primary keys.

### Question 5

Give two examples of good primary keys and explain why they are suitable.

### Question 6

In a library database with `Book`, `Member`, and `Loan` tables, identify possible primary and foreign keys.

### Question 7

Explain referential integrity using a school database example.

### Question 8

Explain why foreign keys can repeat.

### Question 9

Explain how keys help reduce data redundancy.

### Question 10

Design primary and foreign keys for a simple online shop database with Customer, Order, Product, and OrderItem tables.

---

## 35. Exam-style Questions

### Question 1 [4 marks]

Define primary key and foreign key.

<details>
<summary>Mark Scheme Style Answer</summary>

A primary key is a field or combination of fields that uniquely identifies each record in a table. A foreign key is a field in one table that refers to the primary key in another table, creating a relationship between the two tables.

</details>

---

### Question 2 [5 marks]

Explain why `StudentID` is a better primary key than `StudentName`.

<details>
<summary>Mark Scheme Style Answer</summary>

`StudentID` is better because it can be made unique for every student and normally does not change. `StudentName` is not a good primary key because two students may have the same name, names may be spelled differently, and names can change. A primary key must uniquely identify each record.

</details>

---

### Question 3 [6 marks]

Given these tables, identify the primary and foreign keys.

```text
Student(StudentID, FirstName, LastName)
Grade(GradeID, StudentID, Subject, Score)
```

<details>
<summary>Mark Scheme Style Answer</summary>

In the Student table, `StudentID` is the primary key because it uniquely identifies each student. In the Grade table, `GradeID` is the primary key because it uniquely identifies each grade record. `StudentID` in the Grade table is a foreign key because it refers to `StudentID` in the Student table and links each grade to the correct student.

</details>

---

### Question 4 [6 marks]

Explain referential integrity using an example.

<details>
<summary>Mark Scheme Style Answer</summary>

Referential integrity means that a foreign key value must match an existing primary key value in the related table. For example, if `Grade.StudentID` is a foreign key referring to `Student.StudentID`, then every `StudentID` in the Grade table must already exist in the Student table. This prevents grade records from referring to students who do not exist.

</details>

---

### Question 5 [6 marks]

A shop database has these tables:

```text
Customer(CustomerID, CustomerName)
Order(OrderID, CustomerID, OrderDate)
Product(ProductID, ProductName, Price)
OrderItem(OrderItemID, OrderID, ProductID, Quantity)
```

Identify two foreign keys and explain their purpose.

<details>
<summary>Mark Scheme Style Answer</summary>

`Order.CustomerID` is a foreign key that refers to `Customer.CustomerID`, linking each order to the customer who placed it. `OrderItem.OrderID` is a foreign key that refers to `Order.OrderID`, linking each order item to its order. `OrderItem.ProductID` is also a foreign key that refers to `Product.ProductID`, linking each order item to the product purchased.

</details>

---

## 36. Practice task
### Activity 1: Key Labeling

Give students several table schemas and ask them to label:

```text
PK
FK
parent table
child table
```

Example:

```text
Author(AuthorID, AuthorName)
Book(BookID, Title, AuthorID)
```

---

### Activity 2: Broken Integrity

Give students a parent table and child table with invalid foreign keys.

Students find:

```text
which records are invalid
why they are invalid
how to fix them
```

---

### Activity 3: Design Keys

Groups design keys for one system:

```text
school enrollment
library loans
online shop orders
hospital appointments
game matches
```

They must identify:

```text
tables
primary keys
foreign keys
relationships
possible integrity problems
```

---

## 37. Independent practice
### Independent practice part A: Concept Explanation

In 6-8 sentences, explain the difference between primary keys and foreign keys using a school database example.

---

### Independent practice part B: Key Identification

For this schema, identify primary and foreign keys:

```text
Patient(PatientID, PatientName)
Doctor(DoctorID, DoctorName)
Appointment(AppointmentID, PatientID, DoctorID, AppointmentDate)
```

Explain each key.

---

### Independent practice part C: Scenario Design

Design a simple library database with:

```text
Book
Member
Loan
```

Include:

```text
primary key for each table
foreign keys
one explanation of how the tables are linked
```

---

### Independent practice part D: Misconception Correction

Correct these statements:

```text
A foreign key must always be unique.
A primary key can be blank.
Student name is always the best primary key.
Referential integrity means data is encrypted.
Foreign keys are not needed if tables have similar names.
```

---

## 38. One-page Revision Summary

| Point | Summary |
|---|---|
| Primary key | Uniquely identifies each record in own table |
| Foreign key | Refers to primary key in another table |
| Candidate key | Possible primary key |
| Composite key | Key made from more than one field |
| Natural key | Real-world value used as key |
| Surrogate key | Artificial ID used as key |
| Parent table | Table referenced by foreign key |
| Child table | Table containing foreign key |
| Referential integrity | Foreign key must match existing primary key |
| Orphan record | Record referring to missing related record |
| PK uniqueness | Must be unique and not null |
| FK repetition | Can repeat in child table |
| Good PK | unique, stable, simple, not null |
| Poor PK | name, address, changing/sensitive value |
| Exam phrase | A primary key uniquely identifies records in its own table, while a foreign key links records to a primary key in another table |

---

## 39. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a primary key?
2. What is a foreign key?
3. Why must a primary key be unique?
4. Can a foreign key repeat?
5. Why is `StudentName` not a good primary key?
6. What is referential integrity?
7. What is an orphan record?
8. What is a composite key?
9. Which table usually contains the foreign key: parent or child?
10. How do keys help link tables?

