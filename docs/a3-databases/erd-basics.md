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
