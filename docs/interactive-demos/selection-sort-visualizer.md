<script setup>
import SelectionSortVisualizer from '../.vitepress/components/demos/SelectionSortVisualizer.vue'
</script>

# Selection Sort Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain how selection sort works
- identify the current position and current minimum
- trace how the smallest value is selected from the unsorted part
- explain why one new position becomes sorted after each pass
- compare selection sort with bubble sort
- write an exam-style explanation of selection sort

## Key Idea

Selection sort repeatedly selects the smallest value from the unsorted part of the array.

```text
1. Start at the first unsorted position.
2. Find the smallest value in the unsorted part.
3. Swap it into the current position.
4. Move the boundary of the sorted part one position to the right.
```

After each pass, the sorted part at the start of the array becomes one item longer.

## Interactive Demo

<SelectionSortVisualizer />

## Exam-style Explanation

Selection sort divides the list into a sorted part and an unsorted part. For each pass, it searches the unsorted part to find the smallest value. That smallest value is then swapped with the value at the current position. This fixes one new position in the sorted part. The process repeats until the list is sorted.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| swapping every time a smaller value is seen | selection sort usually records the minIndex first | swap after scanning the unsorted part |
| confusing current position and scan index | they have different roles | position is where the minimum will go; scanIndex searches |
| thinking the largest value bubbles right | that describes bubble sort | selection sort selects the smallest value |
| forgetting sorted prefix | each pass fixes one position at the start | sorted part grows from the left |
| not updating minIndex | the algorithm must remember the smallest value found | update minIndex when a smaller value appears |

## Quick Practice

### Question 1

What does `minIndex` store in selection sort?

<details>
<summary>Answer</summary>

`minIndex` stores the index of the smallest value found so far in the unsorted part of the array.

</details>

### Question 2

When does selection sort swap values?

<details>
<summary>Answer</summary>

After scanning the unsorted part, selection sort swaps the smallest value found with the value at the current position.

</details>

### Question 3

How is selection sort different from bubble sort?

<details>
<summary>Answer</summary>

Selection sort finds the smallest value in the unsorted part and swaps it into position. Bubble sort repeatedly compares and swaps adjacent values.

</details>
