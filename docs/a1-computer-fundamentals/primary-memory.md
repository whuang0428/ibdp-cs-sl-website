# Primary Memory

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- distinguish RAM, ROM, cache, and registers
- explain volatile and non-volatile memory
- describe the memory hierarchy
- explain why cache improves performance
- compare primary memory and secondary storage
- apply memory concepts to scenarios

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding memory directly used by the CPU |
| Connected units | B1 Computational Thinking, A2 Networks, A3 Databases, A4 Machine Learning |
| Exam relevance | Definitions, process explanation, comparison, scenario-based questions |

::: tip Learning Focus
A1 questions often ask students to explain **how a computer system works** and to apply technical vocabulary to a real scenario.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Primary memory | 主存储器 | Memory directly accessible by the CPU |
| RAM | 随机存取存储器 | Volatile memory storing currently running programs and data |
| ROM | 只读存储器 | Non-volatile memory storing startup instructions |
| Cache | 高速缓存 | Very fast memory storing frequently used data/instructions |
| Register | 寄存器 | Smallest and fastest storage inside CPU |
| Volatile | 易失性 | Data is lost when power is off |
| Non-volatile | 非易失性 | Data remains when power is off |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Primary memory（主存储器）** 是 CPU 可以直接访问的内存。它用于程序运行时保存正在使用的数据和指令。

常见类型包括：

- RAM：保存正在运行的程序和数据，断电后丢失
- ROM：保存启动指令，断电后保留
- Cache：保存经常使用的数据和指令，提高访问速度
- Registers：CPU 内部最快的小存储位置

速度通常是 registers 最快，然后 cache，然后 RAM。容量通常相反，registers 最小，RAM 较大。

</template>

<template #en>

### English Explanation

**Primary memory** is memory directly accessible by the CPU. It stores data and instructions currently needed during program execution.

Common types include:

- RAM: stores running programs and data; volatile
- ROM: stores startup instructions; non-volatile
- Cache: stores frequently used data and instructions to improve speed
- Registers: very small and fastest storage inside the CPU

In general, registers are fastest, then cache, then RAM. Capacity is usually the opposite: registers are smallest, while RAM is larger.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Opening a game

| Memory | Role |
|---|---|
| ROM | helps start the computer |
| RAM | stores the game while it runs |
| Cache | stores frequently used instructions/data |
| Registers | hold immediate values during CPU operations |

---

## 6. Memory Hierarchy Pattern

```text
Registers → Cache → RAM → Secondary storage
Fastest to slowest
Smallest to largest capacity usually
```

---

## 7. Technical Example

### Comparison table

| Type | Volatile? | Main use |
|---|---|---|
| RAM | Yes | Current programs/data |
| ROM | No | Startup instructions |
| Cache | Yes | Frequently used data/instructions |
| Register | Yes | Immediate CPU values |

---

## 8. Explanation of the Example

Primary memory supports active processing. Secondary storage keeps files long-term, while RAM holds data while programs run. Cache reduces the need to repeatedly access slower RAM.

---

## 9. Step-by-step Process / Trace

| Step | Action | Memory involved |
|---|---|---|
| 1 | Computer starts | ROM instructions used |
| 2 | Program opens | program loaded into RAM |
| 3 | CPU repeatedly uses data | cache may store frequent data |
| 4 | CPU calculates | registers hold immediate values |
| 5 | Power off | RAM/cache/register data lost |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying RAM is permanent | RAM is volatile | Describe RAM as temporary working memory |
| Saying ROM changes often | ROM normally stores startup instructions | Mention non-volatile startup role |
| Confusing cache with web browser cache only | CPU cache is hardware memory | Specify CPU cache when needed |
| Calling SSD primary memory | SSD is secondary storage | Primary memory is directly accessible by CPU |
| Ignoring speed hierarchy | Comparison questions need relative speed | Use registers/cache/RAM hierarchy |

---

## 11. Guided Practice

### Practice 1

Which memory is volatile: RAM or ROM?

<details><summary>Suggested Answer</summary>

RAM is volatile. ROM is non-volatile.

</details>

### Practice 2

Why is cache useful?

<details><summary>Suggested Answer</summary>

Cache stores frequently used data and instructions close to the CPU, reducing access time compared with repeatedly accessing RAM.

</details>

---

## 12. Independent Practice

1. Compare RAM and ROM.
2. Explain why registers are faster than RAM.
3. Explain why more RAM can help multitasking.
4. Draw a memory hierarchy from fastest to slowest.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

Explain one difference between RAM and ROM.

<details><summary>Mark Scheme Style Answer</summary>

RAM is volatile and stores currently running programs and data, while ROM is non-volatile and stores startup instructions.

</details>

### Question 2 [4 marks]

Explain how cache can improve CPU performance.

<details><summary>Mark Scheme Style Answer</summary>

Cache stores frequently used data or instructions. It is faster to access than RAM, so the CPU can retrieve repeated data more quickly. This reduces waiting time and can improve program execution speed.

</details>

---

## 14. Classroom Activity

### Activity: Memory Hierarchy Cards

Students sort memory/storage cards from fastest to slowest and from smallest to largest capacity, then explain trade-offs.

---

## 15. Homework

Create a comparison table for RAM, ROM, cache, registers, HDD, and SSD. Include volatility, speed, capacity, and use.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| RAM | Volatile working memory |
| ROM | Non-volatile startup memory |
| Cache | Fast memory for frequent data |
| Registers | Fastest tiny CPU storage |
| Exam phrase | Cache improves performance because frequently used data can be accessed faster than from RAM. |
