# Algorithms

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define algorithm
- explain why algorithms are important in computational thinking
- describe the properties of a good algorithm
- identify inputs, processes, and outputs in an algorithm
- distinguish sequence, selection, and iteration
- write simple algorithms in plain English or pseudocode
- explain how variables are used in algorithms
- use conditions in selection statements
- use loops for repeated actions
- trace simple algorithms manually
- identify and correct simple logic errors
- explain how algorithms connect to flowcharts and programs
- apply algorithm design to school, shop, game, login, search, and calculation examples
- answer exam-style questions about algorithms

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Designing clear step-by-step solutions to problems |
| Connected topics | Decomposition, abstraction, flowcharts, trace tables, programming, pseudocode |
| Practical focus | Algorithm design, structure recognition, and dry-running |
| Exam relevance | Definitions, sequence/selection/iteration, pseudocode interpretation, algorithm writing, tracing, debugging |

::: tip Learning Focus
An algorithm is a finite sequence of clear, ordered instructions used to solve a problem. Most beginner algorithms are built from sequence, selection, and iteration.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Algorithm | 算法 | Step-by-step method for solving a problem |
| Instruction | 指令 | One step in an algorithm |
| Sequence | 顺序结构 | Steps executed in order |
| Selection | 选择结构 | Decision based on a condition |
| Iteration | 迭代 / 循环 | Repetition of steps |
| Input | 输入 | Data entered into an algorithm |
| Output | 输出 | Result produced by an algorithm |
| Process | 处理 | Operation performed on data |
| Variable | 变量 | Named storage location for a value |
| Assignment | 赋值 | Storing a value in a variable |
| Condition | 条件 | Expression that is true or false |
| Boolean | 布尔值 | True or false value |
| Loop | 循环 | Repeated block of instructions |
| Counter | 计数器 | Variable used to count repetitions |
| Accumulator | 累加器 | Variable used to build a running total |
| Pseudocode | 伪代码 | Code-like way to describe an algorithm |
| Dry run | 手动运行 | Manually following an algorithm step by step |
| Logic error | 逻辑错误 | Algorithm runs but gives wrong result |
| Finite | 有限的 | Has an end; does not continue forever |
| Unambiguous | 无歧义的 | Clear and not open to multiple meanings |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Algorithm（算法）** 是解决问题的一组清楚步骤。

例如要判断一个学生是否 pass：

```text
input score
if score >= 50 then output Pass
otherwise output Fail
```

这就是一个 algorithm。

一个好的 algorithm 应该：

```text
clear
ordered
finite
unambiguous
correct
```

意思是：

```text
每一步要清楚
步骤顺序要正确
不能无限运行
不能有模糊解释
能解决题目要求的问题
```

大部分 beginner algorithm 都由三种结构组成：

```text
sequence = 按顺序执行
selection = if / else 做决定
iteration = loop 重复执行
```

例如计算 5 个成绩的 average：

```text
total ← 0

FOR count ← 1 TO 5
    INPUT score
    total ← total + score
ENDFOR

average ← total / 5
OUTPUT average
```

这里有：

```text
sequence: total ← 0, average ← total / 5
iteration: FOR loop
input/output: INPUT score, OUTPUT average
```

简单来说：

```text
algorithm = clear steps to solve a problem
```

</template>

<template #en>

### English Explanation

An **algorithm** is a clear set of steps for solving a problem.

For example, to decide whether a student passes:

```text
input score
if score >= 50 then output Pass
otherwise output Fail
```

This is an algorithm.

A good algorithm should be:

```text
clear
ordered
finite
unambiguous
correct
```

This means:

```text
each step is clear
steps are in the correct order
it does not run forever
it is not vague
it solves the required problem
```

Most beginner algorithms are built from three structures:

```text
sequence = steps run in order
selection = if / else decision
iteration = loop / repetition
```

Example: calculate the average of 5 scores:

```text
total ← 0

FOR count ← 1 TO 5
    INPUT score
    total ← total + score
ENDFOR

average ← total / 5
OUTPUT average
```

This includes:

```text
sequence: total ← 0, average ← total / 5
iteration: FOR loop
input/output: INPUT score, OUTPUT average
```

In simple terms:

```text
algorithm = clear steps to solve a problem
```

</template>
</LangBlock>

---

## 5. What Is an Algorithm?

An algorithm is a finite sequence of clear, ordered instructions used to solve a problem.

### Simple Definition

```text
An algorithm is a step-by-step method for solving a problem.
```

### Example

Problem:

```text
Calculate the area of a rectangle.
```

Algorithm:

```text
INPUT length
INPUT width
area ← length * width
OUTPUT area
```

::: tip Exam Phrase
An algorithm is a finite sequence of clear, ordered instructions used to solve a problem.
:::

---

## 6. Why Algorithms Are Important

Algorithms are important because computers need precise instructions.

### Benefits

| Benefit | Explanation |
|---|---|
| Clear solution | shows exactly how to solve the problem |
| Easier programming | algorithm can be converted into code |
| Easier testing | steps can be checked one by one |
| Easier debugging | errors can be found in specific steps |
| Easier communication | other people can understand the solution |
| Reusability | algorithm ideas can be reused in similar problems |
| Efficiency | steps can be improved to save time or memory |

### Key Idea

Before writing code, students should know the algorithm.

---

## 7. Properties of a Good Algorithm

A good algorithm should be:

```text
clear
ordered
finite
unambiguous
correct
efficient enough
```

### Explanation

| Property | Meaning |
|---|---|
| Clear | each step is understandable |
| Ordered | steps are in the correct sequence |
| Finite | the algorithm eventually ends |
| Unambiguous | each instruction has one clear meaning |
| Correct | produces the expected result |
| Efficient enough | solves the problem without unnecessary work |

### Poor Algorithm Example

```text
do the maths
make it work
output the answer
```

This is too vague.

### Better Algorithm Example

```text
INPUT mark1
INPUT mark2
total ← mark1 + mark2
OUTPUT total
```

---

## 8. Input, Process, Output

Many algorithms can be planned using IPO:

```text
Input → Process → Output
```

### Example: Rectangle Area

| Part | Detail |
|---|---|
| Input | length, width |
| Process | area = length × width |
| Output | area |

### Example: Pass/Fail

| Part | Detail |
|---|---|
| Input | score |
| Process | compare score with 50 |
| Output | Pass or Fail |

### Exam Tip

Before writing an algorithm, identify the input and output first.

---

## 9. Algorithm Building Blocks

Most beginner algorithms use three main structures.

| Structure | Meaning | Example |
|---|---|---|
| Sequence | steps run in order | input, calculate, output |
| Selection | decision based on condition | IF score >= 50 |
| Iteration | repeated steps | FOR each score |

### Strong Exam Phrase

Algorithms are commonly designed using sequence, selection, and iteration.

---

## 10. Sequence

Sequence means instructions are executed in order.

### Example

```text
INPUT length
INPUT width
area ← length * width
OUTPUT area
```

The order matters.

If the algorithm tries to output `area` before calculating it, the result is wrong.

### Key Idea

Sequence is the simplest control structure.

---

## 11. Selection

Selection means the algorithm chooses between different paths based on a condition.

### Example

```text
INPUT score

IF score >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

### Condition

```text
score >= 50
```

This is either true or false.

### Common Selection Words

```text
IF
THEN
ELSE
ELSE IF
ENDIF
```

### Key Idea

Selection is used when the algorithm needs to make a decision.

---

## 12. Iteration

Iteration means repeating a set of instructions.

### Example

```text
FOR count ← 1 TO 5
    OUTPUT count
ENDFOR
```

This outputs:

```text
1
2
3
4
5
```

### Common Loop Types

```text
FOR loop
WHILE loop
REPEAT UNTIL loop
```

### Key Idea

Iteration is useful when the same action must happen many times.

---

## 13. Variables

A variable is a named storage location for a value.

### Example

```text
score ← 75
```

This stores `75` in the variable `score`.

### Common Uses

```text
store input
store calculated result
count repetitions
store running total
store true/false flag
```

### Examples

```text
total ← 0
count ← 1
found ← false
largest ← firstNumber
```

---

## 14. Assignment

Assignment stores a value in a variable.

### Symbol

This site uses:

```text
←
```

Example:

```text
total ← total + score
```

This means:

```text
new total = old total + score
```

### Important

Assignment is not the same as mathematical equality.

If:

```text
total = 10
score = 5
```

then:

```text
total ← total + score
```

makes:

```text
total = 15
```

---

## 15. Conditions and Boolean Logic

A condition is an expression that is true or false.

### Examples

```text
score >= 50
age < 18
password = storedPassword
total > 100
found = true
```

### Operators

| Operator | Meaning |
|---|---|
| `=` | equal to |
| `<>` | not equal to |
| `>` | greater than |
| `<` | less than |
| `>=` | greater than or equal to |
| `<=` | less than or equal to |
| `AND` | both conditions true |
| `OR` | at least one condition true |
| `NOT` | reverses true/false |

### Example

```text
IF username = storedUsername AND password = storedPassword THEN
    OUTPUT "Access granted"
ENDIF
```

Both conditions must be true.

---

## 16. Counters

A counter is a variable used to count repetitions.

### Example

```text
count ← 0

WHILE count < 5
    OUTPUT count
    count ← count + 1
ENDWHILE
```

### Common Use

```text
count number of students
count number of attempts
count number of items
count loop repetitions
```

### Important

If the counter is not updated, the loop may never end.

---

## 17. Accumulators

An accumulator stores a running total.

### Example

```text
total ← 0

FOR count ← 1 TO 5
    INPUT score
    total ← total + score
ENDFOR

OUTPUT total
```

### Common Use

```text
total marks
total price
total distance
total number of points
```

### Memory

```text
counter = counts how many
accumulator = adds up values
```

---

## 18. Flags

A flag is a Boolean variable used to remember whether something has happened.

### Example

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

### Common Use

```text
found / not found
valid / invalid
loggedIn / not loggedIn
gameOver / not gameOver
```

---

## 19. FOR Loops

A FOR loop repeats a known number of times.

### Example

```text
FOR count ← 1 TO 10
    OUTPUT count
ENDFOR
```

### Use FOR When

```text
you know how many times to repeat
you need to process a fixed number of items
you need a counter
```

### Example: Input 5 Scores

```text
total ← 0

FOR count ← 1 TO 5
    INPUT score
    total ← total + score
ENDFOR
```

---

## 20. WHILE Loops

A WHILE loop repeats while a condition is true.

### Example

```text
INPUT password

WHILE password <> "secret"
    OUTPUT "Try again"
    INPUT password
ENDWHILE

OUTPUT "Access granted"
```

### Use WHILE When

```text
you do not know how many repetitions are needed
the loop may run zero times
the condition should be checked before repeating
```

### Important

The loop condition must eventually become false, or the loop may be infinite.

---

## 21. REPEAT UNTIL Loops

A REPEAT UNTIL loop repeats until a condition becomes true.

### Example

```text
REPEAT
    INPUT password
UNTIL password = "secret"

OUTPUT "Access granted"
```

### Use REPEAT UNTIL When

```text
the loop must run at least once
the condition is checked after the loop body
```

### Difference from WHILE

| WHILE | REPEAT UNTIL |
|---|---|
| checks condition before loop body | checks condition after loop body |
| may run zero times | runs at least once |

---

## 22. Algorithm Design Method

A practical method:

```text
1. Read the problem carefully.
2. Identify the input.
3. Identify the output.
4. Break the problem into smaller steps.
5. Decide where selection is needed.
6. Decide where iteration is needed.
7. Write clear ordered instructions.
8. Dry-run using sample data.
9. Fix errors and improve clarity.
```

### Helpful Questions

```text
What data is entered?
What result is required?
What calculations are needed?
What decisions are needed?
What repeats?
What variables are needed?
How can I test the algorithm?
```

---

## 23. Plain English vs Pseudocode

Algorithms can be written in plain English or pseudocode.

### Plain English

```text
Ask the user to enter a score.
If the score is at least 50, display Pass.
Otherwise, display Fail.
```

### Pseudocode

```text
INPUT score

IF score >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

### Key Point

Both are acceptable ways to describe logic, but pseudocode is usually more precise.

---

## 24. Worked Example: Pass or Fail

### Problem

Input a score. Output `Pass` if score is at least 50. Otherwise output `Fail`.

### IPO

| Part | Detail |
|---|---|
| Input | score |
| Process | compare score with 50 |
| Output | Pass or Fail |

### Algorithm

```text
INPUT score

IF score >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

### Structures

```text
sequence = input then decision then output
selection = IF score >= 50
```

---

## 25. Worked Example: Calculate Average

### Problem

Input five scores and output the average.

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

### Variables

```text
total = accumulator
count = counter
score = input value
average = calculated output
```

### Trace with Scores 10, 20, 30, 40, 50

```text
final total = 150
average = 30
```

---

## 26. Worked Example: Find Largest Number

### Problem

Input five numbers and output the largest.

### Algorithm

```text
INPUT number
largest ← number

FOR count ← 2 TO 5
    INPUT number
    IF number > largest THEN
        largest ← number
    ENDIF
ENDFOR

OUTPUT largest
```

### Key Idea

The first number is used as the starting largest value.  
Each new number is compared with the current largest.

### Common Mistake

Setting largest to 0 may fail if all numbers are negative.

---

## 27. Worked Example: Count Passed Students

### Problem

Input 10 scores and count how many are at least 50.

### Algorithm

```text
passCount ← 0

FOR count ← 1 TO 10
    INPUT score
    IF score >= 50 THEN
        passCount ← passCount + 1
    ENDIF
ENDFOR

OUTPUT passCount
```

### Variables

```text
passCount = accumulator/counter for passed students
count = loop counter
score = input
```

### Structures

```text
iteration = FOR loop
selection = IF score >= 50
```

---

## 28. Worked Example: Password Attempts

### Problem

Allow a user three attempts to enter the correct password.

### Algorithm

```text
correctPassword ← "secret"
attempts ← 0
loggedIn ← false

WHILE attempts < 3 AND loggedIn = false
    INPUT password
    attempts ← attempts + 1

    IF password = correctPassword THEN
        loggedIn ← true
    ELSE
        OUTPUT "Incorrect password"
    ENDIF
ENDWHILE

IF loggedIn = true THEN
    OUTPUT "Access granted"
ELSE
    OUTPUT "Access denied"
ENDIF
```

### Key Ideas

```text
attempts = counter
loggedIn = flag
WHILE loop = repeats until success or attempts finish
```

---

## 29. Worked Example: Linear Search

### Problem

Search a list for a target item.

### Algorithm

```text
found ← false

FOR each item IN list
    IF item = target THEN
        found ← true
    ENDIF
ENDFOR

IF found = true THEN
    OUTPUT "Found"
ELSE
    OUTPUT "Not found"
ENDIF
```

### Improvement

The algorithm can stop early when the item is found.

```text
found ← false
index ← 1

WHILE index <= length(list) AND found = false
    IF list[index] = target THEN
        found ← true
    ENDIF
    index ← index + 1
ENDWHILE
```

---

## 30. Worked Example: Shopping Discount

### Problem

Input total price and membership status. Members get 10% discount.

### Algorithm

```text
INPUT totalPrice
INPUT isMember

IF isMember = true THEN
    discount ← totalPrice * 0.10
ELSE
    discount ← 0
ENDIF

finalPrice ← totalPrice - discount
OUTPUT finalPrice
```

### Structures

```text
input = totalPrice, isMember
selection = member or not member
output = finalPrice
```

---

## 31. Worked Example: Simple Game Score

### Problem

A player gains 10 points for each coin collected. Input number of coins and output score.

### Algorithm

```text
INPUT coins
score ← coins * 10
OUTPUT score
```

### Extended Version

If score is at least 100, output `Bonus`.

```text
INPUT coins
score ← coins * 10
OUTPUT score

IF score >= 100 THEN
    OUTPUT "Bonus"
ENDIF
```

---

## 32. Dry Running an Algorithm

A dry run means manually following an algorithm step by step.

### Why Useful?

```text
check the output
find logic errors
understand how variables change
test loop behaviour
prepare for trace tables
```

### Example

Algorithm:

```text
x ← 3
x ← x + 2
OUTPUT x
```

Dry run:

```text
x = 3
x = 5
output = 5
```

### Link

Dry running often uses a trace table.

---

## 33. Logic Errors

A logic error happens when an algorithm runs but gives the wrong result.

### Example

Problem:

```text
Calculate average of 5 scores.
```

Wrong algorithm:

```text
average ← total / 4
```

It runs, but the result is wrong.

### Common Logic Errors

```text
wrong comparison operator
wrong loop boundary
variable not initialized
counter not updated
wrong calculation
output in wrong place
condition reversed
```

### Key Idea

Trace tables help find logic errors.

---

## 34. Efficiency Preview

Efficiency is about how much time or memory an algorithm uses.

### Simple Example

Searching a list:

```text
searching every item even after target is found
```

may do unnecessary work.

A more efficient version stops when the target is found.

### Student-Level Understanding

At this level, students should know that algorithms can be improved by removing unnecessary steps.

### Important

Correctness comes first.  
An efficient wrong algorithm is still wrong.

---

## 35. Algorithm to Flowchart Link

An algorithm can be represented as a flowchart.

### Algorithm

```text
INPUT score

IF score >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

### Flowchart Parts

```text
Start
Input score
Decision: score >= 50?
Yes → Output Pass
No → Output Fail
End
```

### Key Idea

Flowcharts visually show the same logic as the algorithm.

---

## 36. Scenario Answer Bank

### If Asked: “Define algorithm”

```text
An algorithm is a finite sequence of clear, ordered instructions used to solve a problem.
```

### If Asked: “Describe a good algorithm”

```text
A good algorithm should be clear, ordered, finite, unambiguous, correct, and efficient enough for the task.
```

### If Asked: “Explain sequence, selection, and iteration”

```text
Sequence means steps are executed in order. Selection means a decision is made using a condition. Iteration means a set of steps is repeated.
```

### If Asked: “Explain why dry running is useful”

```text
Dry running manually follows an algorithm step by step, helping predict outputs and find logic errors.
```

### If Asked: “Write an algorithm”

Use this pattern:

```text
INPUT required data
PROCESS data using calculations/conditions/loops
OUTPUT required result
```

---

## 37. Common Misconceptions

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Algorithm must be written in a programming language | Can be plain English, pseudocode, or flowchart | algorithm is logic, not only code |
| Algorithm can be vague | Computer instructions must be clear | make steps precise |
| Algorithm can run forever | A good algorithm should be finite | it should end |
| Sequence means choice | Sequence means order | selection means choice |
| Selection means loop | Selection is decision | iteration is loop |
| Iteration means one step only | Iteration repeats steps | loop body runs multiple times |
| `total ← total + score` is impossible math | It is assignment | new total uses old total |
| Counter and accumulator are the same | counter counts, accumulator totals | different purposes |
| Testing only means running final code | algorithms can be dry-run first | trace before coding |
| Logic error means syntax error | logic error gives wrong result | syntax error prevents running |

---

## 38. Guided Practice

### Practice 1: Define

What is an algorithm?

<details>
<summary>Suggested Answer</summary>

An algorithm is a finite sequence of clear, ordered instructions used to solve a problem.

</details>

---

### Practice 2: Structure

What structure is used here?

```text
IF score >= 50 THEN
    OUTPUT "Pass"
ENDIF
```

<details>
<summary>Suggested Answer</summary>

Selection, because the algorithm makes a decision using a condition.

</details>

---

### Practice 3: Loop

What structure is used here?

```text
FOR count ← 1 TO 10
    OUTPUT count
ENDFOR
```

<details>
<summary>Suggested Answer</summary>

Iteration, because the instructions are repeated.

</details>

---

### Practice 4: Assignment

If `total` is 10 and `score` is 5, what is `total` after this?

```text
total ← total + score
```

<details>
<summary>Suggested Answer</summary>

15.

</details>

---

### Practice 5: Logic Error

A program calculates the average of 5 scores using `average ← total / 4`. What is the error?

<details>
<summary>Suggested Answer</summary>

The algorithm divides by 4 instead of 5, so the average will be wrong.

</details>

---

## 39. Independent Practice

### Question 1

Define algorithm.

### Question 2

List four properties of a good algorithm.

### Question 3

Explain sequence, selection, and iteration.

### Question 4

Write an algorithm to input two numbers and output their sum.

### Question 5

Write an algorithm to input a score and output `Pass` or `Fail`.

### Question 6

Write an algorithm to input 5 numbers and output their total.

### Question 7

Write an algorithm to input 5 numbers and output the largest.

### Question 8

Explain the difference between a counter and an accumulator.

### Question 9

Explain why dry running is useful.

### Question 10

Give two examples of logic errors in algorithms.

---

## 40. Exam-style Questions

### Question 1 [4 marks]

Define algorithm and state two properties of a good algorithm.

<details>
<summary>Mark Scheme Style Answer</summary>

An algorithm is a finite sequence of clear, ordered instructions used to solve a problem. A good algorithm should be unambiguous so each instruction has one clear meaning, and finite so it eventually stops. It should also be correct and ordered.

</details>

---

### Question 2 [5 marks]

Explain the difference between sequence, selection, and iteration.

<details>
<summary>Mark Scheme Style Answer</summary>

Sequence means instructions are executed in order. Selection means a decision is made based on a condition, for example using IF and ELSE. Iteration means a set of instructions is repeated, for example using a FOR or WHILE loop.

</details>

---

### Question 3 [6 marks]

Write an algorithm that inputs a mark and outputs `Pass` if the mark is 50 or above, otherwise outputs `Fail`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
INPUT mark

IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

</details>

---

### Question 4 [6 marks]

Write an algorithm that inputs five scores and outputs the total.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
total ← 0

FOR count ← 1 TO 5
    INPUT score
    total ← total + score
ENDFOR

OUTPUT total
```

</details>

---

### Question 5 [6 marks]

An algorithm should calculate the average of 10 values, but the final line is `average ← total / 9`. Explain the error and how to fix it.

<details>
<summary>Mark Scheme Style Answer</summary>

The algorithm has a logic error because it divides the total by 9 even though there are 10 values. This gives an incorrect average. The line should be changed to `average ← total / 10`.

</details>

---

## 41. Classroom Activity

### Activity 1: Structure Sort

Students classify each example as sequence, selection, or iteration.

Examples:

```text
input length, input width, calculate area
if score >= 50 then pass
repeat until password is correct
for each item in cart
output total
```

---

### Activity 2: Algorithm Repair

Give students faulty algorithms:

```text
average divided by wrong number
counter not updated
output inside loop by mistake
wrong comparison operator
variable not initialized
```

Students identify and fix the logic error.

---

### Activity 3: Algorithm to Flowchart

Students convert simple algorithms into flowchart descriptions:

```text
pass/fail
discount calculator
password attempts
average score
largest number
```

---

## 42. Homework

### Homework Part A: Concept Explanation

In 6-8 sentences, explain what an algorithm is and why sequence, selection, and iteration are important.

---

### Homework Part B: Algorithm Writing

Write algorithms for:

```text
1. input two numbers and output the larger one
2. input 10 scores and output the average
3. input a password until it matches the stored password
4. input item prices until 0 is entered, then output the total
```

---

### Homework Part C: Dry Run

Dry-run this algorithm with inputs `4`, `7`, `2`:

```text
total ← 0

FOR count ← 1 TO 3
    INPUT number
    total ← total + number
ENDFOR

OUTPUT total
```

---

### Homework Part D: Misconception Correction

Correct these statements:

```text
An algorithm must be written in Java or Python.
Selection means repeating steps.
Iteration means choosing between two paths.
A good algorithm can be infinite.
A logic error is the same as a syntax error.
```

---

## 43. One-page Revision Summary

| Point | Summary |
|---|---|
| Algorithm | Finite sequence of clear, ordered instructions |
| Good algorithm | clear, ordered, finite, unambiguous, correct |
| Input | Data entering the algorithm |
| Process | Operations performed on data |
| Output | Result produced |
| Sequence | Steps executed in order |
| Selection | Decision based on condition |
| Iteration | Repetition / loop |
| Variable | Named storage for value |
| Assignment | Store value in variable |
| Condition | True/false expression |
| Counter | Counts repetitions/items |
| Accumulator | Stores running total |
| Flag | Boolean variable remembering state |
| FOR loop | Known number of repetitions |
| WHILE loop | Repeats while condition is true |
| REPEAT UNTIL | Repeats until condition becomes true |
| Dry run | Manually follow algorithm |
| Logic error | Algorithm runs but gives wrong result |
| Exam phrase | Algorithms use sequence, selection, and iteration to describe clear steps for solving a problem |

---

## 44. Quick Self-test

Before moving on, students should be able to answer these:

1. What is an algorithm?
2. Why must an algorithm be finite?
3. What is sequence?
4. What is selection?
5. What is iteration?
6. What is a variable?
7. What does assignment mean?
8. What is the difference between a counter and an accumulator?
9. Why is dry running useful?
10. What is a logic error?
