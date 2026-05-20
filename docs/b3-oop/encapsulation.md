# Encapsulation

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **encapsulation**
- explain why data should be protected inside a class
- distinguish `private` and `public`
- explain how methods control access to attributes
- write Java code using private attributes
- describe benefits of encapsulation in exam-style answers

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Data protection and controlled access |
| Connected units | Attributes and Methods, Constructors, Accessors and Mutators |
| Exam relevance | OOP explanation, class design, security and reliability |

::: tip Learning Focus
Encapsulation protects object data by making attributes private and allowing controlled access through methods.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Encapsulation | 封装 | Bundling data and methods together while controlling access |
| Private | 私有 | Accessible only inside the class |
| Public | 公共 | Accessible from outside the class |
| Data hiding | 数据隐藏 | Preventing direct external access to internal data |
| Interface | 接口 | Public methods used to interact with an object |
| Validation | 验证 | Checking data before accepting it |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Encapsulation（封装）** 是 OOP 的重要思想。它把数据和操作数据的方法放在同一个 class 里，并控制外部代码如何访问这些数据。

通常做法是：

- attributes 设置为 `private`
- methods 设置为 `public`
- 外部代码不能直接修改 private attributes
- 外部代码必须通过 public methods 进行访问或修改

例如银行账户的 `balance` 不应该随便被外部代码直接改成负数。更好的做法是通过 `deposit()` 和 `withdraw()` 方法来控制修改，并在方法里检查数据是否合法。

</template>

<template #en>

### English Explanation

**Encapsulation** is an important OOP idea. It bundles data and the methods that operate on that data inside the same class, while controlling how external code accesses the data.

A common approach is:

- attributes are `private`
- methods are `public`
- outside code cannot directly change private attributes
- outside code must use public methods to access or update data

For example, a bank account `balance` should not be directly changed to an invalid negative value by outside code. A better design uses `deposit()` and `withdraw()` methods that can validate the change.

</template>
</LangBlock>

---

## 5. Real-life Example

### Bank Account

Poor design:

```java
account.balance = -500;
```

Better design:

```java
account.withdraw(500);
```

The method can check whether enough money exists before changing the balance.

---

## 6. IB Pseudocode Pattern

```text
CLASS BankAccount
    PRIVATE balance

    PUBLIC METHOD deposit(amount)
        IF amount > 0 THEN
            balance = balance + amount
        END IF
    END METHOD
END CLASS
```

---

## 7. Java Code Example

```java
public class BankAccount {
    private double balance;

    public BankAccount(double startingBalance) {
        if (startingBalance >= 0) {
            balance = startingBalance;
        } else {
            balance = 0;
        }
    }

    public void deposit(double amount) {
        if (amount > 0) {
            balance = balance + amount;
        }
    }

    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance = balance - amount;
        }
    }

    public double getBalance() {
        return balance;
    }
}
```

```java
public class BankAccountTest {
    public static void main(String[] args) {
        BankAccount account = new BankAccount(100);
        account.deposit(50);
        account.withdraw(30);

        System.out.println(account.getBalance());
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `private double balance;` | Balance cannot be accessed directly outside class |
| Constructor | Sets starting balance safely |
| `deposit(double amount)` | Adds money only if amount is positive |
| `withdraw(double amount)` | Removes money only if amount is valid |
| `getBalance()` | Allows controlled read access |
| `account.getBalance()` | External code uses public method |

---

## 9. Step-by-step Execution

| Step | Action | balance |
|---|---|---:|
| Create account | startingBalance = 100 | 100 |
| deposit(50) | add 50 | 150 |
| withdraw(30) | subtract 30 | 120 |
| getBalance() | return value | 120 |

Output:

```text
120.0
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Making all attributes public | Data can be changed incorrectly | Use private attributes |
| No validation in methods | Invalid values may enter object | Check values before update |
| Thinking private means deleted | Data still exists inside class | Private controls access |
| No accessor method | Data cannot be read safely | Use getters when needed |
| Too many public methods | Object exposes too much | Keep interface controlled |

---

## 11. Guided Practice

### Practice 1

Why should `balance` be private?

<details>
<summary>Suggested Answer</summary>

Because it prevents outside code from directly setting invalid values. Changes should go through methods that can validate the amount.

</details>

### Practice 2

What will output?

```java
BankAccount account = new BankAccount(100);
account.deposit(25);
System.out.println(account.getBalance());
```

<details>
<summary>Suggested Answer</summary>

```text
125.0
```

</details>

---

## 12. Independent Practice

1. Design a `Student` class with private `score`.
2. Write a method to update score only if it is 0 to 100.
3. Explain how encapsulation improves reliability.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by encapsulation.

<details>
<summary>Mark Scheme Style Answer</summary>

Encapsulation is bundling data and methods together in a class and controlling access to the data.

</details>

### Question 2 [4 marks]

Explain why a mark attribute should be private.

<details>
<summary>Mark Scheme Style Answer</summary>

Making the mark private prevents outside code from changing it directly. A public method can control updates and validate that the mark is within an allowed range. This reduces errors and protects the object's data.

</details>

---

## 14. Classroom Activity

Students identify which attributes in a `Student`, `BankAccount`, and `Product` class should be private and explain why.

---

## 15. Homework

Write a `Student` class with private `name` and `score`, a constructor, and a method that only accepts valid scores.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Encapsulation | Bundle data and methods with controlled access |
| Private | Only accessible inside class |
| Public | Accessible outside class |
| Main benefit | Protects data and reduces invalid changes |
| Exam phrase | "A public method can validate data before changing a private attribute." |
