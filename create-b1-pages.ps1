$basePath = "docs\b1-computational-thinking"

New-Item -ItemType Directory -Force $basePath | Out-Null

$pages = @{
    "index.md" = @'
# B1 Computational Thinking

## Unit Overview

This unit introduces the core problem-solving skills used in computer science.

Computational thinking is not only used before programming. It is also used when designing databases, analysing systems, creating algorithms, debugging code, and evaluating solutions.

## Topics

| Topic | Main Focus |
|---|---|
| Decomposition | Break a large problem into smaller parts |
| Abstraction | Focus on important details and ignore unnecessary details |
| Algorithms | Design clear step-by-step solutions |
| Flowcharts | Represent algorithms visually |
| Trace Tables | Track variable values step by step |

## How to Study This Unit

1. Understand each computational thinking skill.
2. Learn the key terms.
3. Study the worked examples.
4. Try the quick check questions.
5. Practise exam-style answers.

::: tip SL Core
B1 is a foundation unit. Students should keep using these skills throughout B2 Programming, B3 OOP, A3 Databases, A1 Computer Fundamentals, A2 Networks, and A4 Machine Learning.
:::
'@

    "decomposition.md" = @'
# Decomposition

## 1. Learning Objectives

By the end of this page, students should be able to:

- define decomposition
- explain why decomposition is useful
- break a large problem into smaller sub-problems
- apply decomposition to simple programming and real-life scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Problem breakdown |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Decomposition | Breaking a large problem into smaller, more manageable parts |
| Sub-problem | A smaller part of a larger problem |
| Computational thinking | A problem-solving process used in computer science |

## 4. Concept Explanation

Decomposition means breaking a complex problem into smaller parts.

In computer science, this is important because large problems are often too difficult to solve all at once. By splitting the problem into smaller sub-problems, each part becomes easier to understand, design, test, and code.

For example, if we want to create a school library system, we should not start by coding everything at once. We can break it down into smaller tasks:

- add a book
- search for a book
- borrow a book
- return a book
- check overdue books

Each part can then be designed and tested separately.

## 5. Step-by-step Example

Problem: Create a program for a student grade system.

We can decompose the problem into:

1. Input student name.
2. Input marks.
3. Calculate total marks.
4. Calculate average mark.
5. Decide the grade.
6. Output the result.

## 6. Visual Structure

::: info Decomposition Example

**Student Grade System**

→ Input student data  
→ Calculate total marks  
→ Calculate average mark  
→ Decide the grade  
→ Output the result  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Trying to solve everything at once | The solution becomes confusing |
| Creating sub-problems that are too large | They are still hard to solve |
| Ignoring how parts connect together | The final system may not work properly |

## 8. Exam-style Question

A school wants to develop a system for recording attendance.

**Explain how decomposition could be used when designing this system.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the whole attendance system can be broken into smaller sub-problems
- examples may include recording student details, marking attendance, saving records, and producing reports
- each sub-problem can be designed or coded separately
- this makes the system easier to test, maintain, and debug

## 10. Quick Check

1. What is decomposition?
2. Why is decomposition useful before coding?
3. Give two sub-problems in an online shopping system.
'@

    "abstraction.md" = @'
# Abstraction

## 1. Learning Objectives

By the end of this page, students should be able to:

- define abstraction
- identify unnecessary details in a problem
- explain why abstraction helps problem-solving
- create a simplified model of a real-world problem

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Simplification |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Abstraction | Removing unnecessary details and focusing on important information |
| Model | A simplified representation of a system or problem |
| Relevant detail | Information needed to solve the problem |
| Irrelevant detail | Information that does not affect the solution |

## 4. Concept Explanation

Abstraction means focusing only on the important details of a problem and ignoring unnecessary details.

Computers cannot understand the full complexity of the real world. When we design a solution, we need to decide what information is useful and what can be ignored.

For example, in a student grade system, we need the student's name, marks, and grade boundaries. We probably do not need the student's favourite food or shoe size.

## 5. Step-by-step Example

Problem: Design a bus tracking app.

Important details:

- bus number
- current location
- destination
- estimated arrival time

Unnecessary details:

- colour of the driver's shoes
- brand of the bus seat
- music the passenger is listening to

## 6. Visual Structure

::: info Abstraction Process

**Real-world problem**

→ Remove unnecessary details  
→ Keep useful details  
→ Create a simplified model  
→ Use the model to design a solution  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Keeping too much information | The solution becomes too complex |
| Removing important information | The solution may become incorrect |
| Thinking abstraction means guessing | Abstraction must be based on the problem requirements |

## 8. Exam-style Question

A hospital wants to create a system to book appointments.

**Explain how abstraction could be used when designing the appointment system.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- abstraction focuses on important details only
- relevant details may include patient name, doctor, date, time, and appointment type
- irrelevant details can be ignored if they do not affect booking
- this simplifies the design and makes the system easier to develop

## 10. Quick Check

1. What does abstraction mean?
2. Give one relevant detail in a food delivery app.
3. Give one irrelevant detail in a food delivery app.
'@

    "algorithms.md" = @'
# Algorithms

## 1. Learning Objectives

By the end of this page, students should be able to:

- define an algorithm
- describe the purpose of an algorithm
- write simple step-by-step algorithms
- explain the importance of sequence, selection, and iteration

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Step-by-step solution design |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Algorithm | A finite set of step-by-step instructions used to solve a problem |
| Sequence | Instructions carried out in order |
| Selection | A decision in an algorithm, such as IF statements |
| Iteration | Repetition, such as loops |
| Pseudocode | A way of writing an algorithm using structured English-like statements |

## 4. Concept Explanation

An algorithm is a clear set of steps used to solve a problem.

A good algorithm should be:

- clear
- finite
- ordered
- unambiguous
- possible to carry out

Algorithms can be shown using pseudocode, flowcharts, or programming code.

## 5. Step-by-step Example

Problem: Decide whether a student passes an exam.

::: info Example Algorithm

Input mark.

If mark is greater than or equal to 50, output **Pass**.

Otherwise, output **Fail**.

:::

## 6. Visual Structure

::: info Algorithm Structure

**Start**

→ Input mark  
→ Check if mark is at least 50  
→ If yes: output Pass  
→ If no: output Fail  
→ End  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Missing steps | The algorithm may not work |
| Writing vague instructions | The computer cannot follow unclear logic |
| Forgetting the order of steps | The result may be wrong |
| Infinite loop | The algorithm may never finish |

## 8. Exam-style Question

A program asks the user to input a number and outputs whether it is positive, negative, or zero.

**Construct an algorithm for this problem using pseudocode.** [5]

## 9. Mark Scheme Style Answer

Example answer:

| Step | Action |
|---|---|
| 1 | Input number |
| 2 | If number is greater than 0, output Positive |
| 3 | Else if number is less than 0, output Negative |
| 4 | Else output Zero |

Award marks for:

- inputting the number
- testing if the number is greater than zero
- testing if the number is less than zero
- correctly outputting positive, negative, or zero
- using clear algorithm structure

## 10. Quick Check

1. What is an algorithm?
2. What does selection mean?
3. What does iteration mean?
'@

    "flowcharts.md" = @'
# Flowcharts

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify common flowchart symbols
- explain the purpose of a flowchart
- construct simple flowcharts
- convert simple algorithms into flowcharts

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Visual algorithm representation |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Flowchart | A diagram that shows the steps of an algorithm |
| Terminator | Start or end symbol |
| Process | An action or calculation |
| Input/Output | Data entering or leaving the algorithm |
| Decision | A yes/no or true/false condition |

## 4. Concept Explanation

A flowchart is a visual way to show an algorithm.

Flowcharts are useful because they help students see the order of steps, decisions, and repeated actions.

Common symbols:

| Symbol Type | Meaning |
|---|---|
| Oval | Start or End |
| Rectangle | Process |
| Parallelogram | Input or Output |
| Diamond | Decision |
| Arrow | Direction of flow |

## 5. Step-by-step Example

Problem: Check if a number is even.

Algorithm:

1. Input number.
2. Check if number mod 2 equals 0.
3. If yes, output Even.
4. If no, output Odd.

## 6. Visual Structure

::: info Text-based Flowchart

**Start**

→ Input number  
→ Is number mod 2 equal to 0?  
→ Yes: output Even  
→ No: output Odd  
→ End  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Using the wrong symbol | The flowchart becomes unclear |
| Forgetting arrows | The order of steps is not clear |
| Decision box has no Yes/No labels | The logic becomes confusing |
| No start or end symbol | The algorithm is incomplete |

## 8. Exam-style Question

Construct a flowchart for an algorithm that inputs a student's mark and outputs **Pass** if the mark is at least 50, otherwise outputs **Fail**. [5]

## 9. Mark Scheme Style Answer

Award marks for:

- start and end symbols
- input of mark
- correct decision condition
- correct pass output
- correct fail output and flow direction

## 10. Quick Check

1. What symbol is used for a decision?
2. What symbol is used for input/output?
3. Why are arrows important in a flowchart?
'@

    "trace-tables.md" = @'
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
'@
}

foreach ($file in $pages.Keys) {
    $fullPath = Join-Path $basePath $file
    Set-Content -Path $fullPath -Value $pages[$file] -Encoding UTF8
}

Write-Host "B1 pages without Mermaid created successfully."