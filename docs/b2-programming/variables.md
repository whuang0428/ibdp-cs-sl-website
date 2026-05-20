# Variables

## 1. Learning Objectives

By the end of this page, students should be able to:

- define a variable
- explain why variables are used in programs
- assign values to variables
- update variable values during program execution

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Data storage and update |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Variable | A named storage location for data |
| Assignment | Giving a value to a variable |
| Identifier | The name used for a variable |
| Value | The data stored in a variable |
| Constant | A named value that should not change during execution |

## 4. Concept Explanation

A variable is used to store data in a program.

The value stored in a variable can change while the program is running. This is why it is called a variable.

Example:

| Statement | Meaning |
|---|---|
| score = 10 | Store 10 in the variable score |
| score = score + 5 | Increase score by 5 |
| output score | Display the current value of score |

## 5. Step-by-step Example

Algorithm:

| Step | Instruction |
|---|---|
| 1 | score = 10 |
| 2 | bonus = 5 |
| 3 | score = score + bonus |
| 4 | output score |

Trace:

| Step | score | bonus | Output |
|---|---:|---:|---|
| score = 10 | 10 |  |  |
| bonus = 5 | 10 | 5 |  |
| score = score + bonus | 15 | 5 |  |
| output score | 15 | 5 | 15 |

## 6. Visual Structure

::: info Variable Update

Old value of score: **10**

Operation: **score = score + 5**

New value of score: **15**

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Using a variable before assigning a value | The program may not know what value to use |
| Confusing = with equality | In programming, = often means assignment |
| Using unclear variable names | The code becomes harder to understand |
| Forgetting that values can change | Trace table answers become incorrect |

## 8. Exam-style Question

The following statements are executed:

| Step | Instruction |
|---|---|
| 1 | x = 4 |
| 2 | y = 3 |
| 3 | x = x + y |
| 4 | y = x - y |
| 5 | output y |

**State the final output.** [2]

## 9. Mark Scheme Style Answer

| Step | x | y |
|---|---:|---:|
| x = 4 | 4 |  |
| y = 3 | 4 | 3 |
| x = x + y | 7 | 3 |
| y = x - y | 7 | 4 |

::: tip Answer
The final output is **4**.
:::

## 10. Quick Check

1. What is a variable?
2. What does assignment mean?
3. Why are clear variable names useful?
