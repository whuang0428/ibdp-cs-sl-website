# Logic Gates

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- identify AND, OR, and NOT gates
- explain Boolean values
- complete truth tables
- apply gates to simple conditions
- connect logic gates to programming conditions
- avoid common truth table mistakes

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding Boolean logic and truth tables |
| Connected units | B1 Computational Thinking, A2 Networks, A3 Databases, A4 Machine Learning |
| Exam relevance | Definitions, process explanation, comparison, scenario-based questions |

::: tip Learning Focus
A1 questions often ask students to explain **how a computer system works** and to apply technical vocabulary to a real scenario.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Logic gate | 逻辑门 | A circuit that performs a Boolean operation |
| Boolean | 布尔值 | A true/false or 1/0 value |
| AND | 与门 | Outputs 1 only if all inputs are 1 |
| OR | 或门 | Outputs 1 if at least one input is 1 |
| NOT | 非门 | Reverses the input |
| Truth table | 真值表 | A table showing output for every input combination |
| Input | 输入 | A Boolean value entering a gate |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Logic gate（逻辑门）** 是执行 Boolean operation 的电子电路。Boolean value 通常表示为 1/0 或 true/false。

基本逻辑门：

- AND：只有所有输入都是 1，输出才是 1
- OR：至少一个输入是 1，输出就是 1
- NOT：把输入反转，1 变 0，0 变 1

Truth table 用来列出所有可能输入组合对应的输出。

</template>

<template #en>

### English Explanation

A **logic gate** is an electronic circuit that performs a Boolean operation. Boolean values are usually represented as 1/0 or true/false.

Basic gates:

- AND: outputs 1 only if all inputs are 1
- OR: outputs 1 if at least one input is 1
- NOT: reverses the input, changing 1 to 0 and 0 to 1

A truth table lists the output for every possible input combination.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Security door

A door opens only if:

- ID card is valid
- PIN is correct

This is AND logic:

```text
open = validCard AND correctPIN
```

---

## 6. Truth Table Pattern

```text
List all input combinations → apply gate rule → write output for each row
```

---

## 7. Technical Example

### AND truth table

| A | B | A AND B |
|---:|---:|---:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### OR truth table

| A | B | A OR B |
|---:|---:|---:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

---

## 8. Explanation of the Example

AND is strict because every input must be true. OR is less strict because only one true input is enough. NOT has only one input and reverses it.

---

## 9. Step-by-step Process / Trace

| Scenario | Logic | Output if values are true/false |
|---|---|---|
| validCard = 1, correctPIN = 1 | AND | open = 1 |
| validCard = 1, correctPIN = 0 | AND | open = 0 |
| smokeDetected = 1 OR heatDetected = 0 | OR | alarm = 1 |
| doorLocked = 1 | NOT doorLocked | 0 |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Confusing AND and OR | Outputs become wrong | Memorize AND needs all; OR needs at least one |
| Forgetting all input combinations | Truth table incomplete | Use systematic order 00,01,10,11 |
| Applying NOT to wrong value | Final output wrong | Mark exactly which signal is inverted |
| Using normal arithmetic logic | Boolean logic is true/false | Think 1/0 states |
| Not showing intermediate columns | Complex circuits become hard | Use extra columns for sub-expressions |

---

## 11. Guided Practice

### Practice 1

When does AND output 1?

<details><summary>Suggested Answer</summary>

AND outputs 1 only when all inputs are 1.

</details>

### Practice 2

Complete NOT truth table.

<details><summary>Suggested Answer</summary>

| A | NOT A |
|---:|---:|
| 0 | 1 |
| 1 | 0 |

</details>

---

## 12. Independent Practice

1. Complete truth table for A OR B.
2. Complete truth table for A AND NOT B.
3. Give a real-life example of AND logic.
4. Give a real-life example of OR logic.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

Complete truth table for A OR B.

<details><summary>Mark Scheme Style Answer</summary>

| A | B | A OR B |
|---:|---:|---:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

</details>

### Question 2 [3 marks]

Explain how AND logic could be used in a login system.

<details><summary>Mark Scheme Style Answer</summary>

The system may require both a correct username and a correct password. The login is allowed only if both conditions are true, so AND logic is suitable.

</details>

---

## 14. Classroom Activity

### Activity: Human Logic Gates

Students act as inputs holding 0/1 cards. Other students act as gates and output the result.

---

## 15. Homework

Create truth tables for AND, OR, NOT, and A AND NOT B. Add one real-world scenario for each.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| AND | 1 only if all inputs are 1 |
| OR | 1 if at least one input is 1 |
| NOT | Reverses input |
| Truth table | Shows all input/output combinations |
| Exam phrase | The output is 1 only when the Boolean condition is satisfied. |
