# Advanced Problem Solving

## 1. Learning Objectives

By the end of this page, students should be able to:

- break a larger programming problem into smaller tasks
- identify inputs, outputs, and processes for each task
- plan a solution before coding
- connect decomposition with modular programming

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Planning larger programs |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Problem decomposition | Breaking a problem into smaller sub-problems |
| Module | A separate part of a program with a specific role |
| Requirement | Something the program must do |
| Sub-task | A smaller task within a larger problem |
| Interface | How one part of a program communicates with another |

## 4. Concept Explanation

As programs become larger, students should not try to write all code in one place.

A better approach is to identify smaller parts of the problem and solve each part separately.

For example, a student grade management system may need:

- add a student
- add a mark
- calculate average
- decide grade
- display report
- save data

Each part can later become a function, method, or class.

## 5. Step-by-step Example

Problem: Create a quiz program.

Possible sub-tasks:

| Sub-task | Purpose |
|---|---|
| load questions | prepare quiz data |
| ask question | display one question |
| check answer | compare user answer with correct answer |
| update score | increase score when correct |
| show result | display final score |

## 6. Visual Structure

::: info Larger Problem Structure
Large problem → break into sub-tasks → design each sub-task → test each part → combine into full program.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Starting code immediately | The program can become disorganized |
| Making one huge function | Testing and debugging become harder |
| Not defining inputs and outputs | Parts may not connect correctly |
| Ignoring edge cases | The program may fail for unusual input |

## 8. Exam-style Question

A program is needed to manage a school quiz competition.

**Explain how decomposition can help when designing this program.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the whole system can be split into smaller tasks
- examples include storing teams, asking questions, updating scores, and displaying winners
- each sub-task can be designed, coded, and tested separately
- this makes the program easier to understand, debug, and maintain

## 10. Quick Check

1. Why should large programs be decomposed?
2. Give three sub-tasks in a quiz program.
3. What should be identified before coding each sub-task?
