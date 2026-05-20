$basePath = "docs\b2-programming"

New-Item -ItemType Directory -Force $basePath | Out-Null

$pages = @{
    "index.md" = @'
# B2 Programming

## Unit Overview

This unit introduces the programming knowledge and practical coding skills needed for IBDP Computer Science SL.

Programming is where students turn algorithms into working solutions. In this unit, students will learn how to use variables, data types, input and output, selection, loops, arrays, searching, sorting, file processing, testing, and debugging.

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
| Searching | Find a target value in a data structure |
| Sorting | Put values into a required order |
| File Processing | Read from and write to files |
| Testing and Debugging | Find and fix errors in programs |

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

    "searching.md" = @'
# Searching

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of searching
- describe how linear search works
- trace a simple search algorithm
- identify whether a target value is found in an array

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Finding data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Search | The process of finding a value in a data structure |
| Target value | The value being searched for |
| Linear search | A search algorithm that checks values one by one from the start |
| Found flag | A Boolean variable used to record whether a value has been found |
| Index | The position of a value in an array |

## 4. Concept Explanation

Searching means trying to find a target value.

A simple method is **linear search**. Linear search checks each item one at a time until the target is found or the end of the array is reached.

Linear search is easy to understand and works even if the data is not sorted.

## 5. Step-by-step Example

Array:

| Index | 0 | 1 | 2 | 3 | 4 |
|---|---:|---:|---:|---:|---:|
| NUM | 8 | 3 | 6 | 2 | 9 |

Target value: **6**

Search process:

| Step | Index checked | Value checked | Result |
|---|---:|---:|---|
| 1 | 0 | 8 | Not found |
| 2 | 1 | 3 | Not found |
| 3 | 2 | 6 | Found |

## 6. Visual Structure

::: info Linear Search Process

Start at the first item.

→ Compare current item with target  
→ If they match, stop and report found  
→ If they do not match, move to the next item  
→ If the end is reached, report not found  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Starting at the wrong index | The first value may be skipped |
| Not stopping after the value is found | The algorithm may waste time |
| Forgetting the not found case | The program may give no clear result |
| Using the wrong comparison | The target may not be detected |

## 8. Exam-style Question

An array stores the following values.

| Index | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| DATA | 12 | 5 | 9 | 7 |

A linear search is used to find the value **9**.

**State the index where the value is found.** [1]

## 9. Mark Scheme Style Answer

The value **9** is found at index **2**.

::: tip Answer
Index 2
:::

## 10. Quick Check

1. What is the target value in a search?
2. Does linear search require sorted data?
3. What happens if the target is not found?
'@

    "sorting.md" = @'
# Sorting

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of sorting
- describe how simple sorting works
- trace changes in an array during sorting
- identify common sorting errors

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Ordering data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Sort | Arrange data into a required order |
| Ascending order | From smallest to largest |
| Descending order | From largest to smallest |
| Swap | Exchange the positions of two values |
| Pass | One full movement through the data during sorting |

## 4. Concept Explanation

Sorting means putting values into a required order.

Data may be sorted in ascending order or descending order.

Sorting is useful because it makes data easier to search, compare, and display.

For example, student marks can be sorted from highest to lowest to find top scores.

## 5. Step-by-step Example

Sort the numbers in ascending order:

| Original | 5 | 2 | 8 | 1 |
|---|---:|---:|---:|---:|

One possible sorting process:

| Step | List |
|---|---|
| Start | 5, 2, 8, 1 |
| Swap 5 and 2 | 2, 5, 8, 1 |
| Swap 8 and 1 | 2, 5, 1, 8 |
| Swap 5 and 1 | 2, 1, 5, 8 |
| Swap 2 and 1 | 1, 2, 5, 8 |

## 6. Visual Structure

::: info Sorting Process

Compare two values.

→ If they are in the wrong order, swap them  
→ Move to the next pair  
→ Repeat passes until the list is sorted  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Sorting in the wrong order | The answer may not match the question |
| Forgetting to swap both values | One value may be lost |
| Stopping too early | The list may still be unsorted |
| Confusing index and value | The wrong elements may be compared |

## 8. Exam-style Question

The array below is sorted into ascending order.

| Original array | 4 | 1 | 3 |
|---|---:|---:|---:|

**State the final sorted array.** [1]

## 9. Mark Scheme Style Answer

::: tip Answer
1, 3, 4
:::

## 10. Quick Check

1. What does ascending order mean?
2. What does swap mean?
3. Why is sorted data easier to search?
'@

    "file-processing.md" = @'
# File Processing

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why files are used in programs
- distinguish between reading and writing files
- describe the basic steps of file processing
- identify common file handling errors

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Persistent data storage |

## 3. Key Terms

| Term | Meaning |
|---|---|
| File | A collection of data stored outside the program |
| Read | Get data from a file |
| Write | Save data to a file |
| Append | Add new data to the end of a file |
| File path | The location of a file |
| Persistent storage | Storage that keeps data after the program ends |

## 4. Concept Explanation

Variables and arrays store data while a program is running. However, this data is usually lost when the program ends.

Files allow data to be stored permanently.

Common file operations include:

| Operation | Purpose |
|---|---|
| Read | Load existing data from a file |
| Write | Create or replace file contents |
| Append | Add new data without deleting old data |
| Close | Finish using the file safely |

## 5. Step-by-step Example

Problem: Save a student's score to a file.

Steps:

1. Open the file.
2. Write the student's name and score.
3. Close the file.

Problem: Read scores from a file.

Steps:

1. Open the file.
2. Read each line.
3. Process the data.
4. Close the file.

## 6. Visual Structure

::: info File Processing Structure

**Writing data**

Open file  
→ Write data  
→ Close file  

**Reading data**

Open file  
→ Read data  
→ Process data  
→ Close file  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Forgetting to close the file | Data may not be saved properly |
| Using the wrong file path | The program may not find the file |
| Writing instead of appending | Existing data may be overwritten |
| Not checking file format | The program may read data incorrectly |

## 8. Exam-style Question

A program stores the names and marks of students in a file.

**Explain one advantage of storing the data in a file instead of only using variables.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- data in a file is stored permanently
- the data can still be accessed after the program has ended
- variables usually lose their values when the program stops

## 10. Quick Check

1. What is the difference between read and write?
2. Why should a file be closed after use?
3. What does append mean?
'@

    "testing-debugging.md" = @'
# Testing and Debugging

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of testing
- distinguish between different types of test data
- explain what debugging means
- identify syntax, logic, and runtime errors

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Program correctness |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Testing | Running a program with data to check whether it works correctly |
| Debugging | Finding and fixing errors in a program |
| Normal test data | Data that should be accepted by the program |
| Boundary test data | Data at the edge of an allowed range |
| Invalid test data | Data that should be rejected |
| Runtime error | An error that happens while the program is running |

## 4. Concept Explanation

Testing is used to check whether a program works as expected.

A program should be tested with different types of data.

| Type of Test Data | Example for valid age 0 to 120 |
|---|---|
| Normal | 25 |
| Boundary | 0 and 120 |
| Invalid | -5 or 150 |

Debugging is the process of finding and fixing errors.

Common error types:

| Error Type | Meaning |
|---|---|
| Syntax error | The code breaks language rules |
| Logic error | The program runs but gives the wrong result |
| Runtime error | The program crashes while running |

## 5. Step-by-step Example

Problem: Test a program that accepts marks from 0 to 100.

Useful test data:

| Test Data | Type | Expected Result |
|---|---|---|
| 50 | Normal | Accepted |
| 0 | Boundary | Accepted |
| 100 | Boundary | Accepted |
| -1 | Invalid | Rejected |
| 101 | Invalid | Rejected |

## 6. Visual Structure

::: info Testing Process

Prepare test data.

→ Run the program  
→ Compare actual output with expected output  
→ Identify errors  
→ Debug the code  
→ Test again  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Only using normal data | Boundary errors may not be found |
| Not recording expected output | It is hard to know whether the result is correct |
| Ignoring invalid data | The program may accept wrong input |
| Fixing code without retesting | New errors may be introduced |

## 8. Exam-style Question

A program accepts exam marks from 0 to 100 inclusive.

**Identify one normal, one boundary, and one invalid test value.** [3]

## 9. Mark Scheme Style Answer

Example answer:

| Type | Test Value |
|---|---:|
| Normal | 50 |
| Boundary | 0 or 100 |
| Invalid | -1 or 101 |

## 10. Quick Check

1. What is testing?
2. What is debugging?
3. Why is boundary data important?
'@
}

foreach ($file in $pages.Keys) {
    $fullPath = Join-Path $basePath $file
    Set-Content -Path $fullPath -Value $pages[$file] -Encoding UTF8
}

Write-Host "B2 second batch pages created successfully."
