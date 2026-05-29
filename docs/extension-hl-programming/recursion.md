# Recursion

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define recursion
- explain why recursion is useful
- identify the base case and recursive case in an algorithm
- explain why a recursive algorithm must move toward the base case
- trace simple recursive calls step by step
- explain how recursion uses the call stack
- compare recursion and iteration
- write simple recursive algorithms
- identify common recursion errors
- explain when recursion is suitable and when iteration may be better
- apply recursion to factorial, countdown, sum, search, and tree/folder examples
- answer exam-style questions about recursion using mark scheme language

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | HL Programming Extension |
| Topic | Recursion |
| Main skill | Solving a problem by defining it in terms of smaller versions of itself |
| Connected topics | Algorithms, trace tables, stacks, methods/functions, searching, trees |
| Practical focus | Base case, recursive case, call tracing, termination |
| Exam relevance | Definitions, tracing recursive calls, identifying errors, recursion vs iteration |

::: tip Learning Focus
A recursive algorithm calls itself. It must have a base case to stop and a recursive case that moves the problem closer to the base case.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Recursion | 递归 | A method/function calls itself |
| Recursive method | 递归方法 | Method that calls itself |
| Base case | 基本情况 / 终止条件 | Condition that stops recursion |
| Recursive case | 递归情况 | Part where the method calls itself |
| Termination | 终止 | The recursion eventually stops |
| Infinite recursion | 无限递归 | Recursion that never reaches a base case |
| Call stack | 调用栈 | Stores active method/function calls |
| Stack frame | 栈帧 | Information stored for one method call |
| Return value | 返回值 | Value sent back from a function |
| Factorial | 阶乘 | Product of integers from 1 to n |
| Recursive step | 递归步骤 | Call using a smaller/simpler input |
| Trace | 跟踪 | Follow each recursive call and return |
| Iteration | 迭代 | Repetition using a loop |
| Divide and conquer | 分治 | Solving a problem by splitting it into smaller sub-problems |
| Stack overflow | 栈溢出 | Error when too many calls fill the call stack |
| Direct recursion | 直接递归 | A method calls itself directly |
| Indirect recursion | 间接递归 | Methods call each other in a cycle |
| Recursive data structure | 递归数据结构 | Structure defined using smaller versions of itself, such as trees |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Recursion（递归）就是一个 method / function 调用它自己。

例如倒数：

```text
countdown(3)
```

可以理解成：

```text
print 3
countdown(2)
print 2
countdown(1)
print 1
stop
```

递归必须有两个部分：

```text
base case = 停止递归的条件
recursive case = 自己调用自己
```

例如：

```text
FUNCTION countdown(n)
    IF n = 0 THEN
        RETURN
    ELSE
        OUTPUT n
        countdown(n - 1)
    ENDIF
ENDFUNCTION
```

这里：

```text
base case = n = 0
recursive case = countdown(n - 1)
```

如果没有 base case，或者每次 recursive call 没有让问题变小，就可能 infinite recursion。

比如错误例子：

```text
FUNCTION countdown(n)
    OUTPUT n
    countdown(n)
ENDFUNCTION
```

这里 n 没有变小，所以永远不会停止。

简单记忆：

```text
recursion = method calls itself
base case = stop
recursive case = call again with smaller problem
```

</template>

<template #en>

### English Explanation

Recursion means a method/function calls itself.

Example countdown:

```text
countdown(3)
```

can be understood as:

```text
print 3
countdown(2)
print 2
countdown(1)
print 1
stop
```

Recursion must have two parts:

```text
base case = condition that stops recursion
recursive case = part where the method calls itself
```

Example:

```text
FUNCTION countdown(n)
    IF n = 0 THEN
        RETURN
    ELSE
        OUTPUT n
        countdown(n - 1)
    ENDIF
ENDFUNCTION
```

Here:

```text
base case = n = 0
recursive case = countdown(n - 1)
```

Without a base case, or if each recursive call does not make the problem smaller, infinite recursion may happen.

Wrong example:

```text
FUNCTION countdown(n)
    OUTPUT n
    countdown(n)
ENDFUNCTION
```

Here, `n` does not get smaller, so the recursion may never stop.

Simple memory:

```text
recursion = method calls itself
base case = stop
recursive case = call again with smaller problem
```

</template>
</LangBlock>

---

## 5. What Is Recursion?

Recursion is when a method or function calls itself.

### Simple Definition

```text
Recursion is a technique where a function solves a problem by calling itself on a smaller or simpler version of the same problem.
```

### Mark Scheme Phrase

```text
A recursive algorithm calls itself and must include a base case to stop the recursion.
```

### Example Idea

To solve:

```text
sum numbers from 1 to n
```

we can write:

```text
sum(n) = n + sum(n - 1)
sum(1) = 1
```

This works because the problem becomes smaller each time.

---

## 6. Why Recursion Is Useful

Recursion is useful when a problem naturally contains smaller versions of itself.

### Suitable Problems

```text
factorial
countdown
sum from 1 to n
searching folders and subfolders
tree traversal
some divide-and-conquer algorithms
mathematical sequences
maze/path exploration
```

### Benefits

| Benefit | Explanation |
|---|---|
| Natural expression | some problems are naturally recursive |
| Shorter code | recursive solution may be more compact |
| Matches tree structures | trees/folders are recursive structures |
| Divide and conquer | splits problem into smaller similar problems |
| Easier reasoning sometimes | base case + recursive step can be clear |

### Warning

Recursion is not always best.  
Iteration may be simpler and use less memory for simple repeated tasks.

---

## 7. The Two Required Parts

Every correct recursive algorithm needs:

```text
base case
recursive case
```

### Base Case

The stopping condition.

Example:

```text
IF n = 0 THEN
    RETURN
ENDIF
```

### Recursive Case

The part where the function calls itself.

Example:

```text
RETURN n + sum(n - 1)
```

### Progress Toward Base Case

The recursive call must move closer to the base case.

Example:

```text
n - 1
```

### Mark Scheme Phrase

```text
The base case prevents infinite recursion, and the recursive case reduces the problem so the base case will eventually be reached.
```

---

## 8. Countdown Example

### Pseudocode

```text
PROCEDURE countdown(n)
    IF n = 0 THEN
        OUTPUT "Done"
    ELSE
        OUTPUT n
        countdown(n - 1)
    ENDIF
ENDPROCEDURE
```

### Call

```text
countdown(3)
```

### Output

```text
3
2
1
Done
```

### Explanation

```text
countdown(3) outputs 3 and calls countdown(2)
countdown(2) outputs 2 and calls countdown(1)
countdown(1) outputs 1 and calls countdown(0)
countdown(0) reaches the base case and outputs Done
```

---

## 9. Factorial Example

Factorial means:

```text
5! = 5 × 4 × 3 × 2 × 1
```

### Recursive Definition

```text
factorial(1) = 1
factorial(n) = n × factorial(n - 1)
```

### Pseudocode

```text
FUNCTION factorial(n)
    IF n = 1 THEN
        RETURN 1
    ELSE
        RETURN n * factorial(n - 1)
    ENDIF
ENDFUNCTION
```

### Call

```text
factorial(4)
```

### Expansion

```text
factorial(4)
= 4 * factorial(3)
= 4 * 3 * factorial(2)
= 4 * 3 * 2 * factorial(1)
= 4 * 3 * 2 * 1
= 24
```

---

## 10. Trace Factorial

### Algorithm

```text
FUNCTION factorial(n)
    IF n = 1 THEN
        RETURN 1
    ELSE
        RETURN n * factorial(n - 1)
    ENDIF
ENDFUNCTION
```

### Trace `factorial(4)`

| Call | Action |
|---|---|
| factorial(4) | returns 4 * factorial(3) |
| factorial(3) | returns 3 * factorial(2) |
| factorial(2) | returns 2 * factorial(1) |
| factorial(1) | returns 1 |
| factorial(2) | returns 2 * 1 = 2 |
| factorial(3) | returns 3 * 2 = 6 |
| factorial(4) | returns 4 * 6 = 24 |

### Final Return

```text
24
```

---

## 11. Sum from 1 to n

### Recursive Definition

```text
sum(1) = 1
sum(n) = n + sum(n - 1)
```

### Pseudocode

```text
FUNCTION sumTo(n)
    IF n = 1 THEN
        RETURN 1
    ELSE
        RETURN n + sumTo(n - 1)
    ENDIF
ENDFUNCTION
```

### Trace `sumTo(4)`

```text
sumTo(4)
= 4 + sumTo(3)
= 4 + 3 + sumTo(2)
= 4 + 3 + 2 + sumTo(1)
= 4 + 3 + 2 + 1
= 10
```

---

## 12. Recursive Linear Search

A recursive search checks one item, then calls itself on the next item.

### Pseudocode

```text
FUNCTION search(items, target, index)
    IF index = length(items) THEN
        RETURN false
    ELSE IF items[index] = target THEN
        RETURN true
    ELSE
        RETURN search(items, target, index + 1)
    ENDIF
ENDFUNCTION
```

### Base Cases

```text
index = length(items)       → target not found
items[index] = target       → target found
```

### Recursive Case

```text
search(items, target, index + 1)
```

### Key Idea

The index moves forward each call.

---

## 13. Recursion and the Call Stack

Each recursive call is stored on the call stack.

### Example

```text
factorial(4)
factorial(3)
factorial(2)
factorial(1)
```

The calls stack up until the base case is reached.  
Then return values are passed back in reverse order.

### Stack Behaviour

```text
last call made = first call to return
```

This is LIFO behaviour.

### Mark Scheme Phrase

```text
Each recursive call is placed on the call stack, and calls return in reverse order once the base case is reached.
```

---

## 14. Stack Overflow

Stack overflow can occur if too many recursive calls are made.

### Causes

```text
missing base case
base case never reached
recursive call does not reduce problem
input too large
```

### Example Error

```text
FUNCTION countdown(n)
    OUTPUT n
    countdown(n)
ENDFUNCTION
```

This never changes `n`, so it may recurse forever.

### Fix

```text
countdown(n - 1)
```

and include:

```text
IF n = 0 THEN stop
```

---

## 15. Direct and Indirect Recursion

### Direct Recursion

A function calls itself.

```text
FUNCTION A()
    A()
ENDFUNCTION
```

### Indirect Recursion

Two or more functions call each other.

```text
FUNCTION A()
    B()
ENDFUNCTION

FUNCTION B()
    A()
ENDFUNCTION
```

### Exam Focus

Most school-level questions focus on direct recursion.

---

## 16. Recursion vs Iteration

| Feature | Recursion | Iteration |
|---|---|---|
| Uses | function calls itself | loop repeats steps |
| Stop condition | base case | loop condition |
| Memory | uses call stack | often uses less memory |
| Good for | trees, divide-and-conquer, naturally recursive problems | simple repetition |
| Risk | stack overflow | infinite loop |
| Example | factorial(n) calls factorial(n-1) | FOR loop from 1 to n |

### Exam Phrase

```text
Recursion uses repeated method calls, while iteration uses loops.
```

---

## 17. Factorial: Recursive vs Iterative

### Recursive

```text
FUNCTION factorial(n)
    IF n = 1 THEN
        RETURN 1
    ELSE
        RETURN n * factorial(n - 1)
    ENDIF
ENDFUNCTION
```

### Iterative

```text
result ← 1

FOR i ← 1 TO n
    result ← result * i
ENDFOR

OUTPUT result
```

### Comparison

Recursion may be closer to the mathematical definition.  
Iteration may use less memory because it does not create many function calls.

---

## 18. Recursion with Output Before the Call

### Pseudocode

```text
PROCEDURE show(n)
    IF n = 0 THEN
        RETURN
    ELSE
        OUTPUT n
        show(n - 1)
    ENDIF
ENDPROCEDURE
```

### Call

```text
show(3)
```

### Output

```text
3
2
1
```

### Why?

The output happens before the recursive call.

---

## 19. Recursion with Output After the Call

### Pseudocode

```text
PROCEDURE show(n)
    IF n = 0 THEN
        RETURN
    ELSE
        show(n - 1)
        OUTPUT n
    ENDIF
ENDPROCEDURE
```

### Call

```text
show(3)
```

### Output

```text
1
2
3
```

### Why?

The recursive calls go down to the base case first.  
Then outputs happen while calls return.

---

## 20. Folder Search Example

A folder may contain files and subfolders.  
Each subfolder may contain more files and subfolders.

This is naturally recursive.

### Pseudocode Idea

```text
PROCEDURE searchFolder(folder, targetFile)
    FOR each item IN folder
        IF item is targetFile THEN
            OUTPUT "Found"
        ELSE IF item is folder THEN
            searchFolder(item, targetFile)
        ENDIF
    ENDFOR
ENDPROCEDURE
```

### Why Recursion Fits

A folder contains smaller folders with the same structure.

---

## 21. Tree Traversal Example

A tree node may contain:

```text
data
left child
right child
```

Each child is also a node.

### Recursive Idea

```text
PROCEDURE visit(node)
    IF node is null THEN
        RETURN
    ELSE
        visit(node.left)
        OUTPUT node.data
        visit(node.right)
    ENDIF
ENDPROCEDURE
```

### Key Idea

Trees are recursive data structures because each subtree is itself a tree.

---

## 22. Common Recursion Errors

| Error | Why It Happens | Fix |
|---|---|---|
| missing base case | recursion never stops | add stopping condition |
| base case wrong | stops too early or too late | test boundary values |
| recursive call does not change input | never reaches base case | reduce problem each call |
| wrong return value | result not passed back correctly | trace return values |
| output in wrong place | output order reversed | check before/after recursive call |
| too many recursive calls | stack overflow risk | consider iteration or optimization |
| negative input not handled | base case may not match | validate input |
| confused call order | returns misunderstood | draw call stack |
| using recursion for simple loop | less efficient | use iteration if clearer |
| not returning recursive result | value lost | use `RETURN recursiveCall(...)` |

---

## 23. How to Trace Recursion

Use this method:

```text
1. Write the first function call.
2. Check whether it hits the base case.
3. If not, write the recursive call.
4. Repeat until base case is reached.
5. Work backward through return values.
6. Record outputs in the exact order they occur.
```

### Trace Tip

Use indentation:

```text
factorial(4)
    factorial(3)
        factorial(2)
            factorial(1)
```

Then return upward.

---

## 24. Worked Example: Trace Output Order

### Algorithm

```text
PROCEDURE mystery(n)
    IF n = 0 THEN
        RETURN
    ELSE
        OUTPUT n
        mystery(n - 1)
        OUTPUT n
    ENDIF
ENDPROCEDURE
```

### Call

```text
mystery(3)
```

### Trace

```text
mystery(3): output 3
    mystery(2): output 2
        mystery(1): output 1
            mystery(0): return
        mystery(1): output 1
    mystery(2): output 2
mystery(3): output 3
```

### Output

```text
3
2
1
1
2
3
```

---

## 25. Worked Example: Count Characters

### Problem

Return the length of a string recursively.

### Idea

```text
length("") = 0
length(text) = 1 + length(text without first character)
```

### Pseudocode

```text
FUNCTION length(text)
    IF text = "" THEN
        RETURN 0
    ELSE
        RETURN 1 + length(text without first character)
    ENDIF
ENDFUNCTION
```

### Example

```text
length("cat")
= 1 + length("at")
= 1 + 1 + length("t")
= 1 + 1 + 1 + length("")
= 3
```

---

## 26. Worked Example: Recursive Power

### Problem

Calculate:

```text
base^exponent
```

### Recursive Definition

```text
power(base, 0) = 1
power(base, exponent) = base * power(base, exponent - 1)
```

### Pseudocode

```text
FUNCTION power(base, exponent)
    IF exponent = 0 THEN
        RETURN 1
    ELSE
        RETURN base * power(base, exponent - 1)
    ENDIF
ENDFUNCTION
```

### Example

```text
power(2, 3)
= 2 * power(2, 2)
= 2 * 2 * power(2, 1)
= 2 * 2 * 2 * power(2, 0)
= 8
```

---

## 27. When Recursion Is Suitable

Recursion is suitable when:

```text
problem is naturally defined in smaller versions of itself
data structure is recursive, such as trees or folders
divide-and-conquer strategy is useful
recursive version is clearer than iterative version
```

### Examples

```text
tree traversal
folder search
factorial
Fibonacci
binary search
merge sort
recursive maze exploration
```

### When Iteration May Be Better

Iteration may be better when:

```text
problem is simple repetition
large number of calls may cause stack overflow
performance/memory is important
loop is easier to understand
```

---

## 28. Scenario Answer Bank

### If Asked: “Define recursion”

```text
Recursion is a technique where a function or method calls itself to solve a smaller version of the same problem.
```

### If Asked: “What is a base case?”

```text
A base case is the condition that stops recursion and prevents infinite recursive calls.
```

### If Asked: “What is a recursive case?”

```text
A recursive case is the part of the algorithm where the function calls itself with a smaller or simpler input.
```

### If Asked: “Why must recursion move toward the base case?”

```text
Each recursive call must move closer to the base case so the recursion eventually terminates.
```

### If Asked: “Compare recursion and iteration”

```text
Recursion repeats by calling a function again, while iteration repeats using a loop.
```

### If Asked: “Why can recursion cause stack overflow?”

```text
Each recursive call is added to the call stack, so too many calls or missing termination can fill the stack and cause an error.
```

---

## 29. Exam-style Questions

### Question 1 [2 marks]

Define recursion.

<details>
<summary>Mark Scheme Style Answer</summary>

Recursion is a technique where a function or method calls itself to solve a smaller or simpler version of the same problem.

</details>

---

### Question 2 [4 marks]

Explain why a recursive algorithm needs a base case.

<details>
<summary>Mark Scheme Style Answer</summary>

A base case is needed to stop the recursive calls. Without a base case, or if the base case is never reached, the function may call itself indefinitely and eventually cause stack overflow or program failure.

</details>

---

### Question 3 [4 marks]

Identify the base case and recursive case in this algorithm.

```text
FUNCTION sumTo(n)
    IF n = 1 THEN
        RETURN 1
    ELSE
        RETURN n + sumTo(n - 1)
    ENDIF
ENDFUNCTION
```

<details>
<summary>Mark Scheme Style Answer</summary>

Base case:

```text
IF n = 1 THEN RETURN 1
```

Recursive case:

```text
RETURN n + sumTo(n - 1)
```

The recursive call uses `n - 1`, so it moves closer to the base case.

</details>

---

### Question 4 [5 marks]

Trace `factorial(4)`.

```text
FUNCTION factorial(n)
    IF n = 1 THEN
        RETURN 1
    ELSE
        RETURN n * factorial(n - 1)
    ENDIF
ENDFUNCTION
```

<details>
<summary>Mark Scheme Style Answer</summary>

```text
factorial(4)
= 4 * factorial(3)
= 4 * 3 * factorial(2)
= 4 * 3 * 2 * factorial(1)
= 4 * 3 * 2 * 1
= 24
```

Final return value:

```text
24
```

</details>

---

### Question 5 [5 marks]

Compare recursion and iteration.

<details>
<summary>Mark Scheme Style Answer</summary>

Recursion repeats by a function or method calling itself, while iteration repeats using a loop. Recursion requires a base case to stop, while iteration uses a loop condition. Recursion may be clearer for tree-like or naturally recursive problems, but iteration often uses less memory because it does not create many call stack frames.

</details>

---

### Question 6 [4 marks]

Explain why recursion is suitable for searching folders and subfolders.

<details>
<summary>Mark Scheme Style Answer</summary>

A folder can contain files and subfolders, and each subfolder can contain more files and subfolders. This structure is recursive because each subfolder has the same type of structure as the original folder. A recursive search can process a folder and then call itself to search each subfolder.

</details>

---

### Question 7 [4 marks]

The following algorithm may not terminate. Explain why and fix it.

```text
FUNCTION countDown(n)
    IF n = 0 THEN
        RETURN
    ELSE
        OUTPUT n
        countDown(n)
    ENDIF
ENDFUNCTION
```

<details>
<summary>Mark Scheme Style Answer</summary>

The recursive call uses `countDown(n)`, so `n` does not change and may never reach the base case `n = 0`. The recursive call should reduce `n`, for example:

```text
countDown(n - 1)
```

</details>

---

## 30. Guided Practice

### Practice 1

What is the base case?

```text
FUNCTION f(n)
    IF n = 0 THEN
        RETURN 0
    ELSE
        RETURN n + f(n - 1)
    ENDIF
ENDFUNCTION
```

<details>
<summary>Suggested Answer</summary>

```text
IF n = 0 THEN RETURN 0
```

</details>

---

### Practice 2

What is the recursive case?

<details>
<summary>Suggested Answer</summary>

```text
RETURN n + f(n - 1)
```

</details>

---

### Practice 3

What is the output?

```text
PROCEDURE show(n)
    IF n = 0 THEN
        RETURN
    ELSE
        OUTPUT n
        show(n - 1)
    ENDIF
ENDPROCEDURE

show(3)
```

<details>
<summary>Suggested Answer</summary>

```text
3
2
1
```

</details>

---

### Practice 4

What is the output?

```text
PROCEDURE show(n)
    IF n = 0 THEN
        RETURN
    ELSE
        show(n - 1)
        OUTPUT n
    ENDIF
ENDPROCEDURE

show(3)
```

<details>
<summary>Suggested Answer</summary>

```text
1
2
3
```

</details>

---

### Practice 5

Why can recursion use more memory than iteration?

<details>
<summary>Suggested Answer</summary>

Each recursive call is stored on the call stack until it returns, so many recursive calls can use more memory than a loop.

</details>

---

## 31. Independent Practice

### Question 1

Define recursion.

### Question 2

Explain the role of a base case.

### Question 3

Explain the role of a recursive case.

### Question 4

Trace `sumTo(5)`.

### Question 5

Write recursive pseudocode for counting down from `n` to 1.

### Question 6

Compare recursion and iteration.

### Question 7

Explain why recursion is suitable for tree traversal.

### Question 8

Identify the error in a recursive algorithm that calls itself with the same input every time.

### Question 9

Explain how recursion uses the call stack.

### Question 10

Give two examples of problems where recursion is suitable.

---

## 32. Practice Activity

### Activity 1: Human Call Stack

Students hold cards:

```text
factorial(4)
factorial(3)
factorial(2)
factorial(1)
```

They stand in stack order.  
Then they return values in reverse order.

---

### Activity 2: Recursion Trace Tree

Students draw call traces for:

```text
factorial(4)
sumTo(4)
show(3)
```

They mark:

```text
base case
recursive case
return values
output order
```

---

### Activity 3: Fix Infinite Recursion

Give students faulty algorithms:

```text
missing base case
base case impossible to reach
recursive call uses same input
recursive call moves away from base case
```

Students identify the problem and correct it.

---

## 33. Homework

### Homework Part A

Explain recursion in 8-10 sentences using factorial or countdown as the example.

### Homework Part B

Trace the following:

```text
factorial(5)
sumTo(5)
show(4) where output happens before recursive call
show(4) where output happens after recursive call
```

### Homework Part C

Write recursive pseudocode for:

```text
1. countdown from n
2. sum from 1 to n
3. power(base, exponent)
4. search an array recursively
```

### Homework Part D

Correct these misconceptions:

```text
Recursion means using a loop.
A recursive algorithm does not need a base case.
The recursive call can use the same input forever.
Output before and after the recursive call gives the same order.
Recursion always uses less memory than iteration.
```

---

## 34. One-page Revision Summary

| Point | Summary |
|---|---|
| Recursion | function/method calls itself |
| Base case | stops recursion |
| Recursive case | calls itself with smaller/simpler input |
| Termination | recursion eventually stops |
| Infinite recursion | base case missing/not reached |
| Call stack | stores active function calls |
| Return order | recursive calls return in reverse order |
| Factorial | `n * factorial(n - 1)` |
| Sum | `n + sumTo(n - 1)` |
| Output before call | descending order |
| Output after call | ascending order |
| Recursion vs iteration | self-calls vs loops |
| Stack overflow | too many recursive calls |
| Suitable problems | trees, folders, divide-and-conquer |
| Exam phrase | recursive algorithm needs a base case and a recursive case that moves toward the base case |

