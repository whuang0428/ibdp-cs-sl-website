# B1 Practice

## 1. Page Purpose

This page provides exam-style practice for **B1 Computational Thinking**.

It focuses on:

```text
decomposition
abstraction
algorithm design
sequence
selection
iteration
flowcharts
trace tables
logic errors
dry runs
input-process-output analysis
```

The goal is to help students move from understanding concepts to writing answers that match mark scheme expectations.

---

## 2. B1 Practice Targets

By the end of this practice page, students should be able to:

- define decomposition, abstraction, algorithm, flowchart, and trace table
- identify inputs, processes, and outputs in a problem
- decompose a scenario into suitable sub-problems
- identify relevant and irrelevant details using abstraction
- write simple algorithms in pseudocode or clear structured English
- identify sequence, selection, and iteration
- complete trace tables accurately
- predict algorithm outputs
- identify simple logic errors
- describe flowcharts using standard symbols
- convert between pseudocode and flowchart descriptions
- write answers using mark scheme style phrases

---

## 3. Key Mark Scheme Phrases

Use these phrases in written answers.

| Topic | Mark Scheme Style Phrase |
|---|---|
| Computational thinking | problem-solving approach used to design solutions that can be carried out by a computer |
| Decomposition | breaking a complex problem into smaller, more manageable sub-problems |
| Abstraction | focusing on important details and ignoring unnecessary details |
| Algorithm | finite sequence of clear, ordered instructions used to solve a problem |
| Sequence | instructions executed in order |
| Selection | decision made based on a condition |
| Iteration | repeated execution of instructions |
| Flowchart | graphical representation of an algorithm using standard symbols and arrows |
| Trace table | records variable values as an algorithm runs |
| Dry run | manually following an algorithm step by step |
| Logic error | algorithm runs but gives an incorrect result |
| Counter | variable used to count repetitions or items |
| Accumulator | variable used to store a running total |
| Flag | Boolean variable used to remember whether something has happened |

---

## 4. Quick Revision Map

```text
B1 Computational Thinking
├── Decomposition
│   ├── break problem into sub-problems
│   ├── reduce complexity
│   ├── support teamwork
│   └── support testing/debugging
├── Abstraction
│   ├── identify relevant details
│   ├── ignore irrelevant details
│   ├── simplify problem
│   └── support algorithm design
├── Algorithms
│   ├── sequence
│   ├── selection
│   ├── iteration
│   ├── variables
│   ├── counters
│   ├── accumulators
│   └── flags
├── Flowcharts
│   ├── oval = start/end
│   ├── rectangle = process
│   ├── parallelogram = input/output
│   ├── diamond = decision
│   └── arrow = flow direction
└── Trace Tables
    ├── dry run
    ├── track variables
    ├── evaluate conditions
    ├── record outputs
    └── find logic errors
```

---

## 5. Exam Technique for B1

### For Definition Questions

Use precise wording.

Weak:

```text
Decomposition is making things easier.
```

Strong:

```text
Decomposition is breaking a complex problem into smaller, more manageable sub-problems.
```

---

### For Scenario Questions

Use the scenario words.

Question:

```text
A school wants to create an attendance system. Decompose the system.
```

Strong answer:

```text
The attendance system can be decomposed into storing student records, recording attendance, checking absences, generating attendance reports, and notifying parents.
```

---

### For Algorithm Questions

Use a clear structure:

```text
INPUT
INITIALIZE
IF / LOOP
UPDATE
OUTPUT
```

---

### For Trace Table Questions

Always:

```text
record initial values
use inputs in order
update variables after each assignment
evaluate conditions carefully
record output only when OUTPUT runs
```

---

## 6. Practice Set 1: Core Definitions

### Question 1 [2 marks]

Define decomposition.

<details>
<summary>Mark Scheme Style Answer</summary>

Decomposition is breaking a complex problem into smaller, more manageable sub-problems. This makes the problem easier to understand, solve, test, and maintain.

</details>

---

### Question 2 [2 marks]

Define abstraction.

<details>
<summary>Mark Scheme Style Answer</summary>

Abstraction is focusing on the important details of a problem and ignoring unnecessary details. This reduces complexity and helps design a suitable solution.

</details>

---

### Question 3 [2 marks]

Define algorithm.

<details>
<summary>Mark Scheme Style Answer</summary>

An algorithm is a finite sequence of clear, ordered instructions used to solve a problem.

</details>

---

### Question 4 [2 marks]

Define trace table.

<details>
<summary>Mark Scheme Style Answer</summary>

A trace table records the values of variables as an algorithm runs. It helps predict outputs and identify logic errors.

</details>

---

### Question 5 [2 marks]

Define flowchart.

<details>
<summary>Mark Scheme Style Answer</summary>

A flowchart is a graphical representation of an algorithm using standard symbols and arrows to show the order of steps and decisions.

</details>

---

## 7. Practice Set 2: Decomposition

### Question 1 [4 marks]

A library wants to create a system to manage books, members, loans, and returns.

Decompose this system into four suitable sub-problems.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible sub-problems:

```text
store book records
store member records
record book loans
record book returns
check book availability
calculate overdue fines
generate loan reports
```

Award marks for suitable, clear sub-problems related to the library system.

</details>

---

### Question 2 [4 marks]

Explain two benefits of decomposition when developing a large software system.

<details>
<summary>Mark Scheme Style Answer</summary>

Decomposition reduces complexity because a large problem is broken into smaller sub-problems that are easier to understand and solve. It also supports testing and debugging because each sub-problem can be tested separately, making errors easier to locate.

</details>

---

### Question 3 [5 marks]

A game includes player movement, scoring, enemies, levels, and a menu. Explain how decomposition helps design this game.

<details>
<summary>Mark Scheme Style Answer</summary>

The game can be decomposed into sub-problems such as player movement, scoring, enemy behaviour, level loading, collision detection, and menu control. This makes the game easier to design because each part can be considered separately. It also helps testing because the scoring system or movement system can be tested without running the whole game. Different team members could also work on different parts.

</details>

---

## 8. Practice Set 3: Abstraction

### Question 1 [4 marks]

A route planning app calculates the best route between two locations.

Identify two relevant details and two irrelevant details.

<details>
<summary>Mark Scheme Style Answer</summary>

Relevant details may include start location, destination, roads, distance, traffic, road closures, and travel mode. Irrelevant details may include building colour, shop window design, tree shape, or billboard text because these do not affect route calculation.

</details>

---

### Question 2 [4 marks]

Explain how abstraction helps when designing a login algorithm.

<details>
<summary>Mark Scheme Style Answer</summary>

Abstraction helps by focusing only on details needed for login, such as entered username, entered password, stored username, stored password, and whether they match. Irrelevant details such as button colour, background image, or font style can be ignored because they do not affect the login logic.

</details>

---

### Question 3 [4 marks]

Distinguish between decomposition and abstraction.

<details>
<summary>Mark Scheme Style Answer</summary>

Decomposition breaks a complex problem into smaller sub-problems. Abstraction reduces complexity by focusing on important details and ignoring unnecessary details. For example, decomposing an online shop gives login, cart, payment, and delivery, while abstraction ignores page background colour if it does not affect checkout logic.

</details>

---

## 9. Practice Set 4: Input, Process, Output

### Question 1 [3 marks]

A program inputs length and width and outputs the area of a rectangle.

Identify the input, process, and output.

<details>
<summary>Mark Scheme Style Answer</summary>

Input:

```text
length and width
```

Process:

```text
area = length * width
```

Output:

```text
area
```

</details>

---

### Question 2 [3 marks]

A program inputs a mark and outputs `Pass` if the mark is at least 50, otherwise `Fail`.

Identify the input, process, and output.

<details>
<summary>Mark Scheme Style Answer</summary>

Input:

```text
mark
```

Process:

```text
compare mark with 50
```

Output:

```text
Pass or Fail
```

</details>

---

### Question 3 [4 marks]

A shop program inputs item prices until `0` is entered, then outputs the total price.

Identify the input, process, output, and algorithm structure used.

<details>
<summary>Mark Scheme Style Answer</summary>

Input:

```text
item prices
```

Process:

```text
add each price to a running total until 0 is entered
```

Output:

```text
total price
```

Structure:

```text
iteration, because prices are repeatedly input
```

</details>

---

## 10. Practice Set 5: Sequence, Selection and Iteration

### Question 1 [3 marks]

Define sequence, selection, and iteration.

<details>
<summary>Mark Scheme Style Answer</summary>

Sequence means instructions are executed in order. Selection means a decision is made based on a condition, usually using IF/ELSE. Iteration means a set of instructions is repeated, usually using a loop.

</details>

---

### Question 2 [3 marks]

Identify the structure used in each example.

```text
A. INPUT score; OUTPUT score
B. IF score >= 50 THEN OUTPUT "Pass"
C. FOR count ← 1 TO 10 OUTPUT count
```

<details>
<summary>Mark Scheme Style Answer</summary>

A = sequence  
B = selection  
C = iteration

</details>

---

### Question 3 [4 marks]

Explain why iteration is useful in an algorithm that inputs 100 test scores.

<details>
<summary>Mark Scheme Style Answer</summary>

Iteration is useful because the same input and processing steps must be repeated for each of the 100 test scores. A loop avoids writing the same instructions 100 times and makes the algorithm shorter, clearer, and easier to maintain.

</details>

---

## 11. Practice Set 6: Algorithm Writing

### Question 1 [4 marks]

Write an algorithm to input two numbers and output their sum.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
INPUT num1
INPUT num2
sum ← num1 + num2
OUTPUT sum
```

</details>

---

### Question 2 [5 marks]

Write an algorithm to input a score and output `Pass` if the score is at least 50, otherwise output `Fail`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
INPUT score

IF score >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

</details>

---

### Question 3 [6 marks]

Write an algorithm to input five numbers and output their total.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
total ← 0

FOR count ← 1 TO 5
    INPUT number
    total ← total + number
ENDFOR

OUTPUT total
```

</details>

---

### Question 4 [6 marks]

Write an algorithm to input five numbers and output the largest number.

<details>
<summary>Mark Scheme Style Answer</summary>

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

</details>

---

### Question 5 [7 marks]

Write an algorithm that allows a user up to three attempts to enter the correct password `"secret"`.

<details>
<summary>Mark Scheme Style Answer</summary>

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

</details>

---

## 12. Practice Set 7: Flowchart Symbols

### Question 1 [5 marks]

State the purpose of each flowchart symbol:

```text
oval
rectangle
parallelogram
diamond
arrow
```

<details>
<summary>Mark Scheme Style Answer</summary>

Oval = Start or End  
Rectangle = process, calculation, or assignment  
Parallelogram = input or output  
Diamond = decision or condition  
Arrow = direction of control flow

</details>

---

### Question 2 [4 marks]

Describe a flowchart for a pass/fail algorithm.

<details>
<summary>Mark Scheme Style Answer</summary>

The flowchart starts with Start, then inputs the score using an input/output symbol. A decision diamond checks `score >= 50?`. The Yes branch outputs `Pass`; the No branch outputs `Fail`. Both branches then connect to End.

</details>

---

### Question 3 [4 marks]

Explain how a loop is shown in a flowchart.

<details>
<summary>Mark Scheme Style Answer</summary>

A loop is shown using a decision symbol and an arrow that returns to an earlier step if the loop condition is still true. When the condition becomes false, the flow follows the exit branch and continues after the loop.

</details>

---

## 13. Practice Set 8: Trace Tables

### Question 1 [4 marks]

Trace this algorithm.

```text
x ← 2
x ← x + 5
x ← x * 3
OUTPUT x
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Step | x | Output |
|---:|---:|---|
| 1 | 2 |  |
| 2 | 7 |  |
| 3 | 21 |  |
| 4 | 21 | 21 |

Final output:

```text
21
```

</details>

---

### Question 2 [5 marks]

Trace this algorithm with inputs `4`, `7`, and `2`.

```text
total ← 0

FOR count ← 1 TO 3
    INPUT number
    total ← total + number
ENDFOR

OUTPUT total
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | count | number | total | Output |
|---:|---:|---:|---:|---|
| Start |  |  | 0 |  |
| 1 | 1 | 4 | 4 |  |
| 2 | 2 | 7 | 11 |  |
| 3 | 3 | 2 | 13 |  |
| End |  |  | 13 | 13 |

Final output:

```text
13
```

</details>

---

### Question 3 [6 marks]

Trace this algorithm and state the output.

```text
count ← 1

WHILE count <= 4
    OUTPUT count * 2
    count ← count + 1
ENDWHILE
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | count | count * 2 | Output |
|---:|---:|---:|---|
| 1 | 1 | 2 | 2 |
| 2 | 2 | 4 | 4 |
| 3 | 3 | 6 | 6 |
| 4 | 4 | 8 | 8 |
| End | 5 |  |  |

Final output:

```text
2
4
6
8
```

</details>

---

### Question 4 [6 marks]

Trace this algorithm with inputs `40`, `55`, `70`, `20`, `90`.

```text
passCount ← 0

FOR i ← 1 TO 5
    INPUT score
    IF score >= 50 THEN
        passCount ← passCount + 1
    ENDIF
ENDFOR

OUTPUT passCount
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | i | score | score >= 50? | passCount | Output |
|---:|---:|---:|---|---:|---|
| Start |  |  |  | 0 |  |
| 1 | 1 | 40 | false | 0 |  |
| 2 | 2 | 55 | true | 1 |  |
| 3 | 3 | 70 | true | 2 |  |
| 4 | 4 | 20 | false | 2 |  |
| 5 | 5 | 90 | true | 3 |  |
| End |  |  |  | 3 | 3 |

Final output:

```text
3
```

</details>

---

## 14. Practice Set 9: Logic Errors

### Question 1 [3 marks]

The following algorithm should calculate the average of five scores.

```text
total ← 0

FOR count ← 1 TO 5
    INPUT score
    total ← total + score
ENDFOR

average ← total / 4
OUTPUT average
```

Identify the logic error and correct it.

<details>
<summary>Mark Scheme Style Answer</summary>

The algorithm divides by 4 even though five scores are input. This gives an incorrect average. The line should be:

```text
average ← total / 5
```

</details>

---

### Question 2 [3 marks]

The following loop may never stop.

```text
count ← 1

WHILE count <= 10
    OUTPUT count
ENDWHILE
```

Explain the error and fix it.

<details>
<summary>Mark Scheme Style Answer</summary>

The variable `count` is never updated inside the loop, so `count <= 10` remains true forever. Add:

```text
count ← count + 1
```

inside the loop after the output.

</details>

---

### Question 3 [4 marks]

The following algorithm should output the largest number from five inputs.

```text
largest ← 0

FOR count ← 1 TO 5
    INPUT number
    IF number > largest THEN
        largest ← number
    ENDIF
ENDFOR

OUTPUT largest
```

Explain why this may fail.

<details>
<summary>Mark Scheme Style Answer</summary>

This may fail if all input numbers are negative because `largest` starts at 0, which is greater than all negative numbers. The algorithm would output 0 even though 0 was not input. A better method is to input the first number and set `largest ← number`, then compare the remaining inputs.

</details>

---

### Question 4 [4 marks]

The following algorithm should output the final total once, but it outputs several values.

```text
total ← 0

FOR i ← 1 TO 3
    INPUT number
    total ← total + number
    OUTPUT total
ENDFOR
```

Explain the error and fix it.

<details>
<summary>Mark Scheme Style Answer</summary>

The `OUTPUT total` statement is inside the loop, so it runs every iteration and outputs the running total. To output only the final total once, move `OUTPUT total` after `ENDFOR`.

</details>

---

## 15. Practice Set 10: Mixed B1 Exam Questions

### Question 1 [4 marks]

A school wants to create a grade calculator. The system inputs test marks, calculates an average, assigns a grade, and outputs the result.

Explain how decomposition and abstraction could be used.

<details>
<summary>Mark Scheme Style Answer</summary>

Decomposition could break the system into sub-problems such as inputting marks, calculating the total, calculating the average, assigning a grade, and outputting the result. Abstraction would focus on relevant details such as marks and grade boundaries while ignoring irrelevant details such as the colour of the report or the student's desk position.

</details>

---

### Question 2 [6 marks]

Write an algorithm to input item prices until `0` is entered, then output the total price.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
total ← 0
INPUT price

WHILE price <> 0
    total ← total + price
    INPUT price
ENDWHILE

OUTPUT total
```

Alternative correct loop structures should be accepted.

</details>

---

### Question 3 [6 marks]

Trace the following algorithm with inputs `2`, `4`, `0`.

```text
total ← 0
INPUT price

WHILE price <> 0
    total ← total + price
    INPUT price
ENDWHILE

OUTPUT total
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Step / Iteration | price | total | price <> 0? | Output |
|---|---:|---:|---|---|
| Start |  | 0 |  |  |
| Input 1 | 2 | 0 | true |  |
| Loop 1 | 2 | 2 |  |  |
| Input 2 | 4 | 2 | true |  |
| Loop 2 | 4 | 6 |  |  |
| Input 3 | 0 | 6 | false |  |
| End | 0 | 6 | false | 6 |

Final output:

```text
6
```

</details>

---

### Question 4 [5 marks]

Describe a flowchart for the algorithm in Question 2.

<details>
<summary>Mark Scheme Style Answer</summary>

The flowchart starts with Start, then sets `total ← 0`. It inputs `price`, then uses a decision diamond to check `price <> 0?`. If Yes, it adds price to total, inputs the next price, and returns to the decision. If No, it outputs total and then ends.

</details>

---

## 16. Mini Mock: B1 Computational Thinking

### Instructions

Attempt the questions before checking the mark scheme.

Total: 30 marks.

---

### Question 1 [2 marks]

Define abstraction.

<details>
<summary>Mark Scheme Style Answer</summary>

Abstraction is focusing on the important details of a problem and ignoring unnecessary details.

</details>

---

### Question 2 [3 marks]

A password strength checker checks password length, uppercase letters, lowercase letters, digits, and special characters.

Identify three relevant details for this algorithm.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible answers:

```text
password length
whether uppercase letters are present
whether lowercase letters are present
whether digits are present
whether special characters are present
```

</details>

---

### Question 3 [4 marks]

Explain two benefits of using a flowchart.

<details>
<summary>Mark Scheme Style Answer</summary>

A flowchart visually shows the steps of an algorithm, making the logic easier to understand. It also shows decisions and loops clearly using standard symbols and arrows, which helps with communication and debugging.

</details>

---

### Question 4 [5 marks]

Write an algorithm to input a number and output whether it is positive, negative, or zero.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
INPUT number

IF number > 0 THEN
    OUTPUT "Positive"
ELSE IF number < 0 THEN
    OUTPUT "Negative"
ELSE
    OUTPUT "Zero"
ENDIF
```

</details>

---

### Question 5 [6 marks]

Trace the following algorithm.

```text
x ← 1
total ← 0

WHILE x <= 4
    total ← total + x
    x ← x + 1
ENDWHILE

OUTPUT total
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | x before update | total | x after update | Output |
|---:|---:|---:|---:|---|
| Start | 1 | 0 |  |  |
| 1 | 1 | 1 | 2 |  |
| 2 | 2 | 3 | 3 |  |
| 3 | 3 | 6 | 4 |  |
| 4 | 4 | 10 | 5 |  |
| End | 5 | 10 |  | 10 |

Final output:

```text
10
```

</details>

---

### Question 6 [4 marks]

Identify and explain the error in this algorithm.

```text
count ← 1

WHILE count < 5
    OUTPUT count
    count ← count + 1
ENDWHILE
```

The algorithm should output numbers 1 to 5.

<details>
<summary>Mark Scheme Style Answer</summary>

The condition is `count < 5`, so the loop stops before outputting 5. This is an off-by-one error. The condition should be changed to:

```text
count <= 5
```

</details>

---

### Question 7 [6 marks]

A quiz app asks questions, checks answers, updates the score, and shows the final score.

Explain how decomposition, abstraction, and an algorithm could be used to design this app.

<details>
<summary>Mark Scheme Style Answer</summary>

Decomposition could break the app into sub-problems such as loading questions, displaying each question, getting the user's answer, checking the answer, updating the score, and showing the final score. Abstraction would keep important details such as the question, correct answer, user answer, and score, while ignoring irrelevant details such as button colour or background image. An algorithm could then define the steps, such as repeat for each question, input answer, compare it with the correct answer, update score if correct, and output the final score.

</details>

---

## 17. Common B1 Mistakes

| Mistake | Why It Loses Marks | Fix |
|---|---|---|
| Decomposition described as deleting details | that is abstraction, not decomposition | say break into sub-problems |
| Abstraction described as splitting problem | that is decomposition | say focus on relevant details |
| Algorithm too vague | not executable or clear | use precise steps |
| No initialization | variables may not have starting value | set total/count/found first |
| Wrong loop boundary | loop runs too many/few times | trace boundary values |
| Output inside loop accidentally | outputs repeated values | check indentation/placement |
| Running both IF and ELSE | only one branch should run | evaluate condition |
| Flowchart symbol confusion | wrong symbol loses clarity | use standard symbols |
| Trace output guessed | misses variable changes | complete table step by step |
| Counter not updated | infinite loop risk | update inside loop |

---

## 18. B1 Exam Checklist

Before a B1 test, students should be able to:

- [ ] define decomposition
- [ ] define abstraction
- [ ] distinguish decomposition and abstraction
- [ ] identify input, process, and output
- [ ] define algorithm
- [ ] explain sequence, selection, iteration
- [ ] write simple pseudocode algorithms
- [ ] use counters and accumulators
- [ ] use Boolean flags
- [ ] recognize flowchart symbols
- [ ] describe a flowchart for simple logic
- [ ] trace algorithms with loops
- [ ] trace algorithms with IF/ELSE
- [ ] record output correctly
- [ ] find logic errors
- [ ] explain off-by-one errors

---

## 19. One-page B1 Practice Summary

| Skill | What to Remember |
|---|---|
| Decomposition | break problem into sub-problems |
| Abstraction | keep important details, ignore irrelevant details |
| Algorithm | finite clear ordered steps |
| IPO | input, process, output |
| Sequence | steps in order |
| Selection | IF/ELSE decision |
| Iteration | loop/repetition |
| Counter | counts repetitions |
| Accumulator | running total |
| Flag | Boolean state |
| Flowchart oval | Start/End |
| Flowchart rectangle | Process |
| Flowchart parallelogram | Input/Output |
| Flowchart diamond | Decision |
| Trace table | track variables step by step |
| Logic error | algorithm runs but gives wrong result |
| Best exam habit | trace carefully and use mark scheme phrases |

