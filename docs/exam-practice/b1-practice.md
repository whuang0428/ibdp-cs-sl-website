# B1 Computational Thinking Practice

## 1. Quick Revision

| Concept | Reminder |
|---|---|
| Decomposition | Breaking a problem into smaller parts |
| Pattern recognition | Finding similarities or repeated structures |
| Abstraction | Removing unnecessary detail |
| Algorithm | Step-by-step solution |
| Trace table | Table used to follow variable changes |
| Pseudocode | Language-independent algorithm representation |

## 2. Short Questions

### Question 1 [2 marks]

State what is meant by decomposition.

<details>
<summary>Answer</summary>

Decomposition is breaking a complex problem into smaller, more manageable sub-problems.

</details>

### Question 2 [2 marks]

State what is meant by abstraction.

<details>
<summary>Answer</summary>

Abstraction is removing unnecessary details and focusing on the important information needed to solve a problem.

</details>

### Question 3 [3 marks]

A school wants to build a timetable system. Give three possible sub-problems created by decomposition.

<details>
<summary>Answer</summary>

Possible sub-problems include storing teacher availability, storing room availability, assigning lessons to time slots, checking clashes, and outputting student timetables.

</details>

## 3. Algorithm Practice

### Question 4 [5 marks]

Write pseudocode to input 10 numbers and output the largest number.

<details>
<summary>Answer</summary>

```text
INPUT number
largest = number

FOR count = 2 TO 10 DO
    INPUT number
    IF number > largest THEN
        largest = number
    END IF
END FOR

OUTPUT largest
```

</details>

### Question 5 [5 marks]

Trace the algorithm.

```text
total = 0

FOR i = 1 TO 4 DO
    total = total + i
END FOR

OUTPUT total
```

<details>
<summary>Answer</summary>

| i | total after update |
|---:|---:|
| 1 | 1 |
| 2 | 3 |
| 3 | 6 |
| 4 | 10 |

Output: `10`

</details>

## 4. Scenario Question

### Question 6 [6 marks]

A delivery company wants to create a route planning system. Explain how decomposition, pattern recognition, and abstraction could be used.

<details>
<summary>Answer</summary>

Decomposition can break the system into smaller parts such as storing addresses, calculating distances, choosing route order, and displaying the route. Pattern recognition can identify repeated route structures, common delivery areas, or repeated constraints such as time windows. Abstraction can focus on important details such as location, distance, and delivery time, while ignoring unnecessary details such as building colour.

</details>

## 5. Student Reflection

After answering, highlight:

- one technical keyword used correctly
- one place where scenario detail was included
- one answer that needs more explanation
