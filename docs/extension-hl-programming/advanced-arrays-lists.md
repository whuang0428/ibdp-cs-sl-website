# Advanced Arrays and Lists

## 1. Learning Objectives

By the end of this page, students should be able to:

- process larger collections of data
- use traversal patterns
- search and update values in arrays or lists
- identify common collection-processing errors

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Processing collections |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Array | A fixed or indexed collection of values |
| List | A collection that may be flexible in size depending on language |
| Traversal | Visiting each item in a collection |
| Index | Position of an item |
| Nested loop | A loop inside another loop |
| Two-dimensional array | A structure with rows and columns |

## 4. Concept Explanation

Basic arrays store multiple values under one name.

Advanced use may include:

- finding maximum and minimum values
- counting matching values
- updating selected values
- processing two-dimensional tables
- using nested loops

## 5. Step-by-step Example

Find the highest score:

| Step | Action |
|---|---|
| 1 | Set highest to first score |
| 2 | Visit each score |
| 3 | If current score is higher, update highest |
| 4 | Output highest |

## 6. Visual Structure

::: info Collection Processing
Start with initial value → visit each item → compare or update → continue until all items are processed.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Starting from the wrong index | Items may be skipped |
| Going outside the collection range | Program may crash |
| Not initializing highest or total | Result may be wrong |
| Using nested loops unnecessarily | Program becomes harder to understand |

## 8. Exam-style Question

An array stores student scores.

**Describe how an algorithm could find the highest score.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- set highest to the first score or a suitable starting value
- loop through each score
- compare the current score with highest
- update highest if the current score is larger

## 10. Quick Check

1. What is traversal?
2. Why can index errors occur?
3. How can a program find the largest value in a list?
