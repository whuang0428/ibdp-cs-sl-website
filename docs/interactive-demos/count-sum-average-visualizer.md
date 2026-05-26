<script setup>
import CountSumAverageVisualizer from '../.vitepress/components/demos/CountSumAverageVisualizer.vue'
</script>

# Count / Sum / Average Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain how to count values in an array
- explain how to calculate a running sum
- explain how to calculate an average
- use a condition to include or skip values
- understand the difference between a counter and an accumulator
- write an exam-style explanation of array traversal for count, sum, and average

## Key Idea

Many array algorithms use traversal.

This means visiting each element in the array, usually with a loop.

A counter stores how many values have been included.

An accumulator stores a running total.

```text
count ← count + 1
sum ← sum + current
average ← sum / count
```

## Interactive Demo

<CountSumAverageVisualizer />

## Exam-style Explanation

An array can be traversed using a loop. A counter can be used to count how many values meet a condition, and an accumulator can be used to keep a running total. If an average is required, it can be calculated by dividing the sum by the count. The algorithm should avoid division by zero if no values meet the condition.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| using array length instead of count | not all values may meet the condition | divide by count of included values |
| forgetting to initialise sum | accumulator needs a starting value | usually start sum at 0 |
| forgetting to initialise count | counter needs a starting value | usually start count at 0 |
| adding skipped values | only included values should affect sum | check condition first |
| dividing by zero | no included values means count is 0 | check count before average |

## Quick Practice

### Question 1

What is the difference between a counter and an accumulator?

<details>
<summary>Answer</summary>

A counter counts how many times something happens. An accumulator stores a running total, such as the sum of values.

</details>

### Question 2

Why should average sometimes use `sum / count` instead of `sum / length(array)`?

<details>
<summary>Answer</summary>

If only some values meet a condition, the average should use the number of included values, not the total length of the array.

</details>

### Question 3

Why should the algorithm check for `count = 0` before calculating average?

<details>
<summary>Answer</summary>

If count is 0, calculating `sum / count` would divide by zero, which is an error.

</details>
