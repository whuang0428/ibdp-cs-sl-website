# Accessors and Mutators

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define accessor methods
- define mutator methods
- explain getter and setter methods
- write Java getters and setters
- explain how setters can validate data
- connect accessors/mutators to encapsulation

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Safe access to private attributes |
| Connected units | Encapsulation, Constructors, UML Class Diagrams |
| Exam relevance | OOP explanation, Java code reading, class design |

::: tip Learning Focus
Accessors read private data. Mutators change private data, usually with validation.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Accessor | 访问器 | A method that returns the value of an attribute |
| Mutator | 修改器 | A method that changes the value of an attribute |
| Getter | getter方法 | Another name for accessor |
| Setter | setter方法 | Another name for mutator |
| Validation | 验证 | Checking data before accepting it |
| Return value | 返回值 | Value sent back by a method |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

当 attributes 被设置为 `private` 后，外部代码不能直接访问它们。为了安全地读取或修改这些数据，我们使用：

- **accessor / getter**：读取属性值
- **mutator / setter**：修改属性值

例如：

```java
getScore()
setScore(newScore)
```

`setScore` 可以检查 `newScore` 是否在 0 到 100 之间。如果不合法，就拒绝修改。

</template>

<template #en>

### English Explanation

When attributes are `private`, outside code cannot access them directly. To safely read or change these values, we use:

- **accessor / getter**: reads an attribute value
- **mutator / setter**: changes an attribute value

For example:

```java
getScore()
setScore(newScore)
```

`setScore` can check whether `newScore` is between 0 and 100. If the value is invalid, the change can be rejected.

</template>
</LangBlock>

---

## 5. Real-life Example

### Student Score

| Method | Purpose |
|---|---|
| `getScore()` | Return current score |
| `setScore(newScore)` | Update score only if valid |

---

## 6. IB Pseudocode Pattern

```text
CLASS Student
    PRIVATE score

    PUBLIC METHOD getScore()
        RETURN score
    END METHOD

    PUBLIC METHOD setScore(newScore)
        IF newScore >= 0 AND newScore <= 100 THEN
            score = newScore
        END IF
    END METHOD
END CLASS
```

---

## 7. Java Code Example

```java
public class Student {
    private String name;
    private int score;

    public Student(String newName, int newScore) {
        name = newName;
        setScore(newScore);
    }

    public String getName() {
        return name;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int newScore) {
        if (newScore >= 0 && newScore <= 100) {
            score = newScore;
        }
    }
}
```

```java
public class StudentTest {
    public static void main(String[] args) {
        Student student = new Student("Alice", 80);

        student.setScore(90);
        System.out.println(student.getScore());

        student.setScore(150);
        System.out.println(student.getScore());
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `private int score;` | Score is protected |
| `getScore()` | Accessor returning score |
| `setScore(int newScore)` | Mutator trying to update score |
| `if (newScore >= 0 && newScore <= 100)` | Validation check |
| `score = newScore;` | Updates only if valid |
| `setScore(150)` | Invalid, so score does not change |

---

## 9. Step-by-step Execution

| Step | Action | score |
|---|---|---:|
| Create student with 80 | valid | 80 |
| setScore(90) | valid | 90 |
| output getScore() | output 90 | 90 |
| setScore(150) | invalid | 90 |
| output getScore() | output 90 | 90 |

Output:

```text
90
90
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Setter without validation | Invalid data may be accepted | Validate in mutator |
| Getter changes data | Accessor should only read | Keep getters simple |
| Returning wrong attribute | Output incorrect | Check return statement |
| Making attributes public instead | Weakens encapsulation | Use private + methods |
| Confusing getter and setter | Wrong method used | Getter reads, setter changes |

---

## 11. Guided Practice

### Practice 1

Identify the accessor and mutator:

```java
public int getAge() { return age; }
public void setAge(int newAge) { age = newAge; }
```

<details>
<summary>Suggested Answer</summary>

`getAge()` is the accessor.  
`setAge(int newAge)` is the mutator.

</details>

### Practice 2

Add validation: age must be 0 to 120.

<details>
<summary>Suggested Answer</summary>

```java
public void setAge(int newAge) {
    if (newAge >= 0 && newAge <= 120) {
        age = newAge;
    }
}
```

</details>

---

## 12. Independent Practice

1. Write getter and setter for private `price`.
2. Add validation that price must be positive.
3. Explain why setters can improve reliability.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State the purpose of an accessor method.

<details>
<summary>Mark Scheme Style Answer</summary>

An accessor method returns the value of a private attribute without allowing direct access to the attribute.

</details>

### Question 2 [3 marks]

Explain why a mutator may include validation.

<details>
<summary>Mark Scheme Style Answer</summary>

A mutator changes an attribute value. Validation checks whether the new value is acceptable before updating the attribute, preventing invalid data from being stored.

</details>

---

## 14. Classroom Activity

Students improve a class with public attributes by converting them to private attributes and writing getters/setters.

---

## 15. Homework

Create a `Product` class with private `name` and `price`, getters, and a setter that prevents negative prices.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Accessor | Reads private value |
| Mutator | Changes private value |
| Getter | Accessor |
| Setter | Mutator |
| Exam phrase | "The mutator controls updates and can validate the value before changing the private attribute." |
