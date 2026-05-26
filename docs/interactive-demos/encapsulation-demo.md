<script setup>
import EncapsulationDemo from '../.vitepress/components/demos/EncapsulationDemo.vue'
</script>

# Encapsulation Demo

## Learning Goals

By the end of this demo, students should be able to:

- explain what encapsulation means
- understand why attributes may be private
- explain how public methods control access to private data
- describe how validation protects object state
- explain why direct access to private attributes can be unsafe
- write exam-style explanations of encapsulation and data integrity

## Key Idea

Encapsulation means keeping object data protected inside the object.

Instead of changing attributes directly, other parts of the program should use public methods.

```text
private attributes = protected data
public methods = controlled access
validation = checking data before updating object state
```

This helps prevent invalid values and keeps the object consistent.

## Interactive Demo

<EncapsulationDemo />

## Exam-style Explanation

Encapsulation means keeping an object's data private and controlling access through public methods. This prevents other parts of the program from directly changing attributes to invalid values. Public methods can validate data before updating private attributes, helping maintain data integrity and reducing unintended side effects.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking private means impossible to use | private data can be accessed through methods | use getters and setters |
| changing attributes directly | direct changes can bypass validation | use public methods |
| confusing encapsulation with inheritance | they are different OOP concepts | encapsulation protects data |
| forgetting validation | methods should check values before updates | reject invalid data |
| thinking all attributes should always be public | public attributes can be unsafe | hide internal state where needed |

## Quick Practice

### Question 1

What is encapsulation?

<details>
<summary>Answer</summary>

Encapsulation is the practice of keeping object data private and controlling access to it through public methods.

</details>

### Question 2

Why might `score` be made private in a `StudentRecord` class?

<details>
<summary>Answer</summary>

`score` might be private so it cannot be changed directly to an invalid value. A method such as `setScore()` can check that the score is between 0 and 100 before updating it.

</details>

### Question 3

How does encapsulation help data integrity?

<details>
<summary>Answer</summary>

Encapsulation helps data integrity because public methods can validate changes before private attributes are updated. This reduces invalid or inconsistent object states.

</details>
