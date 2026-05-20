# Fetch-Decode-Execute Cycle

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- describe the fetch-decode-execute cycle
- explain the role of the program counter, MAR, MDR, and instruction register
- explain how an instruction is fetched from memory
- describe how the control unit decodes an instruction
- connect CPU components to the cycle
- write step-by-step exam answers

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Explaining how instructions are processed |
| Connected units | B1 Computational Thinking, A2 Networks, A3 Databases, A4 Machine Learning |
| Exam relevance | Definitions, process explanation, comparison, scenario-based questions |

::: tip Learning Focus
A1 questions often ask students to explain **how a computer system works** and to apply technical vocabulary to a real scenario.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Fetch | 取指 | Retrieve the next instruction from memory |
| Decode | 译码 | Interpret what the instruction means |
| Execute | 执行 | Carry out the instruction |
| Program Counter | 程序计数器 | Register storing the address of the next instruction |
| MAR | 内存地址寄存器 | Stores the address to access in memory |
| MDR | 内存数据寄存器 | Stores data or instruction transferred to/from memory |
| Instruction Register | 指令寄存器 | Stores the current instruction |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Fetch-Decode-Execute cycle** 描述 CPU 如何处理每一条指令。

基本过程是：

1. Fetch：从 memory 取出下一条指令
2. Decode：Control Unit 解释指令含义
3. Execute：执行指令，例如计算、比较、读取或写入数据

这个循环会不断重复，直到程序结束。

考试中要注意顺序，不能把 decode 和 execute 写反，也要尽量提到关键 registers。

</template>

<template #en>

### English Explanation

The **Fetch-Decode-Execute cycle** describes how the CPU processes each instruction.

The basic process is:

1. Fetch: retrieve the next instruction from memory
2. Decode: the Control Unit interprets the instruction
3. Execute: carry out the instruction, such as calculating, comparing, reading, or writing data

This cycle repeats until the program ends.

In exams, sequence matters. Do not put decode after execute, and try to mention key registers where appropriate.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Instruction to add two values

The CPU may fetch an instruction such as “add values in two registers”. The Control Unit decodes it, and the ALU performs the addition. The result is stored in a register or memory.

---

## 6. FDE Cycle Pattern

```text
Program Counter gives address
→ instruction address copied to MAR
→ instruction fetched from memory into MDR
→ instruction copied to Instruction Register
→ Control Unit decodes instruction
→ CPU executes instruction
→ Program Counter updates
```

---

## 7. Technical Example

### Simplified register roles

| Register | Role in cycle |
|---|---|
| PC | Holds address of next instruction |
| MAR | Holds memory address being accessed |
| MDR | Holds data/instruction from memory |
| IR | Holds current instruction being decoded/executed |

---

## 8. Explanation of the Example

The FDE cycle depends on memory and registers. The CPU does not magically know the next instruction. The Program Counter points to it, and memory transfer happens using registers and buses.

---

## 9. Step-by-step Process / Trace

| Step | Stage | Description |
|---|---|---|
| 1 | Fetch | PC contains address of next instruction |
| 2 | Fetch | Address is placed in MAR |
| 3 | Fetch | Instruction is fetched from memory into MDR |
| 4 | Decode | Instruction moves to IR and is decoded by CU |
| 5 | Execute | Required operation is carried out |
| 6 | Update | PC moves to next instruction |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Putting execute before decode | Instruction must be interpreted before it can be carried out | Use fetch → decode → execute |
| Forgetting memory | Instructions are stored in memory | Mention fetching from memory |
| Saying ALU decodes instructions | CU decodes instructions | CU decodes; ALU calculates |
| Not mentioning PC | Answer may lack detail | PC stores next instruction address |
| Thinking cycle happens once only | It repeats for instructions | State cycle repeats |

---

## 11. Guided Practice

### Practice 1

What does the Program Counter store?

<details><summary>Suggested Answer</summary>

It stores the address of the next instruction to be fetched.

</details>

### Practice 2

Which component decodes the instruction?

<details><summary>Suggested Answer</summary>

The Control Unit decodes the instruction.

</details>

---

## 12. Independent Practice

1. Write the FDE cycle in six steps.
2. Explain the difference between MAR and MDR.
3. Explain why the PC must be updated.
4. Describe what happens during decode.

---

## 13. Exam-style Questions

### Question 1 [6 marks]

Describe the fetch-decode-execute cycle.

<details><summary>Mark Scheme Style Answer</summary>

The Program Counter stores the address of the next instruction. This address is copied to the MAR. The instruction is fetched from memory and placed in the MDR, then copied to the Instruction Register. The Control Unit decodes the instruction. The CPU executes the instruction using the appropriate component, such as the ALU. The Program Counter is updated for the next instruction.

</details>

---

## 14. Classroom Activity

### Activity: Human FDE Simulation

Students take roles: PC, MAR, MDR, IR, CU, ALU, Memory. They physically pass instruction cards to simulate the cycle.

---

## 15. Homework

Create a diagram or table explaining PC, MAR, MDR, IR, CU, and ALU in the FDE cycle. Add a 6-mark exam-style paragraph.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| FDE | Fetch → Decode → Execute |
| PC | Address of next instruction |
| MAR | Memory address |
| MDR | Data/instruction transfer |
| IR | Current instruction |
| Exam phrase | The instruction is fetched from memory, decoded by the control unit, and then executed by the appropriate CPU component. |
