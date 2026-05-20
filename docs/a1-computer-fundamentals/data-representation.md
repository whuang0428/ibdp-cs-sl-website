# Data Representation

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why computers use binary
- convert simple binary values to denary
- explain bits and bytes
- explain hexadecimal at a simple level
- describe character representation
- connect data representation to storage and processing

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding how data is represented inside computers |
| Connected units | B1 Computational Thinking, A2 Networks, A3 Databases, A4 Machine Learning |
| Exam relevance | Definitions, process explanation, comparison, scenario-based questions |

::: tip Learning Focus
A1 questions often ask students to explain **how a computer system works** and to apply technical vocabulary to a real scenario.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Bit | 位 | A binary digit, 0 or 1 |
| Byte | 字节 | A group of 8 bits |
| Binary | 二进制 | Base-2 number system using 0 and 1 |
| Denary | 十进制 | Base-10 number system |
| Hexadecimal | 十六进制 | Base-16 number system |
| Character set | 字符集 | A system mapping characters to numeric codes |
| ASCII / Unicode | 字符编码 | Character encoding systems |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

计算机内部使用 **binary（二进制）** 表示数据，因为数字电路可以稳定表示两种状态，例如 on/off、high/low、1/0。

所有数据最终都可以用 binary 表示，包括：

- numbers
- text
- images
- sound
- instructions

一个 **bit** 是 0 或 1。一个 **byte** 通常是 8 bits。

Hexadecimal 常用于更短地表示长二进制数，因为 4 bits 可以对应 1 个 hexadecimal digit。

</template>

<template #en>

### English Explanation

Computers use **binary** internally because digital circuits can reliably represent two states, such as on/off, high/low, or 1/0.

All data can be represented in binary, including:

- numbers
- text
- images
- sound
- instructions

A **bit** is a 0 or 1. A **byte** is usually 8 bits.

Hexadecimal is often used to represent long binary values more compactly because 4 bits correspond to one hexadecimal digit.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Binary to Denary

Binary value:

```text
00101011
```

Place values:

| 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 1 | 0 | 1 | 0 | 1 | 1 |

Denary value:

```text
32 + 8 + 2 + 1 = 43
```

---

## 6. Conversion Pattern

```text
Write binary place values → match bits to place values → add place values where bit is 1
```

For hexadecimal:

```text
Group binary into 4-bit groups → convert each group to one hex digit
```

---

## 7. Technical Example

### Character representation

A character set maps characters to numeric codes. For example, a system may store `A` using a numeric code, and that code is represented in binary in memory.

---

## 8. Explanation of the Example

Binary conversion is not about reading the number as normal decimal digits. `1010` in binary is not one thousand and ten. It is 8 + 2 = 10 in denary.

---

## 9. Step-by-step Process / Trace

| Step | Action | Result |
|---|---|---|
| 1 | Write place values | 128 64 32 16 8 4 2 1 |
| 2 | Place bits | 0 0 1 0 1 0 1 1 |
| 3 | Select values with bit 1 | 32, 8, 2, 1 |
| 4 | Add them | 43 |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Reading binary like denary | Binary uses base 2 | Use place values |
| Adding place values where bit is 0 | Only 1 bits count | Ignore 0 columns |
| Forgetting 8 bits in a byte | Definitions lose marks | Remember 1 byte = 8 bits |
| Thinking binary only stores numbers | All data uses binary representation | Mention text/images/sound/instructions |
| Confusing character and image encoding | Different data types use different encoding methods | State type clearly |

---

## 11. Guided Practice

### Practice 1

Convert `00001101` to denary.

<details><summary>Suggested Answer</summary>

8 + 4 + 1 = 13

</details>

### Practice 2

How many bits are in one byte?

<details><summary>Suggested Answer</summary>

8 bits.

</details>

---

## 12. Independent Practice

1. Convert `00110100` to denary.
2. Explain why computers use binary.
3. Explain why hexadecimal is useful.
4. Describe how a character set represents text.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

Convert `00101011` to denary.

<details><summary>Mark Scheme Style Answer</summary>

32 + 8 + 2 + 1 = 43.

</details>

### Question 2 [3 marks]

Explain why computers use binary.

<details><summary>Mark Scheme Style Answer</summary>

Computers use binary because digital circuits can represent two stable states, such as on/off or high/low voltage. These states can be represented as 0 and 1, allowing data and instructions to be stored and processed reliably.

</details>

---

## 14. Classroom Activity

### Activity: Human Binary

Students hold cards representing 128, 64, 32, 16, 8, 4, 2, 1. The class forms binary numbers and converts them to denary.

---

## 15. Homework

Complete 10 binary-to-denary conversions, explain bits/bytes, and write a short paragraph on why text can be stored as binary.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Bit | 0 or 1 |
| Byte | 8 bits |
| Binary | Base 2 |
| Hexadecimal | Base 16 |
| Character set | Maps characters to codes |
| Exam phrase | All data is represented in binary because computers use two-state digital circuits. |
