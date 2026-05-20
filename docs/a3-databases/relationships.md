# Relationships

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain database relationships
- distinguish one-to-one, one-to-many, and many-to-many
- identify relationships from scenarios
- explain why link tables are used
- design simple linked tables
- connect relationships to primary and foreign keys

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Connecting tables |
| Connected units | Primary and Foreign Keys, ERD, Normalization |
| Exam relevance | Relationship identification, scenario explanation, table design |

::: tip Learning Focus
Read the scenario carefully. Ask: can one A link to many B? Can one B link to many A?
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Relationship | 关系 | A connection between tables |
| One-to-one | 一对一 | One record links to one record |
| One-to-many | 一对多 | One record links to many records |
| Many-to-many | 多对多 | Many records link to many records |
| Link table | 连接表 | A table used to resolve a many-to-many relationship |
| Cardinality | 基数 | The number of possible links between entities |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

数据库中的 **relationship（关系）** 描述表与表之间如何连接。

常见关系有三种：

| Relationship | Example |
|---|---|
| One-to-one | 一个人有一个护照 |
| One-to-many | 一个客户可以有多个订单 |
| Many-to-many | 一个学生可以选多门课，一门课也可以有多个学生 |

很多考试题会给你一个场景，让你判断关系类型。判断时问两个问题：

1. 一个 A 可以对应多个 B 吗？
2. 一个 B 可以对应多个 A 吗？

如果两个问题答案都是 yes，那么是 many-to-many，通常需要 link table。

</template>

<template #en>

### English Explanation

A database **relationship** describes how tables are connected.

Common relationship types:

| Relationship | Example |
|---|---|
| One-to-one | One person has one passport |
| One-to-many | One customer can place many orders |
| Many-to-many | One student can take many courses, and one course can have many students |

Many exam questions give a scenario and ask you to identify the relationship type. Ask:

1. Can one A link to many B?
2. Can one B link to many A?

If both answers are yes, it is many-to-many and usually needs a link table.

</template>
</LangBlock>

---

## 5. Real-life Example

### Students and Courses

One student can take many courses.  
One course can have many students.

This is many-to-many.

A link table can solve it:

| EnrolmentID | StudentID | CourseID |
|---|---|---|
| 1 | 1001 | CS01 |
| 2 | 1001 | MA01 |
| 3 | 1002 | CS01 |

---

## 6. Database Design Pattern

```text
One-to-many:
Primary key on "one" side appears as foreign key on "many" side.

Many-to-many:
Create a link table containing foreign keys from both tables.
```

---

## 7. SQL / Table Example

```sql
SELECT StudentID, CourseID
FROM ENROLMENT;
```

The ENROLMENT table shows links between students and courses.

---

## 8. Explanation of Link Table

| Field | Purpose |
|---|---|
| EnrolmentID | Unique record ID |
| StudentID | Foreign key to STUDENT |
| CourseID | Foreign key to COURSE |

The link table allows one student to appear in several course records, and one course to appear with several students.

---

## 9. Step-by-step Relationship Identification

Scenario: A teacher teaches many classes. Each class has one main teacher.

| Question | Answer |
|---|---|
| Can one teacher teach many classes? | Yes |
| Can one class have many main teachers? | No |
| Relationship | One-to-many |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Treating every relationship as one-to-many | Some are many-to-many | Ask both direction questions |
| Forgetting link table | Many-to-many not represented properly | Use junction/link table |
| Confusing records and tables | Relationship is between entity types | Identify entities first |
| Not using foreign keys | Tables cannot be linked | Add keys |
| Ignoring scenario wording | Wrong relationship type | Read carefully |

---

## 11. Guided Practice

### Practice 1

A customer can place many orders. Each order belongs to one customer. Identify the relationship.

<details>
<summary>Suggested Answer</summary>

One-to-many: one customer can have many orders.

</details>

### Practice 2

Students and clubs: a student can join many clubs, and a club can have many students. Identify the relationship and solution.

<details>
<summary>Suggested Answer</summary>

Many-to-many. Use a link table such as MEMBERSHIP with StudentID and ClubID.

</details>

---

## 12. Independent Practice

1. Identify relationship: author and book.
2. Identify relationship: doctor and patient appointment.
3. Design a link table for students and activities.
4. Explain why many-to-many relationships need a link table.

---

## 13. Exam-style Questions

### Question 1 [3 marks]

Explain what is meant by a one-to-many relationship.

<details>
<summary>Mark Scheme Style Answer</summary>

A one-to-many relationship occurs when one record in one table can be linked to many records in another table, but each of those records links back to one record in the first table.

</details>

### Question 2 [4 marks]

A student can join many clubs, and a club can have many students. Identify the relationship and explain how it can be represented.

<details>
<summary>Mark Scheme Style Answer</summary>

This is a many-to-many relationship. One student can join many clubs and one club can include many students. It can be represented using a link table such as MEMBERSHIP containing StudentID and ClubID as foreign keys.

</details>

---

## 14. Classroom Activity

Students receive scenario cards and classify each as one-to-one, one-to-many, or many-to-many. They must justify using both direction questions.

---

## 15. Homework

Choose five real-world relationships and classify each. For each one, explain how it could be represented using keys.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| One-to-one | One links to one |
| One-to-many | One links to many |
| Many-to-many | Many links to many |
| Link table | Resolves many-to-many |
| Exam phrase | "A link table stores the foreign keys from both related tables." |
