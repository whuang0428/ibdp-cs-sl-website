# B2 Programming Quality Audit v1.0

## 1. Audit Purpose

This page is the first real teaching-quality inspection after the full website content v1.0 has been created.

The goal is to decide which **B2 Programming** pages are already usable, which pages need small improvements, and which pages should be upgraded first in v1.1.

---

## 2. Overall Judgement

| Area | Judgement |
|---|---|
| Current status | Mostly usable as v1.0 classroom framework |
| Main strength | Pages already have structure, key terms, examples, practice, and exam-style sections |
| Main weakness | Core programming pages need more code-tracing, more Java examples, and more practice ladders |
| Biggest teaching risk | Students may read explanations but still not be able to trace or write code independently |
| Recommended next action | Upgrade B2 core pages in v1.1, starting with Loops and Arrays |

---

## 3. B2 Page-by-page Audit

| Page | Current Status | Priority | Main Issue | Recommended v1.1 Action |
|---|---|---|---|---|
| Overview | Ready | P3 | Mostly acts as navigation page | Keep as is; update only after all v1.1 pages are done |
| Programming Basics | Minor Revision | P2 | Needs more beginner-friendly “program execution” examples | Add one full beginner Java program with line-by-line explanation |
| Input and Output | Minor Revision | P2 | Needs more Scanner examples and input validation examples | Add Java input examples: String, int, double, and common Scanner mistakes |
| Variables | Minor Revision | P2 | Needs stronger tracing of variable reassignment | Add trace table for changing variable values |
| Data Types | Minor Revision | P2 | Needs clearer Java vs pseudocode type comparison | Add table comparing integer, real/double, Boolean, char, String |
| Selection | Minor Revision | P1 | Needs more nested IF and Boolean condition practice | Add 10 condition-reading questions and 3 Java examples |
| Loops | Major Revision for v1.1 | P1 | Students often struggle with loop tracing; needs more examples | Add while, for, do-while examples, trace tables, output prediction, and common infinite loop cases |
| Arrays | Major Revision for v1.1 | P1 | High-value topic; needs more traversal and algorithm examples | Add array traversal, sum, max/min, count, search examples with trace tables |
| Searching | Minor/Major Revision | P1 | Needs more linear search tracing and found flag explanation | Add search trace tables, found/not found cases, pseudocode + Java pair |
| Sorting | Minor/Major Revision | P1 | Sorting is hard without step-by-step visual trace | Add bubble/insertion sort trace tables and swap explanation |
| Testing and Debugging | Minor Revision | P1 | Needs more test data tables and error classification examples | Add normal/boundary/invalid test data practice |
| File Processing | Hold / Minor Revision | P3 | Useful but less urgent than loops/arrays/searching | Improve later after core algorithm pages |

---

## 4. Priority Ranking

### P1: Upgrade First

These pages should be improved before the course reaches serious programming practice.

| Rank | Page | Why |
|---:|---|---|
| 1 | Loops | Foundation for tracing, arrays, searching, sorting |
| 2 | Arrays | Foundation for data processing and algorithms |
| 3 | Searching | Directly combines arrays, loops, conditions, Boolean flag |
| 4 | Sorting | Needs detailed step-by-step trace to be understandable |
| 5 | Selection | Needed before loops and validation |
| 6 | Testing and Debugging | Needed for every coding task |

### P2: Upgrade Second

| Page | Why |
|---|---|
| Programming Basics | Helps weaker students start confidently |
| Input and Output | Java Scanner mistakes are common |
| Variables | Variable tracing is core but easier than arrays |
| Data Types | Important for Java accuracy and exam vocabulary |

### P3: Improve Later

| Page | Why |
|---|---|
| Overview | Navigation page, not a deep teaching page |
| File Processing | Useful extension, but less urgent for early programming |

---

## 5. B2 v1.1 Upgrade Standard

For each P1 page, add these sections or strengthen existing sections:

| Required Upgrade | Details |
|---|---|
| IB pseudocode | One clear pseudocode version of the main algorithm |
| Java implementation | One complete runnable Java example |
| Line-by-line explanation | Explain each important line/block |
| Trace table | Show variable changes step by step |
| Predict-the-output | Students read code and predict output |
| Modify-the-code | Students change condition, loop range, or array logic |
| Common mistakes | Add concrete mistakes with wrong and corrected code |
| Guided practice | At least 3 questions with hidden answers |
| Independent practice | At least 5 questions without immediate answer |
| Exam-style question | At least one 4-6 mark question with mark scheme answer |

---

## 6. Recommended Batch 1: Loops + Arrays

Start with these two because they affect the largest number of later topics.

### 6.1 Loops v1.1 Should Add

| Section | Needed Content |
|---|---|
| while loop | condition-controlled loop example |
| for loop | count-controlled loop example |
| do-while loop | runs at least once explanation |
| trace table | trace `i`, condition, total/output |
| infinite loop | why it happens and how to fix |
| off-by-one error | `<` vs `<=` examples |
| nested loop preview | simple multiplication table or grid |
| exam question | trace loop and explain output |

### 6.2 Arrays v1.1 Should Add

| Section | Needed Content |
|---|---|
| array declaration | Java syntax and pseudocode comparison |
| index access | zero-based indexing explanation |
| traversal | loop through all elements |
| sum algorithm | calculate total |
| count algorithm | count values meeting condition |
| max/min algorithm | find largest/smallest |
| linear search link | prepare for searching page |
| trace table | index, value, total/count/max changes |
| common errors | out-of-bounds, wrong length, wrong start index |

---

## 7. Recommended Batch 2: Searching + Sorting

After Loops and Arrays are upgraded, move to:

```text
Searching → Sorting
```

### Searching v1.1 Focus

- found flag
- early stop vs full traversal
- target found case
- target not found case
- tracing index and found variable
- Java `.equals()` for String search
- comparison between Boolean flag and returning index

### Sorting v1.1 Focus

- why sorting is needed
- swap operation
- bubble sort or insertion sort trace
- ascending vs descending order
- number of passes
- common mistakes in nested loops
- algorithm explanation in exam wording

---

## 8. Recommended Batch 3: Selection + Testing

After algorithm pages:

```text
Selection → Testing and Debugging
```

### Selection v1.1 Focus

- IF / ELSE IF / ELSE
- nested IF
- Boolean operators
- condition truth table
- range checking
- validation example

### Testing and Debugging v1.1 Focus

- syntax error
- runtime error
- logic error
- normal test data
- boundary test data
- invalid test data
- test table writing
- debugging trace examples

---

## 9. Suggested v1.1 Upgrade Order

```text
1. B2 Loops
2. B2 Arrays
3. B2 Searching
4. B2 Sorting
5. B2 Selection
6. B2 Testing and Debugging
7. B2 Input and Output
8. B2 Variables
9. B2 Data Types
10. B2 Programming Basics
11. B2 File Processing
12. B2 Overview
```

---

## 10. Decision

B2 Programming v1.0 is structurally complete, but the programming core should be upgraded before being used as the main classroom programming material.

Final judgement:

```text
B2 Programming: Ready as framework, but P1 pages need v1.1 teaching-depth upgrade.
```

Recommended immediate next step:

```text
Upgrade B2 Loops to teaching content v1.1.
```
