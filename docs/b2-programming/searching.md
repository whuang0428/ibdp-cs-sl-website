# Searching

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of searching
- describe how linear search works
- trace a simple search algorithm
- identify whether a target value is found in an array

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Finding data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Search | The process of finding a value in a data structure |
| Target value | The value being searched for |
| Linear search | A search algorithm that checks values one by one from the start |
| Found flag | A Boolean variable used to record whether a value has been found |
| Index | The position of a value in an array |

## 4. Concept Explanation

Searching means trying to find a target value.

A simple method is **linear search**. Linear search checks each item one at a time until the target is found or the end of the array is reached.

Linear search is easy to understand and works even if the data is not sorted.

## 5. Step-by-step Example

Array:

| Index | 0 | 1 | 2 | 3 | 4 |
|---|---:|---:|---:|---:|---:|
| NUM | 8 | 3 | 6 | 2 | 9 |

Target value: **6**

Search process:

| Step | Index checked | Value checked | Result |
|---|---:|---:|---|
| 1 | 0 | 8 | Not found |
| 2 | 1 | 3 | Not found |
| 3 | 2 | 6 | Found |

## 6. Visual Structure

::: info Linear Search Process

Start at the first item.

→ Compare current item with target  
→ If they match, stop and report found  
→ If they do not match, move to the next item  
→ If the end is reached, report not found  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Starting at the wrong index | The first value may be skipped |
| Not stopping after the value is found | The algorithm may waste time |
| Forgetting the not found case | The program may give no clear result |
| Using the wrong comparison | The target may not be detected |

## 8. Exam-style Question

An array stores the following values.

| Index | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| DATA | 12 | 5 | 9 | 7 |

A linear search is used to find the value **9**.

**State the index where the value is found.** [1]

## 9. Mark Scheme Style Answer

The value **9** is found at index **2**.

::: tip Answer
Index 2
:::

## 10. Quick Check

1. What is the target value in a search?
2. Does linear search require sorted data?
3. What happens if the target is not found?
