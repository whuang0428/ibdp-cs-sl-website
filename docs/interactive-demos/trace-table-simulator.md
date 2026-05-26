<script setup>
import TraceTableSimulator from '../.vitepress/components/demos/TraceTableSimulator.vue'
</script>

# Trace Table Simulator

## Learning Goals

By the end of this demo, students should be able to:

- explain the purpose of a trace table
- dry run pseudocode line by line
- update variable values correctly
- follow loops and conditions without skipping steps
- predict the final output of an algorithm
- use a trace table to find possible logic errors

## Key Idea

A trace table records how variable values change as an algorithm runs.

Trace tables are useful for:

```text
dry running algorithms
finding final output
checking loop behaviour
finding logic errors
```

A good trace table should show important variable values after each meaningful step.

## Interactive Demo

<TraceTableSimulator />

## Exam-style Explanation

A trace table is used to dry run an algorithm. It records the value of each variable as each instruction is executed. This helps determine the final output and can help identify logic errors. When completing a trace table, the algorithm should be followed line by line, including every loop iteration and condition check.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| skipping loop iterations | each iteration may change values | trace every iteration |
| updating variables in the wrong order | later values depend on earlier assignments | follow the pseudocode line by line |
| forgetting initial values | variables must start from their assigned values | record initialisation |
| writing output too early | output only happens when OUTPUT is executed | wait until the output line |
| ignoring failed conditions | failed conditions still affect control flow | record that no update happened |

## Quick Practice

### Question 1

Why is a trace table useful?

<details>
<summary>Answer</summary>

A trace table is useful because it shows how variable values change as an algorithm runs. It can help find the final output and identify logic errors.

</details>

### Question 2

In a loop, why should every iteration be traced?

<details>
<summary>Answer</summary>

Every iteration should be traced because variable values may change each time the loop runs. Skipping an iteration can lead to the wrong final answer.

</details>

### Question 3

What does an accumulator usually do?

<details>
<summary>Answer</summary>

An accumulator stores a running total. It is updated repeatedly, often inside a loop.

</details>
