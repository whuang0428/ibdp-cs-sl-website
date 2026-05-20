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
