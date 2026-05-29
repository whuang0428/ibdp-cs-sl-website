<script setup>
import FlowchartExecutionDemo from '../.vitepress/components/demos/FlowchartExecutionDemo.vue'
</script>

# Flowchart Execution Demo

## Learning Goals

By the end of this demo, students should be able to:

- identify common flowchart symbols
- follow arrows to trace the order of execution
- understand how decision branches change the path
- understand how loops return to an earlier decision
- update variable values while tracing a flowchart
- predict the final output of a flowchart algorithm

## Key Idea

A flowchart represents an algorithm using symbols and arrows.

Common symbols include:

| Symbol | Purpose |
|---|---|
| Terminator | Start or End |
| Process | assignment or calculation |
| Input / Output | data input or output |
| Decision | condition with Yes / No branches |

To trace a flowchart, follow the arrows step by step and update variables whenever a process is executed.

## Interactive Demo

<FlowchartExecutionDemo />

## Exam-style Explanation

A flowchart shows the sequence of steps in an algorithm. The arrows show the order of execution. A decision symbol checks a condition and follows a different branch depending on whether the condition is true or false. A loop occurs when the flow returns to an earlier step. When tracing a flowchart, variables should be updated in the order shown by the arrows.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| ignoring arrow direction | arrows show the order of execution | always follow the arrows |
| treating decisions as process boxes | decisions choose a branch | check the condition first |
| skipping loop repeats | loops may execute many times | trace each iteration |
| updating variables too early | variables change only at process steps | update when the box is reached |
| forgetting final output | output only happens at input/output symbols | record output when reached |

## Quick Practice

### Question 1

What is the purpose of a decision symbol?

<details>
<summary>Answer</summary>

A decision symbol checks a condition and chooses which branch to follow, usually Yes/No or True/False.

</details>

### Question 2

How can a loop be represented in a flowchart?

<details>
<summary>Answer</summary>

A loop can be represented by an arrow that returns to an earlier decision or process step, causing part of the algorithm to repeat.

</details>

### Question 3

Why is it important to follow arrows in order?

<details>
<summary>Answer</summary>

The arrows show the order in which the algorithm executes. If they are not followed correctly, variable values and output may be traced incorrectly.

</details>

