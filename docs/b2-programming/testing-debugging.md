# Testing and Debugging

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of testing
- distinguish normal, boundary, and invalid test data
- distinguish syntax, runtime, and logic errors
- explain debugging methods
- design test cases with expected results
- use trace tables to find logic errors

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Checking program correctness |
| Connected units | All B2 programming topics |
| Exam relevance | Error identification, test data, debugging explanation |

---

## 3. Key Terms

| Term | 中文解释 | Meaning |
|---|---|---|
| Testing | 测试 | Running a program to check whether it works |
| Debugging | 调试 | Finding and fixing errors |
| Test data | 测试数据 | Input values used to test a program |
| Normal data | 正常数据 | Valid typical data |
| Boundary data | 边界数据 | Data at the edge of a valid range |
| Invalid data | 无效数据 | Data that should be rejected |
| Expected result | 预期结果 | What should happen if program is correct |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Testing（测试）** 用来检查程序是否按照预期工作。只用一个测试值是不够的，因为程序可能在某些特殊输入下出错。

常见测试数据包括：

- normal data：正常范围内的普通数据
- boundary data：边界值
- invalid data：应该被拒绝的数据

**Debugging（调试）** 是找到并修复错误的过程。错误可能是语法错误、运行时错误或逻辑错误。

</template>

<template #en>

### English Explanation

**Testing** checks whether a program works as expected. One test value is not enough because the program may fail for special or edge cases.

Common test data includes:

- normal data: typical valid data
- boundary data: values at the edge of the valid range
- invalid data: values that should be rejected

**Debugging** is the process of finding and fixing errors. Errors may be syntax errors, runtime errors, or logic errors.

</template>
</LangBlock>

---

## 5. Real-life Example

A program accepts marks from 0 to 100.

| Test Value | Type | Expected Result |
|---|---|---|
| 50 | Normal | Accepted |
| 0 | Boundary | Accepted |
| 100 | Boundary | Accepted |
| -1 | Invalid | Rejected |
| 101 | Invalid | Rejected |

---

## 6. IB Pseudocode Pattern

```text
INPUT mark

IF mark >= 0 AND mark <= 100 THEN
    OUTPUT "Valid mark"
ELSE
    OUTPUT "Invalid mark"
END IF
```

---

## 7. Java Code Example

```java
public class MarkValidation {
    public static void main(String[] args) {
        int mark = 101;

        if (mark >= 0 && mark <= 100) {
            System.out.println("Valid mark");
        } else {
            System.out.println("Invalid mark");
        }
    }
}
```

Logic error example:

```java
double area = length + width;  // wrong if area should be length * width
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `mark = 101` | Test value |
| `mark >= 0 && mark <= 100` | Checks valid range |
| Valid branch | Runs for values from 0 to 100 |
| Invalid branch | Runs for values outside range |

---

## 9. Test Table

| Test No. | Test Data | Type | Expected Result | Actual Result | Pass/Fail |
|---|---:|---|---|---|---|
| 1 | 50 | Normal | Valid mark | Valid mark | Pass |
| 2 | 0 | Boundary | Valid mark | Valid mark | Pass |
| 3 | 100 | Boundary | Valid mark | Valid mark | Pass |
| 4 | -1 | Invalid | Invalid mark | Invalid mark | Pass |
| 5 | 101 | Invalid | Invalid mark | Invalid mark | Pass |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Only testing normal data | Boundary errors may be missed | Include boundary tests |
| No expected result | Cannot judge correctness | Write expected result first |
| Confusing error types | Explanation loses marks | Learn syntax/runtime/logic |
| Not retesting after fix | New errors may appear | Test again after debugging |
| Ignoring invalid data | Program may accept wrong input | Test invalid cases |

---

## 11. Guided Practice

Choose test data for age range 12 to 18 inclusive.

<details>
<summary>Suggested Answer</summary>

| Value | Type |
|---|---|
| 15 | Normal |
| 12 | Boundary |
| 18 | Boundary |
| 11 | Invalid |
| 19 | Invalid |

</details>

Identify error type:

```java
System.out.println("Hello"
```

<details>
<summary>Suggested Answer</summary>

Syntax error because closing parenthesis and semicolon are missing.

</details>

---

## 12. Independent Practice

1. Create test data for a password length rule: at least 8 characters.
2. Create a test table for marks 0 to 100.
3. Explain how a trace table can find a logic error.
4. Give one example of a runtime error.

---

## 13. Exam-style Questions

### Question 1 [3 marks]

Identify one normal, one boundary, and one invalid test value for marks 0 to 100.

<details>
<summary>Mark Scheme Style Answer</summary>

Normal: 50  
Boundary: 0 or 100  
Invalid: -1 or 101

</details>

### Question 2 [4 marks]

Explain the difference between a syntax error and a logic error.

<details>
<summary>Mark Scheme Style Answer</summary>

A syntax error breaks the rules of the programming language and may prevent the program from running. A logic error occurs when the program runs but produces the wrong result because the algorithm or calculation is incorrect.

</details>

---

## 14. Classroom Activity

Students exchange code snippets with one hidden bug. Partners identify the error type and suggest a fix.

---

## 15. Homework

Create a full test table for a program that accepts age from 0 to 120. Include normal, boundary, invalid data, expected results, and reasons.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Testing | Checks correctness |
| Debugging | Finds and fixes errors |
| Normal data | Typical valid data |
| Boundary data | Edge of valid range |
| Invalid data | Should be rejected |
| Exam phrase | "Expected results are used to compare with actual output to decide whether the test has passed." |
