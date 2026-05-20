# Inheritance and Polymorphism

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define inheritance
- explain superclass and subclass
- use `extends` in Java
- explain method overriding
- define polymorphism at a simple level
- identify when inheritance is suitable

---

## 2. Course Position

| Item | Detail |
|---|---|
| Section | HL Programming Extension / School Extension |
| Main link | B2 Programming + B3 OOP |
| Language focus | IB pseudocode + Java |
| Difficulty | Extension beyond SL |
| Main skill | Extending OOP through class hierarchies |

::: warning Extension Note
This section is included because the course plans to give students stronger programming ability beyond the minimum SL requirement. It should be taught after students are comfortable with B2 Programming and B3 OOP basics.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Inheritance | 继承 | An OOP feature where a subclass inherits attributes and methods from a superclass |
| Superclass | 父类 | A general class that is inherited from |
| Subclass | 子类 | A more specific class that inherits from a superclass |
| extends | 继承关键字 | Java keyword used for inheritance |
| Override | 重写 | A subclass provides its own version of a method |
| Polymorphism | 多态 | Objects of different subclasses can be treated through a common superclass type |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Inheritance（继承）** 允许一个 subclass 继承 superclass 的 attributes 和 methods。它适合表示 “is-a” 关系。

例如：

```text
Dog is an Animal
Cat is an Animal
```

`Animal` 可以是 superclass，`Dog` 和 `Cat` 可以是 subclasses。

**Polymorphism（多态）** 允许不同 subclass object 通过共同 superclass type 被处理，但运行时执行各自的 overridden method。

</template>

<template #en>

### English Explanation

**Inheritance** allows a subclass to inherit attributes and methods from a superclass. It is suitable for an “is-a” relationship.

For example:

```text
Dog is an Animal
Cat is an Animal
```

`Animal` can be the superclass, while `Dog` and `Cat` can be subclasses.

**Polymorphism** allows different subclass objects to be treated through a common superclass type, while each object can run its own overridden method at runtime.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Game characters

| Superclass | Subclasses |
|---|---|
| Character | Warrior, Mage, Archer |

All characters may have health and name. Each subclass may attack differently.

---

## 6. IB Pseudocode Pattern

```text
CLASS Animal
    METHOD makeSound()
        OUTPUT "Some sound"
    END METHOD
END CLASS

CLASS Dog EXTENDS Animal
    METHOD makeSound()
        OUTPUT "Woof"
    END METHOD
END CLASS
```

---

## 7. Java Code Example

```java
class Animal {
    public void makeSound() {
        System.out.println("Some sound");
    }
}

class Dog extends Animal {
    @Override
    public void makeSound() {
        System.out.println("Woof");
    }
}

public class InheritanceDemo {
    public static void main(String[] args) {
        Animal pet = new Dog();
        pet.makeSound();
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `class Animal` | Superclass |
| `class Dog extends Animal` | Dog inherits from Animal |
| `makeSound()` in Animal | General method |
| `@Override` | Dog provides its own version |
| `Animal pet = new Dog();` | Polymorphism |
| `pet.makeSound()` | Runs Dog version at runtime |

---

## 9. Step-by-step Trace / Process

Execution:

| Step | Action | Result |
|---|---|---|
| 1 | Create `new Dog()` | Dog object created |
| 2 | Store as `Animal pet` | superclass reference |
| 3 | Call `pet.makeSound()` | overridden Dog method runs |
| 4 | Output | Woof |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using inheritance for has-a relationship | Inheritance should model is-a | Use composition for has-a |
| Thinking subclass loses superclass methods | Subclass inherits accessible methods | Remember inherited behaviour |
| Forgetting override meaning | Subclass can replace method behaviour | Use method overriding |
| Confusing object type and reference type | Polymorphism can use superclass reference | Trace runtime object |
| Overusing inheritance | Can make design rigid | Use only when relationship fits |

---

## 11. Guided Practice

### Practice 1

Is `Car extends Engine` a good inheritance design?

<details><summary>Suggested Answer</summary>

Usually no. A car has an engine, but a car is not an engine. This is a has-a relationship.

</details>

### Practice 2

What will output?

```java
Animal a = new Dog();
a.makeSound();
```

<details><summary>Suggested Answer</summary>

`Woof`, if Dog overrides `makeSound()`.

</details>

---

## 12. Independent Practice

1. Create a superclass `Shape` and subclasses `Circle` and `Rectangle`.
2. Explain what method overriding means.
3. Give three valid is-a relationships.
4. Give three invalid inheritance examples.

---

## 13. Exam-style / Code-reading Questions

### Question 1 [2 marks]

State what is meant by inheritance.

<details><summary>Mark Scheme Style Answer</summary>

Inheritance is an OOP feature where a subclass inherits attributes and methods from a superclass.

</details>

### Question 2 [4 marks]

Explain why `Student extends Person` may be suitable.

<details><summary>Mark Scheme Style Answer</summary>

A student is a type of person, so it is an is-a relationship. Common attributes and methods such as name and date of birth can be defined in Person, while Student can add specific attributes such as studentID or grade.

</details>

---

## 14. Classroom Activity

### Activity: Is-a or Has-a?

Students classify relationships such as `Dog-Animal`, `Car-Engine`, `Teacher-Person`, `Library-Book`, and decide whether inheritance is suitable.

---

## 15. Homework

Write Java classes for a superclass `Vehicle` and two subclasses. Include one overridden method and explain the output.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Inheritance | Subclass inherits from superclass |
| Superclass | General class |
| Subclass | Specific class |
| Override | Subclass method replaces behaviour |
| Polymorphism | Superclass reference can refer to subclass object |
| Exam phrase | Inheritance is suitable when the subclass is a specialized type of the superclass. |
