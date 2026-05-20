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
