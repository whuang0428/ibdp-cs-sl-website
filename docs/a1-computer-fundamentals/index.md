# A1 Computer Fundamentals

::: info Syllabus area
Theme A: Concepts of computer science. A1 Computer fundamentals helps you understand how computer systems work, including hardware, data representation, operating systems, control systems, and related core concepts.
:::

## Assessment connection

- Paper 1: explains core system concepts used in short-answer and scenario questions.
- Paper 2: may support option questions where computer systems, storage, or technical constraints affect a solution.
- IA: helps you explain hardware, software, storage, and system choices in a computational solution.

## 1. Module Overview

A1 Computer Fundamentals introduces the basic ideas behind computer systems.

In this module, students learn how computers:

```text
represent data
use hardware components
process instructions
store data
run software
control devices
connect to cloud services
```

A1 is the foundation for later computer science topics because it explains what happens below the level of programming.

When students write a program, open a file, run a website, use cloud storage, or control a device, the computer system depends on:

```text
hardware
software
CPU
memory
storage
operating system
binary representation
logic gates
control systems
cloud infrastructure
```

The main goal of A1 is not only to memorize definitions, but to understand how the parts of a computer system work together.

---

## 2. Learning Goals

By the end of A1 Computer Fundamentals, students should be able to:

- explain what a computer system is
- distinguish hardware, software, data, and users
- classify common hardware components
- explain CPU components and their roles
- describe the fetch-decode-execute cycle
- distinguish primary memory and secondary storage
- explain RAM, ROM, cache, SSD, HDD, and cloud storage
- explain why computers use binary
- perform basic binary and denary conversions
- explain how text, images, and sound are represented
- construct and interpret simple logic gate truth tables
- explain operating system functions
- explain sensors, actuators, and control systems
- distinguish open-loop and closed-loop systems
- explain cloud computing and cloud service models
- answer exam-style questions using correct technical vocabulary

---

## 3. A1 Learning Path

Recommended learning order:

```text
Overview
→ Computer Hardware
→ CPU Components
→ Fetch-Decode-Execute Cycle
→ Primary Memory
→ Secondary Storage
→ Data Representation
→ Logic Gates
→ Operating Systems
→ Control Systems
→ Cloud Computing
```

This order is intentional.

Students first learn the whole computer system and its hardware.  
Then they study the CPU and how instructions are executed.  
After that, they learn memory, storage, and data representation.  
Finally, they connect computer systems to operating systems, control systems, and cloud computing.

---

## 4. Topic Index

| Order | Topic | Main Focus | Link |
|---:|---|---|---|
| 1 | Overview | whole computer system, IPO model, hardware/software/data/users | [Open](./) |
| 2 | Computer Hardware | input, output, processing, memory, storage, communication hardware | [Open](./computer-hardware) |
| 3 | CPU Components | CPU, CU, ALU, registers, cache, PC, MAR, MDR, CIR | [Open](./cpu-components) |
| 4 | Fetch-Decode-Execute Cycle | instruction cycle, registers, buses, CPU-memory interaction | [Open](./fetch-decode-execute) |
| 5 | Primary Memory | RAM, ROM, cache, registers, volatility, memory hierarchy | [Open](./primary-memory) |
| 6 | Secondary Storage | SSD, HDD, flash, optical, cloud storage, backup/archive | [Open](./secondary-storage) |
| 7 | Data Representation | binary, text, images, sound, file size calculations | [Open](./data-representation) |
| 8 | Logic Gates | NOT, AND, OR, NAND, NOR, XOR, truth tables | [Open](./logic-gates) |
| 9 | Operating Systems | OS functions, GUI/CLI, memory/process/file/device management | [Open](./operating-systems) |
| 10 | Control Systems | sensors, actuators, feedback, open-loop, closed-loop | [Open](./control-systems) |
| 11 | Cloud Computing | remote servers, SaaS/PaaS/IaaS, benefits and risks | [Open](./cloud-computing) |

## 5. Concept Map

```text
Computer System
├── Hardware
│   ├── Input / Output
│   ├── CPU
│   │   ├── Control Unit
│   │   ├── ALU
│   │   ├── Registers
│   │   └── Cache
│   ├── Primary Memory
│   │   ├── RAM
│   │   ├── ROM
│   │   └── Cache
│   └── Secondary Storage
│       ├── SSD / HDD
│       ├── Flash / Optical
│       └── Cloud Storage
├── Software
│   ├── Operating System
│   ├── Utility Software
│   └── Application Software
├── Data
│   ├── Binary
│   ├── Text
│   ├── Images
│   └── Sound
├── Logic
│   └── Logic Gates
└── Control / Cloud
    ├── Control Systems
    └── Cloud Computing
```

---

## 6. Bilingual Module Explanation

<LangBlock>
<template #cn>

### 中文说明

A1 Computer Fundamentals 这一单元的核心是理解计算机系统的基础结构。

一台计算机不是只有屏幕，也不是只有 CPU。  
它是多个部分一起工作的系统：

```text
hardware
software
data
users
```

例如学生打开电脑写代码时：

```text
keyboard 输入代码
operating system 管理文件和程序
SSD 保存项目文件
RAM 保存正在运行的 IDE 和程序数据
CPU 执行指令
screen 显示代码和输出
```

如果再深入一点，CPU 会不断进行：

```text
fetch
decode
execute
```

也就是：

```text
取指令
理解指令
执行指令
```

而所有数据最终都用 binary 表示：

```text
numbers
characters
images
sound
program instructions
```

所以 A1 的学习路线可以理解为：

```text
计算机整体结构
→ 硬件
→ CPU 执行指令
→ 内存和存储
→ 数据表示
→ 逻辑门
→ 操作系统
→ 控制系统
→ 云计算
```

学习 A1 时，学生最容易混淆：

```text
hardware 和 software
RAM 和 storage
CPU 和整个 computer
primary memory 和 secondary storage
GUI 和 operating system
sensor 和 actuator
cloud storage 和 backup
```

所以本模块会通过表格、流程图、场景题和 exam-style questions 来帮助学生建立清楚理解。

</template>

<template #en>

### English Explanation

A1 Computer Fundamentals is about understanding the basic structure of a computer system.

A computer is not only a screen, and it is not only a CPU.  
It is a system where several parts work together:

```text
hardware
software
data
users
```

For example, when a student opens a computer and writes code:

```text
keyboard inputs code
operating system manages files and programs
SSD stores project files
RAM stores the running IDE and program data
CPU executes instructions
screen displays code and output
```

At a deeper level, the CPU repeatedly performs:

```text
fetch
decode
execute
```

This means:

```text
get the instruction
understand the instruction
carry out the instruction
```

All data is ultimately represented using binary:

```text
numbers
characters
images
sound
program instructions
```

So the A1 learning path can be understood as:

```text
whole computer system
→ hardware
→ CPU instruction processing
→ memory and storage
→ data representation
→ logic gates
→ operating systems
→ control systems
→ cloud computing
```

In A1, students often confuse:

```text
hardware and software
RAM and storage
CPU and whole computer
primary memory and secondary storage
GUI and operating system
sensor and actuator
cloud storage and backup
```

Therefore, this module uses tables, diagrams, scenarios, and exam-style questions to build clear understanding.

</template>
</LangBlock>

---

## 7. Core Whole-system Pattern

A computer system can be described using:

```text
Input → Processing → Output
```

A more complete model includes storage:

```text
Input → Processing → Output
           ↓
        Storage
```

### Example: Student Runs a Program

| Stage | Example |
|---|---|
| Input | student types code using keyboard |
| Processing | CPU executes program instructions |
| Memory | RAM stores running IDE and program data |
| Storage | SSD saves project files |
| Output | screen displays program output |

### Exam Phrase

A computer system uses hardware and software to input, process, output, and store data.

---

## 8. Hardware Pattern

Hardware means physical components.

| Hardware Type | Role | Examples |
|---|---|---|
| Input | enters data | keyboard, mouse, sensor |
| Output | presents results | monitor, printer, speaker |
| Processing | processes data/instructions | CPU, GPU |
| Memory | holds active data | RAM, cache, ROM |
| Storage | saves data long term | SSD, HDD, USB drive |
| Communication | sends/receives data | network card, router |

### Common Rule

Classify hardware by what it does in the system.

Example:

```text
touchscreen = input and output
```

because it displays information and receives touch input.

---

## 9. CPU Pattern

The CPU is the main processor.

It contains:

```text
Control Unit
ALU
Registers
Cache
```

### Key Roles

| Component | Role |
|---|---|
| Control Unit | controls and coordinates operations |
| ALU | performs arithmetic and logic operations |
| Registers | tiny fast storage inside CPU |
| Cache | fast memory close to CPU |

### Important Registers

| Register | Role |
|---|---|
| PC | address of next instruction |
| MAR | address currently accessed in memory |
| MDR | data/instruction moving to/from memory |
| CIR | current instruction being decoded/executed |

---

## 10. Fetch-Decode-Execute Pattern

The CPU repeatedly processes instructions using:

```text
Fetch → Decode → Execute
```

### Summary

| Stage | Meaning |
|---|---|
| Fetch | get next instruction from memory |
| Decode | Control Unit interprets instruction |
| Execute | carry out instruction |

### Fetch Register Flow

```text
PC → MAR
memory read
memory → MDR
MDR → CIR
PC updated
```

### Exam Phrase

During fetch, the address in the Program Counter is copied to the MAR, the instruction is read from memory into the MDR, then copied to the CIR.

---

## 11. Memory and Storage Pattern

Students must clearly separate memory and storage.

| Component | Main Role | Volatile? |
|---|---|---|
| Registers | current CPU data/instructions | yes |
| Cache | frequently used data/instructions | usually yes |
| RAM | active programs/data | yes |
| ROM | firmware/startup instructions | no |
| SSD/HDD | long-term files/programs | no |

### Memory Hierarchy

```text
Registers
↓
Cache
↓
RAM
↓
Secondary Storage
```

Usually:

```text
higher = faster, smaller, more expensive
lower = slower, larger, cheaper
```

---

## 12. Data Representation Pattern

Computers use binary because circuits can reliably represent two states:

```text
0 / 1
off / on
false / true
low voltage / high voltage
```

### Key Units

| Unit | Size |
|---|---:|
| bit | 1 binary digit |
| nibble | 4 bits |
| byte | 8 bits |

### Binary Place Values

| 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---:|---:|---:|---:|---:|---:|---:|---:|

### Representation Ideas

| Data Type | How Represented |
|---|---|
| Integer | binary number |
| Character | character set code |
| Image | pixels and colour depth |
| Sound | samples and bit depth |

---

## 13. Logic Gates Pattern

Logic gates process binary inputs and produce binary outputs.

| Gate | Output is 1 when... |
|---|---|
| NOT | input is 0 |
| AND | all inputs are 1 |
| OR | at least one input is 1 |
| NAND | not all inputs are 1 |
| NOR | no inputs are 1 |
| XOR | inputs are different |

### Truth Table Rule

For `n` inputs:

```text
rows = 2^n
```

Examples:

```text
2 inputs = 4 rows
3 inputs = 8 rows
```

---

## 14. Operating System Pattern

An operating system is system software that manages hardware and software resources.

### Main Functions

| Function | Meaning |
|---|---|
| User interface | allows user interaction |
| File management | organizes files and folders |
| Memory management | allocates and tracks RAM |
| Process management | manages running programs |
| Device management | controls hardware devices |
| Security management | manages users, passwords, permissions |
| Network management | manages connections |

### Exam Phrase

The OS acts as an interface between users/applications and hardware while managing resources such as CPU, memory, files, and devices.

---

## 15. Control System Pattern

A control system monitors and controls a physical process.

### Basic Structure

```text
Sensor → Controller → Actuator
```

### Roles

| Part | Role |
|---|---|
| Sensor | input from physical world |
| Controller | processes sensor data and decides output |
| Actuator | physical output/action |

### Open-loop vs Closed-loop

| Type | Feedback? | Example |
|---|---|---|
| Open-loop | no | timed sprinkler |
| Closed-loop | yes | thermostat |

### Exam Phrase

A control system uses sensor input, processing by a controller, and actuator output to control a physical process.

---

## 16. Cloud Computing Pattern

Cloud computing means using remote servers over a network to provide computing resources.

### Resources

```text
storage
software
databases
virtual servers
development platforms
backup
collaboration tools
```

### Service Models

| Model | Meaning |
|---|---|
| SaaS | ready-to-use cloud software |
| PaaS | platform for building/deploying applications |
| IaaS | virtual infrastructure such as servers/storage |

### Main Trade-off

| Benefit | Risk |
|---|---|
| access anywhere | internet dependence |
| collaboration | privacy/security concerns |
| scalability | ongoing cost/vendor lock-in |
| provider maintenance | less direct control |

---

## 19. Student Revision Routine

Students should revise A1 by asking:

```text
What component is involved?
Is it hardware or software?
Is it input, processing, output, memory, or storage?
Is data temporary or permanent?
What binary representation is used?
What process is happening?
What is the exam keyword?
```

For scenario questions, use this structure:

```text
1. Identify the system.
2. Identify input.
3. Identify processing.
4. Identify output.
5. Identify storage/memory if relevant.
6. Explain why each component is suitable.
7. Mention risks or limitations if asked.
```

---

## 20. Common A1 Mistakes Overview

| Mistake | Topic | Fix |
|---|---|---|
| Computer means monitor | Overview | monitor is output hardware |
| CPU is whole computer | CPU | CPU is one processing component |
| Hardware means only inside case | Hardware | hardware includes peripherals |
| Software means only apps | OS | software includes system software |
| RAM stores files permanently | Memory | RAM is volatile |
| SSD is primary memory | Storage | SSD is secondary storage |
| Cache stores files | Memory | cache is temporary fast memory |
| PC register stores current instruction | CPU/FDE | PC stores next instruction address |
| MAR stores data | CPU/FDE | MAR stores address |
| MDR stores address | CPU/FDE | MDR stores data/instruction |
| Binary only represents numbers | Data Representation | all data uses binary |
| ASCII supports every language | Data Representation | Unicode supports many languages |
| OR means exactly one | Logic Gates | XOR means exactly one/different |
| GUI is the whole OS | OS | GUI is one interface |
| Sensor is output | Control Systems | sensor is input |
| Actuator is input | Control Systems | actuator is output/action |
| Cloud data is not physical | Cloud | cloud uses remote physical servers |
| Cloud sync always equals backup | Cloud | sync and backup are different |

---

## 21. Assessment Focus

A1 questions may ask students to:

- define computer system, hardware, software, CPU, OS, memory, storage
- classify hardware devices
- explain CPU components
- trace fetch-decode-execute cycle
- compare RAM, ROM, cache, and secondary storage
- compare SSD and HDD
- convert binary and denary
- calculate image or sound file size
- complete logic gate truth tables
- explain operating system functions
- identify sensors and actuators
- distinguish open-loop and closed-loop systems
- explain cloud computing benefits and risks
- apply concepts to real-world scenarios

---

## 22. Common Exam-style Command Words

| Command | What Students Should Do |
|---|---|
| State | Give a short answer |
| Identify | Name the correct component/type |
| Define | Give precise meaning |
| Describe | Give features or steps |
| Explain | Give reason and effect |
| Distinguish | Show clear difference |
| Compare | Give similarities and differences |
| Calculate | Show working and final value |
| Construct | Create truth table/diagram/answer |
| Justify | Give reason for a choice |
| Evaluate | Give balanced advantages and disadvantages |

---

## 23. Mini Diagnostic Check

### Question 1

What is the difference between hardware and software?

<details>
<summary>Answer</summary>

Hardware is the physical components of a computer system.  
Software is the programs and instructions that tell hardware what to do.

</details>

---

### Question 2

What does the Program Counter store?

<details>
<summary>Answer</summary>

The address of the next instruction to be fetched.

</details>

---

### Question 3

Why is RAM different from SSD?

<details>
<summary>Answer</summary>

RAM is volatile primary memory used for currently running programs and data.  
SSD is non-volatile secondary storage used to store files and programs long term.

</details>

---

### Question 4

Convert `00010110` to denary.

<details>
<summary>Answer</summary>

```text
16 + 4 + 2 = 22
```

Answer:

```text
22
```

</details>

---

### Question 5

Complete the AND truth table.

| A | B | A AND B |
|---:|---:|---:|
| 0 | 0 | ? |
| 0 | 1 | ? |
| 1 | 0 | ? |
| 1 | 1 | ? |

<details>
<summary>Answer</summary>

| A | B | A AND B |
|---:|---:|---:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

</details>

---

### Question 6

Give one sensor and one actuator in a heating system.

<details>
<summary>Answer</summary>

Sensor: temperature sensor.  
Actuator: heater, relay, valve, or fan depending on the system.

</details>

---

## 24. End-of-module Practice Plan

After finishing A1, students should complete:

| Practice Type | Purpose |
|---|---|
| 10 vocabulary questions | strengthen core definitions |
| 8 classification questions | hardware/software/input/output/storage |
| 5 CPU register questions | PC, MAR, MDR, CIR |
| 3 fetch-decode-execute traces | process sequence |
| 6 memory/storage comparisons | RAM, ROM, cache, SSD/HDD |
| 8 binary conversion questions | fluency |
| 4 file size calculations | image and sound |
| 5 logic gate truth tables | Boolean logic |
| 4 OS scenario questions | function explanation |
| 3 control system scenarios | sensors, actuators, feedback |
| 3 cloud computing evaluation questions | benefits and risks |

---

## 25. Suggested Mini Project

### Computer System Case Study

Choose one system:

```text
student laptop
gaming PC
ATM
smart thermostat
school server
traffic light system
online cloud document system
```

Students should produce:

```text
1. system overview
2. hardware components
3. input / processing / output / storage
4. CPU and memory role
5. storage choice
6. data representation example
7. logic or condition example
8. operating system or controller role
9. security / reliability concern
10. one exam-style explanation question with answer
```

### Example: Smart Thermostat

Students could identify:

```text
temperature sensor
controller
heater actuator
set point
closed-loop feedback
cloud app connection if smart
```

---

## 26. A1 Completion Checklist

Before moving to the next module, students should be able to:

- [ ] define computer system
- [ ] distinguish hardware, software, data, and users
- [ ] classify input, output, processing, memory, storage, and communication hardware
- [ ] explain CPU, CU, ALU, registers, and cache
- [ ] explain PC, MAR, MDR, and CIR
- [ ] describe fetch, decode, and execute
- [ ] explain RAM, ROM, cache, and secondary storage
- [ ] distinguish volatile and non-volatile memory
- [ ] compare SSD and HDD
- [ ] explain why computers use binary
- [ ] convert simple binary and denary values
- [ ] explain ASCII and Unicode
- [ ] explain bitmap image representation
- [ ] explain sound sampling
- [ ] complete truth tables for basic logic gates
- [ ] explain OS functions
- [ ] distinguish GUI and CLI
- [ ] explain sensors and actuators
- [ ] distinguish open-loop and closed-loop control systems
- [ ] explain cloud computing
- [ ] distinguish SaaS, PaaS, and IaaS
- [ ] evaluate advantages and risks of cloud computing

---

## 27. One-page Module Summary

| Area | Key Idea |
|---|---|
| Computer system | Hardware, software, data, and users work together |
| Hardware | Physical components classified by role |
| CPU | Executes instructions using CU, ALU, registers, cache |
| Fetch-decode-execute | CPU repeatedly gets, understands, and carries out instructions |
| Primary memory | RAM/ROM/cache support active processing |
| Secondary storage | Non-volatile long-term storage |
| Data representation | All data is represented using binary patterns |
| Logic gates | Boolean circuits process 0/1 inputs |
| Operating systems | Manage hardware/software resources |
| Control systems | Use sensors, controllers, actuators, and feedback |
| Cloud computing | Uses remote servers over a network |

