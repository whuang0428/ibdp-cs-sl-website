<script setup>
import ObjectReferenceDemo from '../.vitepress/components/demos/ObjectReferenceDemo.vue'
</script>

# Object Reference Demo

## Learning Goals

By the end of this demo, students should be able to:

- explain that object variables can store references
- understand that two variables may point to the same object
- explain why changing an object through one reference may be visible through another reference
- distinguish between same object and same attribute values
- understand aliasing
- write exam-style explanations about object references

## Key Idea

An object variable may store a reference to an object.

This means the variable points to the object in memory.

```text
studentA ← NEW Student("Amelia", 80)
studentB ← studentA
```

In this example, `studentA` and `studentB` reference the same object.

So if the object is changed through `studentB`, the change is also visible through `studentA`.

## Interactive Demo

<ObjectReferenceDemo />

## Exam-style Explanation

An object variable may store a reference to an object rather than storing the whole object directly. If two variables reference the same object, changing the object through one variable will also be visible through the other variable. This is because both variables point to the same object in memory. If two variables reference separate objects, changing one object does not change the other object.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking assignment always creates a new object | assigning an object variable may copy the reference | both variables may point to the same object |
| confusing same values with same object | two objects can have identical attributes | identity and attribute values are different |
| expecting only one reference to change | the object changes, not just the variable | all references to the same object see the change |
| thinking object variables store the full object directly | many languages store references | variable points to object in memory |
| ignoring aliasing | aliasing can cause unexpected changes | track which references point to which object |

## Quick Practice

### Question 1

What happens when `studentB ← studentA` if `studentA` is an object variable?

<details>
<summary>Answer</summary>

`studentB` is made to reference the same object as `studentA`. It does not necessarily create a new object.

</details>

### Question 2

If `studentA` and `studentB` point to the same object, what happens when `studentB.setScore(90)` is called?

<details>
<summary>Answer</summary>

The object's score changes to 90. Since `studentA` and `studentB` reference the same object, the updated score is visible through both variables.

</details>

### Question 3

Can two different objects have the same attribute values?

<details>
<summary>Answer</summary>

Yes. Two different objects can store the same values, but they are still separate objects if they have different references in memory.

</details>

