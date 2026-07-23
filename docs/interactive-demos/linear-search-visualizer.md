---
aside: false
---

<script setup>
import LinearSearchVisualizer from '../.vitepress/components/demos/LinearSearchVisualizer.vue'
</script>

# Linear Search Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain how linear search works
- trace a linear search algorithm step by step
- understand how `index` and `found` change during the search
- identify best-case and worst-case situations
- explain why linear search works on unsorted arrays
- write an exam-style explanation of linear search

## Key Idea

Linear search checks each element in a list one by one.

The search starts at the first index and compares each value with the target.

```text
If the value matches the target → found
If the value does not match → move to the next index
If the end is reached → not found
```

Linear search does not require the array to be sorted.

## Interactive Demo

<LinearSearchVisualizer />

## Exam-style Explanation

Linear search checks each element in a list sequentially, starting at the first element. Each element is compared with the target value. If a matching value is found, the search can stop and return true or the index of the item. If the end of the list is reached without a match, the target is not in the list. Linear search can be used on unsorted data, but it may be inefficient for long lists because every element may need to be checked.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking the array must be sorted | linear search checks each item in order | it works on unsorted arrays |
| skipping elements | each item may be the target | compare one by one |
| continuing after found | search can stop after a match | stop when found is true |
| confusing index and value | index is position, value is stored data | keep both separate |
| forgetting not found case | target may not be present | handle reaching the end |

## Quick Practice

### Question 1

Why can linear search be used on an unsorted array?

<details>
<summary>Answer</summary>

Linear search can be used on an unsorted array because it checks every element one by one. It does not rely on the data being in order.

</details>

### Question 2

What is the best case for linear search?

<details>
<summary>Answer</summary>

The best case is when the target value is at the first index, so only one comparison is needed.

</details>

### Question 3

What is the worst case for linear search?

<details>
<summary>Answer</summary>

The worst case is when the target is at the last index or not in the list, so every element must be checked.

</details>

