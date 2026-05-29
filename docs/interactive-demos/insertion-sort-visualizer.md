<script setup>
import InsertionSortVisualizer from '../.vitepress/components/demos/InsertionSortVisualizer.vue'
</script>

# Insertion Sort Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain how insertion sort works
- identify the key value being inserted
- trace how larger values shift right
- understand how the sorted part grows from the left
- compare insertion sort with bubble sort and selection sort
- write an exam-style explanation of insertion sort

## Key Idea

Insertion sort builds a sorted part of the array one value at a time.

```text
1. Take the next unsorted value as the key.
2. Compare the key with values in the sorted part.
3. Shift larger values one position to the right.
4. Insert the key into the correct position.
```

This is similar to sorting playing cards in your hand.

## Interactive Demo

<InsertionSortVisualizer />

## Exam-style Explanation

Insertion sort builds a sorted part of the list one item at a time. It selects the next unsorted item as the key and compares it with items in the sorted part. Values greater than the key are shifted one position to the right. The key is then inserted into the correct position. This repeats until all values are sorted.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking insertion sort swaps every adjacent pair | insertion sort usually shifts values and inserts the key | larger values move right |
| forgetting the key value | the key is temporarily held while shifting happens | keep track of key |
| moving smaller values right | only values greater than the key shift right in ascending order | compare with key |
| losing the sorted part | left side is sorted after each pass | sorted part grows from the left |
| confusing it with selection sort | selection sort selects the minimum; insertion sort inserts the key | different process |

## Quick Practice

### Question 1

What is the key value in insertion sort?

<details>
<summary>Answer</summary>

The key value is the next unsorted value that will be inserted into the correct position in the sorted part.

</details>

### Question 2

Why are values shifted right?

<details>
<summary>Answer</summary>

Values greater than the key are shifted right to make space for the key to be inserted in the correct position.

</details>

### Question 3

When can insertion sort work especially well?

<details>
<summary>Answer</summary>

Insertion sort can work well when the data is already almost sorted, because fewer shifts may be needed.

</details>

