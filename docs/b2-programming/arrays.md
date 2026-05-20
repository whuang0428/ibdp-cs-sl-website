# Arrays

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what an array is
- use index positions to access array elements
- trace algorithms that use arrays
- understand why arrays are useful in programs

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Storing multiple values |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Array | A data structure that stores multiple values under one name |
| Element | A value stored in an array |
| Index | The position of an element in an array |
| Length | The number of elements in an array |
| Traversal | Visiting each element in an array |

## 4. Concept Explanation

An array is used to store a list of values.

Instead of creating many separate variables, an array can store related values together.

Example:

| Index | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| scores | 72 | 85 | 64 | 90 |

If the array is called `scores`, then:

| Expression | Value |
|---|---:|
| scores[0] | 72 |
| scores[1] | 85 |
| scores[3] | 90 |

## 5. Step-by-step Example

Problem: Find the total of four scores.

| Step | Action |
|---|---|
| 1 | Start total at 0 |
| 2 | Visit each array element |
| 3 | Add the element to total |
| 4 | Output total |

## 6. Visual Structure

::: info Array Traversal

Start at the first element.

→ Read current value  
→ Add it to total  
→ Move to the next index  
→ Repeat until all elements have been processed  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Using the wrong index | The wrong value is accessed |
| Forgetting that many arrays start at index 0 | Off-by-one errors may occur |
| Going outside the array range | The program may crash |
| Not initializing total | The calculation may be incorrect |

## 8. Exam-style Question

An array stores the following values:

| Index | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| NUM | 4 | 7 | 2 | 5 |

The algorithm adds all values in the array.

**State the final total.** [2]

## 9. Mark Scheme Style Answer

Calculation:

| Step | Added Value | Total |
|---|---:|---:|
| Start |  | 0 |
| 1 | 4 | 4 |
| 2 | 7 | 11 |
| 3 | 2 | 13 |
| 4 | 5 | 18 |

::: tip Answer
The final total is **18**.
:::

## 10. Quick Check

1. What is an array?
2. What is an index?
3. What value is stored at NUM[2] in the example?
