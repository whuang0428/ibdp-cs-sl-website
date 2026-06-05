# Selection

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what selection is and why it is used
- write `IF`, `IF ELSE`, and `ELSE IF` structures in IB pseudocode and Java
- use comparison operators and Boolean operators correctly
- trace selection code and predict which branch will run
- write nested selection statements
- use selection for input validation and range checking
- identify common mistakes such as `=` vs `==` and incorrect Boolean logic
- answer exam-style tracing, debugging, and explanation questions

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Making decisions in algorithms and programs |
| Connected topics | Variables, data types, loops, arrays, searching, testing, OOP setters |
| Programming language focus | IB pseudocode + Java |
| Exam relevance | Trace tables, output prediction, algorithm writing, validation, code correction |

::: tip Learning Focus
Selection is the foundation of decision-making in programs. Searching, validation, counting values, sorting comparisons, and OOP setters all depend on correct selection logic.
:::

---

## Start here: selection means choosing a path

Selection allows a program to choose different actions depending on a condition.

Understand simple `IF` statements first. Then move to `ELSE IF`, `ELSE`, Boolean operators, and nested `IF`.

In exam questions, the key skill is checking the condition carefully and following the correct branch.

---

## Selection workflow

Use this route when tracing selection code:

| Step | What to do | Why it matters |
|---:|---|---|
| 1 | Identify the condition being tested. | The condition decides which path is possible. |
| 2 | Decide whether the condition is true or false. | Selection depends on a Boolean result. |
| 3 | Follow only the branch that should run. | The other branch is skipped. |
| 4 | If there are `ELSE IF` conditions, check them in order. | Later conditions only matter if earlier ones are false. |
| 5 | Use `ELSE` only when no previous condition is true. | `ELSE` is the fallback path. |
| 6 | For nested `IF` statements, trace the outer condition first, then the inner condition. | Inner conditions run only if their outer path is reached. |
| 7 | Check the final output or variable changes. | Exam answers must show the final result. |

---

## Condition order table

| Structure | How it works | Common use |
|---|---|---|
| `IF` | runs code only when one condition is true | simple decision |
| `IF / ELSE` | chooses between two paths | pass/fail, valid/invalid |
| `IF / ELSE IF / ELSE` | checks several conditions in order | grade boundaries |
| Nested `IF` | checks one condition inside another | multi-step decisions |
| Boolean condition | combines conditions using AND, OR, NOT | range checks or complex rules |

---

## Core checklist

By the end of this page, you should be able to:

- explain what selection is
- trace a simple `IF` statement
- distinguish `IF`, `ELSE IF`, and `ELSE`
- explain why condition order matters
- use comparison operators correctly
- use AND, OR, and NOT in simple conditions
- trace nested `IF` statements
- identify boundary cases in selection questions
- explain why a branch runs or does not run

---

## Selection trace pattern

When you meet a selection trace or debug question, use this order:

1. Write the initial values.
2. Read the first condition carefully.
3. Decide whether the condition is true or false.
4. Follow the correct branch only.
5. If there is `ELSE IF`, check conditions in order.
6. Record any changed variables or output.
7. For nested `IF`, trace from outside to inside.
8. Check boundary values such as equal to, less than, and greater than.

---

## Common exam traps

- using `>` when `>=` is needed
- forgetting equality cases at boundaries
- checking `ELSE IF` conditions in the wrong order
- thinking `ELSE` always runs
- using AND when OR is needed
- using OR when AND is needed
- tracing both `IF` and `ELSE` branches even though only one should run
- losing track inside nested `IF` statements
- confusing assignment with comparison
- not recording output after the correct branch runs

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Selection | 选择结构 | A programming structure that chooses which instructions to run based on a condition |
| Condition | 条件 | A Boolean expression that is either true or false |
| Boolean | 布尔值 | A value that can only be true or false |
| Branch | 分支 | One possible path through a selection structure |
| IF statement | IF 语句 | Runs code only if a condition is true |
| ELSE | 否则 | Runs code when the IF condition is false |
| ELSE IF | 否则如果 | Tests another condition if the previous condition was false |
| Nested IF | 嵌套 IF | An IF statement inside another IF statement |
| Comparison operator | 比较运算符 | Operator such as `==`, `!=`, `<`, `<=`, `>`, `>=` |
| Boolean operator | 布尔运算符 | Operator such as `&&`, `||`, `!` used to combine or reverse conditions |
| Validation | 验证 | Checking whether data is acceptable before processing |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Selection（选择结构）** 让程序根据条件选择不同的执行路径。

例如，判断一个学生是否通过考试：

```text
IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
END IF
```

这里的条件是：

```text
mark >= 50
```

如果条件为 true，程序输出 `"Pass"`。  
如果条件为 false，程序输出 `"Fail"`。

Selection 的核心是：

1. 先判断 condition 是 true 还是 false
2. 根据结果选择运行哪一段代码
3. 没有被选择的 branch 不会运行

Selection 后面会大量用到：

- loops：决定是否更新 total 或 count
- arrays：判断当前元素是否符合条件
- searching：判断当前元素是否等于 target
- sorting：判断两个元素是否需要交换
- validation：判断输入是否合法
- OOP：setter 中检查新值是否有效

</template>

<template #en>

### English Explanation

**Selection** allows a program to choose different execution paths depending on a condition.

For example, checking whether a student passes an exam:

```text
IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
END IF
```

The condition is:

```text
mark >= 50
```

If the condition is true, the program outputs `"Pass"`.  
If the condition is false, the program outputs `"Fail"`.

The core idea of selection is:

1. check whether the condition is true or false
2. choose which block of code to run
3. the branch not selected is skipped

Selection is used heavily later in:

- loops: deciding whether to update a total or count
- arrays: checking whether the current element matches a condition
- searching: checking whether the current element equals the target
- sorting: checking whether two values should be swapped
- validation: checking whether input is acceptable
- OOP: checking whether a new value is valid inside a setter

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: School Grade Decision

Boundary case example: `50` matters because the condition uses `>=`.

A school system receives a mark and outputs a result.

| Mark | Condition | Output |
|---:|---|---|
| 85 | `mark >= 50` is true | Pass |
| 49 | `mark >= 50` is false | Fail |
| 50 | `mark >= 50` is true | Pass |

::: info Scenario Link
The computer does not “understand” passing like a human. It follows the condition exactly.
:::

---

## 6. Comparison Operators

Comparison operators are used to create Boolean conditions.

| Operator | Meaning | Example | Result if `x = 10` |
|---|---|---|---|
| `==` | equal to | `x == 10` | true |
| `!=` | not equal to | `x != 10` | false |
| `>` | greater than | `x > 5` | true |
| `<` | less than | `x < 5` | false |
| `>=` | greater than or equal to | `x >= 10` | true |
| `<=` | less than or equal to | `x <= 9` | false |

::: warning Java Warning
In Java, `=` means assignment, while `==` means comparison.

```java
score = 50;   // assignment
score == 50;  // comparison
```
:::

---

## 7. Basic IF Statement

Simple IF example: this branch runs only when the condition is true.

## 7.1 IB Pseudocode Pattern

```text
IF mark >= 50 THEN
    OUTPUT "Pass"
END IF
```

## 7.2 Java Code Example

```java
public class BasicIfExample {
    public static void main(String[] args) {
        int mark = 75;

        if (mark >= 50) {
            System.out.println("Pass");
        }
    }
}
```

## 7.3 Line-by-line Explanation

| Code | Explanation |
|---|---|
| `int mark = 75;` | Stores the student's mark |
| `if (mark >= 50)` | Checks whether mark is at least 50 |
| `{ ... }` | Code inside braces runs only if condition is true |
| `System.out.println("Pass");` | Outputs Pass if condition is true |

## 7.4 Trace Table

| mark | Condition `mark >= 50` | Output |
|---:|---|---|
| 75 | true | Pass |
| 40 | false | no output |

A simple `IF` statement may do nothing if the condition is false.

---

## 8. IF ELSE Statement

IF / ELSE example: this structure chooses exactly one of two paths.

An `IF ELSE` statement gives two possible branches.

## 8.1 IB Pseudocode

```text
IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
END IF
```

## 8.2 Java Code

```java
public class IfElseExample {
    public static void main(String[] args) {
        int mark = 42;

        if (mark >= 50) {
            System.out.println("Pass");
        } else {
            System.out.println("Fail");
        }
    }
}
```

## 8.3 Trace Table

| mark | Condition `mark >= 50` | Branch Taken | Output |
|---:|---|---|---|
| 42 | false | ELSE | Fail |
| 50 | true | IF | Pass |
| 88 | true | IF | Pass |

::: tip Exam Phrase
An `IF ELSE` statement runs one branch if the condition is true and another branch if the condition is false.
:::

---

## 9. ELSE IF: Multiple Conditions

ELSE IF example: conditions are checked in order until the first true condition is found.

Use `ELSE IF` when there are more than two possible outcomes.

### 9.1 Example: Grade Boundaries

| Mark Range | Grade |
|---|---|
| 80 or above | A |
| 70-79 | B |
| 60-69 | C |
| 50-59 | D |
| below 50 | F |

### 9.2 IB Pseudocode

```text
IF mark >= 80 THEN
    OUTPUT "A"
ELSE IF mark >= 70 THEN
    OUTPUT "B"
ELSE IF mark >= 60 THEN
    OUTPUT "C"
ELSE IF mark >= 50 THEN
    OUTPUT "D"
ELSE
    OUTPUT "F"
END IF
```

### 9.3 Java Code

```java
public class ElseIfExample {
    public static void main(String[] args) {
        int mark = 76;

        if (mark >= 80) {
            System.out.println("A");
        } else if (mark >= 70) {
            System.out.println("B");
        } else if (mark >= 60) {
            System.out.println("C");
        } else if (mark >= 50) {
            System.out.println("D");
        } else {
            System.out.println("F");
        }
    }
}
```

### 9.4 Trace Table

For `mark = 76`:

| Step | Condition | Result | Action |
|---:|---|---|---|
| 1 | `mark >= 80` | false | skip A |
| 2 | `mark >= 70` | true | output B and stop checking |
| 3 | `mark >= 60` | not checked | already matched |
| 4 | `mark >= 50` | not checked | already matched |

Final output:

```text
B
```

::: warning Important
In an `ELSE IF` chain, once one condition is true, the later conditions are skipped.
:::

---

## 10. Order of Conditions Matters

Common exam trap: a broad condition placed too early can stop a later, more specific condition from running.

### 10.1 Wrong Order

```java
int mark = 85;

if (mark >= 50) {
    System.out.println("Pass");
} else if (mark >= 80) {
    System.out.println("A");
}
```

Output:

```text
Pass
```

Problem:

```text
mark >= 50 is true first, so the later mark >= 80 condition is never reached.
```

### 10.2 Correct Order

```java
int mark = 85;

if (mark >= 80) {
    System.out.println("A");
} else if (mark >= 50) {
    System.out.println("Pass");
}
```

Output:

```text
A
```

### 10.3 Rule

For grade boundaries, check the most specific or highest boundary first.

---

## 11. Boolean Operators

Boolean operators combine or modify conditions.

| Java Operator | Meaning | IB-style Meaning |
|---|---|---|
| `&&` | AND | both conditions must be true |
| `||` | OR | at least one condition must be true |
| `!` | NOT | reverses true/false |

---

## 12. AND Operator `&&`

### 12.1 Example: Valid Mark

Boolean condition example: both parts must be true for the whole condition to be true.

A mark is valid if it is between 0 and 100 inclusive.

```java
if (mark >= 0 && mark <= 100) {
    System.out.println("Valid mark");
}
```

Both conditions must be true.

| mark | `mark >= 0` | `mark <= 100` | Whole condition | Output |
|---:|---|---|---|---|
| 75 | true | true | true | Valid mark |
| -5 | false | true | false | no output |
| 120 | true | false | false | no output |

---

## 13. OR Operator `||`

### 13.1 Example: Weekend

Boolean condition example: only one part needs to be true for the whole condition to be true.

```java
if (day.equals("Saturday") || day.equals("Sunday")) {
    System.out.println("Weekend");
}
```

At least one condition must be true.

| day | Saturday? | Sunday? | Whole condition |
|---|---|---|---|
| Saturday | true | false | true |
| Sunday | false | true | true |
| Monday | false | false | false |

::: warning String Comparison
In Java, compare Strings using `.equals()`.

```java
day.equals("Saturday")
```

Do not use:

```java
day == "Saturday"
```
:::

---

## 14. NOT Operator `!`

### 14.1 Example

```java
boolean loggedIn = false;

if (!loggedIn) {
    System.out.println("Please log in");
}
```

`!loggedIn` means:

```text
not loggedIn
```

If `loggedIn` is false, `!loggedIn` is true.

| loggedIn | !loggedIn |
|---|---|
| true | false |
| false | true |

---

## 15. Range Checking and Validation

Boundary case example: values exactly on the valid edges should be accepted.

Selection is often used to validate input.

### 15.1 Problem

A mark must be between 0 and 100.

### 15.2 IB Pseudocode

```text
INPUT mark

IF mark >= 0 AND mark <= 100 THEN
    OUTPUT "Valid"
ELSE
    OUTPUT "Invalid"
END IF
```

### 15.3 Java Code

```java
import java.util.Scanner;

public class MarkValidation {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter mark: ");
        int mark = input.nextInt();

        if (mark >= 0 && mark <= 100) {
            System.out.println("Valid");
        } else {
            System.out.println("Invalid");
        }

        input.close();
    }
}
```

### 15.4 Trace Table

| mark | `mark >= 0` | `mark <= 100` | Whole condition | Output |
|---:|---|---|---|---|
| 88 | true | true | true | Valid |
| 0 | true | true | true | Valid |
| 100 | true | true | true | Valid |
| -1 | false | true | false | Invalid |
| 101 | true | false | false | Invalid |

::: tip Boundary Values
For validation questions, always test boundary values such as 0 and 100.
:::

---

## 16. Nested IF

Nested IF example: trace the outer condition before checking the inner condition.

A nested IF is an IF statement inside another IF statement.

### 16.1 Real-life Example

A student can join an advanced programming club if:

1. their mark is at least 80
2. they have completed the basic programming course

### 16.2 Java Code

```java
public class NestedIfExample {
    public static void main(String[] args) {
        int mark = 85;
        boolean completedBasicCourse = true;

        if (mark >= 80) {
            if (completedBasicCourse) {
                System.out.println("Can join advanced club");
            } else {
                System.out.println("Complete basic course first");
            }
        } else {
            System.out.println("Mark is too low");
        }
    }
}
```

### 16.3 Trace Table

| mark | completedBasicCourse | Outer condition `mark >= 80` | Inner condition | Output |
|---:|---|---|---|---|
| 85 | true | true | true | Can join advanced club |
| 85 | false | true | false | Complete basic course first |
| 70 | true | false | not checked | Mark is too low |

---

## 17. Nested IF vs AND

This nested IF:

```java
if (mark >= 80) {
    if (completedBasicCourse) {
        System.out.println("Can join");
    }
}
```

Can also be written as:

```java
if (mark >= 80 && completedBasicCourse) {
    System.out.println("Can join");
}
```

| Version | Advantage |
|---|---|
| Nested IF | Can give different messages for different failed conditions |
| AND condition | Shorter when only one output is needed |

---

## 18. Switch Statement Preview

Sometimes many exact-value choices can be written using `switch`.

### Java Example

```java
int option = 2;

switch (option) {
    case 1:
        System.out.println("Start");
        break;
    case 2:
        System.out.println("Settings");
        break;
    case 3:
        System.out.println("Exit");
        break;
    default:
        System.out.println("Invalid option");
}
```

| Part | Meaning |
|---|---|
| `switch (option)` | Checks the value of option |
| `case 1` | Runs when option is 1 |
| `break` | Stops the switch after a matched case |
| `default` | Runs if no case matches |

::: info Level Control
This page focuses mainly on IF structures. Switch can be used for exact menu-style choices, but IF is more flexible for ranges and complex conditions.
:::

---

## 19. Detailed common mistakes table

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using `=` instead of `==` | `=` assigns a value; `==` compares values | Use `==` for comparison |
| Comparing Strings with `==` | May not compare text correctly | Use `.equals()` |
| Wrong condition order | Later conditions may never run | Put most specific condition first |
| Missing braces `{}` | Only one statement may belong to the IF | Use braces when learning |
| Using `&&` when `||` is needed | Logic becomes too strict | Check whether both or either condition is required |
| Using `||` when `&&` is needed | Invalid values may be accepted | Use trace table for Boolean logic |
| Forgetting ELSE | Program may do nothing for false condition | Add ELSE if a false case needs handling |
| Overusing nested IF | Code becomes hard to read | Use Boolean operators when suitable |
| Not testing boundary values | Validation may be wrong at edges | Test values such as 0, 1, 99, 100 |
| Confusing Boolean variable and condition | Writes unnecessary comparisons | `if (loggedIn)` is enough |

---

## 20. Guided Practice

### Practice 1: Basic IF ELSE

What is the output?

```java
int mark = 45;

if (mark >= 50) {
    System.out.println("Pass");
} else {
    System.out.println("Fail");
}
```

<details>
<summary>Suggested Answer</summary>

Output:

```text
Fail
```

Because `45 >= 50` is false, the ELSE branch runs.

</details>

---

### Practice 2: ELSE IF Chain

What is the output?

```java
int mark = 72;

if (mark >= 80) {
    System.out.println("A");
} else if (mark >= 70) {
    System.out.println("B");
} else if (mark >= 60) {
    System.out.println("C");
} else {
    System.out.println("D");
}
```

<details>
<summary>Suggested Answer</summary>

Output:

```text
B
```

`72 >= 80` is false, but `72 >= 70` is true. The later conditions are skipped.

</details>

---

### Practice 3: Boolean AND

For each mark, decide whether the output is `"Valid"`.

```java
if (mark >= 0 && mark <= 100) {
    System.out.println("Valid");
}
```

Values:

```text
-5, 0, 60, 100, 120
```

<details>
<summary>Suggested Answer</summary>

| mark | Output? |
|---:|---|
| -5 | No |
| 0 | Valid |
| 60 | Valid |
| 100 | Valid |
| 120 | No |

</details>

---

### Practice 4: Find the Error

```java
String password = "abc123";

if (password == "abc123") {
    System.out.println("Correct");
}
```

<details>
<summary>Suggested Answer</summary>

In Java, Strings should be compared using `.equals()`.

Correct version:

```java
if (password.equals("abc123")) {
    System.out.println("Correct");
}
```

</details>

---

### Practice 5: Wrong Condition Order

What is wrong with this code?

```java
int mark = 90;

if (mark >= 50) {
    System.out.println("Pass");
} else if (mark >= 80) {
    System.out.println("Excellent");
}
```

<details>
<summary>Suggested Answer</summary>

The condition `mark >= 50` is checked first and is true for 90, so the program outputs `"Pass"`. The `mark >= 80` condition is never reached.

Correct version:

```java
if (mark >= 80) {
    System.out.println("Excellent");
} else if (mark >= 50) {
    System.out.println("Pass");
}
```

</details>

---

### Practice 6: Nested IF Trace

What is the output?

```java
int age = 16;
boolean hasPermission = true;

if (age >= 18) {
    System.out.println("Adult access");
} else {
    if (hasPermission) {
        System.out.println("Minor with permission");
    } else {
        System.out.println("No access");
    }
}
```

<details>
<summary>Suggested Answer</summary>

Output:

```text
Minor with permission
```

`age >= 18` is false, so the ELSE branch runs. Inside it, `hasPermission` is true.

</details>

---

## 21. Independent Practice

### Question 1

Write Java code that outputs `"Even"` if a number is even, otherwise outputs `"Odd"`.

### Question 2

Write IB pseudocode that checks whether a password is equal to `"open123"`.

### Question 3

Write Java code that validates an age. The age is valid if it is between 0 and 120 inclusive.

### Question 4

Write Java code that outputs:

```text
A if mark >= 80
B if mark >= 70
C if mark >= 60
D if mark >= 50
F otherwise
```

### Question 5

Trace the output:

```java
int x = 12;

if (x > 10 && x < 20) {
    System.out.println("Middle");
} else {
    System.out.println("Outside");
}
```

### Question 6

Explain the difference between `&&` and `||`.

### Question 7

Find and correct the error:

```java
int mark = 75;

if (mark => 50) {
    System.out.println("Pass");
}
```

### Question 8

Write a nested IF statement for this rule:

```text
If username is correct, then check password.
If both are correct, output "Login successful".
Otherwise output a suitable error message.
```

### Question 9

Rewrite the nested IF below using `&&`.

```java
if (mark >= 80) {
    if (completedProject) {
        System.out.println("Award");
    }
}
```

### Question 10

Write a switch statement for a menu:

```text
1 = Start
2 = Help
3 = Exit
other = Invalid
```

---

## 22. Exam-style Questions

### Question 1 [4 marks]

Trace the following code and state the output.

```java
int mark = 68;

if (mark >= 80) {
    System.out.println("A");
} else if (mark >= 70) {
    System.out.println("B");
} else if (mark >= 60) {
    System.out.println("C");
} else {
    System.out.println("F");
}
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Condition | Result |
|---|---|
| `mark >= 80` | false |
| `mark >= 70` | false |
| `mark >= 60` | true |

The program outputs:

```text
C
```

Once `mark >= 60` is true, the ELSE IF chain stops.

</details>

---

### Question 2 [5 marks]

Explain why the following code does not correctly output `"Excellent"` for a mark of 90.

```java
int mark = 90;

if (mark >= 50) {
    System.out.println("Pass");
} else if (mark >= 80) {
    System.out.println("Excellent");
}
```

<details>
<summary>Mark Scheme Style Answer</summary>

The first condition `mark >= 50` is checked before `mark >= 80`. For a mark of 90, `mark >= 50` is true, so the program outputs `"Pass"`. Because this is an `else if` structure, later conditions are skipped after the first true condition. The `mark >= 80` condition is never checked. The higher boundary should be checked first.

</details>

---

### Question 3 [6 marks]

Write Java code to validate a mark. A valid mark is between 0 and 100 inclusive. The program should output `"Valid"` or `"Invalid"`.

<details>
<summary>Mark Scheme Style Answer</summary>

```java
if (mark >= 0 && mark <= 100) {
    System.out.println("Valid");
} else {
    System.out.println("Invalid");
}
```

Possible marks:

- uses IF ELSE structure
- checks lower boundary using `mark >= 0`
- checks upper boundary using `mark <= 100`
- uses `&&` because both conditions must be true
- outputs Valid for accepted values
- outputs Invalid otherwise

</details>

---

### Question 4 [6 marks]

Compare a simple `IF` statement and an `IF ELSE` statement.

<details>
<summary>Mark Scheme Style Answer</summary>

A simple `IF` statement runs a block of code only when its condition is true. If the condition is false, the program may skip the block and do nothing. An `IF ELSE` statement provides two branches: one branch runs when the condition is true, and the ELSE branch runs when the condition is false. Therefore, `IF ELSE` is useful when the program must choose between two possible outcomes.

</details>

---

### Question 5 [6 marks]

A login system checks a username and password. Explain how selection could be used in this system.

<details>
<summary>Mark Scheme Style Answer</summary>

Selection can be used to compare the input username and password with the stored correct values. An IF statement can first check whether the username is correct. If it is correct, another condition can check whether the password is correct. If both are correct, the system can output `"Login successful"` or allow access. Otherwise, it can output an error message. Boolean operators such as `&&` could also be used to check both conditions in one statement.

</details>

---

## 23. Practice task
### Activity 1: Condition Cards

Give students cards with conditions such as:

```text
mark >= 50
age < 18
score == 100
day.equals("Sunday")
mark >= 0 && mark <= 100
```

Give them input values. Students must stand on the TRUE or FALSE side of the room.

---

### Activity 2: Branch Trace

Students receive a flowchart or IF ELSE code. They trace which branch runs for different inputs.

Example inputs:

```text
mark = 45
mark = 50
mark = 79
mark = 80
```

---

### Activity 3: Debug the Logic

Give students incorrect selection code. They must identify:

1. syntax error
2. logic error
3. wrong Boolean operator
4. wrong condition order
5. missing ELSE case

---

## 24. Independent practice
### Independent practice part A: Trace

Trace this code:

```java
int mark = 81;

if (mark >= 90) {
    System.out.println("A*");
} else if (mark >= 80) {
    System.out.println("A");
} else if (mark >= 70) {
    System.out.println("B");
} else {
    System.out.println("C");
}
```

Explain why the output is produced.

---

### Independent practice part B: Write Code

Write Java code for this rule:

```text
If temperature is below 0, output "Freezing".
If temperature is from 0 to 25 inclusive, output "Normal".
If temperature is above 25, output "Hot".
```

---

### Independent practice part C: Validation

Write Java code that checks whether a username has a length of at least 5 characters.

Hint:

```java
username.length()
```

---

### Independent practice part D: Explanation

In 4-5 sentences, explain why the order of conditions matters in an `ELSE IF` chain.

---

## 25. One-page Revision Summary

| Point | Summary |
|---|---|
| Selection | Chooses which code to run based on a condition |
| Condition | Boolean expression that is true or false |
| IF | Runs code only if condition is true |
| ELSE | Runs when IF condition is false |
| ELSE IF | Checks another condition after previous one is false |
| Nested IF | IF statement inside another IF statement |
| `==` | Equality comparison in Java |
| `=` | Assignment in Java |
| `&&` | AND, both conditions must be true |
| `||` | OR, at least one condition must be true |
| `!` | NOT, reverses a Boolean value |
| Validation | Uses conditions to check whether input is acceptable |
| Boundary values | Values at the edge of valid range |
| Exam phrase | Selection allows a program to choose different branches depending on whether a condition is true or false |

---

## 26. Quick Self-test

Before moving to Searching, students should be able to answer these:

1. What is selection?
2. What is a Boolean condition?
3. What is the difference between `IF` and `IF ELSE`?
4. Why does condition order matter in an `ELSE IF` chain?
5. What is the difference between `=` and `==` in Java?
6. When should you use `&&`?
7. When should you use `||`?
8. Why should Strings be compared using `.equals()`?
9. How can selection be used for input validation?
10. Why is selection needed in searching algorithms?

