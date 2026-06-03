# Exception Handling and Robust Programs

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define exception
- define exception handling
- explain why exception handling improves program robustness
- distinguish syntax errors, logic errors, and runtime errors
- explain the purpose of `try`, `catch`, and `finally`
- identify common exceptions such as invalid input, division by zero, file not found, and index out of range
- explain the difference between validation and exception handling
- write simple pseudocode or Java-style code using exception handling
- explain how robust programs respond safely to unexpected situations
- design test data for robust programs
- identify common mistakes in exception handling
- answer exam-style questions using mark scheme vocabulary

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | HL Programming Extension |
| Topic | Exception Handling and Robust Programs |
| Main skill | Making programs handle unexpected errors safely |
| Connected topics | Validation, verification, testing, debugging, file processing, arrays, OOP |
| Practical focus | `try`, `catch`, `finally`, input checking, safe file handling |
| Exam relevance | Definitions, error type comparison, robustness explanation, scenario questions |

::: tip Learning Focus
A robust program should not crash immediately when unexpected input or runtime errors occur. It should detect the problem, respond safely, and help the user continue or recover.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Exception | 异常 | Event/error that interrupts normal program flow |
| Exception handling | 异常处理 | Code that catches and responds to exceptions |
| Robustness | 健壮性 | Ability of a program to handle unexpected situations without failing badly |
| Runtime error | 运行时错误 | Error that occurs while the program is running |
| Syntax error | 语法错误 | Error caused by invalid code grammar |
| Logic error | 逻辑错误 | Program runs but produces wrong result |
| `try` block | 尝试代码块 | Code that may cause an exception |
| `catch` block | 捕获代码块 | Code that runs when a matching exception occurs |
| `finally` block | 最终代码块 | Code that runs whether or not an exception occurs |
| Throw | 抛出异常 | Create/send an exception when an error occurs |
| Handle | 处理异常 | Respond to an exception safely |
| Validation | 验证输入合理性 | Check whether input is sensible before processing |
| Verification | 核对输入正确性 | Check whether data has been copied/entered correctly |
| Defensive programming | 防御式编程 | Writing code that anticipates possible errors |
| Error message | 错误提示 | Message explaining what went wrong |
| File not found | 文件未找到 | Exception when a required file cannot be opened |
| Division by zero | 除以零 | Runtime error when a number is divided by 0 |
| Index out of range | 索引越界 | Accessing an invalid array/list index |
| Null reference | 空引用错误 | Trying to use an object reference that is null |
| Resource leak | 资源泄漏 | Resource not closed/released properly |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Exception handling（异常处理）的目的不是让程序永远不出错，而是让程序遇到错误时不要直接崩溃。

例如程序需要输入一个数字：

```text
INPUT age
```

但用户输入了：

```text
"abc"
```

如果程序直接把 `"abc"` 当数字处理，就可能 runtime error。

robust program 应该做到：

```text
发现问题
给出清楚提示
不要直接崩溃
允许用户重新输入
安全关闭文件或释放资源
```

Java 里常见结构是：

```java
try {
    // code that may cause an exception
} catch (Exception e) {
    // handle the error
} finally {
    // code that always runs
}
```

注意：validation 和 exception handling 不一样。

```text
validation = 处理前先检查输入是否合理
exception handling = 错误真的发生后，安全处理
```

例如：

```text
validation: 检查 age 是否在 0 到 120
exception handling: 用户输入 "abc" 导致转换失败时 catch 错误
```

考试里常见答题句：

```text
Exception handling improves robustness because the program can catch runtime errors and respond safely instead of terminating unexpectedly.
```

</template>

<template #en>

### English Explanation

The purpose of exception handling is not to make errors impossible.  
It helps the program avoid crashing immediately when an error happens.

Example: a program expects a number:

```text
INPUT age
```

But the user enters:

```text
"abc"
```

If the program treats `"abc"` as a number, a runtime error may occur.

A robust program should:

```text
detect the problem
give a clear message
avoid crashing immediately
allow the user to try again
close files or release resources safely
```

In Java, the common structure is:

```java
try {
    // code that may cause an exception
} catch (Exception e) {
    // handle the error
} finally {
    // code that always runs
}
```

Validation and exception handling are different.

```text
validation = check whether input is sensible before processing
exception handling = safely respond after an error occurs
```

Example:

```text
validation: check age is between 0 and 120
exception handling: catch an error if user enters "abc" and conversion fails
```

Common exam sentence:

```text
Exception handling improves robustness because the program can catch runtime errors and respond safely instead of terminating unexpectedly.
```

</template>
</LangBlock>

---

## 5. What Is an Exception?

An exception is an error or unusual event that interrupts the normal flow of a program.

### Simple Definition

```text
An exception is an event that occurs during program execution and disrupts the normal sequence of instructions.
```

### Examples

```text
user enters text when a number is expected
program divides by zero
file cannot be found
array index is outside valid range
object reference is null
network connection fails
```

### Mark Scheme Phrase

```text
An exception is a runtime event that disrupts normal program execution and may need to be handled to prevent program failure.
```

---

## 6. What Is Exception Handling?

Exception handling is code that catches and responds to exceptions.

### Simple Definition

```text
Exception handling allows a program to detect runtime errors and respond safely rather than terminating unexpectedly.
```

### Common Structure

```text
TRY
    code that may fail
CATCH error
    handle the error
FINALLY
    clean up resources
ENDTRY
```

### Mark Scheme Phrase

```text
Exception handling improves robustness because the program can catch runtime errors and take appropriate action instead of crashing.
```

---

## 7. Error Types

| Error Type | When It Happens | Example | Detection |
|---|---|---|---|
| Syntax error | before running / compiling | missing bracket | compiler/interpreter reports it |
| Runtime error | while running | divide by zero | exception may occur |
| Logic error | while running | wrong formula | output is wrong but program may not crash |

### Example: Syntax Error

```java
System.out.println("Hello"
```

Missing closing bracket.

### Example: Runtime Error

```java
int result = 10 / 0;
```

Division by zero.

### Example: Logic Error

```text
average ← total / 4
```

when 5 scores were entered.

---

## 8. Why Robustness Matters

A robust program handles unexpected situations safely.

### A Non-robust Program

```text
crashes when input is invalid
loses data when a file error occurs
shows confusing technical errors to users
continues with corrupted data
does not close resources
```

### A Robust Program

```text
validates input
handles exceptions
gives clear error messages
allows retry where appropriate
logs errors when needed
closes files/resources
protects data consistency
```

### Mark Scheme Phrase

```text
Robustness is the ability of a program to continue operating safely or fail gracefully when unexpected input or errors occur.
```

---

## 9. `try`, `catch`, and `finally`

### `try`

The `try` block contains code that might cause an exception.

```java
try {
    int result = 10 / number;
}
```

### `catch`

The `catch` block handles the exception.

```java
catch (ArithmeticException e) {
    System.out.println("Cannot divide by zero.");
}
```

### `finally`

The `finally` block runs whether or not an exception occurs.

```java
finally {
    System.out.println("Finished calculation.");
}
```

### Mark Scheme Phrase

```text
The try block contains risky code, the catch block handles matching exceptions, and the finally block runs regardless of whether an exception occurs.
```

---

## 10. Basic Java-style Example

```java
try {
    int result = 100 / number;
    System.out.println(result);
} catch (ArithmeticException e) {
    System.out.println("Cannot divide by zero.");
}
```

### Explanation

If `number` is not zero:

```text
result is calculated and output
```

If `number` is zero:

```text
ArithmeticException is caught
error message is displayed
program can continue
```

---

## 11. Input Error Example

A user enters a value that cannot be converted to an integer.

### Java-style Example

```java
try {
    int age = Integer.parseInt(inputText);
    System.out.println(age);
} catch (NumberFormatException e) {
    System.out.println("Please enter a whole number.");
}
```

### Why Useful?

The program does not crash when the user enters:

```text
abc
12.5
empty input
```

Instead, it gives a useful message.

---

## 12. File Error Example

A program tries to open a file that does not exist.

### Java-style Example

```java
try {
    File file = new File("data.txt");
    Scanner reader = new Scanner(file);

    while (reader.hasNextLine()) {
        System.out.println(reader.nextLine());
    }

    reader.close();
} catch (FileNotFoundException e) {
    System.out.println("The file could not be found.");
}
```

### Mark Scheme Phrase

```text
File exceptions should be handled so the program can inform the user or recover if the file cannot be opened.
```

---

## 13. Finally and Resource Cleanup

The `finally` block is useful for cleanup.

### Examples of Cleanup

```text
close a file
close a database connection
release network connection
reset temporary state
```

### Pseudocode

```text
TRY
    open file
    read data
CATCH fileError
    OUTPUT "File error"
FINALLY
    close file if open
ENDTRY
```

### Why Important?

Resources should be released even if an error occurs.

---

## 14. Validation vs Exception Handling

Validation and exception handling both help robustness, but they are not the same.

| Validation | Exception Handling |
|---|---|
| checks data before processing | responds after an exception occurs |
| prevents many errors | handles errors that still happen |
| expected checks | unexpected or difficult-to-prevent errors |
| example: range check | example: file not found |
| example: type check | example: division by zero exception |

### Strong Exam Answer

```text
Validation checks that input is acceptable before it is processed, while exception handling catches runtime errors if something goes wrong during execution.
```

---

## 15. Example: Validation and Exception Handling Together

### Scenario

A program asks for age.

### Validation

```text
age must be between 0 and 120
```

### Exception Handling

```text
catch error if input cannot be converted to integer
```

### Java-style Logic

```java
try {
    int age = Integer.parseInt(inputText);

    if (age < 0 || age > 120) {
        System.out.println("Age out of range.");
    } else {
        System.out.println("Age accepted.");
    }
} catch (NumberFormatException e) {
    System.out.println("Please enter a whole number.");
}
```

### Key Idea

Use both:

```text
exception handling for conversion error
validation for range error
```

---

## 16. Defensive Programming

Defensive programming means writing code that expects possible problems.

### Examples

```text
check input before processing
check array index before access
check file exists before opening
check object is not null before using it
use default values carefully
handle exceptions
show clear error messages
test invalid data
```

### Mark Scheme Phrase

```text
Defensive programming anticipates possible errors and includes checks or handling to reduce failure and improve reliability.
```

---

## 17. Common Exceptions

| Problem | Possible Exception / Error Idea | Example |
|---|---|---|
| divide by zero | arithmetic exception | `10 / 0` |
| invalid number input | number format exception | `"abc"` to integer |
| invalid array index | index out of range | `scores[10]` when length is 5 |
| missing file | file not found exception | open missing file |
| null object | null reference exception | call method on null |
| input missing | input exception | no input available |
| network failure | connection exception | server unavailable |
| permission denied | security/access exception | file cannot be read |

---

## 18. Handling Array Index Errors

### Problem

```java
System.out.println(scores[index]);
```

If `index` is outside valid range, the program may crash.

### Better Defensive Check

```java
if (index >= 0 && index < scores.length) {
    System.out.println(scores[index]);
} else {
    System.out.println("Invalid index.");
}
```

### Exception Handling Option

```java
try {
    System.out.println(scores[index]);
} catch (ArrayIndexOutOfBoundsException e) {
    System.out.println("Invalid index.");
}
```

### Exam Tip

A validation-style boundary check is often better than relying only on catching the exception.

---

## 19. Handling Null References

### Problem

```java
student.displayDetails();
```

If `student` is `null`, this may cause an error.

### Defensive Check

```java
if (student != null) {
    student.displayDetails();
} else {
    System.out.println("Student record not found.");
}
```

### Key Idea

Check that an object reference exists before using it.

---

## 20. Handling Division by Zero

### Validation Approach

```text
IF divisor = 0 THEN
    OUTPUT "Cannot divide by zero"
ELSE
    result ← number / divisor
    OUTPUT result
ENDIF
```

### Exception Handling Approach

```text
TRY
    result ← number / divisor
    OUTPUT result
CATCH arithmeticError
    OUTPUT "Cannot divide by zero"
ENDTRY
```

### Best Approach

Use validation when the problem is predictable.  
Use exception handling as a safety net for runtime errors.

---

## 21. Error Messages

A good error message should be:

```text
clear
specific
user-friendly
not too technical
safe
actionable
```

### Weak Message

```text
Error 0x0000A1 stack trace failure
```

### Better Message

```text
Please enter a whole number between 0 and 100.
```

### Security Warning

Do not reveal sensitive technical details to normal users.

Weak:

```text
Database password failed for admin root at server 10.0.0.5
```

Better:

```text
Login failed. Please check your details or contact support.
```

---

## 22. Logging Errors

Sometimes errors should be logged for developers or administrators.

### User Message

```text
The file could not be loaded. Please try again later.
```

### Log Detail

```text
2026-05-22 14:32 FileNotFoundException: data/students.csv
```

### Why Separate?

Users need clear messages.  
Developers need technical details to fix the problem.

---

## 23. Robust File Processing

A robust file processing program should:

```text
check file exists if possible
handle file not found
handle invalid file format
close file after use
avoid losing existing data
use backups for important files
show useful error messages
```

### Pseudocode

```text
TRY
    OPEN file
    READ file
    PROCESS data
CATCH fileNotFound
    OUTPUT "File not found"
CATCH invalidFormat
    OUTPUT "File format is invalid"
FINALLY
    CLOSE file if open
ENDTRY
```

---

## 24. Robust Database / Transaction Link

Exception handling also matters in database operations.

### Example Problem

A bank transfer fails halfway.

```text
debit Account A
credit Account B
```

If the second step fails, the database should not keep the first step only.

### Robust Response

```text
use transaction
catch error
rollback changes
log issue
show safe message
```

### Mark Scheme Phrase

```text
Exception handling can support recovery by detecting failed operations and triggering rollback or safe cleanup.
```

---

## 25. Test Data for Robust Programs

Robust programs should be tested with normal, boundary, and invalid data.

### Example: Age 0 to 120

| Test Type | Example | Expected Result |
|---|---:|---|
| Normal valid | 25 | accepted |
| Boundary valid | 0 | accepted |
| Boundary valid | 120 | accepted |
| Boundary invalid | -1 | rejected |
| Boundary invalid | 121 | rejected |
| Invalid type | `abc` | error message / rejected |
| Empty input | blank | error message / rejected |

### Exam Phrase

```text
Invalid and boundary test data help check whether the program handles unexpected or extreme input safely.
```

---

## 26. Common Exception Handling Mistakes

| Mistake | Why It Is Bad | Better Approach |
|---|---|---|
| catching all errors silently | hides problems | show message and/or log error |
| no validation | predictable errors still happen | validate before processing |
| technical error shown to user | confusing or insecure | show user-friendly message |
| file not closed | resource leak | close in finally / safe structure |
| catch block does nothing | program may continue incorrectly | handle or stop safely |
| using exception handling for normal logic | inefficient/unclear | use normal IF checks when possible |
| catching too broad exception only | hides specific cause | catch specific exceptions where useful |
| continuing with invalid data | wrong results | request new input or stop operation |
| no test with invalid data | hidden crashes | test invalid/boundary cases |
| no logging | hard to diagnose | log useful technical detail |

---

## 27. Syntax, Runtime, Logic: Worked Examples

### Example 1

```java
System.out.println("Hello"
```

Error type:

```text
syntax error
```

Reason:

```text
missing closing bracket/semicolon depending on language
```

---

### Example 2

```java
int result = 10 / number;
```

If `number = 0`, error type:

```text
runtime error / exception
```

Reason:

```text
division by zero occurs while program is running
```

---

### Example 3

```text
average ← total / 4
```

when 5 values were input, error type:

```text
logic error
```

Reason:

```text
program may run but the result is incorrect
```

---

## 28. Worked Example: Robust Input Loop

### Problem

Keep asking for a mark until a valid integer from 0 to 100 is entered.

### Pseudocode

```text
valid ← false

WHILE valid = false
    TRY
        INPUT mark

        IF mark < 0 OR mark > 100 THEN
            OUTPUT "Mark must be between 0 and 100"
        ELSE
            valid ← true
        ENDIF

    CATCH inputError
        OUTPUT "Please enter a whole number"
    ENDTRY
ENDWHILE

OUTPUT "Mark accepted"
```

### Why Strong?

It handles:

```text
wrong type
out of range
retry
clear message
```

---

## 29. Worked Example: Safe Array Access

### Problem

Output the element at a user-selected index.

### Pseudocode

```text
INPUT index

IF index >= 0 AND index < length(items) THEN
    OUTPUT items[index]
ELSE
    OUTPUT "Invalid index"
ENDIF
```

### Why This Is Robust

It prevents an index out-of-range error before accessing the array.

---

## 30. Scenario Answer Bank

### If Asked: “Define exception”

```text
An exception is a runtime event that disrupts the normal flow of program execution.
```

### If Asked: “Define exception handling”

```text
Exception handling is code that catches and responds to runtime errors so the program can fail safely or continue.
```

### If Asked: “Why does exception handling improve robustness?”

```text
It allows the program to detect runtime errors and respond with safe actions or clear messages instead of terminating unexpectedly.
```

### If Asked: “Validation vs exception handling”

```text
Validation checks data before processing, while exception handling responds after a runtime error occurs.
```

### If Asked: “Why use finally?”

```text
A finally block runs whether or not an exception occurs, so it is useful for closing files or releasing resources.
```

### If Asked: “What is defensive programming?”

```text
Defensive programming anticipates possible errors and includes checks or handling to prevent failure or reduce harm.
```

---

## 31. Exam-style Questions

### Question 1 [2 marks]

Define exception.

<details>
<summary>Mark Scheme Style Answer</summary>

An exception is a runtime event or error that disrupts the normal flow of program execution.

</details>

---

### Question 2 [2 marks]

Define exception handling.

<details>
<summary>Mark Scheme Style Answer</summary>

Exception handling is code that catches and responds to runtime errors so the program can continue safely or fail gracefully.

</details>

---

### Question 3 [4 marks]

Distinguish between a syntax error, runtime error, and logic error.

<details>
<summary>Mark Scheme Style Answer</summary>

A syntax error is caused by invalid code grammar and is usually detected before the program runs. A runtime error occurs while the program is running, such as division by zero or file not found. A logic error occurs when the program runs but produces an incorrect result because the algorithm is wrong.

</details>

---

### Question 4 [4 marks]

Explain how exception handling improves robustness.

<details>
<summary>Mark Scheme Style Answer</summary>

Exception handling improves robustness because the program can catch runtime errors and respond safely instead of terminating unexpectedly. For example, if a file is missing, the program can show a clear message, log the error, and avoid using invalid data.

</details>

---

### Question 5 [4 marks]

Explain the roles of `try` and `catch`.

<details>
<summary>Mark Scheme Style Answer</summary>

The `try` block contains code that may cause an exception. The `catch` block runs when a matching exception occurs and contains code to handle the error, such as displaying a message or requesting new input.

</details>

---

### Question 6 [4 marks]

Explain why validation and exception handling may both be needed when entering an age.

<details>
<summary>Mark Scheme Style Answer</summary>

Exception handling may be needed if the user enters text that cannot be converted into a number. Validation is then needed to check whether the numeric age is sensible, such as being between 0 and 120. Together they help the program handle both invalid type and invalid range safely.

</details>

---

### Question 7 [5 marks]

A program reads data from a file. Explain two ways to make the file processing more robust.

<details>
<summary>Mark Scheme Style Answer</summary>

The program should handle file-not-found errors so it can show a clear message or request a different file instead of crashing. It should also close the file after reading, possibly using a finally block, to avoid resource leaks. Other valid answers include checking file format, backing up data, logging errors, and validating file contents.

</details>

---

### Question 8 [5 marks]

A program accesses `scores[index]`. Explain how to prevent an index out-of-range error.

<details>
<summary>Mark Scheme Style Answer</summary>

The program should check that the index is within the valid range before accessing the array. For zero-based indexing, the index should be greater than or equal to 0 and less than the array length. If the index is invalid, the program should show an error message rather than trying to access the array.

</details>

---

## 32. Guided Practice

### Practice 1

What type of error is this?

```java
int result = 10 / 0;
```

<details>
<summary>Suggested Answer</summary>

Runtime error / arithmetic exception.

</details>

---

### Practice 2

What type of error is this?

```text
average ← total / 4
```

when 5 values were entered.

<details>
<summary>Suggested Answer</summary>

Logic error.

</details>

---

### Practice 3

What does a `catch` block do?

<details>
<summary>Suggested Answer</summary>

It handles a matching exception when an error occurs in the try block.

</details>

---

### Practice 4

Why is `finally` useful?

<details>
<summary>Suggested Answer</summary>

It runs whether or not an exception occurs, so it can be used to close files or release resources.

</details>

---

### Practice 5

Should users usually see a full technical stack trace?

<details>
<summary>Suggested Answer</summary>

No. Users should see a clear safe message, while technical details can be logged for developers.

</details>

---

## 33. Independent Practice

### Question 1

Define exception.

### Question 2

Define exception handling.

### Question 3

Compare validation and exception handling.

### Question 4

Give three examples of runtime errors.

### Question 5

Explain why clear error messages matter.

### Question 6

Write pseudocode to handle division by zero.

### Question 7

Write pseudocode to safely access an array using an index.

### Question 8

Explain why file handling should include exception handling.

### Question 9

Create test data for a program that accepts marks from 0 to 100.

### Question 10

Explain how exception handling can support database transaction recovery.

---

## 34. Practice task
### Activity 1: Error Sorting

Students classify cards as:

```text
syntax error
runtime error
logic error
```

Example cards:

```text
missing bracket
division by zero
wrong average formula
file not found
index out of range
incorrect IF condition
```

---

### Activity 2: Robust Input Design

Students design an input routine for:

```text
age
exam mark
email address
password
file name
```

They must include:

```text
validation
error message
retry logic
exception handling if needed
```

---

### Activity 3: Bad Error Message Rewrite

Students rewrite weak messages:

```text
Error
Invalid
System failed
NullPointerException at line 42
Database connection password failure
```

into user-friendly and safe messages.

---

## 35. Independent practice
### Independent practice part A

Explain exception handling and robustness in 8-10 sentences using one realistic example.

### Independent practice part B

Write pseudocode for:

```text
1. division by zero handling
2. valid mark input from 0 to 100
3. file not found handling
4. safe array index access
5. retry until valid integer input
```

### Independent practice part C

Create test data for a program that accepts ages 12 to 18 inclusive.

Include:

```text
normal valid
boundary valid
boundary invalid
invalid type
empty input
```

### Independent practice part D

Correct these misconceptions:

```text
Exception handling prevents all errors from happening.
Validation and exception handling are the same.
A catch block should always be empty.
Users should see full technical error messages.
Logic errors are always caught by exception handling.
Finally only runs when an error happens.
```

---

## 36. One-page Revision Summary

| Point | Summary |
|---|---|
| Exception | runtime event/error disrupting normal flow |
| Exception handling | catches/responds to runtime errors |
| Robustness | handles unexpected situations safely |
| Syntax error | invalid code grammar |
| Runtime error | occurs while program runs |
| Logic error | wrong result but program may run |
| `try` | contains risky code |
| `catch` | handles matching exception |
| `finally` | always runs, useful for cleanup |
| Validation | checks input before processing |
| Defensive programming | anticipates possible errors |
| Underlying aim | avoid unexpected crash or unsafe state |
| Good error message | clear, safe, actionable |
| File handling | catch file errors and close files |
| Array safety | check index before access |
| Testing | include normal, boundary, invalid data |
| Exam phrase | exception handling improves robustness by allowing a program to catch runtime errors and respond safely instead of terminating unexpectedly |

