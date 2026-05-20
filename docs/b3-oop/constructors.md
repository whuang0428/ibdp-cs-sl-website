# Constructors

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of a constructor
- understand how constructors initialize objects
- identify constructor parameters
- explain why initial values are useful

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Object creation |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Constructor | A special method used when an object is created |
| Initialize | Give starting values to attributes |
| Parameter | A value passed into a method or constructor |
| Default value | A value used if no specific value is provided |

## 4. Concept Explanation

A constructor is used to create an object and give it initial attribute values.

Without a constructor, an object may be created without useful starting data.

Example:

A Student object might need:

- name
- student ID
- year group

The constructor can receive these values and store them inside the object.

## 5. Step-by-step Example

Class: Student

Constructor input:

| Parameter | Purpose |
|---|---|
| name | Set the student's name |
| id | Set the student's ID |
| grade | Set the student's grade level |

Object creation idea:

| Object | Initial values |
|---|---|
| student1 | Alice, 1001, Grade 11 |
| student2 | Ben, 1002, Grade 12 |

## 6. Visual Structure

::: info Constructor Process

Create object.

→ Call constructor  
→ Pass initial values  
→ Store values in attributes  
→ Object is ready to use  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Forgetting to initialize attributes | Objects may contain missing data |
| Confusing constructor with normal method | A constructor is called during object creation |
| Passing parameters in the wrong order | Attribute values may be incorrect |
| Not matching parameters to attributes | Data may not be stored correctly |

## 8. Exam-style Question

A class called `Student` has attributes `name` and `score`.

**Explain why a constructor could be useful when creating a new Student object.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- a constructor is called when an object is created
- it can receive values such as name and score
- it initializes the object's attributes so the object starts with valid data

## 10. Quick Check

1. What is a constructor?
2. What does initialize mean?
3. Why are constructor parameters useful?
