$basePath = "docs\a1-computer-fundamentals"
New-Item -ItemType Directory -Force $basePath | Out-Null

$pages = @{
"index.md" = @'
# A1 Computer Fundamentals

## Unit Overview

This unit introduces the main concepts behind how computers work.

Students will learn about computer hardware, CPU components, memory, storage, data representation, logic gates, operating systems, control systems, and cloud computing.

For this first framework version, each page gives a short learning structure. Later, each page can be expanded into a full teaching page with diagrams, animations, code examples, exam-style questions, and teacher notes.

## Topics

| Topic | Main Focus | Label |
|---|---|---|
| Computer Hardware | Understand the main physical components of a computer system | SL Core |
| CPU Components | Understand the role of CU, ALU, registers, and buses | SL Core |
| Fetch-Decode-Execute Cycle | Understand how instructions are processed | SL Core |
| Primary Memory | Understand RAM, ROM, cache, and registers | SL Core |
| Secondary Storage | Compare HDD, SSD, optical, and cloud storage | SL Core |
| Data Representation | Understand binary, denary, hexadecimal, and character data | SL Core |
| Logic Gates | Understand AND, OR, NOT and truth tables | SL Core |
| Operating Systems | Understand the main functions of an operating system | SL Core |
| Control Systems | Understand sensors, input, processing, and output in control systems | SL Core |
| Cloud Computing | Understand SaaS, PaaS, IaaS and cloud service models | SL Core |

## How to Study This Unit

1. Learn the key hardware and system terms.
2. Understand how data and instructions move inside the computer.
3. Practise binary, hexadecimal, and truth table questions.
4. Connect operating system functions to real computer use.
5. Practise exam-style explanation questions.

::: tip SL Core
A1 is concept-heavy. Students should focus on clear definitions, precise technical vocabulary, and step-by-step processes.
:::
'@

"computer-hardware.md" = @'
# Computer Hardware

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify main hardware components
- explain the role of input, output, storage, and processing devices
- distinguish between hardware and software
- apply hardware ideas to real computer systems

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding computer system components |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Hardware | The physical components of a computer system |
| Software | Programs and data used by a computer |
| Input device | A device used to enter data |
| Output device | A device used to present data |
| Storage device | A device used to store data |
| Processor | The component that executes instructions |

## 4. Concept Explanation

Hardware refers to the physical parts of a computer system.

Examples include:

- CPU
- RAM
- monitor
- keyboard
- mouse
- SSD
- printer
- network card

A computer system usually needs input, processing, storage, and output.

## 5. Step-by-step Example

Example: Using a computer to type and print a document.

| Stage | Example |
|---|---|
| Input | Keyboard enters text |
| Processing | CPU processes the document |
| Storage | SSD saves the file |
| Output | Printer prints the document |

## 6. Visual Structure

::: info Computer System Structure
Input → Processing → Storage → Output
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Confusing hardware and software | Physical and non-physical parts have different roles |
| Calling every device an input device | Some devices are output or storage devices |
| Ignoring processing | A computer does not only store and display data |
| Giving vague examples | Exam answers need specific components |

## 8. Exam-style Question

A student uses a laptop to create a presentation.

**Identify one input device, one output device, and one storage device used by the laptop.** [3]

## 9. Mark Scheme Style Answer

Possible answers:

- input device: keyboard / touchpad / microphone
- output device: screen / speakers
- storage device: SSD / hard drive

## 10. Quick Check

1. What is hardware?
2. What is software?
3. Give one example of a storage device.
'@

"cpu-components.md" = @'
# CPU Components

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify main CPU components
- explain the role of the ALU and CU
- explain the purpose of registers
- understand the role of buses in data transfer

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding CPU structure |

## 3. Key Terms

| Term | Meaning |
|---|---|
| CPU | Central Processing Unit |
| ALU | Arithmetic Logic Unit; performs arithmetic and logical operations |
| CU | Control Unit; coordinates instruction execution |
| Register | Small, fast storage location inside the CPU |
| Bus | A pathway used to transfer data, addresses, or control signals |
| Accumulator | A register that stores intermediate results |

## 4. Concept Explanation

The CPU is the main component responsible for executing instructions.

Important CPU components include:

| Component | Role |
|---|---|
| ALU | Performs calculations and logic operations |
| CU | Controls and coordinates the fetch-decode-execute cycle |
| Registers | Temporarily store data, instructions, or addresses |
| Buses | Transfer data and signals between components |

## 5. Step-by-step Example

When the CPU adds two numbers:

1. The CU controls the process.
2. Values are loaded into registers.
3. The ALU performs the addition.
4. The result may be stored in the accumulator.

## 6. Visual Structure

::: info CPU Components
Control Unit → coordinates operations  
ALU → performs calculations and logic  
Registers → store temporary values  
Buses → transfer data and signals
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying the ALU controls the CPU | The CU performs control |
| Saying registers are secondary storage | Registers are inside the CPU and are very fast |
| Confusing data bus and address bus | They carry different types of information |
| Ignoring the accumulator | It is often used for intermediate results |

## 8. Exam-style Question

**Outline the role of the ALU and the control unit in the CPU.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the ALU performs arithmetic operations
- the ALU performs logical comparisons
- the control unit coordinates CPU operations
- the control unit manages instruction decoding and control signals

## 10. Quick Check

1. What does ALU stand for?
2. What does the control unit do?
3. What is a register?
'@

"fetch-decode-execute.md" = @'
# Fetch-Decode-Execute Cycle

## 1. Learning Objectives

By the end of this page, students should be able to:

- describe the fetch-decode-execute cycle
- explain the role of key registers in the cycle
- understand how instructions are retrieved and executed
- use correct sequence words in exam answers

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Explaining instruction processing |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Fetch | Retrieve the next instruction from memory |
| Decode | Interpret what the instruction means |
| Execute | Carry out the instruction |
| Program Counter | Register holding the address of the next instruction |
| MAR | Memory Address Register |
| MDR | Memory Data Register |
| IR | Instruction Register |

## 4. Concept Explanation

The fetch-decode-execute cycle describes how the CPU processes instructions.

The CPU repeatedly:

1. fetches an instruction from memory
2. decodes the instruction
3. executes the instruction

This cycle continues while a program is running.

## 5. Step-by-step Example

A simplified cycle:

| Stage | What Happens |
|---|---|
| Fetch | The address of the next instruction is used to retrieve the instruction from memory |
| Decode | The control unit interprets the instruction |
| Execute | The required operation is performed |

## 6. Visual Structure

::: info FDE Cycle
Program Counter gives address → instruction is fetched from memory → instruction is decoded → instruction is executed → Program Counter updates.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Putting execute before decode | The sequence is incorrect |
| Forgetting the role of memory | Instructions are fetched from memory |
| Saying the ALU decodes instructions | The control unit decodes instructions |
| Not mentioning registers | Register roles are often important in exam answers |

## 8. Exam-style Question

**Describe the fetch-decode-execute cycle.** [6]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the address of the next instruction is held by the program counter
- the instruction is fetched from memory
- the instruction is stored in the instruction register
- the control unit decodes the instruction
- the instruction is executed by the appropriate CPU component
- the program counter is updated

## 10. Quick Check

1. What are the three main stages of the cycle?
2. What does the program counter store?
3. Which CPU component decodes instructions?
'@

"primary-memory.md" = @'
# Primary Memory

## 1. Learning Objectives

By the end of this page, students should be able to:

- distinguish between RAM and ROM
- explain the role of cache memory
- explain why registers are very fast
- compare volatile and non-volatile memory

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding memory hierarchy |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Primary memory | Memory directly accessible by the CPU |
| RAM | Volatile memory used to store currently running programs and data |
| ROM | Non-volatile memory storing startup instructions |
| Cache | Very fast memory used to store frequently used data and instructions |
| Register | Very small and very fast storage inside the CPU |
| Volatile | Data is lost when power is turned off |
| Non-volatile | Data is retained when power is turned off |

## 4. Concept Explanation

Primary memory is used by the CPU during program execution.

| Memory Type | Main Feature |
|---|---|
| Registers | Fastest, smallest, inside CPU |
| Cache | Very fast, stores frequently used data |
| RAM | Stores current programs and data |
| ROM | Stores startup instructions |

## 5. Step-by-step Example

When a program runs:

1. The program is loaded into RAM.
2. Frequently used data may be copied to cache.
3. The CPU uses registers for immediate operations.
4. Startup instructions are stored in ROM.

## 6. Visual Structure

::: info Memory Speed
Registers → Cache → RAM → Secondary storage  
Fastest to slowest
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying RAM is permanent storage | RAM is volatile |
| Saying ROM is usually changed by users | ROM is normally read-only for startup instructions |
| Confusing cache with browser cache only | CPU cache is hardware memory |
| Calling secondary storage primary memory | They serve different roles |

## 8. Exam-style Question

**Explain one difference between RAM and ROM.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- RAM is volatile while ROM is non-volatile
- RAM stores currently running programs and data
- ROM stores startup or boot instructions

## 10. Quick Check

1. What does volatile mean?
2. What is RAM used for?
3. Why is cache useful?
'@

"secondary-storage.md" = @'
# Secondary Storage

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of secondary storage
- compare common storage technologies
- distinguish between primary memory and secondary storage
- choose suitable storage for different scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Persistent data storage |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Secondary storage | Non-volatile storage used to keep data long term |
| HDD | Hard Disk Drive |
| SSD | Solid State Drive |
| Optical storage | Storage using laser technology, such as DVD |
| Cloud storage | Data stored on remote servers accessed over a network |
| Capacity | Amount of data that can be stored |

## 4. Concept Explanation

Secondary storage keeps data after the computer is turned off.

Common types:

| Type | Strength |
|---|---|
| HDD | Large capacity, relatively low cost |
| SSD | Fast, durable, no moving parts |
| Optical disc | Useful for distribution or archive in some contexts |
| Cloud storage | Accessible from multiple devices through the internet |

## 5. Step-by-step Example

Choosing storage for a laptop:

| Requirement | Suitable Choice |
|---|---|
| Fast startup | SSD |
| Low cost large backup | HDD |
| Access from different devices | Cloud storage |

## 6. Visual Structure

::: info Secondary Storage Purpose
Save files → keep data after power off → allow programs and data to be loaded again later.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying secondary storage is volatile | It is normally non-volatile |
| Confusing RAM with SSD | RAM is primary memory; SSD is secondary storage |
| Assuming cloud storage is local | Cloud data is stored on remote servers |
| Ignoring scenario needs | Different storage types suit different uses |

## 8. Exam-style Question

**Explain why an SSD may be preferred to an HDD in a laptop.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- SSDs have no moving parts
- SSDs are usually faster than HDDs
- this can improve boot time and application loading
- SSDs may be more durable in portable devices

## 10. Quick Check

1. What is secondary storage?
2. Give one advantage of an SSD.
3. What is cloud storage?
'@

"data-representation.md" = @'
# Data Representation

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why computers use binary
- convert simple values between denary, binary, and hexadecimal
- understand bits and bytes
- describe how characters may be represented

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Representing data in computers |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Bit | A binary digit, 0 or 1 |
| Byte | A group of 8 bits |
| Binary | Base 2 number system |
| Denary | Base 10 number system |
| Hexadecimal | Base 16 number system |
| Character set | A system for representing characters using codes |

## 4. Concept Explanation

Computers represent data using binary because digital circuits can represent two states, usually 0 and 1.

Binary can represent:

- numbers
- characters
- images
- sound
- instructions

Hexadecimal is often used because it is shorter and easier for humans to read than long binary values.

## 5. Step-by-step Example

Example binary place values:

| Binary place | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|

Binary value:

| Bit | 0 | 0 | 1 | 0 | 1 | 0 | 1 | 1 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|

Denary calculation:

32 + 8 + 2 + 1 = 43

## 6. Visual Structure

::: info Binary Conversion
Write place values → place each bit under a value → add the values where the bit is 1.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Forgetting binary starts with powers of 2 | Conversion becomes incorrect |
| Adding place values where bit is 0 | The denary answer becomes too large |
| Confusing binary and hexadecimal | They use different bases |
| Thinking binary only stores numbers | All data can be represented in binary |

## 8. Exam-style Question

**Convert the binary value 00101011 into denary.** [2]

## 9. Mark Scheme Style Answer

00101011 = 32 + 8 + 2 + 1 = 43

::: tip Answer
43
:::

## 10. Quick Check

1. What is a bit?
2. How many bits are in a byte?
3. Why is hexadecimal used?
'@

"logic-gates.md" = @'
# Logic Gates

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify basic logic gates
- construct simple truth tables
- understand AND, OR, and NOT logic
- apply logic gates to simple circuits

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Boolean logic |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Logic gate | An electronic circuit that performs a Boolean operation |
| Boolean | A value that is true or false, often represented as 1 or 0 |
| AND | Outputs 1 only if all inputs are 1 |
| OR | Outputs 1 if at least one input is 1 |
| NOT | Reverses the input |
| Truth table | A table showing outputs for all possible input combinations |

## 4. Concept Explanation

Logic gates are used to build digital circuits.

Basic gates:

| Gate | Output Rule |
|---|---|
| AND | 1 only when both inputs are 1 |
| OR | 1 when at least one input is 1 |
| NOT | changes 1 to 0 and 0 to 1 |

## 5. Step-by-step Example

AND truth table:

| A | B | A AND B |
|---:|---:|---:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## 6. Visual Structure

::: info Gate Rules
AND needs all inputs to be 1.  
OR needs at least one input to be 1.  
NOT reverses the input.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Confusing AND and OR | Truth table outputs become wrong |
| Forgetting all input combinations | The truth table is incomplete |
| Applying NOT to the wrong value | The final output is incorrect |
| Treating 1 and 0 as normal numbers only | They represent Boolean states |

## 8. Exam-style Question

**Complete the truth table for A OR B.** [4]

## 9. Mark Scheme Style Answer

| A | B | A OR B |
|---:|---:|---:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## 10. Quick Check

1. When does AND output 1?
2. When does OR output 1?
3. What does NOT do?
'@

"operating-systems.md" = @'
# Operating Systems

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of an operating system
- identify key OS functions
- describe how the OS manages resources
- apply OS functions to real computer use

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding system software |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Operating system | System software that manages hardware and software resources |
| User interface | The way users interact with the computer |
| Memory management | Allocating and managing memory |
| Processor scheduling | Deciding which process gets CPU time |
| File management | Organizing files and folders |
| Device driver | Software that allows the OS to communicate with hardware |

## 4. Concept Explanation

The operating system acts as a bridge between the user, applications, and hardware.

Common OS functions include:

| Function | Purpose |
|---|---|
| User interface | Allows users to interact with the system |
| Memory management | Allocates memory to programs |
| Processor management | Shares CPU time between processes |
| File management | Organizes files and folders |
| Device management | Controls hardware devices |
| Security | Protects data and user accounts |

## 5. Step-by-step Example

When a user opens a document:

1. The OS locates the file.
2. The OS loads the application and file into memory.
3. The OS allows input from keyboard or mouse.
4. The OS displays output on the screen.
5. The OS manages saving changes to storage.

## 6. Visual Structure

::: info OS Role
User → Operating System → Hardware  
Applications → Operating System → CPU, memory, storage, devices
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying the OS is hardware | It is system software |
| Only mentioning user interface | OS has many resource management roles |
| Ignoring security functions | Access control is an important OS role |
| Confusing application software with OS | They have different purposes |

## 8. Exam-style Question

**Outline two functions of an operating system.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- memory management allocates memory to running programs
- file management organizes and stores files
- processor scheduling allocates CPU time to processes
- device management controls peripherals using drivers
- security manages users, passwords, and permissions

## 10. Quick Check

1. What is an operating system?
2. What is memory management?
3. What is a device driver?
'@

"control-systems.md" = @'
# Control Systems

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what a control system is
- identify sensors, processors, and actuators
- distinguish between input and output in control systems
- apply control system ideas to real-life examples

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding automated control |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Control system | A system that monitors and controls a process |
| Sensor | Device that detects data from the environment |
| Actuator | Device that causes physical action |
| Input | Data received by the system |
| Output | Action or signal produced by the system |
| Feedback | Information used to adjust system behaviour |

## 4. Concept Explanation

A control system uses input data to make decisions and control output devices.

Examples:

- automatic doors
- heating systems
- traffic lights
- robotic vacuum cleaners
- greenhouse control systems

## 5. Step-by-step Example

Example: Automatic heating system

| Stage | Example |
|---|---|
| Sensor input | Temperature sensor measures room temperature |
| Processing | System compares temperature with target |
| Output | Heater turns on or off |
| Feedback | New temperature is measured again |

## 6. Visual Structure

::: info Control System Process
Sensor input → processing and decision → actuator output → feedback → repeat
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Confusing sensors and actuators | Sensors detect; actuators act |
| Forgetting processing | The system must make decisions |
| Ignoring feedback | Many control systems adjust using feedback |
| Calling every automated system AI | Control systems do not always use AI |

## 8. Exam-style Question

A greenhouse uses a temperature sensor and a fan.

**Describe how the system could control the temperature.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the temperature sensor collects current temperature data
- the processor compares the temperature with a set value
- if the temperature is too high, the fan is switched on
- the sensor continues to monitor temperature as feedback

## 10. Quick Check

1. What does a sensor do?
2. What does an actuator do?
3. Give one example of a control system.
'@

"cloud-computing.md" = @'
# Cloud Computing

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what cloud computing is
- distinguish between SaaS, PaaS, and IaaS
- identify advantages and disadvantages of cloud services
- apply cloud computing to real-world scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding cloud service models |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Cloud computing | Using remote servers over a network to store, manage, or process data |
| SaaS | Software as a Service |
| PaaS | Platform as a Service |
| IaaS | Infrastructure as a Service |
| Scalability | Ability to increase or decrease resources as needed |
| Availability | The ability of a service to remain accessible |

## 4. Concept Explanation

Cloud computing allows users and organizations to use computing resources over the internet.

Common models:

| Model | Meaning | Example Use |
|---|---|---|
| SaaS | Use software hosted by a provider | Online email, online documents |
| PaaS | Use a platform to build and deploy applications | App development platform |
| IaaS | Rent infrastructure such as servers or storage | Virtual servers |

## 5. Step-by-step Example

A team of programmers uses PaaS to build an application.

They do not need to manage all server hardware directly. The platform provides development tools, hosting, and deployment support.

## 6. Visual Structure

::: info Cloud Service Models
SaaS → use ready-made software  
PaaS → build and deploy applications  
IaaS → rent computing infrastructure
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying cloud means data is stored in the sky | It is stored on remote servers |
| Confusing SaaS and PaaS | SaaS is ready-made software; PaaS is for development |
| Ignoring internet dependency | Cloud services usually need network access |
| Only listing advantages | Exam answers may ask for disadvantages too |

## 8. Exam-style Question

**Explain why PaaS may be suitable for a team developing a software application.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- PaaS provides a development and deployment environment
- programmers do not need to manage all underlying hardware
- tools and services can support collaboration and testing
- resources can be scaled according to project needs

## 10. Quick Check

1. What is cloud computing?
2. What does SaaS mean?
3. What is the difference between PaaS and IaaS?
'@
}

foreach ($file in $pages.Keys) {
    $fullPath = Join-Path $basePath $file
    Set-Content -Path $fullPath -Value $pages[$file] -Encoding UTF8
}
Write-Host "A1 Computer Fundamentals framework pages created successfully."
