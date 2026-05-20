# Input and Output

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of input and output
- design clear prompts for users
- write IB-style pseudocode using `INPUT` and `OUTPUT`
- write Java programs using `Scanner` for input
- distinguish input, processing, and output
- explain common input/output errors

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | User interaction |
| Connected units | Programming Basics, Variables, Data Types, Testing |
| Exam relevance | IPO questions, pseudocode, Java input, output prediction |

::: tip Learning Focus
Input is data entering the program. Output is information displayed or returned by the program. Good programs use clear prompts and clear output labels.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Input | 输入 | Data entered into a program |
| Output | 输出 | Data displayed or returned by a program |
| Prompt | 提示信息 | A message asking the user to enter data |
| Scanner | Java 输入工具 | Java class commonly used for keyboard input |
| Processing | 处理 | Operations performed on input data |
| Validation | 验证 | Checking that input is acceptable |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

程序经常需要和用户交互。用户输入数据，程序处理数据，然后输出结果。

例如一个矩形面积程序：

- input: length, width
- process: area = length × width
- output: area

好的程序应该给用户清楚的提示，例如：

```text
Enter the length:
```

而不是直接等待用户输入。输出也应该清楚，例如：

```text
Area: 28.0
```

这样用户知道结果代表什么。

</template>

<template #en>

### English Explanation

Programs often interact with users. The user enters data, the program processes the data, and the program outputs a result.

For example, a rectangle area program uses:

- input: length and width
- process: area = length × width
- output: area

A good program should show clear prompts, such as:

```text
Enter the length:
```

The output should also be clear, such as:

```text
Area: 28.0
```

This helps the user understand what the result means.

</template>
</LangBlock>

---

## 5. Real-life Example

### Ticket Price Calculator

| Stage | Detail |
|---|---|
| Input | number of tickets, price per ticket |
| Process | total = numberOfTickets × pricePerTicket |
| Output | total price |

---

## 6. IB Pseudocode Pattern

```text
OUTPUT "Enter number of tickets"
INPUT numberOfTickets

OUTPUT "Enter price per ticket"
INPUT pricePerTicket

total = numberOfTickets * pricePerTicket

OUTPUT total
```

---

## 7. Java Code Example

```java
import java.util.Scanner;

public class TicketPriceCalculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Enter number of tickets:");
        int numberOfTickets = input.nextInt();

        System.out.println("Enter price per ticket:");
        double pricePerTicket = input.nextDouble();

        double total = numberOfTickets * pricePerTicket;

        System.out.println("Total price: " + total);

        input.close();
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `import java.util.Scanner;` | Allows Java to use the Scanner class |
| `Scanner input = new Scanner(System.in);` | Creates an input object for keyboard input |
| `System.out.println(...)` | Displays a prompt or output |
| `input.nextInt()` | Reads an integer |
| `input.nextDouble()` | Reads a decimal number |
| `double total = ...` | Processes input values |
| `input.close();` | Closes the Scanner |

---

## 9. Step-by-step Execution

Example input:

| Input | Value |
|---|---:|
| numberOfTickets | 3 |
| pricePerTicket | 12.5 |

| Step | Action | Result |
|---|---|---|
| 1 | Read number of tickets | 3 |
| 2 | Read price per ticket | 12.5 |
| 3 | Calculate total | 37.5 |
| 4 | Output result | Total price: 37.5 |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| No prompt | User may not know what to enter | Display a clear prompt |
| Wrong Scanner method | Input type may not match variable type | Use `nextInt`, `nextDouble`, or `nextLine` carefully |
| Unclear output | User may not understand result | Add labels |
| Forgetting processing | Program only reads data but does nothing | Plan IPO |
| Not closing Scanner | Resource warning may appear | Close when finished |

---

## 11. Guided Practice

### Practice 1

Write pseudocode to input two marks and output their average.

<details>
<summary>Suggested Answer</summary>

```text
OUTPUT "Enter first mark"
INPUT mark1
OUTPUT "Enter second mark"
INPUT mark2
average = (mark1 + mark2) / 2
OUTPUT average
```

</details>

### Practice 2

Write Java code to input a user's age and output it.

<details>
<summary>Suggested Answer</summary>

```java
import java.util.Scanner;

public class AgeInput {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter your age:");
        int age = input.nextInt();
        System.out.println("Age: " + age);
        input.close();
    }
}
```

</details>

---

## 12. Independent Practice

1. Write pseudocode for a rectangle area calculator with prompts.
2. Write Java code using `Scanner`.
3. Explain why output labels are useful.
4. Identify one possible input type error.

---

## 13. Exam-style Questions

### Question 1 [3 marks]

Identify input, processing, and output for a program that calculates total ticket cost.

<details>
<summary>Mark Scheme Style Answer</summary>

| Stage | Answer |
|---|---|
| Input | number of tickets, price per ticket |
| Processing | multiply number by price |
| Output | total cost |

</details>

### Question 2 [4 marks]

Explain why prompts should be used when accepting user input.

<details>
<summary>Mark Scheme Style Answer</summary>

Prompts tell the user what data to enter. This reduces confusion and makes incorrect input less likely. Clear prompts improve usability because the user understands the expected value and order of input.

</details>

---

## 14. Classroom Activity

Students design a small input/output calculator in pairs. They must include clear prompts, processing, labelled output, and one test case.

---

## 15. Homework

Create a Java program using `Scanner` for one of these: BMI calculator, average mark calculator, rectangle area calculator, ticket cost calculator.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Input | Data entered into program |
| Output | Result displayed by program |
| Prompt | Message asking user for input |
| Java input | `Scanner` |
| Exam phrase | "The program accepts input, processes it, and outputs a labelled result." |
