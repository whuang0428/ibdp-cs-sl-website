# Trace Table Practice

## 1. Purpose

Trace tables are used to follow an algorithm step by step.

They are important in both computational thinking and programming questions.

## 2. Method

1. List every variable as a column.
2. Start with initial values.
3. Follow the algorithm line by line.
4. Update values in order.
5. Check loop conditions carefully.
6. Record the final output.

## 3. Mini Practice

Algorithm:

| Step | Instruction |
|---|---|
| 1 | A = 2 |
| 2 | B = 5 |
| 3 | A = A + B |
| 4 | B = A - 1 |
| 5 | Output B |

Trace:

| Step | A | B | Output |
|---|---:|---:|---|
| A = 2 | 2 |  |  |
| B = 5 | 2 | 5 |  |
| A = A + B | 7 | 5 |  |
| B = A - 1 | 7 | 6 |  |
| Output B | 7 | 6 | 6 |

::: tip Answer
Final output: 6
:::

## 4. Common Mistakes

| Mistake | Why it matters |
|---|---|
| Skipping a line | Variable values become wrong |
| Updating variables in the wrong order | Later values become incorrect |
| Misreading loop condition | Wrong number of iterations |
| Forgetting output column | Final answer may be unclear |

## 5. Quick Check

1. Why should variables be updated in order?
2. What does a loop condition control?
3. What is the final output in the example?
