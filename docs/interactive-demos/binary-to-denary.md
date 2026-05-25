<script setup>
import BinaryToDenaryDemo from '../.vitepress/components/demos/BinaryToDenaryDemo.vue'
</script>

# Binary to Denary Interactive Demo

## Learning Goal

By the end of this demo, students should be able to:

- identify binary place values
- multiply each binary digit by its place value
- add the non-zero contributions
- explain how a binary number is converted into denary
- write an exam-style conversion explanation

## Key Idea

Binary is a base-2 number system. Each column is a power of 2.

For example:

```text
32 16 8 4 2 1
```

To convert binary to denary:

```text
1. Write the place values.
2. Match each binary digit to its place value.
3. Add only the place values where the digit is 1.
```

## Interactive Demo

<BinaryToDenaryDemo />

## Common Mistakes

| Mistake | Why It Is Wrong | Fix |
|---|---|---|
| adding every place value | only columns with digit 1 count | add only non-zero contributions |
| reading from left as 1, 2, 4... | place values increase from right to left | write place values carefully |
| treating binary as denary | 101 is not one hundred and one | interpret each digit by place value |
| forgetting 0 contribution | digit 0 contributes nothing | multiply digit by place value |

## Exam-style Answer Pattern

```text
The binary number has place values [values]. The digits with 1 are in the [values] columns, so the denary value is [sum].
```

Example:

```text
101101 has place values 32, 16, 8, 4, 2, and 1. The 1s are in the 32, 8, 4, and 1 columns, so the denary value is 32 + 8 + 4 + 1 = 45.
```

## Quick Practice

### Question 1

Convert `11010` to denary.

<details>
<summary>Answer</summary>

```text
Place values: 16 8 4 2 1
Binary digits: 1 1 0 1 0

16 + 8 + 2 = 26
```

Answer: `26`

</details>

### Question 2

Convert `100111` to denary.

<details>
<summary>Answer</summary>

```text
Place values: 32 16 8 4 2 1
Binary digits: 1 0 0 1 1 1

32 + 4 + 2 + 1 = 39
```

Answer: `39`

</details>
