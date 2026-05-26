<script setup>
import InheritanceDemo from '../.vitepress/components/demos/InheritanceDemo.vue'
</script>

# Inheritance Demo

## Learning Goals

By the end of this demo, students should be able to:

- explain inheritance in object-oriented programming
- identify a superclass and subclass
- explain how subclasses inherit attributes and methods
- understand how subclasses can add extra attributes and methods
- explain method overriding
- write exam-style explanations of inheritance and code reuse

## Key Idea

Inheritance allows one class to reuse features from another class.

```text
superclass / parent class = general class
subclass / child class = more specific class
```

A subclass can:

```text
inherit attributes from the superclass
inherit methods from the superclass
add new attributes
add new methods
override inherited methods
```

This reduces duplicated code and makes related classes easier to manage.

## Interactive Demo

<InheritanceDemo />

## Exam-style Explanation

Inheritance allows a subclass to reuse attributes and methods from a superclass. This reduces duplicated code because shared features can be written once in the superclass. A subclass can also define extra attributes and methods, or override inherited methods to provide specialised behaviour.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking subclass copies code manually | inheritance reuses superclass features | subclass automatically receives inherited features |
| confusing superclass and subclass | superclass is the parent; subclass is the child | subclass is more specific |
| thinking subclasses cannot add anything | subclasses can add attributes and methods | inherited features plus extra features |
| confusing overriding with overloading | overriding replaces inherited behaviour | same method name, subclass version |
| thinking inheritance is only for saving time | it also models shared relationships | use it for "is a" relationships |

## Quick Practice

### Question 1

What is a superclass?

<details>
<summary>Answer</summary>

A superclass is a parent class that provides shared attributes and methods to subclasses.

</details>

### Question 2

Why is inheritance useful?

<details>
<summary>Answer</summary>

Inheritance is useful because shared code can be written once in the superclass and reused by subclasses. This reduces duplicated code and makes related classes easier to manage.

</details>

### Question 3

What does method overriding mean?

<details>
<summary>Answer</summary>

Method overriding means a subclass provides its own version of a method that it inherited from the superclass.

</details>
