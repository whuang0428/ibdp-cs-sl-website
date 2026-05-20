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
