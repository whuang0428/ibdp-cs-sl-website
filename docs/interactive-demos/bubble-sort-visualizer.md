---
aside: false
---

<script setup>
import BubbleSortVisualizer from '../.vitepress/components/demos/BubbleSortVisualizer.vue'
</script>

# Bubble Sort Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain how bubble sort works
- trace adjacent comparisons and swaps
- understand why large values move toward the end of the array
- explain what happens during each pass
- understand why bubble sort can be inefficient for large arrays
- write an exam-style explanation of bubble sort

## Key Idea

Bubble sort repeatedly compares adjacent values.

```text
If the left value is greater than the right value, swap them.
If the values are already in order, do not swap.
After each pass, the largest unsorted value is in its final position.
```

This repeats until the array is sorted.

## Interactive Demo

<BubbleSortVisualizer />

## Exam-style Explanation

Bubble sort repeatedly compares adjacent elements in a list. If two adjacent elements are in the wrong order, they are swapped. After each pass, the largest unsorted value moves to its correct position at the end of the list. The process repeats until the list is sorted. Bubble sort is simple to understand, but it can be inefficient for large lists because it may require many comparisons and swaps.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| comparing non-adjacent values | bubble sort compares adjacent pairs | compare index and index + 1 |
| forgetting to swap | larger value must move right if order is wrong | swap when left > right |
| thinking one pass always sorts the array | one pass usually fixes only one final position | repeat passes |
| not reducing the range | the end becomes sorted after each pass | avoid rechecking fixed values |
| confusing bubble sort with selection sort | bubble sort swaps adjacent values repeatedly | selection sort finds min/max then swaps |

## Quick Practice

### Question 1

What happens if `array[index] > array[index + 1]` during bubble sort?

<details>
<summary>Answer</summary>

The two adjacent values are swapped because they are in the wrong order.

</details>

### Question 2

What is usually fixed after one complete pass of bubble sort in ascending order?

<details>
<summary>Answer</summary>

The largest value in the unsorted part moves to its correct position at the end of the array.

</details>

### Question 3

Why can bubble sort be inefficient?

<details>
<summary>Answer</summary>

Bubble sort can be inefficient because it may need many passes, comparisons, and swaps, especially for large arrays.

</details>

