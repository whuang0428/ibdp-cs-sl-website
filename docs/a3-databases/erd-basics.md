# ERD Basics

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of an ERD
- identify entities and attributes from a scenario
- identify relationships and cardinality
- design a basic ERD-style structure
- connect ERDs to tables, keys, and relationships
- explain why ERDs help before building a database

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Visual database design |
| Connected units | Tables, Keys, Relationships, Normalization |
| Exam relevance | Entity identification, relationship explanation, design questions |

::: tip Learning Focus
In scenarios, nouns often suggest entities, and verbs often suggest relationships.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| ERD | 实体关系图 | Entity-relationship diagram |
| Entity | 实体 | A thing about which data is stored |
| Attribute | 属性 | A property of an entity |
| Relationship | 关系 | A connection between entities |
| Cardinality | 基数 | Number of possible links between entities |
| Primary key | 主键 | Unique identifier for each record |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**ERD（Entity-Relationship Diagram）** 用来在创建数据库前规划结构。它帮助我们看清：

- 需要哪些 entities
- 每个 entity 有哪些 attributes
- entity 之间有什么 relationships
- 关系是一对一、一对多还是多对多

例如场景：

> A customer places many orders.

可能的 entities：

- CUSTOMER
- ORDER

关系：

- CUSTOMER places ORDER
- one customer can place many orders

</template>

<template #en>

### English Explanation

An **ERD** is used to plan the structure of a database before creating it. It helps show:

- what entities are needed
- what attributes each entity has
- what relationships exist between entities
- whether relationships are one-to-one, one-to-many, or many-to-many

Example scenario:

> A customer places many orders.

Possible entities:

- CUSTOMER
- ORDER

Relationship:

- CUSTOMER places ORDER
- one customer can place many orders

</template>
</LangBlock>

---

## 5. Real-life Example

### Clinic Appointment System

Entities:

| Entity | Possible Attributes |
|---|---|
| PATIENT | PatientID, Name, DateOfBirth |
| DOCTOR | DoctorID, Name, Department |
| APPOINTMENT | AppointmentID, Date, Time, PatientID, DoctorID |

Relationships:

- one patient can have many appointments
- one doctor can have many appointments
- APPOINTMENT links patients and doctors

---

## 6. ERD Design Pattern

```text
Read scenario
→ Identify nouns as possible entities
→ Identify important attributes
→ Identify verbs as relationships
→ Decide cardinality
→ Add primary and foreign keys
```

---

## 7. Table Conversion Example

ERD idea:

```text
CUSTOMER 1 ---- many ORDER
```

Tables:

| CUSTOMER | ORDER |
|---|---|
| CustomerID PK | OrderID PK |
| Name | CustomerID FK |
| Email | OrderDate |

---

## 8. Explanation of Conversion

The one-to-many relationship is implemented by placing `CustomerID` as a foreign key in the ORDER table.

---

## 9. Step-by-step Scenario Analysis

Scenario:

> A library stores books. Members can borrow books. Each borrowing event stores a date.

| Step | Result |
|---|---|
| Identify entities | BOOK, MEMBER, LOAN |
| Identify relationship | Member borrows Book |
| Add link entity | LOAN |
| Add keys | BookID, MemberID, LoanID |
| Add attributes | loan date, return date |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Treating every noun as an entity | Some nouns are just attributes | Check whether it needs its own table |
| Missing link entity | Many-to-many not represented | Add link table |
| Ignoring cardinality | Relationship unclear | Ask direction questions |
| Not adding keys | Tables cannot be implemented well | Add primary and foreign keys |
| Drawing before reading scenario carefully | Wrong design | Annotate scenario first |

---

## 11. Guided Practice

### Practice 1

A shop has customers and orders. Identify entities.

<details>
<summary>Suggested Answer</summary>

CUSTOMER and ORDER.

</details>

### Practice 2

A doctor can see many patients, and a patient can see many doctors through appointments. What link entity is useful?

<details>
<summary>Suggested Answer</summary>

APPOINTMENT, because it can link DoctorID and PatientID and store date/time.

</details>

---

## 12. Independent Practice

1. Identify entities in a cinema booking system.
2. List attributes for each entity.
3. Identify relationships and cardinality.
4. Convert your design into tables with keys.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State the purpose of an ERD.

<details>
<summary>Mark Scheme Style Answer</summary>

An ERD is used to model the entities, attributes, and relationships in a database before it is implemented.

</details>

### Question 2 [4 marks]

A clinic stores doctors, patients, and appointments. Explain why APPOINTMENT may be a separate entity.

<details>
<summary>Mark Scheme Style Answer</summary>

A doctor can see many patients and a patient can see many doctors. APPOINTMENT can act as a link entity connecting DoctorID and PatientID, while also storing appointment date and time. This resolves the many-to-many relationship.

</details>

---

## 14. Classroom Activity

Students annotate a written scenario, underline nouns, circle verbs, and then draft an ERD-style table list.

---

## 15. Homework

Create an ERD-style design for a school club management system. Include entities, attributes, relationships, primary keys, and foreign keys.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| ERD | Models entities and relationships |
| Entity | Thing stored in database |
| Attribute | Property of entity |
| Cardinality | Number of relationship links |
| Exam phrase | "The ERD helps plan the database structure before tables are created." |
