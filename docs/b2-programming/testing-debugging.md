# Testing and Debugging

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the difference between testing and debugging
- distinguish syntax errors, runtime errors, and logic errors
- design normal, boundary, invalid, and extreme test data
- create a test table with expected and actual results
- use trace tables to find logic errors
- identify common Java programming errors
- explain why testing is needed before a program is used
- write exam-style answers about testing, debugging, and error correction

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Checking, finding, and fixing errors in programs |
| Connected topics | Variables, data types, selection, loops, arrays, searching, sorting |
| Programming language focus | IB pseudocode + Java |
| Exam relevance | Test data design, trace tables, error classification, debugging explanation |

::: tip Learning Focus
Testing is not just “running the program once”. Good testing uses carefully chosen data to check whether the program works correctly in normal, boundary, and invalid situations.
:::

---

## Start here: testing finds problems, debugging fixes them

Testing checks whether a program works as expected.

Debugging is the process of finding and fixing errors.

First understand what kind of test data to use, then learn how to explain errors and fixes. In exam questions, the key skill is linking a test case or error to the program behaviour.

---

## Testing workflow

Use this route when checking or debugging a program:

| Step | What to do | Why it matters |
|---:|---|---|
| 1 | Understand what the program should do. | You need the correct behaviour before choosing tests. |
| 2 | Choose suitable test data. | Test data should check important cases, not random values. |
| 3 | Include normal, boundary, and invalid data where relevant. | These reveal different kinds of mistakes. |
| 4 | Run or trace the program using the test data. | Follow what the program actually does. |
| 5 | Compare the actual output with the expected output. | A mismatch shows a possible error. |
| 6 | Identify any error. | Decide whether the problem is syntax, runtime, or logic. |
| 7 | Explain the cause of the error. | Exam answers need the reason, not only the correction. |
| 8 | Suggest a suitable correction. | The fix should match the cause of the bug. |
| 9 | Retest the program after fixing the error. | Retesting checks that the fix works and did not create a new problem. |

---

## Error type table

| Error type | What it means | Simple example |
|---|---|---|
| Syntax error | code breaks the grammar/rules of the language | missing bracket or keyword |
| Logic error | code runs but gives the wrong result | using `>` instead of `<` |
| Runtime error | program fails while running | division by zero, file not found |

---

## Test data table

| Test data type | Purpose | Example |
|---|---|---|
| Normal data | checks typical valid input | age = 15 when valid range is 1-120 |
| Boundary data | checks values at the edge of valid ranges | age = 1, age = 120 |
| Invalid data | checks how the program handles unacceptable input | age = -5 or age = "abc" |

---

## Core checklist

By the end of this page, you should be able to:

- explain why testing is needed
- distinguish testing from debugging
- distinguish syntax, logic, and runtime errors
- choose normal, boundary, and invalid test data
- explain expected output and actual output
- use a trace table to help find logic errors
- identify the cause of a simple bug
- suggest a suitable correction
- explain why retesting is needed after a fix

---

## Debugging trace pattern

When you meet a debugging or trace question, use this order:

1. Identify the expected output.
2. Run or trace the program step by step.
3. Record variable values after each important statement.
4. Find where the actual result first becomes wrong.
5. Identify the likely cause of the error.
6. Suggest a correction.
7. Retest using the same case and at least one extra case.

---

## Common exam traps

- describing testing and debugging as the same thing
- giving only normal test data
- forgetting boundary values
- calling every error a syntax error
- saying a logic error stops the program from running
- giving test data without expected output
- fixing code without explaining the cause
- not retesting after a correction
- using a trace table but not recording changed variables in order

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Testing | 测试 | Running a program with test data to check whether it works correctly |
| Debugging | 调试 | Finding and fixing errors in a program |
| Test data | 测试数据 | Input values used to test a program |
| Expected result | 预期结果 | The result the program should produce |
| Actual result | 实际结果 | The result the program actually produces |
| Syntax error | 语法错误 | Error caused by breaking language grammar rules |
| Runtime error | 运行时错误 | Error that occurs while the program is running |
| Logic error | 逻辑错误 | Program runs but produces the wrong result |
| Normal test data | 正常测试数据 | Valid data that should be accepted |
| Boundary test data | 边界测试数据 | Data at the edge of an allowed range |
| Invalid test data | 无效测试数据 | Data that should be rejected |
| Extreme test data | 极端测试数据 | Very large, very small, or unusual data |
| Trace table | 跟踪表 | Table used to follow variable values step by step |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Testing（测试）** 是运行程序并检查程序是否按预期工作。

**Debugging（调试）** 是找到并修复程序中的错误。

这两个词很接近，但重点不同：

```text
testing = 检查有没有问题
debugging = 找出问题并修复
```

例如，一个程序应该判断成绩是否通过：

```java
if (mark > 50) {
    System.out.println("Pass");
}
```

如果输入 `50`，程序没有输出 `"Pass"`。这可能是 logic error，因为通过条件应该是 `mark >= 50`。

测试的目标不是只证明程序“能跑”，而是尽量发现问题。  
所以我们需要使用不同类型的 test data：

- normal data：正常有效输入
- boundary data：刚好在边界上的输入
- invalid data：应该被拒绝的输入
- extreme data：非常大、非常小或特殊情况

</template>

<template #en>

### English Explanation

**Testing** means running a program and checking whether it works as expected.

**Debugging** means finding and fixing errors in a program.

The two terms are related, but they focus on different actions:

```text
testing = checking whether there is a problem
debugging = finding the problem and fixing it
```

For example, a program should decide whether a mark is a pass:

```java
if (mark > 50) {
    System.out.println("Pass");
}
```

If the input is `50`, the program does not output `"Pass"`. This may be a logic error because the pass condition should be `mark >= 50`.

The purpose of testing is not only to prove that the program can run. It is to find possible problems.  
Therefore, we use different types of test data:

- normal data: valid input
- boundary data: input at the edge of an allowed range
- invalid data: input that should be rejected
- extreme data: very large, very small, or unusual input

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Testing a Mark Validation Program

Boundary test data example: this shows why edge values such as 0 and 100 must be tested.

A program accepts marks from 0 to 100 inclusive.

Valid range:

```text
0 <= mark <= 100
```

Good test data should include:

| Test Type | Test Data | Expected Result |
|---|---:|---|
| Normal | 75 | Accepted |
| Boundary | 0 | Accepted |
| Boundary | 100 | Accepted |
| Invalid | -1 | Rejected |
| Invalid | 101 | Rejected |
| Extreme | 9999 | Rejected |

::: info Scenario Link
Testing only with `75` is not enough. A program may work for normal values but fail at boundary values.
:::

---

## 6. Testing vs Debugging

| Term | Meaning | Example |
|---|---|---|
| Testing | Running the program with test data to check result | Input `50` and check output |
| Debugging | Finding and fixing the cause of an error | Change `mark > 50` to `mark >= 50` |

### Simple Process

```text
Write code
→ run test data
→ compare expected and actual result
→ if different, debug
→ fix code
→ test again
```

---

## 7. Types of Errors

## 7.1 Syntax Error

A syntax error happens when the program breaks the grammar rules of the language.

### Syntax error example

```java
System.out.println("Hello")
```

Problem:

```text
Missing semicolon
```

Corrected:

```java
System.out.println("Hello");
```

### Features

| Feature | Explanation |
|---|---|
| Usually detected by compiler/IDE | Program may not run |
| Often caused by punctuation or structure | Missing semicolon, bracket, quote |
| Easier to locate than logic errors | Error message often gives line number |

---

## 7.2 Runtime Error

A runtime error happens while the program is running.

### Runtime error example: divide by zero

```java
int result = 10 / 0;
```

The program compiles, but crashes when this line runs.

### Runtime error example: array index out of bounds

```java
int[] values = {2, 4, 6};
System.out.println(values[3]);
```

Valid indexes are:

```text
0, 1, 2
```

Index `3` does not exist.

---

## 7.3 Logic Error

A logic error happens when the program runs but gives the wrong result.

### Logic error example

```java
int mark = 50;

if (mark > 50) {
    System.out.println("Pass");
} else {
    System.out.println("Fail");
}
```

Output:

```text
Fail
```

But if 50 is a pass mark, expected output should be:

```text
Pass
```

Corrected condition:

```java
if (mark >= 50) {
```

### Why Logic Errors Are Hard

Logic errors may not crash the program. The program looks like it works, but the result is wrong.

---

## 8. Error Type Comparison

| Error Type | When It Happens | Does Program Run? | Example |
|---|---|---|---|
| Syntax error | Before running / during compilation | Usually no | Missing semicolon |
| Runtime error | While program is running | Starts, then may crash | Divide by zero |
| Logic error | Program runs but result is wrong | Yes | Wrong condition |

---

## 9. Test Data Types

## 9.1 Normal Test Data

Normal test data is valid and typical.

Normal test data example:

Example for mark 0-100:

```text
75
```

Expected:

```text
Accepted
```

---

## 9.2 Boundary Test Data

Boundary data tests the edges of valid ranges.

Boundary test data example:

For mark 0-100:

| Boundary Type | Test Data |
|---|---:|
| Lower boundary | 0 |
| Upper boundary | 100 |
| Just below lower boundary | -1 |
| Just above upper boundary | 101 |

Boundary tests are useful because many errors happen at edges.

---

## 9.3 Invalid Test Data

Invalid test data should be rejected.

Invalid test data example:

Examples:

```text
-5
150
"abc"
empty input
```

Invalid testing checks whether the program handles wrong input safely.

---

## 9.4 Extreme Test Data

Extreme test data uses very unusual or large values.

Examples:

```text
999999
-999999
very long text
empty array
```

Extreme data checks whether the program can handle unusual situations.

---

## 10. Test Table

A good test table records expected and actual results.

### Example: Mark Validation Test Table

| Test ID | Test Type | Input | Expected Result | Actual Result | Pass/Fail |
|---|---|---:|---|---|---|
| T1 | Normal | 75 | Valid | Valid | Pass |
| T2 | Boundary | 0 | Valid | Valid | Pass |
| T3 | Boundary | 100 | Valid | Valid | Pass |
| T4 | Invalid | -1 | Invalid | Invalid | Pass |
| T5 | Invalid | 101 | Invalid | Valid | Fail |

### What to Do if a Test Fails

If actual result is different from expected result:

```text
1. identify which test failed
2. locate the related code
3. trace the variables
4. fix the code
5. run the test again
```

---

## 11. Worked Example 1: Debug Mark Validation

Boundary test data example: this bug appears because the boundary values are incorrectly excluded.

### Problem Code

```java
int mark = 100;

if (mark > 0 && mark < 100) {
    System.out.println("Valid");
} else {
    System.out.println("Invalid");
}
```

### Expected Rule

A valid mark is from 0 to 100 inclusive.

```text
0 and 100 should both be valid
```

### Test Table

| Input | Expected | Actual | Result |
|---:|---|---|---|
| 50 | Valid | Valid | Pass |
| 0 | Valid | Invalid | Fail |
| 100 | Valid | Invalid | Fail |
| -1 | Invalid | Invalid | Pass |
| 101 | Invalid | Invalid | Pass |

### Bug

The code uses:

```java
mark > 0 && mark < 100
```

This excludes 0 and 100.

### Corrected Code

```java
if (mark >= 0 && mark <= 100) {
    System.out.println("Valid");
} else {
    System.out.println("Invalid");
}
```

---

## 12. Worked Example 2: Debug an Array Loop

Runtime error example: this bug happens when the loop tries to access an array index that does not exist.

### Problem Code

```java
int[] values = {3, 6, 9};

for (int i = 0; i <= values.length; i++) {
    System.out.println(values[i]);
}
```

### Error Type

This is a runtime error.

### Why?

The array length is 3. Valid indexes are:

```text
0, 1, 2
```

But the loop condition `i <= values.length` allows `i` to become 3.

Then the program tries:

```java
values[3]
```

This index does not exist.

### Corrected Code

```java
for (int i = 0; i < values.length; i++) {
    System.out.println(values[i]);
}
```

---

## 13. Worked Example 3: Debug a Logic Error Using Trace Table

Debugging trace example: this trace table shows where the total first follows the wrong condition.

### Problem Code

This code should calculate the total of values greater than 5.

```java
int[] values = {2, 8, 4, 10};
int total = 0;

for (int i = 0; i < values.length; i++) {
    if (values[i] < 5) {
        total = total + values[i];
    }
}

System.out.println(total);
```

### Expected Logic

Add values greater than 5:

```text
8 + 10 = 18
```

### Trace Table

| i | values[i] | Condition `values[i] < 5` | total |
|---:|---:|---|---:|
| 0 | 2 | true | 2 |
| 1 | 8 | false | 2 |
| 2 | 4 | true | 6 |
| 3 | 10 | false | 6 |

Actual output:

```text
6
```

Expected output:

```text
18
```

### Bug

The condition is wrong:

```java
values[i] < 5
```

It should be:

```java
values[i] > 5
```

### Corrected Code

```java
if (values[i] > 5) {
    total = total + values[i];
}
```

---

## 14. Trace Tables for Debugging

A trace table helps find logic errors by recording variable changes.

### Trace Table Template

| Step / Iteration | Variable 1 | Variable 2 | Condition | Output |
|---|---|---|---|---|

### When to Use Trace Tables

Use a trace table when:

- a loop gives the wrong total
- a search does not find the correct value
- a condition chooses the wrong branch
- a sorting algorithm swaps incorrectly
- variables change many times

::: tip Exam Tip
If a question asks you to trace code, show variable values after each important statement or each loop iteration.
:::

---

## 15. Common Java Errors

| Error | Example | Fix |
|---|---|---|
| Missing semicolon | `int x = 5` | `int x = 5;` |
| Missing bracket | `if (x > 0) {` without closing `}` | Add closing brace |
| Assignment instead of comparison | `if (x = 5)` | Use `if (x == 5)` |
| Wrong String comparison | `name == "Alice"` | Use `name.equals("Alice")` |
| Array out of bounds | `values[values.length]` | Last index is `values.length - 1` |
| Integer division mistake | `5 / 2` gives `2` | Use double if needed |
| Infinite loop | loop variable not updated | Update loop variable |
| Not initialized variable | using variable before value assigned | Assign value before use |
| Wrong Boolean operator | `||` instead of `&&` | Trace true/false table |
| Wrong condition boundary | `>` instead of `>=` | Test boundary values |

---

## 16. Defensive Programming

Defensive programming means writing code that expects possible problems.

### Example: Avoid Divide by Zero

```java
if (divisor != 0) {
    result = number / divisor;
    System.out.println(result);
} else {
    System.out.println("Cannot divide by zero");
}
```

### Example: Check Array Index

```java
if (index >= 0 && index < values.length) {
    System.out.println(values[index]);
} else {
    System.out.println("Invalid index");
}
```

### Why Defensive Programming Helps

It can prevent runtime errors and make the program more robust.

---

## 17. Guided Practice

### Practice 1: Identify Error Type

```java
System.out.println("Hello")
```

<details>
<summary>Suggested Answer</summary>

This is a syntax error because the semicolon is missing.

Corrected:

```java
System.out.println("Hello");
```

</details>

---

### Practice 2: Identify Error Type

```java
int[] data = {5, 10, 15};
System.out.println(data[3]);
```

<details>
<summary>Suggested Answer</summary>

This is a runtime error because the program tries to access index 3, but valid indexes are 0, 1, and 2.

</details>

---

### Practice 3: Logic Error

```java
int mark = 50;

if (mark > 50) {
    System.out.println("Pass");
} else {
    System.out.println("Fail");
}
```

Assume 50 is a pass mark. What is wrong?

<details>
<summary>Suggested Answer</summary>

The condition should be `mark >= 50`, not `mark > 50`.

Corrected:

```java
if (mark >= 50) {
    System.out.println("Pass");
} else {
    System.out.println("Fail");
}
```

</details>

---

### Practice 4: Choose Test Data

A program accepts age from 0 to 120 inclusive. Choose:

- one normal test
- two boundary tests
- two invalid tests

<details>
<summary>Suggested Answer</summary>

| Type | Test Data |
|---|---:|
| Normal | 25 |
| Boundary | 0 |
| Boundary | 120 |
| Invalid | -1 |
| Invalid | 121 |

</details>

---

### Practice 5: Debug Array Loop

```java
int[] values = {2, 4, 6};

for (int i = 0; i <= values.length; i++) {
    System.out.println(values[i]);
}
```

<details>
<summary>Suggested Answer</summary>

The condition should be `i < values.length`, not `i <= values.length`.

Corrected:

```java
for (int i = 0; i < values.length; i++) {
    System.out.println(values[i]);
}
```

</details>

---

### Practice 6: Complete Test Table

A program accepts marks from 0 to 100 inclusive.

Fill expected results.

| Test Data | Test Type | Expected Result |
|---:|---|---|
| 60 | Normal | ? |
| 0 | Boundary | ? |
| 100 | Boundary | ? |
| -1 | Invalid | ? |
| 101 | Invalid | ? |

<details>
<summary>Suggested Answer</summary>

| Test Data | Test Type | Expected Result |
|---:|---|---|
| 60 | Normal | Valid |
| 0 | Boundary | Valid |
| 100 | Boundary | Valid |
| -1 | Invalid | Invalid |
| 101 | Invalid | Invalid |

</details>

---

## 18. Independent Practice

### Question 1

Define testing and debugging.

### Question 2

Give one example of a syntax error, runtime error, and logic error.

### Question 3

A program accepts a quantity from 1 to 50 inclusive. Create a test table with:

- normal test data
- lower boundary
- upper boundary
- just below lower boundary
- just above upper boundary

### Question 4

Find and correct the error:

```java
String name = "Alice";

if (name == "Alice") {
    System.out.println("Found");
}
```

### Question 5

Find and correct the error:

```java
int[] values = {1, 2, 3};

for (int i = 1; i <= values.length; i++) {
    System.out.println(values[i]);
}
```

### Question 6

Trace the code and find the logic error:

```java
int[] scores = {40, 55, 70};
int passCount = 0;

for (int i = 0; i < scores.length; i++) {
    if (scores[i] > 50) {
        passCount++;
    }
}

System.out.println(passCount);
```

Assume a pass mark is 50 or above.

### Question 7

Write Java code that checks whether an index is valid before accessing an array.

### Question 8

Explain why boundary testing is important.

### Question 9

Explain why actual result and expected result should both be recorded.

### Question 10

Create a trace table for a loop that calculates a total.

---

## 19. Exam-style Questions

### Question 1 [4 marks]

Distinguish between testing and debugging.

<details>
<summary>Mark Scheme Style Answer</summary>

Testing is running a program with test data to check whether it produces the expected results. Debugging is finding and fixing the errors discovered during testing or program development. Testing identifies that a problem exists, while debugging locates and corrects the cause of the problem.

</details>

---

### Question 2 [6 marks]

A program accepts marks from 0 to 100 inclusive. Create suitable test data and expected results.

<details>
<summary>Mark Scheme Style Answer</summary>

| Test Type | Test Data | Expected Result |
|---|---:|---|
| Normal | 75 | Valid |
| Lower boundary | 0 | Valid |
| Upper boundary | 100 | Valid |
| Just below lower boundary | -1 | Invalid |
| Just above upper boundary | 101 | Invalid |
| Extreme invalid | 999 | Invalid |

Marks awarded for including normal, boundary, and invalid data, and for giving correct expected results.

</details>

---

### Question 3 [5 marks]

Identify the error type and explain the cause.

```java
int[] values = {10, 20, 30};
System.out.println(values[3]);
```

<details>
<summary>Mark Scheme Style Answer</summary>

This is a runtime error because the program may compile but fails when it runs. The array has length 3, so the valid indexes are 0, 1, and 2. Index 3 is outside the valid range, so accessing `values[3]` causes an array out-of-bounds error.

</details>

---

### Question 4 [6 marks]

A program should count marks that are 50 or above. The code is:

```java
if (mark > 50) {
    count++;
}
```

Explain the logic error and correct it.

<details>
<summary>Mark Scheme Style Answer</summary>

The logic error is that the condition uses `mark > 50`, so a mark of exactly 50 is not counted. If 50 is a pass mark, the condition should include 50. The corrected condition is:

```java
if (mark >= 50) {
    count++;
}
```

This counts marks that are equal to or greater than 50.

</details>

---

### Question 5 [6 marks]

Explain how a trace table can help debug a program.

<details>
<summary>Mark Scheme Style Answer</summary>

A trace table records the values of variables step by step as a program or algorithm runs. This helps the programmer see how values change during each iteration or branch. By comparing the recorded values with the expected values, the programmer can identify where the program first behaves incorrectly. This is especially useful for loops, searching, sorting, and logic errors.

</details>

---

## 20. Practice task
### Activity 1: Error Sorting

Students receive code cards. They classify each error as:

```text
syntax error
runtime error
logic error
```

Then they explain their choice.

---

### Activity 2: Boundary Test Challenge

Groups receive validation rules such as:

```text
age 0-120
mark 0-100
quantity 1-50
menu choice 1-4
```

For each rule, they create normal, boundary, invalid, and extreme test data.

---

### Activity 3: Debugging Race

Groups receive short Java programs with hidden errors. They must:

1. predict expected output
2. run or trace actual output
3. identify the bug
4. correct the code
5. explain the error type

---

## 21. Independent practice
### Independent practice part A: Test Table

Create a test table for a program that accepts a password length from 8 to 20 characters inclusive.

Include:

- normal value
- lower boundary
- upper boundary
- just below lower boundary
- just above upper boundary
- extreme value

---

### Independent practice part B: Debug Code

Find and fix all errors:

```java
int[] marks = {50, 72, 43, 90};
int count = 0;

for (int i = 0; i <= marks.length; i++) {
    if (marks[i] > 50) {
        count = count + 1;
    }
}

System.out.println(count);
```

Assume 50 is a pass mark.

---

### Independent practice part C: Explanation

In 4-5 sentences, explain the difference between syntax, runtime, and logic errors.

---

### Independent practice part D: Trace

Trace this code:

```java
int total = 0;

for (int i = 1; i <= 4; i++) {
    total = total + i;
}

System.out.println(total);
```

Create a trace table with columns:

```text
i, total before, total after
```

---

## 22. One-page Revision Summary

| Point | Summary |
|---|---|
| Testing | Running a program with test data to check results |
| Debugging | Finding and fixing errors |
| Syntax error | Breaks language rules; often prevents compilation |
| Runtime error | Happens while program is running |
| Logic error | Program runs but gives wrong result |
| Normal test data | Valid typical input |
| Boundary test data | Values at the edge of valid range |
| Invalid test data | Values that should be rejected |
| Extreme test data | Very unusual or large values |
| Expected result | What should happen |
| Actual result | What really happens |
| Trace table | Records variable values step by step |
| Defensive programming | Checks possible problems before they cause errors |
| Exam phrase | Testing compares actual results with expected results to identify errors |

---

## 23. Quick Self-test

Before finishing this topic, students should be able to answer these:

1. What is testing?
2. What is debugging?
3. What is a syntax error?
4. What is a runtime error?
5. What is a logic error?
6. Why is boundary testing important?
7. What is the difference between expected and actual result?
8. How can a trace table help find a bug?
9. Why is `i < array.length` safer than `i <= array.length`?
10. Why should a program test invalid input?

