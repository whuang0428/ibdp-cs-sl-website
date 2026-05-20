$basePath = "docs\b2-programming"

New-Item -ItemType Directory -Force $basePath | Out-Null

$pages = @{
    "index.md" = @'
# B2 Programming

## Unit Overview

This unit introduces the programming knowledge and practical coding skills needed for IBDP Computer Science SL.

Programming is where students turn algorithms into working solutions. In this unit, students will learn how to use variables, data types, input and output, selection, loops, arrays, searching, sorting, and file processing.

## Topics

| Topic | Main Focus |
|---|---|
| Programming Basics | Understand what a program is and how code is executed |
| Variables | Store and update data |
| Data Types | Choose suitable data types for values |
| Input and Output | Get data from users and display results |
| Selection | Make decisions using IF statements |
| Loops | Repeat instructions |
| Arrays | Store multiple values under one name |
| Searching | Find values in a data structure |
| Sorting | Put values into order |
| File Processing | Read from and write to files |

## How to Study This Unit

1. Understand the concept first.
2. Study the code pattern.
3. Trace the code step by step.
4. Try a small programming task.
5. Practise exam-style questions.

::: tip SL Core
B2 is one of the most important units in the course. Students should connect every programming topic back to B1 computational thinking.
:::
'@

    "programming-basics.md" = @'
# Programming Basics

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what a computer program is
- describe the purpose of programming
- understand the basic structure of a program
- explain the difference between syntax errors and logic errors

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Writing and understanding programs |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Program | A set of instructions that a computer can execute |
| Source code | The code written by a programmer |
| Syntax | The grammar rules of a programming language |
| Syntax error | An error caused by breaking language rules |
| Logic error | An error where the program runs but gives the wrong result |
| Debugging | Finding and fixing errors in a program |

## 4. Concept Explanation

A computer program is a set of instructions that tells a computer what to do.

Programming is not just writing code. It also includes understanding the problem, designing an algorithm, writing code, testing the program, and fixing errors.

A basic program often follows this pattern:

1. Input data.
2. Process the data.
3. Output the result.

This is sometimes called the **IPO model**.

## 5. Step-by-step Example

Problem: Create a program to calculate the total price of two items.

Steps:

1. Input price of item 1.
2. Input price of item 2.
3. Add the two prices.
4. Output the total price.

## 6. Visual Structure

::: info IPO Model

**Input**

→ price1, price2  

**Process**

→ total = price1 + price2  

**Output**

→ display total  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Starting to code without planning | The program may be badly structured |
| Ignoring syntax rules | The program may not run |
| Only testing one example | Some errors may not be found |
| Thinking no error message means correct | Logic errors may still exist |

## 8. Exam-style Question

A student writes a program that runs without any syntax errors but produces the wrong total.

**Explain what type of error this is and how the student could find it.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- this is a logic error
- the program follows syntax rules and can run
- the calculation or algorithm is incorrect
- the student can use test data, trace tables, or debugging to find the error

## 10. Quick Check

1. What is a program?
2. What is the difference between a syntax error and a logic error?
3. What does IPO stand for?
'@

    "variables.md" = @'
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
'@

    "data-types.md" = @'
# Data Types

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify common data types
- choose suitable data types for different values
- explain why using the correct data type is important
- distinguish between strings, integers, reals, and Booleans

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Representing data in programs |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Integer | A whole number |
| Real / Float | A number with a decimal point |
| String | Text data |
| Character | A single symbol or letter |
| Boolean | A value that is either true or false |

## 4. Concept Explanation

A data type tells the computer what kind of data is being stored.

Different data types are used for different purposes.

| Example Value | Suitable Data Type | Reason |
|---|---|---|
| 17 | Integer | It is a whole number |
| 3.75 | Real / Float | It contains a decimal point |
| "Alice" | String | It is text |
| "A" | Character | It is one symbol |
| true | Boolean | It has only two possible values |

Using the wrong data type can cause errors or incorrect results.

## 5. Step-by-step Example

Problem: Store information about a student.

| Data | Example | Suitable Data Type |
|---|---|---|
| Student name | "Lina" | String |
| Age | 16 | Integer |
| Average mark | 86.5 | Real / Float |
| Passed course | true | Boolean |

## 6. Visual Structure

::: info Choosing a Data Type

Ask: What kind of value is this?

→ Whole number: Integer  
→ Decimal number: Real / Float  
→ Text: String  
→ True or false: Boolean  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Storing numbers as strings | Calculations may not work correctly |
| Using integer for decimal values | The decimal part may be lost |
| Using string for true/false values | Logical comparisons become harder |
| Not checking input type | The program may crash or give wrong results |

## 8. Exam-style Question

A program stores a user's username, age, height, and whether the user has paid the fee.

**State a suitable data type for each item.** [4]

## 9. Mark Scheme Style Answer

| Item | Data Type |
|---|---|
| username | String |
| age | Integer |
| height | Real / Float |
| has paid fee | Boolean |

## 10. Quick Check

1. What data type is used for true/false values?
2. What data type is suitable for 42?
3. Why should "23" not always be treated as an integer?
'@

    "input-output.md" = @'
# Input and Output

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of input
- explain the purpose of output
- design simple input-process-output algorithms
- identify suitable prompts and outputs for users

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | User interaction |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Input | Data entered into a program |
| Output | Data displayed or returned by a program |
| Prompt | A message asking the user to enter data |
| Processing | Operations performed on input data |

## 4. Concept Explanation

Most programs need input and output.

Input allows a user or system to provide data. Output allows the program to show the result.

Example:

| Stage | Example |
|---|---|
| Input | Enter length and width |
| Process | area = length × width |
| Output | Display the area |

## 5. Step-by-step Example

Problem: Calculate the area of a rectangle.

Steps:

1. Ask the user to input length.
2. Ask the user to input width.
3. Calculate area.
4. Output the area.

## 6. Visual Structure

::: info Input-Process-Output

**Input**

→ length and width  

**Process**

→ area = length × width  

**Output**

→ area  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| No prompt for input | The user may not know what to enter |
| Output is unclear | The user may not understand the result |
| Forgetting to convert input | Numerical calculations may fail |
| Not validating input | Invalid data may cause errors |

## 8. Exam-style Question

A program calculates the total cost of tickets. It asks for the number of tickets and the price per ticket.

**Identify the input, processing, and output for this program.** [3]

## 9. Mark Scheme Style Answer

| Stage | Answer |
|---|---|
| Input | number of tickets and price per ticket |
| Processing | total cost = number of tickets × price per ticket |
| Output | total cost |

## 10. Quick Check

1. What is input?
2. What is output?
3. Why should a program show clear prompts?
'@

    "selection.md" = @'
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
'@

    "loops.md" = @'
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
'@

    "arrays.md" = @'
# Arrays

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what an array is
- use index positions to access array elements
- trace algorithms that use arrays
- understand why arrays are useful in programs

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Storing multiple values |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Array | A data structure that stores multiple values under one name |
| Element | A value stored in an array |
| Index | The position of an element in an array |
| Length | The number of elements in an array |
| Traversal | Visiting each element in an array |

## 4. Concept Explanation

An array is used to store a list of values.

Instead of creating many separate variables, an array can store related values together.

Example:

| Index | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| scores | 72 | 85 | 64 | 90 |

If the array is called `scores`, then:

| Expression | Value |
|---|---:|
| scores[0] | 72 |
| scores[1] | 85 |
| scores[3] | 90 |

## 5. Step-by-step Example

Problem: Find the total of four scores.

| Step | Action |
|---|---|
| 1 | Start total at 0 |
| 2 | Visit each array element |
| 3 | Add the element to total |
| 4 | Output total |

## 6. Visual Structure

::: info Array Traversal

Start at the first element.

→ Read current value  
→ Add it to total  
→ Move to the next index  
→ Repeat until all elements have been processed  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Using the wrong index | The wrong value is accessed |
| Forgetting that many arrays start at index 0 | Off-by-one errors may occur |
| Going outside the array range | The program may crash |
| Not initializing total | The calculation may be incorrect |

## 8. Exam-style Question

An array stores the following values:

| Index | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| NUM | 4 | 7 | 2 | 5 |

The algorithm adds all values in the array.

**State the final total.** [2]

## 9. Mark Scheme Style Answer

Calculation:

| Step | Added Value | Total |
|---|---:|---:|
| Start |  | 0 |
| 1 | 4 | 4 |
| 2 | 7 | 11 |
| 3 | 2 | 13 |
| 4 | 5 | 18 |

::: tip Answer
The final total is **18**.
:::

## 10. Quick Check

1. What is an array?
2. What is an index?
3. What value is stored at NUM[2] in the example?
'@
}

foreach ($file in $pages.Keys) {
    $fullPath = Join-Path $basePath $file
    Set-Content -Path $fullPath -Value $pages[$file] -Encoding UTF8
}

Write-Host "B2 programming pages created successfully."
