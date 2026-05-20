# SQL Practice

## 1. Purpose

This page collects SQL practice tasks for database revision.

For the framework version, the focus is on SELECT, FROM, WHERE, and ORDER BY.

## 2. Basic Query Structure

| SQL Part | Purpose |
|---|---|
| SELECT | Choose fields to display |
| FROM | Choose the table |
| WHERE | Filter records |
| ORDER BY | Sort results |

## 3. Practice Table

Table: STUDENT

| StudentID | FirstName | Surname | YearGroup |
|---|---|---|---|
| 1001 | Alice | Chen | 11 |
| 1002 | Ben | Smith | 12 |
| 1003 | Clara | Wang | 11 |

## 4. Practice Questions

1. Display FirstName and Surname for all students.
2. Display all fields for students in YearGroup 11.
3. Display FirstName and YearGroup, ordered by FirstName.

## 5. Mark Scheme Style Answers

| Question | Expected Answer Structure |
|---|---|
| 1 | SELECT FirstName, Surname FROM STUDENT |
| 2 | SELECT * FROM STUDENT WHERE YearGroup = 11 |
| 3 | SELECT FirstName, YearGroup FROM STUDENT ORDER BY FirstName |

## 6. Quick Check

1. What does WHERE do?
2. What does ORDER BY do?
3. Why must field names be accurate?
