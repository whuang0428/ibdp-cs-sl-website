# Exception Handling and Robust Programs

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what an exception is
- use `try` and `catch` in Java
- distinguish syntax errors, runtime errors, and logic errors
- write robust input-handling code
- explain validation and defensive programming
- design programs that fail safely

---

## 2. Course Position

| Item | Detail |
|---|---|
| Section | HL Programming Extension / School Extension |
| Main link | B2 Programming + B3 OOP |
| Language focus | IB pseudocode + Java |
| Difficulty | Extension beyond SL |
| Main skill | Making programs safer and more reliable |

::: warning Extension Note
This section is included because the course plans to give students stronger programming ability beyond the minimum SL requirement. It should be taught after students are comfortable with B2 Programming and B3 OOP basics.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Exception | 异常 | An event during program execution that disrupts normal flow |
| try block | try代码块 | Code that may cause an exception |
| catch block | catch代码块 | Code that handles an exception |
| Runtime error | 运行时错误 | Error that occurs while the program is running |
| Validation | 验证 | Checking input before processing |
| Robustness | 健壮性 | Ability of a program to handle errors or unexpected input |
| Defensive programming | 防御式编程 | Writing code that anticipates possible errors |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

实际程序不能假设用户永远输入正确数据。**Robust program（健壮程序）** 能处理错误输入、缺失文件、非法操作等情况，而不是直接崩溃。

Java 使用 `try` 和 `catch` 处理可能发生的 exceptions。

例如用户应该输入数字，但输入了文字，程序可能产生 runtime error。通过 exception handling，可以显示友好错误信息，并让程序继续或安全结束。

</template>

<template #en>

### English Explanation

Real programs cannot assume users always enter correct data. A **robust program** can handle invalid input, missing files, illegal operations, and other problems without simply crashing.

Java uses `try` and `catch` to handle possible exceptions.

For example, if the user should enter a number but enters text, the program may cause a runtime error. With exception handling, the program can display a friendly error message and continue or end safely.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Age input

User is expected to enter an integer age.

| Input | Problem? |
|---|---|
| 16 | valid |
| abc | invalid type |
| -5 | invalid value |
| 200 | unrealistic value |

A robust program should handle all cases.

---

## 6. IB Pseudocode Pattern

```text
TRY
    INPUT age
    IF age < 0 OR age > 120 THEN
        OUTPUT "Invalid age"
    ELSE
        OUTPUT "Age accepted"
    END IF
CATCH input error
    OUTPUT "Please enter a number"
END TRY
```

---

## 7. Java Code Example

```java
import java.util.Scanner;
import java.util.InputMismatchException;

public class RobustInputExample {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        try {
            System.out.println("Enter age:");
            int age = input.nextInt();

            if (age >= 0 && age <= 120) {
                System.out.println("Age accepted");
            } else {
                System.out.println("Invalid age range");
            }
        } catch (InputMismatchException e) {
            System.out.println("Please enter a whole number.");
        }

        input.close();
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `try` | Contains code that may cause an exception |
| `input.nextInt()` | May fail if input is not an integer |
| `catch (InputMismatchException e)` | Handles wrong input type |
| validation condition | Checks age range |
| friendly message | Helps user understand the problem |

---

## 9. Step-by-step Trace / Process

Example traces:

| User input | Result |
|---|---|
| 16 | Age accepted |
| -5 | Invalid age range |
| abc | Please enter a whole number. |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using exception handling instead of validation only | They solve different issues | Use both type handling and value validation |
| Catching error but giving no message | User does not know problem | Give clear feedback |
| Catching all exceptions blindly | May hide bugs | Catch expected exceptions where possible |
| Assuming program is correct because it runs | Logic errors may remain | Use testing and trace tables |
| Not closing Scanner/resources | Resource warning may occur | Close resources when finished |

---

## 11. Guided Practice

### Practice 1

What is the purpose of `catch`?

<details><summary>Suggested Answer</summary>

It handles an exception that occurs in the `try` block.

</details>

### Practice 2

Why is `-5` invalid for age even though it is an integer?

<details><summary>Suggested Answer</summary>

It passes the type check, but fails value validation because age should not be negative.

</details>

---

## 12. Independent Practice

1. Write Java code that handles invalid integer input.
2. Add validation for mark from 0 to 100.
3. Explain the difference between exception handling and validation.
4. Give one example of defensive programming.

---

## 13. Exam-style / Code-reading Questions

### Question 1 [3 marks]

Explain why exception handling is useful.

<details><summary>Mark Scheme Style Answer</summary>

Exception handling allows a program to respond to runtime errors without crashing immediately. It can display a useful message, recover safely, or close resources properly.

</details>

### Question 2 [4 marks]

Explain why both exception handling and validation may be needed for user input.

<details><summary>Mark Scheme Style Answer</summary>

Exception handling can deal with incorrect data type input, such as entering text when an integer is expected. Validation checks whether a correctly typed value is acceptable, such as checking that a mark is between 0 and 100. Both improve program robustness.

</details>

---

## 14. Classroom Activity

### Activity: Break the Program

Students test a simple input program with invalid values, extreme values, text input, empty input, and valid values. Then they improve the program.

---

## 15. Homework

Write a robust Java mark input program. It should handle non-integer input and reject marks outside 0 to 100. Include test data.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Exception | Runtime disruption |
| try | Code that may fail |
| catch | Handles exception |
| Validation | Checks acceptable values |
| Robustness | Handles unexpected input safely |
| Exam phrase | Exception handling prevents the program from crashing immediately when a runtime error occurs. |
