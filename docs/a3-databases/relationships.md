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
