<script setup>
import BinarySearchVisualizer from '../.vitepress/components/demos/BinarySearchVisualizer.vue'
</script>

# Binary Search Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain how binary search works
- understand why binary search requires sorted data
- trace `low`, `mid`, and `high`
- explain how half of the search range is discarded
- compare binary search with linear search
- write an exam-style explanation of binary search

## Key Idea

Binary search is used to find a target value in a sorted array.

It repeatedly checks the middle value:

```text
if middle value = target → found
if middle value < target → search the right half
if middle value > target → search the left half
```

This makes binary search efficient because it eliminates about half of the remaining values after each comparison.

## Interactive Demo

<BinarySearchVisualizer />

## Exam-style Explanation

Binary search is used on sorted data. The algorithm compares the target with the middle value of the current search range. If the middle value is equal to the target, the item is found. If the middle value is less than the target, the lower half is discarded. If the middle value is greater than the target, the upper half is discarded. This continues until the target is found or the search range becomes empty.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| using binary search on unsorted data | binary search depends on order | sort the data first |
| confusing mid with target | mid is an index | array[mid] is the value compared |
| forgetting to update low/high | the search range must shrink | update low or high after comparison |
| discarding the wrong half | sorted order decides which half is impossible | compare target with middle value |
| thinking it checks every item | binary search skips many items | it repeatedly halves the range |

## Quick Practice

### Question 1

Why must the array be sorted for binary search?

<details>
<summary>Answer</summary>

The array must be sorted because binary search decides whether to discard the left or right half based on the middle value. Without sorted order, this decision may remove the part containing the target.

</details>

### Question 2

If `array[mid] < target`, which half is discarded?

<details>
<summary>Answer</summary>

The left half, including the middle value, is discarded. The search continues to the right, so `low` becomes `mid + 1`.

</details>

### Question 3

State one advantage of binary search compared with linear search.

<details>
<summary>Answer</summary>

Binary search is more efficient for long sorted lists because it eliminates about half of the remaining search range after each comparison.

</details>

