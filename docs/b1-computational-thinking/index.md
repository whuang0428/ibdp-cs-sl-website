# B1 Computational Thinking

## 1. Module Overview

B1 Computational Thinking introduces the thinking skills used to analyse problems and design algorithmic solutions.

In this module, students learn how to:

```text
break problems into smaller parts
ignore unnecessary detail
identify important information
design algorithms
represent algorithms using flowcharts
trace algorithms step by step
predict outputs
find logic errors
explain how a solution works
```

Computational thinking is important because programming is not only about writing code.  
Before writing code, students need to understand:

```text
what the problem is asking
what inputs are needed
what outputs are expected
what steps should be followed
what decisions and repetitions are needed
how to check whether the algorithm works
```

B1 is the bridge between problem analysis and programming.

---

## 2. Learning Goals

By the end of B1 Computational Thinking, students should be able to:

- define computational thinking
- explain why computational thinking is useful
- explain decomposition
- break a problem into smaller sub-problems
- explain abstraction
- identify essential information and remove unnecessary detail
- define algorithm
- describe the properties of a good algorithm
- write simple algorithm steps in plain English or pseudocode
- identify sequence, selection, and iteration in an algorithm
- represent algorithms using flowcharts
- recognize common flowchart symbols
- trace algorithms step by step
- complete trace tables
- predict outputs from given inputs
- identify and correct simple logic errors
- explain algorithms using correct technical vocabulary
- answer exam-style questions about decomposition, abstraction, algorithms, flowcharts, and trace tables

---

## 3. B1 Learning Path

Recommended teaching order:

```text
Overview
→ Decomposition
→ Abstraction
→ Algorithms
→ Flowcharts
→ Trace Tables
```

This order is intentional.

Students first understand what computational thinking is.  
Then they learn how to break a problem down using decomposition.  
After that, they learn abstraction to focus on important details.  
Then they design algorithms.  
Finally, they represent and test algorithms using flowcharts and trace tables.

---

## 4. Topic Index

| Order | Topic | Main Focus | Link |
|---:|---|---|---|
| 1 | Overview | whole B1 module map, key patterns, revision route | [Open](./) |
| 2 | Decomposition | breaking a complex problem into smaller sub-problems | [Open](./decomposition) |
| 3 | Abstraction | removing unnecessary detail and focusing on important information | [Open](./abstraction) |
| 4 | Algorithms | step-by-step solutions, sequence, selection, iteration | [Open](./algorithms) |
| 5 | Flowcharts | visual representation of algorithms using standard symbols | [Open](./flowcharts) |
| 6 | Trace Tables | dry-running algorithms and tracking variable values | [Open](./trace-tables) |

::: warning File Name Note
This overview uses your current stable B1 file names:
`decomposition.md`, `abstraction.md`, `algorithms.md`, `flowcharts.md`, and `trace-tables.md`.
:::

---

## 5. Concept Map

```text
B1 Computational Thinking
├── Problem Solving
│   ├── understand problem
│   ├── identify inputs
│   ├── identify outputs
│   ├── identify constraints
│   └── plan solution
├── Decomposition
│   ├── break into smaller parts
│   ├── sub-problems
│   ├── modules / functions
│   └── easier testing
├── Abstraction
│   ├── focus on important details
│   ├── ignore irrelevant details
│   ├── simplify problem
│   └── model the system
├── Algorithms
│   ├── step-by-step instructions
│   ├── sequence
│   ├── selection
│   ├── iteration
│   ├── inputs
│   ├── outputs
│   └── correctness
├── Flowcharts
│   ├── start/end
│   ├── process
│   ├── input/output
│   ├── decision
│   └── arrows
└── Trace Tables
    ├── dry run
    ├── variables
    ├── conditions
    ├── outputs
    └── logic errors
```

---

## 6. Bilingual Module Explanation

<LangBlock>
<template #cn>

### 中文说明

B1 Computational Thinking 的核心是：

```text
先想清楚问题，再设计解决步骤
```

很多学生一看到题目就想直接写 code。  
但真正考试和编程中，更重要的是先分析：

```text
problem 是什么
input 是什么
output 是什么
需要哪些步骤
哪里需要 if
哪里需要 loop
如何检查结果是否正确
```

Computational thinking 常见四个思想：

```text
decomposition = 把大问题拆成小问题
abstraction = 去掉不重要的细节
algorithm = 写出清楚的步骤
evaluation / tracing = 检查步骤是否正确
```

例如做一个 simple login system：

```text
1. get username and password
2. check whether they match stored values
3. if correct, allow access
4. otherwise, show error message
```

这里可以 decomposed 成：

```text
input user details
validate details
display result
```

也可以 abstract away 不重要细节，比如：

```text
button colour
font size
background image
```

因为这些不影响 login logic。

B1 学习时要重点掌握：

```text
how to explain
how to design steps
how to trace values
how to find errors
```

</template>

<template #en>

### English Explanation

The core idea of B1 Computational Thinking is:

```text
understand the problem first, then design the solution steps
```

Many students want to write code immediately after reading a question.  
But in exams and programming, it is more important to first analyse:

```text
what the problem is
what the input is
what the output is
what steps are needed
where if statements are needed
where loops are needed
how to check whether the result is correct
```

Common computational thinking ideas include:

```text
decomposition = breaking a big problem into smaller problems
abstraction = removing unnecessary details
algorithm = writing clear steps
evaluation / tracing = checking whether the steps work correctly
```

Example: a simple login system:

```text
1. get username and password
2. check whether they match stored values
3. if correct, allow access
4. otherwise, show error message
```

This can be decomposed into:

```text
input user details
validate details
display result
```

We can also abstract away unimportant details, such as:

```text
button colour
font size
background image
```

because they do not affect the login logic.

In B1, students should focus on:

```text
how to explain
how to design steps
how to trace values
how to find errors
```

</template>
</LangBlock>

---

## 7. Whole Computational Thinking Pattern

A useful problem-solving pattern is:

```text
read the problem
→ identify inputs
→ identify outputs
→ break problem into parts
→ remove unnecessary details
→ design algorithm
→ represent algorithm
→ trace/test algorithm
→ refine solution
```

### Example: Calculate Average Score

Problem:

```text
Input several scores and output the average.
```

Thinking process:

```text
input = scores
output = average
sub-problems = input scores, add scores, count scores, divide total by count, output average
abstraction = ignore student names if not needed
algorithm = step-by-step calculation
trace = test with sample scores
```

---

## 8. Computational Thinking Pattern

Computational thinking is a problem-solving approach that helps people design solutions that can be carried out by a computer.

### Main Ideas

```text
decomposition
abstraction
pattern recognition
algorithm design
testing and evaluation
```

### Exam Phrase

Computational thinking is a problem-solving approach that involves breaking down problems, focusing on relevant information, designing algorithms, and checking whether solutions work.

---

## 9. Decomposition Pattern

Decomposition means breaking a complex problem into smaller, more manageable parts.

### Example: Online Shop

A shopping system can be decomposed into:

```text
user login
product search
shopping cart
payment
delivery tracking
order history
```

### Why Useful?

```text
easier to understand
easier to design
easier to divide work
easier to test
easier to maintain
```

### Exam Phrase

Decomposition reduces complexity by breaking a large problem into smaller sub-problems that can be solved separately.

---

## 10. Abstraction Pattern

Abstraction means focusing on important details and ignoring unnecessary details.

### Example: Map App

A route planning algorithm needs:

```text
roads
distances
traffic
start location
destination
```

It probably does not need:

```text
building colours
shop window designs
tree shapes
billboard text
```

### Why Useful?

```text
simplifies the problem
reduces complexity
focuses on relevant data
makes algorithm design easier
```

### Exam Phrase

Abstraction removes unnecessary details so that the important parts of the problem can be focused on.

---

## 11. Algorithm Pattern

An algorithm is a step-by-step method for solving a problem.

### A Good Algorithm Should Be

```text
clear
ordered
finite
unambiguous
correct
efficient enough for the task
```

### Basic Structures

| Structure | Meaning | Example |
|---|---|---|
| Sequence | steps run in order | input, calculate, output |
| Selection | decision using condition | if score >= 50 |
| Iteration | repeated steps | repeat for each item |

### Exam Phrase

An algorithm is a finite sequence of clear, ordered instructions used to solve a problem.

---

## 12. Flowchart Pattern

A flowchart is a diagram that represents an algorithm.

### Common Symbols

| Symbol | Meaning |
|---|---|
| Oval | start/end |
| Rectangle | process |
| Parallelogram | input/output |
| Diamond | decision |
| Arrow | flow direction |

### Flowchart Strengths

```text
visual
easy to follow
shows decisions clearly
shows loops clearly
helps communicate algorithm logic
```

### Exam Phrase

A flowchart is a graphical representation of an algorithm using standard symbols and arrows to show the order of steps.

---

## 13. Trace Table Pattern

A trace table is used to dry-run an algorithm and track variable values.

### It Usually Shows

```text
iteration number
variable values
conditions
outputs
```

### Why Useful?

```text
predicts algorithm output
checks logic step by step
finds errors
tests loops
shows variable changes
```

### Exam Phrase

A trace table records the values of variables as an algorithm runs, helping check outputs and identify logic errors.

---

## 14. Inputs, Processes and Outputs

Many B1 problems can be analysed using IPO:

```text
Input → Process → Output
```

### Example: Area of Rectangle

```text
Input = length, width
Process = area = length * width
Output = area
```

### Example: Pass/Fail

```text
Input = score
Process = compare score with 50
Output = Pass or Fail
```

### Why Useful?

IPO makes it easier to design algorithms because students know what data enters, what happens to it, and what result is needed.

---

## 15. Sequence, Selection and Iteration

These are the three basic building blocks of algorithms.

### Sequence

Steps happen in order.

```text
input score
calculate percentage
output percentage
```

### Selection

A decision is made.

```text
if score >= 50 then
    output "Pass"
else
    output "Fail"
```

### Iteration

Steps repeat.

```text
for each score
    add score to total
```

### Exam Phrase

Algorithms are commonly built using sequence, selection, and iteration.

---

## 16. Pseudocode and Plain English

Students may represent algorithms using plain English or pseudocode.

### Plain English Example

```text
Ask the user to enter a score.
If the score is at least 50, display Pass.
Otherwise, display Fail.
```

### Pseudocode-style Example

```text
INPUT score
IF score >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

### Key Point

The algorithm must be clear enough that another person could follow it.

---

## 17. Common Exam-style Question Types

B1 questions often ask students to:

```text
define decomposition
define abstraction
describe an algorithm
identify inputs and outputs
complete a flowchart
draw a flowchart
trace an algorithm
complete a trace table
predict output
find a logic error
explain why a method is useful
compare two algorithm designs
```

### Common Skills

```text
read carefully
track variables
follow loops
check conditions
use correct vocabulary
```

---

## 18. Worked Example: Login System

### Problem

A user enters a username and password.  
If both match stored values, output `Access granted`.  
Otherwise, output `Access denied`.

### Inputs

```text
username
password
```

### Process

```text
compare username with stored username
compare password with stored password
use AND condition
```

### Output

```text
Access granted
Access denied
```

### Algorithm

```text
INPUT username
INPUT password

IF username = storedUsername AND password = storedPassword THEN
    OUTPUT "Access granted"
ELSE
    OUTPUT "Access denied"
ENDIF
```

### CT Ideas

```text
decomposition = input details, check details, display result
abstraction = ignore screen colour and button design
selection = if credentials match
```

---

## 19. Worked Example: Average Score

### Problem

Input five scores and output the average.

### Inputs

```text
five scores
```

### Process

```text
add scores together
divide by 5
```

### Output

```text
average
```

### Algorithm

```text
total ← 0

FOR count ← 1 TO 5
    INPUT score
    total ← total + score
ENDFOR

average ← total / 5
OUTPUT average
```

### Trace Example

For scores:

```text
10, 20, 30, 40, 50
```

Final:

```text
total = 150
average = 30
```

---

## 20. Worked Example: Find Largest Number

### Problem

Input several numbers and output the largest.

### Decomposition

```text
input first number
store it as largest
input remaining numbers
compare each number with largest
update largest if needed
output largest
```

### Algorithm

```text
INPUT firstNumber
largest ← firstNumber

FOR count ← 2 TO 5
    INPUT number
    IF number > largest THEN
        largest ← number
    ENDIF
ENDFOR

OUTPUT largest
```

### Key CT Idea

The problem becomes easier when decomposed into input, comparison, update, and output.

---

## 21. Worked Example: Search for a Name

### Problem

Given a list of names, check whether a target name exists.

### Inputs

```text
list of names
target name
```

### Output

```text
found / not found
```

### Algorithm

```text
found ← false

FOR each name IN names
    IF name = target THEN
        found ← true
    ENDIF
ENDFOR

IF found = true THEN
    OUTPUT "Found"
ELSE
    OUTPUT "Not found"
ENDIF
```

### Trace Focus

Track:

```text
current name
target
found
output
```

---

## 22. Scenario Answer Bank

### If Asked: “Define computational thinking”

```text
Computational thinking is a problem-solving approach that involves breaking down problems, focusing on relevant information, designing algorithms, and checking whether solutions work.
```

### If Asked: “Explain decomposition”

```text
Decomposition breaks a complex problem into smaller sub-problems, making the problem easier to understand, design, test, and maintain.
```

### If Asked: “Explain abstraction”

```text
Abstraction removes unnecessary details and focuses on the important information needed to solve the problem.
```

### If Asked: “Define algorithm”

```text
An algorithm is a finite sequence of clear, ordered instructions used to solve a problem.
```

### If Asked: “Explain trace table”

```text
A trace table records variable values step by step as an algorithm runs, helping predict outputs and find logic errors.
```

---

## 23. Common B1 Mistakes Overview

| Mistake | Topic | Fix |
|---|---|---|
| Starting to code before understanding problem | Problem solving | identify inputs/process/output first |
| Decomposition means deleting parts | Decomposition | it means breaking into smaller sub-problems |
| Abstraction means making things vague | Abstraction | it means keeping important details only |
| Algorithm must be code | Algorithms | it can be plain English, pseudocode, or flowchart |
| Algorithm can be infinite | Algorithms | it should be finite |
| Selection means repeating | Algorithm structures | selection is decision; iteration is repetition |
| Flowchart arrows are optional | Flowcharts | arrows show control flow |
| Diamond is for input/output | Flowcharts | diamond is decision |
| Trace table is only for final answer | Trace tables | it tracks values step by step |
| Loop variable is not updated | Trace tables | update variable each iteration |
| Conditions are ignored when tracing | Trace tables | evaluate every condition carefully |
| Output happens at every line | Trace tables | output only when OUTPUT instruction runs |

---

## 24. Assessment Focus

B1 questions may require students to:

- define computational thinking
- define decomposition and abstraction
- explain why decomposition or abstraction is useful
- identify inputs, processes, and outputs
- write a simple algorithm
- identify sequence, selection, and iteration
- complete pseudocode
- draw or complete a flowchart
- identify flowchart symbols
- follow arrows and decisions in a flowchart
- complete trace tables
- predict final output
- identify logic errors
- explain how an algorithm works
- improve an algorithm

---

## 25. Common Exam-style Command Words

| Command | What Students Should Do |
|---|---|
| State | Give a short answer |
| Identify | Name the correct item |
| Define | Give precise meaning |
| Describe | Give features or steps |
| Explain | Give reason and effect |
| Complete | Fill missing parts |
| Draw | Produce a diagram or flowchart |
| Trace | Follow an algorithm step by step |
| Determine | Work out the result |
| Suggest | Give a suitable method |
| Justify | Give reasons for choice |
| Compare | Give differences/similarities |

---

## 26. Mini Diagnostic Check

### Question 1

What is decomposition?

<details>
<summary>Answer</summary>

Decomposition is breaking a complex problem into smaller, more manageable sub-problems.

</details>

---

### Question 2

What is abstraction?

<details>
<summary>Answer</summary>

Abstraction is focusing on important details and ignoring unnecessary details.

</details>

---

### Question 3

What is an algorithm?

<details>
<summary>Answer</summary>

An algorithm is a finite sequence of clear, ordered instructions used to solve a problem.

</details>

---

### Question 4

What are the three basic algorithm structures?

<details>
<summary>Answer</summary>

Sequence, selection, and iteration.

</details>

---

### Question 5

What does a diamond represent in a flowchart?

<details>
<summary>Answer</summary>

A decision.

</details>

---

### Question 6

What does a trace table record?

<details>
<summary>Answer</summary>

It records variable values and outputs as an algorithm runs step by step.

</details>

---

### Question 7

In IPO, what does output mean?

<details>
<summary>Answer</summary>

The result produced by the algorithm or system.

</details>

---

### Question 8

Why is testing/tracing an algorithm useful?

<details>
<summary>Answer</summary>

It helps check whether the algorithm produces the expected output and helps find logic errors.

</details>

---

## 27. End-of-module Practice Plan

After finishing B1, students should complete:

| Practice Type | Purpose |
|---|---|
| 10 vocabulary questions | strengthen core definitions |
| 6 decomposition scenarios | break problems into sub-problems |
| 6 abstraction scenarios | identify important and irrelevant details |
| 8 IPO questions | identify input, process, output |
| 8 algorithm writing questions | practise step-by-step design |
| 8 sequence/selection/iteration questions | identify control structures |
| 5 flowchart completion tasks | practise symbols and control flow |
| 5 flowchart-to-algorithm tasks | interpret diagrams |
| 8 trace table tasks | track variables and outputs |
| 3 debugging tasks | find and correct logic errors |
| 3 extended scenario questions | full computational thinking reasoning |

---

## 28. Suggested Mini Project

### Algorithm Design Case Study

Choose one system:

```text
school grade calculator
login system
library book loan system
shopping discount calculator
quiz score system
temperature alert system
simple ATM menu
game score tracker
attendance checker
password strength checker
```

Students should produce:

```text
1. problem description
2. inputs
3. outputs
4. decomposition into sub-problems
5. abstraction: important and ignored details
6. algorithm in pseudocode or plain English
7. flowchart
8. trace table using sample data
9. one possible logic error
10. one improvement
11. one exam-style question with mark scheme answer
```

### Example: Shopping Discount Calculator

Students could identify:

```text
input = total price, membership status
output = final price
decomposition = input total, check membership, apply discount, output result
abstraction = ignore product colour and shelf position
selection = if member then discount
trace table = track total, discount, finalPrice
```

---

## 29. B1 Completion Checklist

Before moving to the next module, students should be able to:

- [ ] define computational thinking
- [ ] explain why computational thinking is useful
- [ ] define decomposition
- [ ] break a problem into sub-problems
- [ ] define abstraction
- [ ] identify important details
- [ ] ignore irrelevant details
- [ ] define algorithm
- [ ] explain properties of a good algorithm
- [ ] identify inputs, processes, and outputs
- [ ] write simple algorithm steps
- [ ] identify sequence
- [ ] identify selection
- [ ] identify iteration
- [ ] recognize flowchart symbols
- [ ] follow arrows in a flowchart
- [ ] draw a simple flowchart
- [ ] complete a flowchart
- [ ] complete a trace table
- [ ] trace variable values
- [ ] predict output
- [ ] identify simple logic errors
- [ ] explain how an algorithm works

---

## 30. One-page Module Summary

| Area | Key Idea |
|---|---|
| Computational thinking | Problem-solving approach for designing computer-solvable solutions |
| Decomposition | Break problem into smaller parts |
| Abstraction | Focus on important details and ignore unnecessary detail |
| Algorithm | Clear finite steps to solve a problem |
| Sequence | Steps run in order |
| Selection | Decision based on condition |
| Iteration | Repetition / loop |
| IPO | Input, Process, Output |
| Flowchart | Visual algorithm representation |
| Oval | Start/end |
| Rectangle | Process |
| Parallelogram | Input/output |
| Diamond | Decision |
| Arrow | Direction of flow |
| Trace table | Tracks variable values step by step |
| Dry run | Manually follow algorithm |
| Logic error | Algorithm runs but gives wrong result |
| Exam phrase | Computational thinking helps solve problems by decomposing them, abstracting details, designing algorithms, and testing the solution |

