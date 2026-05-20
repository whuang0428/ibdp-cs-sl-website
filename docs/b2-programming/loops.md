# Loops

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what iteration is
- distinguish between count-controlled and condition-controlled loops
- trace loops using a trace table
- identify common loop errors

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Repetition |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Iteration | Repetition in an algorithm |
| Loop | A structure that repeats instructions |
| Count-controlled loop | A loop that repeats a known number of times |
| Condition-controlled loop | A loop that repeats while a condition is true |
| Infinite loop | A loop that never ends |

## 4. Concept Explanation

Loops are used when instructions need to be repeated.

There are two common types:

| Loop Type | When to Use |
|---|---|
| Count-controlled loop | When the number of repetitions is known |
| Condition-controlled loop | When the number of repetitions depends on a condition |

Example:

If a program needs to process 10 students, a count-controlled loop is suitable.

If a program keeps asking for input until the user enters "stop", a condition-controlled loop is suitable.

## 5. Step-by-step Example

Algorithm:

| Step | Instruction |
|---|---|
| 1 | count = 1 |
| 2 | total = 0 |
| 3 | Repeat while count <= 3 |
| 4 | total = total + count |
| 5 | count = count + 1 |
| 6 | End loop |
| 7 | Output total |

Trace:

| Iteration | count | total |
|---|---:|---:|
| Start | 1 | 0 |
| 1 | 2 | 1 |
| 2 | 3 | 3 |
| 3 | 4 | 6 |

Final output:

::: tip Answer
6
:::

## 6. Visual Structure

::: info Loop Structure

Set starting value.

→ Check loop condition  
→ Run loop body  
→ Update loop variable  
→ Check condition again  
→ Stop when condition becomes false  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Forgetting to update the loop variable | The loop may never end |
| Using the wrong condition | The loop may repeat too many or too few times |
| Starting from the wrong value | The final result may be wrong |
| Misreading when the loop stops | Trace table answers become incorrect |

## 8. Exam-style Question

Complete the trace table for this algorithm.

| Step | Instruction |
|---|---|
| 1 | n = 1 |
| 2 | total = 0 |
| 3 | Repeat while n < 5 |
| 4 | total = total + n |
| 5 | n = n + 1 |
| 6 | End loop |
| 7 | Output total |

## 9. Mark Scheme Style Answer

Trace:

| Iteration | n | total |
|---|---:|---:|
| Start | 1 | 0 |
| 1 | 2 | 1 |
| 2 | 3 | 3 |
| 3 | 4 | 6 |
| 4 | 5 | 10 |

Final output:

::: tip Answer
10
:::

## 10. Quick Check

1. What is iteration?
2. What causes an infinite loop?
3. When should a count-controlled loop be used?
