# Selection

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what selection is
- use IF, ELSE IF, and ELSE logic
- trace algorithms that contain selection
- apply comparison operators in conditions

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Decision making |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Selection | Choosing between different paths in an algorithm |
| Condition | A statement that is true or false |
| IF statement | A structure used to make a decision |
| ELSE | The alternative path if the IF condition is false |
| Comparison operator | An operator such as >, <, >=, <=, ==, != |

## 4. Concept Explanation

Selection allows a program to make decisions.

A program can test a condition. If the condition is true, one set of instructions is executed. If it is false, another set of instructions may be executed.

Example:

| Condition | Result |
|---|---|
| mark >= 50 | Output Pass |
| otherwise | Output Fail |

## 5. Step-by-step Example

Problem: Decide whether a student passes.

| Step | Action |
|---|---|
| 1 | Input mark |
| 2 | If mark is at least 50 |
| 3 | Output Pass |
| 4 | Otherwise output Fail |

## 6. Visual Structure

::: info Selection Structure

Input mark.

→ Check condition: **mark >= 50**  
→ True: output **Pass**  
→ False: output **Fail**  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Using wrong comparison operator | The wrong branch may run |
| Forgetting ELSE | Some cases may not be handled |
| Conditions overlap incorrectly | More than one case may seem true |
| Confusing assignment and equality | The condition may not work correctly |

## 8. Exam-style Question

A program inputs a temperature. If the temperature is below 0, it outputs **Freezing**. If it is from 0 to 30 inclusive, it outputs **Normal**. Otherwise, it outputs **Hot**.

**Construct an algorithm for this selection logic.** [5]

## 9. Mark Scheme Style Answer

Award marks for:

- inputting temperature
- checking temperature below 0
- outputting Freezing
- checking the normal range correctly
- outputting Normal or Hot correctly

Example answer:

| Step | Action |
|---|---|
| 1 | Input temperature |
| 2 | If temperature < 0, output Freezing |
| 3 | Else if temperature <= 30, output Normal |
| 4 | Else output Hot |

## 10. Quick Check

1. What is selection?
2. What does ELSE do?
3. What is the result if mark = 49 in a pass/fail algorithm?
