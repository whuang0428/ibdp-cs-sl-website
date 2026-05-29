<script setup>
import FindMaxMinVisualizer from '../.vitepress/components/demos/FindMaxMinVisualizer.vue'
</script>

# Find Maximum / Minimum Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain how to find the maximum value in an array
- explain how to find the minimum value in an array
- trace an array traversal algorithm
- understand why the first element is often used as the starting best value
- update the best value and best index correctly
- write an exam-style explanation of a max/min search algorithm

## Key Idea

To find the maximum or minimum value in an array, the algorithm usually starts by assuming the first value is the current best.

Then it checks each remaining value one by one.

```text
For maximum:
if current value > maxValue, update maxValue

For minimum:
if current value < minValue, update minValue
```

This is a common example of array traversal.

## Interactive Demo

<FindMaxMinVisualizer />

## Exam-style Explanation

To find the maximum or minimum value in an array, the first element can be stored as the current best value. The algorithm then traverses the rest of the array. Each value is compared with the current best value. If the new value is better, the best value and its index are updated. After all values have been checked, the best value is output.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| starting maxValue at 0 | this fails if all numbers are negative | start with array[0] |
| not checking every element | the best value could be anywhere | traverse the full array |
| updating the value but not the index | the position may also be needed | update both value and index |
| using the wrong comparison | max uses `>` and min uses `<` | choose comparison based on the task |
| confusing current value with best value | current is the value being checked now | best stores the best found so far |

## Quick Practice

### Question 1

Why is it safer to initialise `maxValue` as `array[0]` instead of `0`?

<details>
<summary>Answer</summary>

If all numbers in the array are negative, starting `maxValue` at 0 would give the wrong answer. Starting with `array[0]` ensures the initial value actually comes from the array.

</details>

### Question 2

When should `minValue` be updated?

<details>
<summary>Answer</summary>

`minValue` should be updated when the current value being checked is less than the current `minValue`.

</details>

### Question 3

What is array traversal?

<details>
<summary>Answer</summary>

Array traversal means visiting each element in an array, usually using a loop.

</details>

