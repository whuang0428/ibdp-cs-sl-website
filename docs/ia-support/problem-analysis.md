# Problem Analysis

## 1. Purpose

Problem analysis explains the real-world need behind the IA project.

A strong analysis shows:

- who the client/user is
- what problem exists
- why the current method is inefficient or limited
- what data and processes are involved
- what constraints must be considered

## 2. Client / User Description

Students should identify a specific client or user group.

Weak:

```text
Students need an app.
```

Better:

```text
My client is a Grade 10 CS teacher who currently records weekly programming homework completion in a spreadsheet. The teacher wants a faster way to check missing work and generate a summary by class.
```

## 3. Problem Statement Formula

```text
Client + current method + problem + impact + need
```

Example:

```text
The Grade 10 CS teacher currently records homework completion manually in a spreadsheet. This becomes time-consuming when checking multiple classes and makes it difficult to quickly identify students with repeated missing work. The client needs a system that can record submissions, search by student, and generate class summaries.
```

## 4. Requirement Types

| Requirement Type | Example |
|---|---|
| Functional requirement | The system must add a new student record |
| Functional requirement | The system must search records by student name |
| Functional requirement | The system must generate a missing homework report |
| Non-functional requirement | The interface should be easy for the teacher to use |
| Non-functional requirement | The system should protect student data |
| Constraint | Must run on school computers |
| Constraint | Must be completed within project time |

## 5. Data Analysis

Students should identify data used by the system.

| Data | Type | Purpose |
|---|---|---|
| Student name | String | Identify student |
| Class | String | Group students |
| Homework title | String | Identify task |
| Submission status | Boolean / String | Track completion |
| Date | Date/String | Record deadline or submission date |

## 6. Common Mistakes

| Mistake | Fix |
|---|---|
| No real client | Interview or define a real user |
| Problem too vague | Use specific current method and pain point |
| Requirements are too broad | Make them measurable |
| Only says “easy to use” | Explain what easy means |
| No data analysis | List data items and purpose |

## 7. Practice

### Task

Write a problem statement for a library borrowing tracker.

<details>
<summary>Example Answer</summary>

The school library assistant currently records small club book loans manually in a notebook. This makes it difficult to search who has borrowed a book and whether a book is overdue. The client needs a system that can store book records, member records, loan records, and generate overdue loan lists.

</details>
