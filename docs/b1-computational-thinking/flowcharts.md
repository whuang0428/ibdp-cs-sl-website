# Flowcharts

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define a **flowchart**
- identify common flowchart symbols
- explain why flowcharts are useful in algorithm design
- represent sequence, selection, and iteration using flowcharts
- convert simple pseudocode into a flowchart-style structure
- explain the logic of a flowchart using clear CS vocabulary
- connect flowcharts to Java code and program planning

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Representing algorithms visually |
| Connected units | B2 Programming, IA project, algorithm design |
| Exam relevance | Algorithm design, flowchart interpretation, pseudocode conversion, problem-solving questions |

::: tip Learning Focus
A flowchart is not just a drawing. It is a visual representation of an algorithm. Every symbol and arrow should show clear logic.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Flowchart | 流程图 | A diagram that shows the steps and logic of an algorithm |
| Terminator | 起止符 | Symbol used for Start and End |
| Process | 处理步骤 | An action or calculation |
| Input / Output | 输入 / 输出 | Data entering or leaving the algorithm |
| Decision | 判断 | A condition with different paths, usually Yes/No or True/False |
| Flowline | 流程线 | Arrow showing the direction of execution |
| Sequence | 顺序结构 | Steps carried out one after another |
| Selection | 选择结构 | A decision that chooses between paths |
| Iteration | 循环结构 | Repetition of steps |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Flowchart（流程图）** 是一种用图形方式表示算法的方法。

在写代码之前，我们可以先用流程图把程序逻辑画出来。这样做的好处是：学生可以更直观看到程序执行的顺序、判断条件、循环结构和输出结果。

流程图特别适合帮助学生理解：

- 程序从哪里开始
- 每一步做什么
- 哪些地方需要输入
- 哪些地方会输出结果
- 条件判断之后走哪一条路径
- 循环什么时候继续、什么时候停止

常见流程图符号包括：

| Symbol Type | 中文 | Meaning |
|---|---|---|
| Oval | 起止符 | Start or End |
| Rectangle | 处理框 | Process or calculation |
| Parallelogram | 输入/输出框 | Input or Output |
| Diamond | 判断框 | Decision / condition |
| Arrow | 流程线 | Shows direction of execution |

流程图和 pseudocode 的关系很密切。  
Pseudocode 用文字写算法，flowchart 用图形表示算法。它们表达的是同一个逻辑，只是形式不同。

</template>

<template #en>

### English Explanation

A **flowchart** is a visual way to represent an algorithm.

Before writing code, programmers can use a flowchart to show the logic of the program. This helps students see the order of execution, decision points, loops, and outputs more clearly.

Flowcharts are especially useful for understanding:

- where the algorithm starts
- what each step does
- where input is needed
- where output is produced
- which path is followed after a condition
- when a loop continues or stops

Common flowchart symbols include:

| Symbol Type | Meaning |
|---|---|
| Oval | Start or End |
| Rectangle | Process or calculation |
| Parallelogram | Input or Output |
| Diamond | Decision or condition |
| Arrow | Direction of execution |

Flowcharts and pseudocode are closely connected.  
Pseudocode describes an algorithm using structured text, while a flowchart shows the same logic visually.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Student Pass/Fail Decision

A school wants an algorithm that decides whether a student passes.

Rule:

> If the mark is 50 or above, output Pass. Otherwise, output Fail.

### Text-based flowchart structure

```text
[Start]
   ↓
[Input mark]
   ↓
<Is mark >= 50?>
   ├── Yes → [Output "Pass"] → [End]
   └── No  → [Output "Fail"] → [End]
```

### Explanation

| Flowchart Part | Purpose |
|---|---|
| Start | Shows where the algorithm begins |
| Input mark | Gets the student's mark |
| Decision | Checks whether the mark is at least 50 |
| Yes path | Runs if the condition is true |
| No path | Runs if the condition is false |
| Output | Displays Pass or Fail |
| End | Shows where the algorithm stops |

::: info Why this is useful
The flowchart makes the selection logic visible. Students can clearly see that only one of the two output paths will be followed.
:::

---

## 6. IB Pseudocode Pattern

The same logic can be written in IB-style pseudocode.

```text
INPUT mark

IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
END IF
```

### Connection between flowchart and pseudocode

| Flowchart Element | Pseudocode Equivalent |
|---|---|
| Input symbol | `INPUT mark` |
| Decision diamond | `IF mark >= 50 THEN` |
| Yes branch | statements inside IF |
| No branch | statements inside ELSE |
| Output symbol | `OUTPUT "Pass"` or `OUTPUT "Fail"` |
| End symbol | end of algorithm |

::: tip Exam Note
If asked to construct a flowchart, make sure decision branches are clearly labelled, such as Yes/No or True/False.
:::

---

## 7. Java Code Example

Below is the Java version of the same algorithm.

```java
public class PassFailFlowchartExample {
    public static void main(String[] args) {
        int mark = 68;

        if (mark >= 50) {
            System.out.println("Pass");
        } else {
            System.out.println("Fail");
        }
    }
}
```

Another example: checking whether a user can enter a competition.

Rule:

> A student can enter if their age is 16 or above.

```java
public class CompetitionEntry {
    public static void main(String[] args) {
        int age = 15;

        if (age >= 16) {
            System.out.println("Allowed to enter");
        } else {
            System.out.println("Not allowed to enter");
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

### Pass/Fail Example

| Code Part | Flowchart Connection | Explanation |
|---|---|---|
| `int mark = 68;` | Input / stored value | Provides the data for the decision |
| `if (mark >= 50)` | Decision diamond | Checks the condition |
| `System.out.println("Pass");` | Yes branch output | Runs when the condition is true |
| `else` | No branch | Gives the alternative path |
| `System.out.println("Fail");` | No branch output | Runs when the condition is false |

### Competition Entry Example

| Code Part | Flowchart Connection | Explanation |
|---|---|---|
| `int age = 15;` | Input / stored value | Stores the age |
| `if (age >= 16)` | Decision diamond | Checks whether the user is old enough |
| `"Allowed to enter"` | Yes path | Output if condition is true |
| `"Not allowed to enter"` | No path | Output if condition is false |

### Why this connects to flowcharts

A flowchart shows the same decision structure before code is written.

| Algorithm design | Java code |
|---|---|
| Decision diamond | `if (...)` |
| Yes branch | code inside IF block |
| No branch | code inside ELSE block |
| Output symbol | `System.out.println(...)` |

---

## 9. Step-by-step Execution

### Example 1: mark = 68

Flowchart logic:

```text
[Start]
   ↓
[Input mark = 68]
   ↓
<Is mark >= 50?>
   ↓ Yes
[Output "Pass"]
   ↓
[End]
```

Execution table:

| Step | Action | Result |
|---|---|---|
| 1 | Store mark | mark = 68 |
| 2 | Check mark >= 50 | 68 >= 50 is true |
| 3 | Follow Yes branch | Output Pass |
| 4 | End algorithm | Algorithm stops |

Final output:

```text
Pass
```

### Example 2: age = 15

| Step | Action | Result |
|---|---|---|
| 1 | Store age | age = 15 |
| 2 | Check age >= 16 | 15 >= 16 is false |
| 3 | Follow No branch | Output Not allowed to enter |
| 4 | End algorithm | Algorithm stops |

Final output:

```text
Not allowed to enter
```

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Using the wrong symbol | The flowchart becomes unclear | Use standard symbols |
| Forgetting arrows | Execution order is unclear | Add arrows between all steps |
| Not labelling decision branches | The reader cannot tell which path is true or false | Label branches Yes/No or True/False |
| No Start or End | The algorithm looks incomplete | Include clear start and end points |
| Putting a condition inside a process box | Decision logic becomes unclear | Use a diamond for conditions |
| Creating branches that never reconnect or end | Flow becomes confusing | Make sure every path leads somewhere |
| Drawing a flowchart after writing messy code | The flowchart may copy bad design | Plan logic first |

---

## 11. Guided Practice

### Practice 1: Even or Odd

Create a text-based flowchart for an algorithm that inputs a number and outputs whether it is even or odd.

<details>
<summary>Suggested Answer</summary>

```text
[Start]
   ↓
[Input number]
   ↓
<Is number MOD 2 = 0?>
   ├── Yes → [Output "Even"] → [End]
   └── No  → [Output "Odd"] → [End]
```

</details>

---

### Practice 2: Match Flowchart to Pseudocode

Flowchart structure:

```text
[Start]
   ↓
[Input temperature]
   ↓
<Is temperature > 30?>
   ├── Yes → [Output "Hot"] → [End]
   └── No  → [Output "Not hot"] → [End]
```

Write the matching pseudocode.

<details>
<summary>Suggested Answer</summary>

```text
INPUT temperature

IF temperature > 30 THEN
    OUTPUT "Hot"
ELSE
    OUTPUT "Not hot"
END IF
```

</details>

---

### Practice 3: Identify Symbols

For the pass/fail algorithm, identify the symbol type for each step.

| Step | Symbol Type |
|---|---|
| Start | Terminator |
| Input mark | Input / Output |
| Is mark >= 50? | Decision |
| Output Pass | Input / Output |
| End | Terminator |

---

## 12. Independent Practice

Complete these tasks without looking at answers first.

### Task 1

Create a text-based flowchart for a program that inputs a mark and outputs:

- `"A"` if the mark is 80 or above
- `"B"` if the mark is 60 to 79
- `"C"` otherwise

### Task 2

Write the IB-style pseudocode for your flowchart in Task 1.

### Task 3

Write Java code for your flowchart in Task 1.

### Task 4

Explain why a decision symbol is needed in your flowchart.

### Task 5

Create three test values and predict the output.

| Test Mark | Expected Output | Reason |
|---|---|---|

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what a flowchart is used for.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for:

- it visually represents an algorithm or process
- it shows the sequence of steps, decisions, and flow of control

Example answer:

A flowchart is used to visually represent an algorithm, showing the order of steps and the decisions made during execution.

</details>

---

### Question 2 [4 marks]

A program inputs a student's mark and outputs `"Pass"` if the mark is at least 50, otherwise outputs `"Fail"`.

Describe the main flowchart symbols that would be used.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for points such as:

- terminator symbol for Start and End
- input/output symbol for inputting the mark
- decision symbol for checking whether mark >= 50
- input/output symbol for outputting Pass or Fail
- arrows to show the direction of flow

Example answer:

The flowchart would use a terminator for Start and End, an input/output symbol to input the mark, a decision symbol to test whether the mark is at least 50, and output symbols for Pass and Fail. Arrows would show the direction of execution.

</details>

---

### Question 3 [6 marks]

A cinema gives a discount if a customer is under 18. Otherwise, the customer pays the normal price.

Construct a flowchart-style solution using text and explain how selection is represented.

<details>
<summary>Mark Scheme Style Answer</summary>

Award marks for points such as:

- starts the algorithm
- inputs age
- uses a decision to check age < 18
- outputs discount price if true
- outputs normal price if false
- ends the algorithm
- explains that selection is represented by a decision with two branches

Example text-based flowchart:

```text
[Start]
   ↓
[Input age]
   ↓
<Is age < 18?>
   ├── Yes → [Output "Discount price"] → [End]
   └── No  → [Output "Normal price"] → [End]
```

Selection is represented by the decision condition `age < 18`. The algorithm follows one branch if the condition is true and another branch if it is false.

</details>

---

## 14. Classroom Activity

### Activity: Flowchart Relay

**Time:** 15-20 minutes  
**Grouping:** Pairs or small groups

Each group chooses one problem:

1. Check if a password is at least 8 characters long  
2. Decide whether a number is positive, negative, or zero  
3. Calculate whether a student gets a discount based on age  
4. Decide whether a temperature is cold, normal, or hot  

For your chosen problem:

1. Write the problem rule.
2. Identify input.
3. Identify decisions.
4. Create a text-based flowchart.
5. Convert the flowchart into pseudocode.
6. Write one Java `if` statement that matches the decision.

| Part | Your Answer |
|---|---|
| Input |  |
| Decision condition |  |
| Yes / True output |  |
| No / False output |  |
| Pseudocode |  |
| Java condition |  |

::: tip Exit Ticket
Before leaving, write one sentence explaining why decision branches should be labelled in a flowchart.
:::

---

## 15. Homework

### Homework Task

Choose one of the following systems:

- cinema ticket discount checker
- student grade classifier
- simple login checker
- delivery fee decision system
- competition entry checker

Complete the following:

1. Write a short description of the system.
2. Identify input, processing, and output.
3. Create a text-based flowchart.
4. Write matching IB-style pseudocode.
5. Write equivalent Java code.
6. Create three test cases.
7. Write one exam-style paragraph explaining how the flowchart represents the algorithm.

### Suggested Paragraph Structure

```text
The flowchart represents the algorithm by showing ...
The input is ...
The decision symbol checks whether ...
If the condition is true, the algorithm ...
If the condition is false, the algorithm ...
This makes the logic easier to understand because ...
```

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Definition | A flowchart visually represents an algorithm |
| Main symbols | Terminator, process, input/output, decision, arrow |
| Programming link | Decision diamonds often become Java `if` statements |
| Exam skill | Label decision branches clearly |
| Common phrase | "The arrows show the direction of execution." |
