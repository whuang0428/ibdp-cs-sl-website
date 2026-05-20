# Selection

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **selection**
- write IF, ELSE IF, and ELSE logic
- use comparison and logical operators
- trace selection statements
- write Java `if` statements
- explain how selection controls program flow

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Decision making |
| Connected units | Algorithms, Flowcharts, Variables, Testing |
| Exam relevance | Pseudocode construction, Java code reading, trace questions |

::: tip Learning Focus
Selection allows a program to choose different paths depending on whether a condition is true or false.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Selection | 选择结构 | Choosing between different paths in an algorithm |
| Condition | 条件 | A true/false expression |
| IF | 如果 | Runs code when a condition is true |
| ELSE | 否则 | Runs code when the IF condition is false |
| ELSE IF | 否则如果 | Tests another condition |
| Comparison operator | 比较运算符 | Operators such as `>`, `<`, `>=`, `<=`, `==`, `!=` |
| Logical operator | 逻辑运算符 | Operators such as AND, OR, NOT |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Selection（选择结构）** 让程序根据条件选择不同的执行路径。

例如：

```text
如果 mark >= 50，输出 Pass；否则输出 Fail。
```

这里 `mark >= 50` 是条件。条件结果只能是 true 或 false。程序根据这个结果决定运行哪一部分代码。

Selection 常用于：

- 判断是否及格
- 判断年龄是否符合要求
- 判断密码是否正确
- 判断数字是正数、负数还是 0
- 根据分数输出等级

</template>

<template #en>

### English Explanation

**Selection** allows a program to choose between different paths based on a condition.

For example:

```text
If mark >= 50, output Pass; otherwise, output Fail.
```

Here, `mark >= 50` is the condition. A condition is either true or false. The program chooses which block of code to run based on that result.

Selection is often used to check marks, ages, passwords, ranges, categories, and user choices.

</template>
</LangBlock>

---

## 5. Real-life Example

### Grade Classifier

| Mark Range | Output |
|---|---|
| 80 or above | A |
| 60 to 79 | B |
| below 60 | C |

This requires selection because the program must choose one output from several possible paths.

---

## 6. IB Pseudocode Pattern

```text
INPUT mark

IF mark >= 80 THEN
    OUTPUT "A"
ELSE IF mark >= 60 THEN
    OUTPUT "B"
ELSE
    OUTPUT "C"
END IF
```

Multiple conditions:

```text
IF age >= 12 AND age <= 18 THEN
    OUTPUT "Teenager"
END IF
```

---

## 7. Java Code Example

```java
public class GradeClassifier {
    public static void main(String[] args) {
        int mark = 76;

        if (mark >= 80) {
            System.out.println("A");
        } else if (mark >= 60) {
            System.out.println("B");
        } else {
            System.out.println("C");
        }
    }
}
```

```java
public class PasswordLength {
    public static void main(String[] args) {
        int passwordLength = 9;

        if (passwordLength >= 8) {
            System.out.println("Password length accepted");
        } else {
            System.out.println("Password too short");
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `int mark = 76;` | Stores the mark to classify |
| `if (mark >= 80)` | First condition tested |
| `else if (mark >= 60)` | Second condition tested only if first is false |
| `else` | Runs if all previous conditions are false |
| `System.out.println(...)` | Outputs the selected result |

---

## 9. Trace Table / Execution

Given `mark = 76`:

| Step | Condition / Action | Result |
|---|---|---|
| 1 | Check `mark >= 80` | false |
| 2 | Check `mark >= 60` | true |
| 3 | Output | B |

Final output:

```text
B
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using `=` in Java condition | Assignment is not equality comparison | Use `==` |
| Overlapping ranges incorrectly | Wrong branch may run | Order conditions carefully |
| Forgetting ELSE | Some cases may not be handled | Include an alternative path |
| Using separate IFs when ELSE IF is needed | More than one branch may run | Use chain for exclusive choices |
| Missing braces | Code may not group as intended | Use `{ }` clearly |

---

## 11. Guided Practice

### Practice 1

Write pseudocode: if temperature > 30 output Hot, otherwise output Not hot.

<details>
<summary>Suggested Answer</summary>

```text
INPUT temperature

IF temperature > 30 THEN
    OUTPUT "Hot"
ELSE
    OUTPUT "Not hot"
END IF
```

</details>

### Practice 2

Trace for `mark = 85`.

<details>
<summary>Suggested Answer</summary>

`mark >= 80` is true, so output is `A`.

</details>

---

## 12. Independent Practice

1. Write pseudocode for positive/negative/zero.
2. Write Java code for age category: child under 12, teenager 12-18, adult above 18.
3. Trace your code for three test values.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by selection.

<details>
<summary>Mark Scheme Style Answer</summary>

Selection is a programming structure that chooses which instructions to execute based on whether a condition is true or false.

</details>

### Question 2 [5 marks]

Construct pseudocode to output Positive, Negative, or Zero for an input number.

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
END IF
```

</details>

---

## 14. Classroom Activity

Students design a selection algorithm for a cinema discount system and test it with boundary values.

---

## 15. Homework

Create pseudocode and Java code for a grade classifier with A/B/C/D. Include three test cases and expected outputs.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Selection | Chooses paths based on conditions |
| Java | `if`, `else if`, `else` |
| Equality in Java | `==` |
| Exam phrase | "The condition is tested and different instructions run depending on whether it is true or false." |
