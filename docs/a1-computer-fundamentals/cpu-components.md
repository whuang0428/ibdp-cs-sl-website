# CPU Components

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- identify the main components of the CPU
- explain the role of the ALU, CU, registers, and buses
- distinguish data bus, address bus, and control bus
- explain why registers are fast temporary storage
- connect CPU components to instruction processing
- write exam-style descriptions of CPU roles

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding the internal structure of the CPU |
| Connected units | B1 Computational Thinking, A2 Networks, A3 Databases, A4 Machine Learning |
| Exam relevance | Definitions, process explanation, comparison, scenario-based questions |

::: tip Learning Focus
A1 questions often ask students to explain **how a computer system works** and to apply technical vocabulary to a real scenario.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| CPU | 中央处理器 | The component that executes program instructions |
| ALU | 算术逻辑单元 | Performs arithmetic and logical operations |
| Control Unit | 控制单元 | Coordinates the execution of instructions |
| Register | 寄存器 | Small, fast storage location inside the CPU |
| Bus | 总线 | Pathway for transferring data, addresses, or control signals |
| Data bus | 数据总线 | Carries data between components |
| Address bus | 地址总线 | Carries memory addresses |
| Control bus | 控制总线 | Carries control signals |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**CPU（Central Processing Unit）** 是执行程序指令的核心硬件。

CPU 内部有几个关键部分：

- **ALU**：进行算术运算和逻辑比较
- **Control Unit**：控制和协调指令执行
- **Registers**：CPU 内部非常快的小存储位置
- **Buses**：在 CPU、memory 和其他组件之间传输数据、地址和控制信号

理解 CPU 组件时，不要只背名字。要能说明每个部分在执行指令时做什么。

</template>

<template #en>

### English Explanation

The **CPU** is the main hardware component that executes program instructions.

Key parts of the CPU include:

- **ALU**: performs arithmetic operations and logical comparisons
- **Control Unit**: controls and coordinates instruction execution
- **Registers**: very small and fast storage locations inside the CPU
- **Buses**: transfer data, addresses, and control signals between CPU, memory, and other components

Students should not only memorize the names. They must explain what each part does during instruction execution.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Adding two values

| CPU Part | Role |
|---|---|
| Control Unit | Coordinates the instruction |
| Registers | Temporarily hold values |
| ALU | Performs addition |
| Data bus | Transfers data |
| Address bus | Carries memory address |
| Control bus | Carries read/write signals |

---

## 6. CPU Component Pattern

```text
Control Unit coordinates → Registers hold values → ALU processes values → Buses transfer data/signals
```

---

## 7. Technical Example

### CPU roles table

| Task | Main CPU Component |
|---|---|
| Add 5 and 7 | ALU |
| Decode instruction | Control Unit |
| Store current instruction | Instruction Register |
| Store address of next instruction | Program Counter |
| Transfer data to memory | Data bus |

---

## 8. Explanation of the Example

The CPU is not one single simple block. It contains components that cooperate. The CU decides and coordinates; the ALU calculates and compares; registers store immediate values; buses transfer information.

---

## 9. Step-by-step Process / Trace

| Step | Action | Component involved |
|---|---|---|
| 1 | Instruction is fetched | CU, buses, registers |
| 2 | Instruction is decoded | Control Unit |
| 3 | Values are loaded | Registers |
| 4 | Operation is carried out | ALU |
| 5 | Result is stored | Register or memory |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying ALU controls all operations | The CU controls coordination | ALU calculates; CU controls |
| Calling registers secondary storage | Registers are inside CPU and temporary | Describe them as small fast CPU storage |
| Confusing address bus and data bus | They carry different information | Address bus carries location; data bus carries data |
| Ignoring buses | CPU needs communication pathways | Mention buses in transfer questions |
| Saying CPU stores files permanently | CPU does not provide long-term storage | Use secondary storage for files |

---

## 11. Guided Practice

### Practice 1

Which component performs logical comparisons?

<details><summary>Suggested Answer</summary>

The ALU performs logical comparisons.

</details>

### Practice 2

What does the control unit do?

<details><summary>Suggested Answer</summary>

It coordinates CPU operations, decodes instructions, and sends control signals.

</details>

---

## 12. Independent Practice

1. Explain the difference between ALU and CU.
2. Describe the role of registers.
3. Compare data bus and address bus.
4. Draw a simple CPU component diagram using text.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

Describe the role of the ALU and the control unit.

<details><summary>Mark Scheme Style Answer</summary>

The ALU performs arithmetic operations such as addition and logical operations such as comparisons. The control unit coordinates CPU operations, decodes instructions, and sends control signals to other components.

</details>

### Question 2 [2 marks]

Explain why registers are used in the CPU.

<details><summary>Mark Scheme Style Answer</summary>

Registers provide very fast temporary storage inside the CPU, allowing instructions, addresses, and intermediate values to be accessed quickly during processing.

</details>

---

## 14. Classroom Activity

### Activity: CPU Role Match

Students match CPU components to tasks such as calculate, decode, store temporary value, carry address, and send control signal.

---

## 15. Homework

Create a CPU revision table listing ALU, CU, registers, data bus, address bus, and control bus. For each one, give a role and one example use.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| CPU | Executes instructions |
| ALU | Arithmetic and logic |
| CU | Coordinates execution |
| Registers | Small fast temporary storage |
| Buses | Transfer data, addresses, signals |
| Exam phrase | The control unit coordinates instruction execution while the ALU performs calculations and comparisons. |
