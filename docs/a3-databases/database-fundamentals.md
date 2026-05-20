# Database Fundamentals

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **database**
- define **DBMS**
- explain why databases are used
- distinguish data and information
- explain advantages of databases over simple files or paper systems
- apply database ideas to real-world scenarios

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding database purpose |
| Connected units | A1 Storage, A2 Security, B2 File Processing, IA project |
| Exam relevance | Definitions, advantages, scenario explanations |

::: tip Learning Focus
A database is not just a table. A database is an organized collection of data, usually managed by a DBMS.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Data | 数据 | Raw facts and values |
| Information | 信息 | Data that has been processed and given meaning |
| Database | 数据库 | An organized collection of related data |
| DBMS | 数据库管理系统 | Software used to create, manage, query, and protect databases |
| Relational database | 关系型数据库 | A database that stores data in related tables |
| Query | 查询 | A request for data from a database |
| Integrity | 完整性 | Accuracy and consistency of data |
| Redundancy | 冗余 | Unnecessary repetition of data |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Database（数据库）** 是一个有组织的数据集合。它可以帮助系统存储、查找、更新、保护和管理大量数据。

**DBMS（Database Management System）** 是用来管理数据库的软件。它可以让用户或程序：

- 创建表
- 插入数据
- 查询数据
- 更新数据
- 删除数据
- 控制访问权限
- 备份和恢复数据

数据库比普通文本文件或纸质记录更适合管理大量结构化数据。例如学校系统、银行系统、医院系统、图书馆系统和网上商店都需要数据库。

</template>

<template #en>

### English Explanation

A **database** is an organized collection of related data. It helps a system store, search, update, protect, and manage large amounts of data.

A **DBMS** is software used to manage a database. It allows users or programs to:

- create tables
- insert data
- query data
- update data
- delete data
- control access rights
- back up and recover data

Databases are more suitable than simple text files or paper records for managing large amounts of structured data. School systems, banking systems, hospital systems, library systems, and online shops all use databases.

</template>
</LangBlock>

---

## 5. Real-life Example

### School Management System

A school database may store:

| Data Area | Example Data |
|---|---|
| Student data | student ID, name, date of birth |
| Teacher data | teacher ID, department |
| Course data | course code, subject |
| Attendance data | date, status, lesson |
| Grade data | assessment name, mark, grade |

::: info Why database is suitable
The school needs to store a large amount of related data and retrieve it quickly for reports, attendance checks, and grade analysis.
:::

---

## 6. Database Design Pattern

A database system often follows this general pattern:

```text
User / Application
        ↓
      DBMS
        ↓
    Database
        ↓
Tables and Records
```

---

## 7. SQL / System Example

A database query may ask:

```sql
SELECT StudentName
FROM STUDENT;
```

This retrieves student names from the STUDENT table.

---

## 8. Explanation of Example

| Part | Meaning |
|---|---|
| `SELECT StudentName` | Choose the field to display |
| `FROM STUDENT` | Choose the table to retrieve data from |
| Result | A list of student names |

---

## 9. Step-by-step Database Use

| Step | Action | Example |
|---|---|---|
| 1 | User enters request | Search student attendance |
| 2 | DBMS receives query | Find records for student |
| 3 | Database is searched | Attendance table checked |
| 4 | Results returned | Attendance records displayed |
| 5 | User views information | Teacher sees attendance history |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying a database is only one table | Databases often contain many related tables | Mention organized collection of related data |
| Confusing data and information | Raw values and meaningful output differ | Use examples |
| Ignoring the DBMS | DBMS manages access and queries | Explain DBMS role |
| Only saying “stores data” | Too vague for high marks | Add search, update, security, reports |
| Thinking databases are only for large companies | Many small systems use databases | Use school/shop/library examples |

---

## 11. Guided Practice

### Practice 1

Give three examples of systems that use databases.

<details>
<summary>Suggested Answer</summary>

Possible answers:

- school information system
- hospital patient system
- online shopping website
- banking system
- library system

</details>

### Practice 2

Explain one difference between data and information.

<details>
<summary>Suggested Answer</summary>

Data is raw facts, such as `85`. Information is processed data with meaning, such as `Alice scored 85% and achieved grade A`.

</details>

---

## 12. Independent Practice

1. Choose a hospital system and list five types of data it may store.
2. Explain why a DBMS is useful in a school system.
3. Compare a paper-based record system and a database system.
4. Give one security reason for using a DBMS.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by a database.

<details>
<summary>Mark Scheme Style Answer</summary>

A database is an organized collection of related data that can be stored, searched, updated, and managed.

</details>

### Question 2 [3 marks]

Explain the role of a DBMS.

<details>
<summary>Mark Scheme Style Answer</summary>

A DBMS is software used to create, manage, query, and protect a database. It controls how data is stored and accessed, and can support tasks such as searching, updating, access control, backup, and recovery.

</details>

### Question 3 [4 marks]

A school stores attendance records. Explain why a database is suitable.

<details>
<summary>Mark Scheme Style Answer</summary>

A database can store attendance records in an organized structure. Records can be searched and updated quickly, and reports can be generated for teachers or parents. Access rights can also protect student data from unauthorized users.

</details>

---

## 14. Classroom Activity

### Activity: Database or Not?

Students classify examples as suitable or unsuitable for a database: personal shopping list, hospital records, one-page note, library system, school timetable, single reminder.

::: tip Exit Ticket
Write one sentence explaining why a DBMS is useful.
:::

---

## 15. Homework

Choose one real-world system and write a short database proposal. Include data stored, why a database is suitable, and one security concern.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Database | Organized collection of related data |
| DBMS | Software that manages a database |
| Data | Raw facts |
| Information | Processed meaningful data |
| Exam phrase | "A database allows data to be stored, searched, updated, and protected efficiently." |
