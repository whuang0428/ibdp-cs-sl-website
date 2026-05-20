# Algorithm Efficiency

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why algorithm efficiency matters
- understand that input size affects running time
- compare simple algorithm approaches conceptually
- identify when one algorithm may be better than another

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Thinking about performance |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Efficiency | How well an algorithm uses time or memory |
| Time complexity | How running time changes as input size grows |
| Input size | The amount of data processed |
| Linear search | Checks items one by one |
| Binary search | Repeatedly halves sorted data to find a target |
| Scalability | Ability to work well as data size increases |

## 4. Concept Explanation

Different algorithms can solve the same problem, but some are faster or more efficient.

For small data, the difference may not matter much.

For large data, efficiency can become very important.

Example:

| Task | Simple Approach | More Efficient Approach |
|---|---|---|
| Find a name in an unsorted list | Linear search | Sort first or use better structure |
| Find a value in sorted data | Linear search | Binary search |
| Repeated calculation | Recalculate every time | Store useful results |

## 5. Step-by-step Example

Searching for a name in 10 students may be quick with linear search.

Searching in 1,000,000 users may require a more efficient approach.

## 6. Visual Structure

::: info Efficiency Thinking
As input size grows → number of steps may grow → inefficient algorithms become slow → better algorithms may be needed.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Only checking if an algorithm works | A working algorithm may still be too slow |
| Ignoring input size | Performance problems appear with larger data |
| Saying fastest is always best | Simplicity and memory use may also matter |
| Using binary search on unsorted data | Binary search requires sorted data |

## 8. Exam-style Question

**Explain why algorithm efficiency becomes more important as the amount of data increases.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- larger input size may require more processing steps
- inefficient algorithms may take too long on large datasets
- choosing a more efficient algorithm can reduce running time or resource use

## 10. Quick Check

1. What is efficiency?
2. Why does input size matter?
3. Why does binary search require sorted data?
