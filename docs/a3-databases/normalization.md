# Normalization

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **normalization**
- explain redundancy and anomalies
- identify repeated data in poor table design
- explain why splitting tables can improve design
- connect normalization to primary and foreign keys
- describe first, second, and third normal form at a simple level

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Improving database design |
| Connected units | Tables, Keys, Relationships |
| Exam relevance | Redundancy explanation, anomaly questions, design improvement |

::: tip Learning Focus
Normalization is about reducing unnecessary repetition and keeping data consistent.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Normalization | 规范化 | Organizing data to reduce redundancy and improve consistency |
| Redundancy | 冗余 | Unnecessary repetition of data |
| Update anomaly | 更新异常 | Problem when repeated data must be updated in many places |
| Insert anomaly | 插入异常 | Problem when data cannot be inserted without unrelated data |
| Delete anomaly | 删除异常 | Problem when deleting data accidentally removes other needed data |
| 1NF | 第一范式 | No repeating groups; values are atomic |
| 2NF | 第二范式 | Non-key fields depend on the whole key |
| 3NF | 第三范式 | Non-key fields depend only on the key, not other non-key fields |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Normalization（规范化）** 是改进数据库设计的过程，目的是减少重复数据，提高一致性。

如果一个表中重复保存相同信息，会导致问题。例如课程名称重复很多次：

| StudentID | StudentName | CourseID | CourseName |
|---|---|---|---|
| 1001 | Alice | CS01 | Computer Science |
| 1002 | Ben | CS01 | Computer Science |

如果课程名称改变，需要修改很多行。如果有一行忘记修改，就会出现不一致。

更好的设计是把数据分成多个表：

- STUDENT table
- COURSE table
- ENROLMENT table

用 keys 把表连接起来。

</template>

<template #en>

### English Explanation

**Normalization** is the process of improving database design to reduce repeated data and improve consistency.

If the same information is stored repeatedly, problems can occur. For example, the course name is repeated:

| StudentID | StudentName | CourseID | CourseName |
|---|---|---|---|
| 1001 | Alice | CS01 | Computer Science |
| 1002 | Ben | CS01 | Computer Science |

If the course name changes, many rows must be updated. If one row is missed, the data becomes inconsistent.

A better design splits the data into tables:

- STUDENT table
- COURSE table
- ENROLMENT table

Keys are used to link the tables.

</template>
</LangBlock>

---

## 5. Real-life Example

Poor table:

| StudentID | StudentName | CourseID | CourseName | TeacherName |
|---|---|---|---|---|
| 1001 | Alice | CS01 | Computer Science | Mr Lee |
| 1002 | Ben | CS01 | Computer Science | Mr Lee |
| 1003 | Clara | MA01 | Mathematics | Ms Wang |

Improved design:

STUDENT:

| StudentID | StudentName |
|---|---|

COURSE:

| CourseID | CourseName | TeacherName |
|---|---|---|

ENROLMENT:

| StudentID | CourseID |
|---|---|

---

## 6. Normalization Pattern

```text
Start with large table
→ Find repeated data
→ Identify separate entities
→ Split into smaller tables
→ Add primary keys
→ Add foreign keys
```

---

## 7. SQL / Table Example

Instead of repeating CourseName in ENROLMENT, store only CourseID:

```sql
SELECT StudentID, CourseID
FROM ENROLMENT;
```

The CourseID can link to COURSE where CourseName is stored once.

---

## 8. Explanation of Improvement

| Problem in poor design | How normalization helps |
|---|---|
| CourseName repeated | Stored once in COURSE |
| Update anomaly | Change course name once |
| Delete anomaly | Deleting one enrolment does not delete course information |
| Insert anomaly | New course can be added without student enrolment |

---

## 9. Step-by-step Example

| Step | Action |
|---|---|
| 1 | Notice CourseName repeats |
| 2 | Create COURSE table |
| 3 | Move CourseName into COURSE |
| 4 | Keep CourseID in ENROLMENT |
| 5 | Link tables using CourseID |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Thinking repeated data is always fine | Causes update problems | Reduce unnecessary repetition |
| Splitting tables without keys | Tables cannot be linked | Add PK/FK |
| Removing needed data | Meaning may be lost | Preserve relationships |
| Confusing normalization with sorting | Different concepts | Normalization is structure design |
| Over-normalizing simple data | Design becomes too complex | Keep design appropriate |

---

## 11. Guided Practice

### Practice 1

Identify repeated data:

| Student | Course | Teacher |
|---|---|---|
| Alice | CS | Mr Lee |
| Ben | CS | Mr Lee |

<details>
<summary>Suggested Answer</summary>

`CS` and `Mr Lee` are repeated. A COURSE table could store course and teacher once.

</details>

### Practice 2

Name one anomaly caused by repeated data.

<details>
<summary>Suggested Answer</summary>

Update anomaly: if teacher name changes, it must be updated in multiple records.

</details>

---

## 12. Independent Practice

1. Find redundancy in a booking table.
2. Split the table into smaller tables.
3. Identify primary and foreign keys.
4. Explain one update anomaly.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by normalization.

<details>
<summary>Mark Scheme Style Answer</summary>

Normalization is the process of organizing database tables to reduce redundancy and improve consistency.

</details>

### Question 2 [4 marks]

A table stores the same teacher name many times. Explain why this is poor design.

<details>
<summary>Mark Scheme Style Answer</summary>

The teacher name is repeated, causing redundancy. If the teacher name changes, it must be updated in many places. If some records are missed, data becomes inconsistent. This is an update anomaly.

</details>

---

## 14. Classroom Activity

Students normalize a messy table into STUDENT, COURSE, and ENROLMENT tables.

---

## 15. Homework

Find a repeated-data table online or create one. Normalize it into at least two related tables and explain the improvement.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Normalization | Reduces redundancy |
| Redundancy | Unnecessary repetition |
| Update anomaly | Repeated data must be updated many times |
| Keys | Link normalized tables |
| Exam phrase | "Normalization reduces repeated data and helps prevent inconsistent updates." |
