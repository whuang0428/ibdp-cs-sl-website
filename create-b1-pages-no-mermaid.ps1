$basePath = "docs\b1-computational-thinking"

$pages = @{
    "decomposition.md" = @"
# Decomposition

## 1. Learning Objectives

By the end of this page, students should be able to:

- define decomposition
- explain why decomposition is useful in computational thinking
- break a large problem into smaller sub-problems
- apply decomposition to simple programming and real-life scenarios

## 2. Syllabus Link

**Unit:** B1 Computational Thinking  
**Label:** SL Core

## 3. Key Terms

| Term | Meaning |
|---|---|
| Decomposition | Breaking a large problem into smaller, more manageable parts |
| Sub-problem | A smaller part of a larger problem |
| Computational thinking | A problem-solving process used in computer science |

## 4. Concept Explanation

Decomposition means breaking a complex problem into smaller parts.

In computer science, this is important because large problems are often too difficult to solve all at once. By splitting the problem into smaller sub-problems, each part becomes easier to understand, design, test, and code.

For example, if we want to create a school library system, we should not start by coding everything at once. We can break it down into smaller tasks:

- add a book
- search for a book
- borrow a book
- return a book
- check overdue books

Each part can then be designed and tested separately.

## 5. Step-by-step Example

Problem: Create a program for a student grade system.

We can decompose the problem into:

1. Input student name.
2. Input marks.
3. Calculate total marks.
4. Calculate average mark.
5. Decide the grade.
6. Output the result.

## 6. Diagram

```mermaid
flowchart TD
    A[Student Grade System] --> B[Input student data]
    A --> C[Calculate total]
    A --> D[Calculate average]
    A --> E[Decide grade]
    A --> F[Output result]