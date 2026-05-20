# Recursion Basics

## 1. Learning Objectives

By the end of this page, students should be able to:

- define recursion
- identify a base case
- explain why recursive calls must move toward the base case
- trace a simple recursive process conceptually

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Recursive thinking |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Recursion | A process where a function calls itself |
| Recursive call | A function calling itself |
| Base case | The condition that stops recursion |
| Stack | A structure that stores active function calls |
| Infinite recursion | Recursion that never reaches a base case |

## 4. Concept Explanation

Recursion happens when a function calls itself.

Every recursive solution needs:

1. a base case that stops the recursion
2. a recursive case that moves closer to the base case

Without a base case, recursion may continue forever or cause a stack overflow.

## 5. Step-by-step Example

Example idea: countdown from 3.

| Call | Action |
|---|---|
| countdown(3) | print 3, call countdown(2) |
| countdown(2) | print 2, call countdown(1) |
| countdown(1) | print 1, call countdown(0) |
| countdown(0) | stop |

## 6. Visual Structure

::: info Recursion Structure
Check base case → if not base case, perform action → call same function with smaller/simpler input → eventually stop.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| No base case | Recursion may never stop |
| Recursive call does not move closer to base case | Infinite recursion may occur |
| Treating recursion as a normal loop only | Recursion uses function calls |
| Not tracing call order | Output order can be misunderstood |

## 8. Exam-style Question

**Explain why a recursive function must have a base case.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the base case provides a stopping condition
- without it, the function may continue calling itself
- this can cause infinite recursion or a stack overflow

## 10. Quick Check

1. What is recursion?
2. What is a base case?
3. What might happen without a base case?
