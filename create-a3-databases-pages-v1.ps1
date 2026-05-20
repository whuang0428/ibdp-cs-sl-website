$basePath = "docs\a3-databases"
New-Item -ItemType Directory -Force $basePath | Out-Null

$pages = @{
"index.md" = @'
# A3 Databases

## Unit Overview

This unit introduces how data can be stored, organized, searched, and protected using databases.

Students will learn the basic structure of relational databases, how tables are connected, how database designs can be improved, and how SQL queries are used to retrieve data.

For this first framework version, the pages are short. Later, each page can be expanded into a full teaching page with SQL examples, diagrams, exam-style questions, and classroom tasks.

## Topics

| Topic | Main Focus | Label |
|---|---|---|
| Database Fundamentals | Understand what a database is and why it is used | SL Core |
| Tables, Records and Fields | Understand the basic structure of relational databases | SL Core |
| Primary and Foreign Keys | Identify how records and tables are linked | SL Core |
| Relationships | Understand relationship types between tables | SL Core |
| ERD Basics | Represent database structure using entity-relationship ideas | SL Core |
| Normalization | Reduce data redundancy and improve database design | SL Core |
| SQL SELECT | Retrieve data from a database | SL Core |
| SQL Conditions and Sorting | Use WHERE, ORDER BY, and logical conditions | SL Core |
| Database Security and Privacy | Protect stored data | SL Core |
| Transactions and Recovery | Maintain consistency and recover from errors | SL Core |

## How to Study This Unit

1. Learn the vocabulary first.
2. Understand tables, records, fields, and keys.
3. Practise identifying relationships.
4. Practise writing SQL queries.
5. Connect database theory to real-world systems such as schools, hospitals, shops, and libraries.

::: tip SL Core
This module focuses on SL database content. HL-only database extension topics are not included in the main learning pathway.
:::
'@

"database-fundamentals.md" = @'
# Database Fundamentals

## 1. Learning Objectives

By the end of this page, students should be able to:

- define a database
- explain why databases are used
- distinguish between data and information
- identify real-world database examples

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding database purpose |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Data | Raw facts and values |
| Information | Data that has been processed and given meaning |
| Database | An organized collection of data |
| DBMS | Database Management System used to create, manage, and access databases |
| Relational database | A database that stores data in related tables |

## 4. Concept Explanation

A database is used to store data in an organized way.

Many systems use databases, such as:

- school management systems
- hospital patient systems
- online shopping websites
- banking systems
- library systems

A database allows data to be stored, searched, updated, and protected more effectively than a simple file or paper-based system.

## 5. Step-by-step Example

A school database may store:

| Data Type | Example |
|---|---|
| Student data | name, date of birth, student ID |
| Teacher data | teacher ID, department |
| Course data | course code, subject name |
| Grade data | mark, grade, exam date |

## 6. Visual Structure

::: info Database Purpose
Store data → Organize data → Search data → Update data → Protect data → Produce useful information
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying a database is just one table | A database may contain many related tables |
| Confusing data and information | Data is raw; information is meaningful |
| Ignoring the role of DBMS | A DBMS manages access, updates, and security |
| Thinking databases are only used by large companies | Many small systems also use databases |

## 8. Exam-style Question

A school stores student attendance records.

**Explain one reason why a database is suitable for storing attendance data.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- data can be stored in an organized structure
- attendance records can be searched or updated efficiently
- reports can be produced for students, teachers, or parents
- access can be controlled to protect student data

## 10. Quick Check

1. What is a database?
2. What does DBMS stand for?
3. Give two real-world systems that use databases.
'@

"tables-records-fields.md" = @'
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
'@

"primary-foreign-keys.md" = @'
# Primary and Foreign Keys

## 1. Learning Objectives

By the end of this page, students should be able to:

- define primary key
- define foreign key
- explain why keys are used in relational databases
- identify keys in simple database tables

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Linking records and tables |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Primary key | A field that uniquely identifies each record in a table |
| Foreign key | A field in one table that refers to the primary key in another table |
| Unique | No two records have the same value |
| Relationship | A connection between tables |
| Referential integrity | Keeping links between tables valid |

## 4. Concept Explanation

A primary key is used to uniquely identify each record in a table.

A foreign key is used to link one table to another table.

Example:

STUDENT table:

| StudentID | StudentName |
|---|---|
| 1001 | Alice |
| 1002 | Ben |

ENROLMENT table:

| EnrolmentID | StudentID | CourseCode |
|---|---|---|
| 1 | 1001 | CS |
| 2 | 1002 | BIO |

In this example, STUDENT.StudentID is a primary key and ENROLMENT.StudentID is a foreign key.

## 5. Step-by-step Example

A student can enrol in a course.

To avoid repeating the full student name in every enrolment record, the ENROLMENT table stores StudentID as a foreign key.

## 6. Visual Structure

::: info Key Relationship
Primary key → uniquely identifies a record.  
Foreign key → stores a value from another table's primary key and creates a link between tables.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Choosing a non-unique primary key | Records cannot be identified reliably |
| Confusing primary key and foreign key | Table relationships become unclear |
| Using names as primary keys | Names may be duplicated or changed |
| Creating foreign key values that do not exist | Referential integrity is broken |

## 8. Exam-style Question

A database has a CUSTOMER table and an ORDER table.

**Explain why CustomerID may appear in both tables.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- CustomerID is the primary key in the CUSTOMER table
- CustomerID can be used as a foreign key in the ORDER table
- this links each order to the correct customer

## 10. Quick Check

1. What is a primary key?
2. What is a foreign key?
3. Why is StudentID better than StudentName as a primary key?
'@

"relationships.md" = @'
# Relationships

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify common relationship types
- explain one-to-one, one-to-many, and many-to-many relationships
- choose suitable relationships for simple database scenarios
- understand why link tables may be needed

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Connecting tables |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Relationship | A connection between tables |
| One-to-one | One record in a table links to one record in another table |
| One-to-many | One record in a table links to many records in another table |
| Many-to-many | Many records in one table link to many records in another table |
| Link table | A table used to resolve a many-to-many relationship |

## 4. Concept Explanation

Relationships describe how tables are connected.

| Relationship | Example |
|---|---|
| One-to-one | One person has one passport |
| One-to-many | One customer can place many orders |
| Many-to-many | Many students can take many courses |

Many-to-many relationships are usually handled using a link table.

## 5. Step-by-step Example

Scenario: Students and Courses

One student can take many courses.  
One course can have many students.

This is a many-to-many relationship.

A link table called ENROLMENT can connect them:

| EnrolmentID | StudentID | CourseID |
|---|---|---|
| 1 | 1001 | CS01 |
| 2 | 1001 | MA01 |
| 3 | 1002 | CS01 |

## 6. Visual Structure

::: info Relationship Thinking
Ask: Can one A link to many B? Can one B link to many A? If both are true, it is many-to-many and a link table is usually needed.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Treating every relationship as one-to-many | Some scenarios require many-to-many |
| Forgetting link tables | Many-to-many relationships are not represented properly |
| Confusing entities with records | Tables represent entity types, not one single item |
| Not reading the scenario carefully | The relationship may be identified incorrectly |

## 8. Exam-style Question

A school stores data about students and clubs. A student can join many clubs, and a club can have many students.

**Identify the relationship type and explain how it can be represented.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the relationship is many-to-many
- one student can join many clubs
- one club can contain many students
- a link table such as MEMBERSHIP can store StudentID and ClubID

## 10. Quick Check

1. What is a one-to-many relationship?
2. Give one example of a many-to-many relationship.
3. Why is a link table useful?
'@

"erd-basics.md" = @'
# ERD Basics

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of an entity-relationship diagram
- identify entities in a scenario
- identify relationships between entities
- understand how ERDs support database design

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Visual database design |

## 3. Key Terms

| Term | Meaning |
|---|---|
| ERD | Entity-relationship diagram |
| Entity | A thing about which data is stored |
| Relationship | A link between entities |
| Attribute | A property of an entity |
| Cardinality | The number of possible links between entities |

## 4. Concept Explanation

An ERD is used to plan the structure of a database.

It shows entities, relationships, and sometimes attributes and keys.

Example scenario: A customer can place many orders.

| Entity | Example Attributes |
|---|---|
| CUSTOMER | CustomerID, Name, Email |
| ORDER | OrderID, OrderDate, Total |

## 5. Step-by-step Example

Scenario: A library stores books and members. Members can borrow books.

Possible entities:

- BOOK
- MEMBER
- LOAN

Possible relationships:

- a member can have many loans
- a book can appear in many loan records over time

## 6. Visual Structure

::: info ERD Planning Process
Read the scenario → identify nouns as possible entities → identify verbs as possible relationships → decide relationship type → add keys and important attributes.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Missing important entities | The database may not store needed data |
| Treating attributes as entities | The design may become unnecessarily complex |
| Ignoring relationship type | Tables may not link correctly |
| Not using a link table when needed | Many-to-many relationships may be poorly designed |

## 8. Exam-style Question

A clinic stores data about doctors and patients. A doctor can see many patients, and a patient can see many doctors.

**Identify the likely relationship type and how it could be represented.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- this is a many-to-many relationship
- one doctor can see many patients
- one patient can see many doctors
- a link table such as APPOINTMENT or VISIT can connect DoctorID and PatientID

## 10. Quick Check

1. What does ERD stand for?
2. What is an entity?
3. Why are ERDs useful before creating tables?
'@

"normalization.md" = @'
# Normalization

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of normalization
- identify data redundancy
- explain why repeated data can cause problems
- understand the basic idea of splitting data into related tables

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Improving database design |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Normalization | Organizing data to reduce redundancy and improve consistency |
| Redundancy | Unnecessary repetition of data |
| Anomaly | A problem caused by poor database design |
| 1NF | First Normal Form |
| 2NF | Second Normal Form |
| 3NF | Third Normal Form |

## 4. Concept Explanation

Normalization is a process used to improve database design.

Poorly designed tables may repeat the same data many times.

Repeated data can cause update, insert, and delete problems.

## 5. Step-by-step Example

Poor table:

| StudentID | StudentName | CourseID | CourseName |
|---|---|---|---|
| 1001 | Alice | CS01 | Computer Science |
| 1002 | Ben | CS01 | Computer Science |

The course name is repeated.

Better design:

- STUDENT table stores student data
- COURSE table stores course data
- ENROLMENT table links students and courses

## 6. Visual Structure

::: info Normalization Idea
Start with one large table → find repeated data → identify separate entities → split data into smaller tables → use keys to link the tables.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking repeated data is harmless | It can cause inconsistent updates |
| Splitting tables without keys | Tables cannot be linked properly |
| Removing necessary data | The database may lose meaning |
| Confusing normalization with sorting | Normalization is about structure, not order |

## 8. Exam-style Question

A table stores the same teacher name many times for different classes.

**Explain one reason why this may be poor database design.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the teacher name is repeated, causing redundancy
- if the teacher name changes, it must be updated in many places
- this can lead to inconsistent data if some records are not updated

## 10. Quick Check

1. What is normalization?
2. What is redundancy?
3. Why can repeated data be a problem?
'@

"sql-select.md" = @'
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
'@

"sql-conditions-sorting.md" = @'
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
'@

"database-security-privacy.md" = @'
# Database Security and Privacy

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why database security is important
- identify methods used to protect database data
- distinguish between security and privacy
- apply security ideas to real-world database scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Protecting stored data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Security | Protecting data from unauthorized access, damage, or loss |
| Privacy | Controlling how personal data is collected, used, and shared |
| Authentication | Checking a user's identity |
| Authorization | Controlling what an authenticated user is allowed to do |
| Encryption | Encoding data so it cannot be read without a key |
| Backup | A copy of data used for recovery |

## 4. Concept Explanation

Databases often store sensitive data.

Common protection methods include:

| Method | Purpose |
|---|---|
| Authentication | Stop unknown users from logging in |
| Access rights | Limit what users can view or change |
| Encryption | Protect data if it is intercepted or stolen |
| Backups | Recover data after loss or damage |
| Audit logs | Record who accessed or changed data |

## 5. Step-by-step Example

A hospital database should not allow every employee to view every patient record.

| User Type | Access |
|---|---|
| Doctor | View and update assigned patient records |
| Receptionist | View appointment information |
| Database administrator | Manage database structure and permissions |

## 6. Visual Structure

::: info Security Layers
Authenticate user → check access rights → allow only permitted actions → record activity in logs → back up data regularly.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Giving all users full access | Sensitive data may be exposed |
| Ignoring backups | Data may be lost permanently |
| Thinking passwords alone are enough | Other protections are also needed |
| Confusing privacy with security | Privacy is about proper use of personal data |

## 8. Exam-style Question

A school database stores student grades and personal details.

**Explain two methods that can be used to protect this data.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- authentication can ensure only valid users log in
- authorization/access rights can limit users to appropriate data
- encryption can protect data if accessed without permission
- backups can allow recovery if data is lost or damaged
- audit logs can help identify suspicious access

## 10. Quick Check

1. What is authentication?
2. What is authorization?
3. Why are backups important?
'@

"transactions-recovery.md" = @'
# Transactions and Recovery

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what a database transaction is
- understand why transactions must be reliable
- describe the purpose of commit and rollback
- explain how backups and logs support recovery

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Maintaining database consistency |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Transaction | A sequence of database operations treated as one unit |
| Commit | Save the changes of a transaction permanently |
| Rollback | Undo changes if a transaction fails |
| Consistency | Keeping database data valid and reliable |
| Log file | A record of database operations used for recovery |
| Recovery | Restoring the database after failure |

## 4. Concept Explanation

A transaction is a group of database operations that should be completed as one unit.

Example:

When money is transferred from one bank account to another:

1. subtract money from account A
2. add money to account B

Both steps must happen. If only one step happens, the database becomes inconsistent.

## 5. Step-by-step Example

Scenario: Booking a seat.

Transaction steps:

1. Check if the seat is available.
2. Mark the seat as booked.
3. Store payment confirmation.
4. Commit the transaction.

If payment fails, the system should rollback the booking.

## 6. Visual Structure

::: info Transaction Process
Start transaction → perform database operations → if all operations succeed, commit → if an operation fails, rollback → database remains consistent.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Treating each operation separately | Partial updates may corrupt data |
| Forgetting rollback | Failed transactions may leave wrong data |
| Ignoring logs | Recovery becomes difficult |
| Thinking backup and log are the same | Backups copy data; logs record operations |

## 8. Exam-style Question

A customer pays for an online order. The database must update the payment record and the stock quantity.

**Explain why this should be treated as a transaction.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the payment update and stock update are related operations
- both operations should be completed together
- if one operation fails, the transaction can be rolled back
- this prevents inconsistent data such as payment recorded but stock not updated

## 10. Quick Check

1. What is a transaction?
2. What does commit mean?
3. What does rollback mean?
'@
}

foreach ($file in $pages.Keys) {
    $fullPath = Join-Path $basePath $file
    Set-Content -Path $fullPath -Value $pages[$file] -Encoding UTF8
}
Write-Host "A3 Databases framework pages created successfully."
