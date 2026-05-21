# B2 Pre-loop Pages Audit v1.0

## 1. Audit Purpose

Before continuing to **B2 Searching**, this audit checks the B2 pages that appear before Loops and Arrays:

```text
Programming Basics
Input and Output
Variables
Data Types
Selection
```

These pages are important because they prepare students for the harder programming topics:

```text
Loops → Arrays → Searching → Sorting
```

The goal is to decide whether these pages need immediate v1.1 upgrade or can wait until later.

---

## 2. Overall Judgement

| Area | Judgement |
|---|---|
| Current status | Usable as v1.0 framework pages |
| Main strength | The pages already introduce the basic programming ideas in a structured way |
| Main weakness | Some pages may not yet have enough Java examples, tracing, and beginner-friendly practice |
| Biggest teaching risk | Students may move into loops and arrays without strong condition-reading and variable-tracing skills |
| Recommended action | Upgrade **Selection** first, then continue to Searching |

---

## 3. Page-by-page Audit

| Page | Status | Priority | Main Issue | Recommended Action |
|---|---|---|---|---|
| Programming Basics | Minor Revision | P2 | Needs more “how a program runs” and simple full-program examples | Add one beginner Java program with input, processing, and output |
| Input and Output | Minor Revision | P2 | Java `Scanner` errors are common; students need more examples | Add examples for `nextInt`, `nextDouble`, `nextLine`, and common Scanner mistakes |
| Variables | Minor Revision | P2 | Needs more reassignment and trace table practice | Add variable update examples and prediction tasks |
| Data Types | Minor Revision | P2 | Needs clearer Java type comparison and conversion examples | Add table for `int`, `double`, `boolean`, `char`, `String`; add casting example |
| Selection | Needs v1.1 Upgrade | P1 | Selection is required for validation, loops, arrays, searching, and sorting | Upgrade immediately before Searching |

---

## 4. Why Selection Should Come First

Searching depends on:

```text
array traversal
+ loop
+ IF condition
+ Boolean found flag
```

If students are weak at selection, they will struggle with code like:

```java
if (values[i] == target) {
    found = true;
}
```

Selection also supports:

| Later Topic | How Selection is Used |
|---|---|
| Loops | Decide whether to update total/count |
| Arrays | Count values that match a condition |
| Searching | Check whether current element equals target |
| Sorting | Compare two values before swapping |
| Testing | Validate input ranges |
| OOP | Validate attributes in setters |

Therefore, the best next v1.1 page is:

```text
B2 Selection v1.1
```

---

## 5. Selection v1.1 Required Improvements

The current Selection page should be upgraded with:

| Upgrade Area | Required Content |
|---|---|
| IF statement | Basic condition and branch explanation |
| IF ELSE | Two-way decision |
| ELSE IF | Multiple possible outcomes |
| Nested IF | Decision inside another decision |
| Boolean operators | `&&`, `||`, `!` |
| Comparison operators | `==`, `!=`, `<`, `<=`, `>`, `>=` |
| Range checking | Example: valid mark from 0 to 100 |
| Input validation | Reject invalid user input |
| Java vs pseudocode | Show both forms |
| Trace tables | Show condition result and selected branch |
| Common mistakes | `=` vs `==`, missing braces, wrong Boolean logic |
| Guided practice | At least 5 questions with hidden answers |
| Exam-style questions | At least one trace question and one explanation question |

---

## 6. Other Pre-loop Pages: Recommended Later Upgrades

### 6.1 Programming Basics

Suggested future additions:

- simple “input → process → output” model
- full Java program with comments
- difference between syntax error, runtime error, and logic error
- how code is executed top to bottom
- beginner debugging checklist

Priority:

```text
P2, after Selection and Searching
```

---

### 6.2 Input and Output

Suggested future additions:

- `Scanner input = new Scanner(System.in);`
- `nextInt()`
- `nextDouble()`
- `nextLine()`
- issue caused by mixing `nextInt()` and `nextLine()`
- user prompt design
- input validation example

Priority:

```text
P2, useful before larger Java assignments
```

---

### 6.3 Variables

Suggested future additions:

- assignment vs comparison
- variable reassignment
- swapping two variables
- accumulator and counter preview
- trace table with changing values
- naming conventions

Priority:

```text
P2, important but can be improved after Selection
```

---

### 6.4 Data Types

Suggested future additions:

- Java primitive types vs String
- integer division vs double division
- casting
- Boolean values
- char vs String
- choosing suitable data types from scenario

Priority:

```text
P2, important for Java accuracy
```

---

## 7. Recommended Upgrade Order

The best route from this point is:

```text
1. B2 Selection v1.1
2. B2 Searching v1.1
3. B2 Sorting v1.1
4. B2 Testing and Debugging v1.1
5. B2 Input and Output v1.1
6. B2 Variables v1.1
7. B2 Data Types v1.1
8. B2 Programming Basics v1.1
```

Why not upgrade everything immediately?

Because the website already has working v1.0 pages. The goal now is to strengthen the pages that affect later understanding the most.

---

## 8. Decision

Final judgement:

```text
B2 pre-loop pages are usable as v1.0.
Selection should be upgraded before Searching.
Programming Basics, Input and Output, Variables, and Data Types can be upgraded later as P2 pages.
```

Immediate next action:

```text
Create B2 Selection teaching content v1.1.
```
