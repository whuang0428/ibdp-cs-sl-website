# Trace Tables

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of a trace table
- trace the value of variables step by step
- identify the final output of an algorithm
- use trace tables to find logic errors

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Algorithm tracing |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Trace table | A table used to record variable values while an algorithm runs |
| Variable | A named storage location for data |
| Dry run | Manually working through an algorithm without running code |
| Output | The value displayed or returned by the algorithm |

## 4. Concept Explanation

A trace table is used to follow an algorithm step by step.

It helps students understand how variable values change during execution. Trace tables are very important in programming exams because they test whether students can read and understand algorithms.

## 5. Step-by-step Example

Algorithm:

| Step | Instruction |
|---|---|
| 1 | X = 2 |
| 2 | Y = 3 |
| 3 | X = X + Y |
| 4 | Y = X × 2 |
| 5 | Output Y |

Trace table:

| Step | X | Y | Output |
|---|---:|---:|---|
| X = 2 | 2 |  |  |
| Y = 3 | 2 | 3 |  |
| X = X + Y | 5 | 3 |  |
| Y = X × 2 | 5 | 10 |  |
| Output Y | 5 | 10 | 10 |

Final output:

::: tip Answer
10
:::

## 6. Visual Structure

::: info Trace Table Process

Read the first instruction.

→ Update the variable value  
→ Move to the next instruction  
→ Record the new value  
→ Repeat until the algorithm ends  
→ Write the final output  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Skipping steps | Variable values become wrong |
| Updating the wrong variable | The final output becomes incorrect |
| Not using the new value | Students may use old values by mistake |
| Misreading loop conditions | The number of iterations becomes wrong |

## 8. Exam-style Question

Complete the trace table for the following algorithm.

| Step | Instruction |
|---|---|
| 1 | A = 1 |
| 2 | B = 4 |
| 3 | Repeat while B > 0 |
| 4 | A = A + B |
| 5 | B = B - 1 |
| 6 | End loop |
| 7 | Output A |

## 9. Mark Scheme Style Answer

Trace:

| Iteration | A | B |
|---|---:|---:|
| Start | 1 | 4 |
| 1 | 5 | 3 |
| 2 | 8 | 2 |
| 3 | 10 | 1 |
| 4 | 11 | 0 |

Final output:

::: tip Answer
11
:::

Award marks for:

- correct initial values
- correct update of A
- correct update of B
- correct stopping condition
- correct final output

## 10. Quick Check

1. What is a trace table used for?
2. Why is it important to update values in order?
3. What is the final output of the example algorithm?
