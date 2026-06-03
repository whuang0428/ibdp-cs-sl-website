# Stacks and Queues

::: warning Extension / enrichment content
This page is for extension learning or HL-related enrichment. It is not a required SL core topic unless your teacher tells you to study it.
:::

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define stack
- define queue
- explain LIFO and FIFO
- describe stack operations: push, pop, peek, isEmpty
- describe queue operations: enqueue, dequeue, front/peek, isEmpty
- trace stack and queue operations step by step
- compare stacks and queues
- choose a stack or queue for a given scenario
- explain common uses of stacks and queues
- identify underflow and overflow ideas
- write simple pseudocode using stacks and queues
- explain how recursion uses a call stack
- answer exam-style questions about stacks and queues using mark scheme vocabulary

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | HL Programming Extension |
| Topic | Stacks and Queues |
| Main skill | Using abstract data types to control the order in which data is processed |
| Connected topics | Arrays, ArrayList, linked lists, recursion, algorithms, OOP, robust programs |
| Practical focus | Push/pop, enqueue/dequeue, tracing operations, scenario choice |
| Exam relevance | Definitions, LIFO/FIFO, operation tracing, applications, comparison questions |

::: tip Learning Focus
A stack follows **LIFO**: Last In, First Out.  
A queue follows **FIFO**: First In, First Out.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Abstract Data Type | 抽象数据类型 | Data structure described by behaviour/operations rather than implementation |
| Stack | 栈 | Data structure where the last item added is removed first |
| Queue | 队列 | Data structure where the first item added is removed first |
| LIFO | 后进先出 | Last In, First Out |
| FIFO | 先进先出 | First In, First Out |
| Push | 入栈 | Add an item to the top of a stack |
| Pop | 出栈 | Remove and return the top item from a stack |
| Peek / Top | 查看栈顶 | View the top item without removing it |
| Enqueue | 入队 | Add an item to the back/rear of a queue |
| Dequeue | 出队 | Remove and return the front item from a queue |
| Front | 队首 | First item waiting in a queue |
| Rear / Back | 队尾 | Last item in a queue |
| isEmpty | 是否为空 | Check whether the structure has no items |
| Overflow | 溢出 | Trying to add to a full fixed-size structure |
| Underflow | 下溢 | Trying to remove from an empty structure |
| Call stack | 调用栈 | Stack used to store active method/function calls |
| Stack frame | 栈帧 | Information for one active function/method call |
| Circular queue | 循环队列 | Queue using fixed array where rear/front wrap around |
| Priority queue | 优先队列 | Queue where removal is based on priority rather than arrival order |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Stack 和 queue 都是用来控制“数据处理顺序”的结构。

**Stack（栈）** 的规则是：

```text
LIFO = Last In, First Out
最后进入的，最先出去
```

想象一摞盘子：

```text
push = 放一个盘子到最上面
pop = 拿走最上面的盘子
peek = 看最上面的盘子但不拿走
```

所以 stack 适合：

```text
undo 功能
浏览器 back
函数调用 call stack
括号匹配
递归调用
```

**Queue（队列）** 的规则是：

```text
FIFO = First In, First Out
最先进入的，最先出去
```

想象排队买奶茶：

```text
enqueue = 新人排到队尾
dequeue = 队首的人离开
front = 看队首是谁
```

所以 queue 适合：

```text
打印队列
客服排队
任务调度
网络 packet 处理
游戏匹配等待队列
```

简单记忆：

```text
stack = pile of plates = LIFO
queue = line of people = FIFO
```

</template>

<template #en>

### English Explanation

Stacks and queues control the order in which data is processed.

A **stack** follows:

```text
LIFO = Last In, First Out
```

Imagine a pile of plates:

```text
push = put a plate on top
pop = remove the top plate
peek = view the top plate without removing it
```

Stacks are suitable for:

```text
undo features
browser back button
function call stack
bracket matching
recursive calls
```

A **queue** follows:

```text
FIFO = First In, First Out
```

Imagine people waiting in a line:

```text
enqueue = join the back of the line
dequeue = leave from the front of the line
front = view the first person in line
```

Queues are suitable for:

```text
printer queues
customer service queues
task scheduling
network packet processing
game matchmaking waiting queues
```

Simple memory:

```text
stack = pile of plates = LIFO
queue = line of people = FIFO
```

</template>
</LangBlock>

---

## 5. What Is a Stack?

A stack is an abstract data type where the last item added is the first item removed.

### Simple Definition

```text
A stack is a LIFO data structure, meaning the last item added is the first item removed.
```

### Main Operations

```text
push(item) = add item to top
pop() = remove and return top item
peek() = view top item without removing
isEmpty() = check whether stack has no items
```

### Mark Scheme Phrase

```text
A stack follows Last In, First Out, so the most recently added item is removed first.
```

---

## 6. Stack Example

Start with an empty stack:

```text
[]
```

Operations:

```text
push("A")
push("B")
push("C")
```

Stack becomes:

```text
top → C
      B
      A
```

If we call:

```text
pop()
```

The result is:

```text
C
```

The stack becomes:

```text
top → B
      A
```

---

## 7. Stack Operations

| Operation | Meaning | Example Result |
|---|---|---|
| push(x) | add x to top | stack grows by one |
| pop() | remove top item | returns most recent item |
| peek() | view top item | stack unchanged |
| isEmpty() | check if empty | true/false |
| size() | number of items | integer count |

### Important

`pop()` changes the stack.  
`peek()` does not change the stack.

---

## 8. Stack Trace Example

### Operations

```text
push(10)
push(20)
push(30)
pop()
push(40)
peek()
pop()
```

### Trace

| Step | Operation | Stack after operation | Output / Return |
|---:|---|---|---|
| 1 | push(10) | [10] |  |
| 2 | push(20) | [10, 20] |  |
| 3 | push(30) | [10, 20, 30] |  |
| 4 | pop() | [10, 20] | 30 |
| 5 | push(40) | [10, 20, 40] |  |
| 6 | peek() | [10, 20, 40] | 40 |
| 7 | pop() | [10, 20] | 40 |

Here, the right side of the list represents the top of the stack.

---

## 9. What Is a Queue?

A queue is an abstract data type where the first item added is the first item removed.

### Simple Definition

```text
A queue is a FIFO data structure, meaning the first item added is the first item removed.
```

### Main Operations

```text
enqueue(item) = add item to back/rear
dequeue() = remove and return front item
front() / peek() = view front item without removing
isEmpty() = check whether queue has no items
```

### Mark Scheme Phrase

```text
A queue follows First In, First Out, so the item waiting longest is removed first.
```

---

## 10. Queue Example

Start with an empty queue:

```text
[]
```

Operations:

```text
enqueue("A")
enqueue("B")
enqueue("C")
```

Queue becomes:

```text
front → A, B, C ← rear
```

If we call:

```text
dequeue()
```

The result is:

```text
A
```

The queue becomes:

```text
front → B, C ← rear
```

---

## 11. Queue Operations

| Operation | Meaning | Example Result |
|---|---|---|
| enqueue(x) | add x to back/rear | queue grows by one |
| dequeue() | remove front item | returns earliest item |
| front() / peek() | view front item | queue unchanged |
| isEmpty() | check if empty | true/false |
| size() | number of items | integer count |

### Important

`dequeue()` changes the queue.  
`front()` / `peek()` does not change the queue.

---

## 12. Queue Trace Example

### Operations

```text
enqueue(10)
enqueue(20)
enqueue(30)
dequeue()
enqueue(40)
front()
dequeue()
```

### Trace

| Step | Operation | Queue after operation | Output / Return |
|---:|---|---|---|
| 1 | enqueue(10) | [10] |  |
| 2 | enqueue(20) | [10, 20] |  |
| 3 | enqueue(30) | [10, 20, 30] |  |
| 4 | dequeue() | [20, 30] | 10 |
| 5 | enqueue(40) | [20, 30, 40] |  |
| 6 | front() | [20, 30, 40] | 20 |
| 7 | dequeue() | [30, 40] | 20 |

Here, the left side of the list represents the front of the queue.

---

## 13. Stack vs Queue

| Feature | Stack | Queue |
|---|---|---|
| Rule | LIFO | FIFO |
| Add operation | push | enqueue |
| Remove operation | pop | dequeue |
| View operation | peek/top | front/peek |
| Removed item | most recently added | earliest added |
| Example | undo actions | printer jobs |
| Real-world image | pile of plates | line of people |

### Mark Scheme Phrase

```text
A stack removes the most recently added item first, whereas a queue removes the earliest added item first.
```

---

## 14. Visual Comparison

### Stack

```text
push C
push B
push A

top
 ↓
 A
 B
 C

pop() removes A
```

### Queue

```text
enqueue A
enqueue B
enqueue C

front → A B C ← rear

dequeue() removes A
```

### Memory Trick

```text
stack = same end for add and remove
queue = add at rear, remove at front
```

---

## 15. Stack Use Case: Undo Feature

An undo feature should reverse the most recent action first.

### Why Stack?

```text
last action performed = first action undone
```

This matches:

```text
LIFO
```

### Example

Actions:

```text
type "A"
type "B"
delete "B"
```

Undo order:

```text
undo delete "B"
undo type "B"
undo type "A"
```

### Mark Scheme Phrase

```text
A stack is suitable for an undo feature because the most recent action should be removed first.
```

---

## 16. Stack Use Case: Browser Back Button

Pages visited:

```text
home
search
article
checkout
```

The most recent page should be returned from first when pressing Back.

### Stack Idea

```text
push each visited page
pop when Back is pressed
```

### Why?

The browser returns to the previous page in reverse order of visiting.

---

## 17. Stack Use Case: Function Calls and Recursion

When a function calls another function, the current function is stored on the call stack.

### Recursion Example

```text
factorial(4)
factorial(3)
factorial(2)
factorial(1)
```

The last call made returns first.

### Why Stack?

Function calls follow LIFO:

```text
most recent unfinished call returns first
```

### Mark Scheme Phrase

```text
Recursive calls are stored on the call stack and return in reverse order once the base case is reached.
```

---

## 18. Stack Use Case: Bracket Matching

Stacks can check whether brackets are balanced.

### Example

```text
( [ { } ] )
```

Method:

```text
push opening brackets
when closing bracket found, pop top opening bracket
check whether they match
```

### Why Stack?

The most recent opening bracket must be closed first.

### Example

```text
([ ])
```

The `[` must close before `(`, matching LIFO.

---

## 19. Queue Use Case: Printer Queue

Print jobs should usually be processed in the order they were submitted.

### Why Queue?

```text
first job submitted = first job printed
```

This matches:

```text
FIFO
```

### Mark Scheme Phrase

```text
A queue is suitable for printer jobs because the first job submitted should be processed first.
```

---

## 20. Queue Use Case: Customer Service

Customers should usually be served in arrival order.

### Queue Idea

```text
enqueue customer when they arrive
dequeue customer when staff are ready
```

### Why?

It is fair because customers who waited longest are served first.

---

## 21. Queue Use Case: Task Scheduling

A system may store tasks waiting to be processed.

### Examples

```text
CPU process queue
download queue
message queue
network packet queue
game matchmaking queue
```

### Why Queue?

Tasks are often handled in arrival order unless priority rules are added.

---

## 22. Queue Use Case: Network Packets

Network devices may queue packets before forwarding them.

### Why?

```text
packets may arrive faster than they can be processed
a queue stores packets temporarily
packets can be processed in arrival order
```

### Limitation

If the queue becomes full, packets may be dropped.

---

## 23. Underflow and Overflow

### Underflow

Underflow happens when trying to remove from an empty structure.

Examples:

```text
pop from empty stack
dequeue from empty queue
```

### Overflow

Overflow happens when trying to add to a full fixed-size structure.

Examples:

```text
push to full stack
enqueue to full fixed-size queue
```

### Mark Scheme Phrase

```text
Underflow occurs when removing from an empty stack or queue, while overflow occurs when adding to a full fixed-size stack or queue.
```

---

## 24. Checking Empty Before Removing

Robust programs should check before `pop` or `dequeue`.

### Stack

```text
IF stack.isEmpty() THEN
    OUTPUT "Stack is empty"
ELSE
    item ← stack.pop()
ENDIF
```

### Queue

```text
IF queue.isEmpty() THEN
    OUTPUT "Queue is empty"
ELSE
    item ← queue.dequeue()
ENDIF
```

### Why?

This prevents underflow errors.

---

## 25. Simple Stack Pseudocode

### Push

```text
PROCEDURE push(stack, item)
    ADD item TO top of stack
ENDPROCEDURE
```

### Pop

```text
FUNCTION pop(stack)
    IF stack is empty THEN
        OUTPUT "Error"
    ELSE
        item ← top item
        REMOVE top item
        RETURN item
    ENDIF
ENDFUNCTION
```

### Peek

```text
FUNCTION peek(stack)
    IF stack is empty THEN
        OUTPUT "Error"
    ELSE
        RETURN top item
    ENDIF
ENDFUNCTION
```

---

## 26. Simple Queue Pseudocode

### Enqueue

```text
PROCEDURE enqueue(queue, item)
    ADD item TO rear of queue
ENDPROCEDURE
```

### Dequeue

```text
FUNCTION dequeue(queue)
    IF queue is empty THEN
        OUTPUT "Error"
    ELSE
        item ← front item
        REMOVE front item
        RETURN item
    ENDIF
ENDFUNCTION
```

### Front

```text
FUNCTION front(queue)
    IF queue is empty THEN
        OUTPUT "Error"
    ELSE
        RETURN front item
    ENDIF
ENDFUNCTION
```

---

## 27. Array Implementation Idea: Stack

A stack can be implemented using an array and a `top` variable.

### Idea

```text
stack[0..maxSize-1]
top = -1 means empty
```

### Push

```text
IF top = maxSize - 1 THEN
    OUTPUT "Overflow"
ELSE
    top ← top + 1
    stack[top] ← item
ENDIF
```

### Pop

```text
IF top = -1 THEN
    OUTPUT "Underflow"
ELSE
    item ← stack[top]
    top ← top - 1
    RETURN item
ENDIF
```

### Key Idea

The `top` variable tracks the current top item.

---

## 28. Array Implementation Idea: Queue

A simple queue can use `front` and `rear`.

### Idea

```text
front = index of first item
rear = index of last item
```

### Problem with Simple Array Queue

After many dequeues, empty spaces at the front may not be reused unless values are shifted or a circular queue is used.

### Circular Queue Idea

A circular queue wraps around to reuse free space.

```text
rear ← (rear + 1) MOD maxSize
front ← (front + 1) MOD maxSize
```

### Exam Note

Students usually only need the concept unless the course specifically asks implementation detail.

---

## 29. Priority Queue Extension

A priority queue removes items based on priority, not only arrival order.

### Example

Hospital triage:

```text
critical patient served before minor injury
```

### Difference from Normal Queue

Normal queue:

```text
FIFO
```

Priority queue:

```text
highest priority first
```

### Mark Scheme Phrase

```text
A priority queue processes items according to priority, so it does not always remove the earliest item first.
```

---

## 30. Worked Example: Stack Trace

### Operations

```text
push("A")
push("B")
pop()
push("C")
push("D")
pop()
peek()
```

### Trace

| Step | Operation | Stack | Return |
|---:|---|---|---|
| 1 | push("A") | [A] |  |
| 2 | push("B") | [A, B] |  |
| 3 | pop() | [A] | B |
| 4 | push("C") | [A, C] |  |
| 5 | push("D") | [A, C, D] |  |
| 6 | pop() | [A, C] | D |
| 7 | peek() | [A, C] | C |

Final stack:

```text
[A, C]
```

---

## 31. Worked Example: Queue Trace

### Operations

```text
enqueue("A")
enqueue("B")
dequeue()
enqueue("C")
enqueue("D")
dequeue()
front()
```

### Trace

| Step | Operation | Queue | Return |
|---:|---|---|---|
| 1 | enqueue("A") | [A] |  |
| 2 | enqueue("B") | [A, B] |  |
| 3 | dequeue() | [B] | A |
| 4 | enqueue("C") | [B, C] |  |
| 5 | enqueue("D") | [B, C, D] |  |
| 6 | dequeue() | [C, D] | B |
| 7 | front() | [C, D] | C |

Final queue:

```text
[C, D]
```

---

## 32. Worked Example: Choosing Stack or Queue

### Scenario 1

A program needs to reverse a word.

Suitable structure:

```text
stack
```

Reason:

```text
Characters can be pushed in order and popped in reverse order.
```

### Scenario 2

A help desk serves support tickets in arrival order.

Suitable structure:

```text
queue
```

Reason:

```text
The first ticket submitted should be handled first.
```

### Scenario 3

A browser stores pages for the Back button.

Suitable structure:

```text
stack
```

Reason:

```text
The most recently visited page should be returned to first.
```

---

## 33. Scenario Answer Bank

### If Asked: “Define stack”

```text
A stack is a LIFO data structure where the last item added is the first item removed.
```

### If Asked: “Define queue”

```text
A queue is a FIFO data structure where the first item added is the first item removed.
```

### If Asked: “Compare stack and queue”

```text
A stack removes the most recently added item first, whereas a queue removes the earliest added item first.
```

### If Asked: “Why use a stack for undo?”

```text
A stack is suitable for undo because the most recent action should be reversed first, matching LIFO.
```

### If Asked: “Why use a queue for printer jobs?”

```text
A queue is suitable for printer jobs because the first job submitted should be printed first, matching FIFO.
```

### If Asked: “What is underflow?”

```text
Underflow occurs when an operation tries to remove an item from an empty stack or queue.
```

---

## 34. Common Mistakes

| Mistake | Why It Is Wrong | Fix |
|---|---|---|
| stack and queue both described as FIFO | stack is LIFO | memorize stack = last in first out |
| pop described as adding | pop removes top item | push adds, pop removes |
| dequeue described as adding | dequeue removes front item | enqueue adds, dequeue removes |
| peek changes structure | peek only views | use pop/dequeue to remove |
| undo uses queue | wrong order | undo uses stack |
| printer queue uses stack | wrong order | printer jobs usually use queue |
| underflow confused with overflow | different error | underflow remove empty, overflow add full |
| ignoring empty check | runtime error risk | check isEmpty before removing |
| saying queue removes newest item | that is stack | queue removes oldest item |
| scenario not linked | answer too generic | explain why LIFO/FIFO fits |

---

## 35. Exam-style Questions

### Question 1 [2 marks]

Define stack.

<details>
<summary>Mark Scheme Style Answer</summary>

A stack is a LIFO data structure where the last item added is the first item removed.

</details>

---

### Question 2 [2 marks]

Define queue.

<details>
<summary>Mark Scheme Style Answer</summary>

A queue is a FIFO data structure where the first item added is the first item removed.

</details>

---

### Question 3 [4 marks]

Compare a stack and a queue.

<details>
<summary>Mark Scheme Style Answer</summary>

A stack follows LIFO, so the most recently added item is removed first using operations such as push and pop. A queue follows FIFO, so the earliest added item is removed first using operations such as enqueue and dequeue. A stack is suitable for undo actions, while a queue is suitable for printer jobs.

</details>

---

### Question 4 [4 marks]

Explain why a stack is suitable for an undo feature.

<details>
<summary>Mark Scheme Style Answer</summary>

A stack is suitable because it follows LIFO. The most recent action is pushed onto the stack and should be popped first when the user chooses undo. This matches the way undo reverses the latest action before earlier actions.

</details>

---

### Question 5 [4 marks]

Explain why a queue is suitable for printer jobs.

<details>
<summary>Mark Scheme Style Answer</summary>

A queue is suitable because it follows FIFO. The first print job submitted should normally be printed first, and later jobs wait behind it. This gives a fair order based on arrival time.

</details>

---

### Question 6 [5 marks]

Trace the stack operations:

```text
push(1)
push(2)
pop()
push(3)
peek()
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Operation | Stack | Return |
|---|---|---|
| push(1) | [1] |  |
| push(2) | [1, 2] |  |
| pop() | [1] | 2 |
| push(3) | [1, 3] |  |
| peek() | [1, 3] | 3 |

Final stack:

```text
[1, 3]
```

</details>

---

### Question 7 [5 marks]

Trace the queue operations:

```text
enqueue(1)
enqueue(2)
dequeue()
enqueue(3)
front()
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Operation | Queue | Return |
|---|---|---|
| enqueue(1) | [1] |  |
| enqueue(2) | [1, 2] |  |
| dequeue() | [2] | 1 |
| enqueue(3) | [2, 3] |  |
| front() | [2, 3] | 2 |

Final queue:

```text
[2, 3]
```

</details>

---

### Question 8 [4 marks]

Explain underflow and overflow in stacks or queues.

<details>
<summary>Mark Scheme Style Answer</summary>

Underflow occurs when trying to remove an item from an empty stack or queue, such as popping an empty stack. Overflow occurs when trying to add an item to a full fixed-size stack or queue, such as pushing to a full stack.

</details>

---

## 36. Guided Practice

### Practice 1

Which rule does a stack follow?

<details>
<summary>Suggested Answer</summary>

LIFO: Last In, First Out.

</details>

---

### Practice 2

Which rule does a queue follow?

<details>
<summary>Suggested Answer</summary>

FIFO: First In, First Out.

</details>

---

### Practice 3

What operation adds an item to a stack?

<details>
<summary>Suggested Answer</summary>

`push`

</details>

---

### Practice 4

What operation removes an item from a queue?

<details>
<summary>Suggested Answer</summary>

`dequeue`

</details>

---

### Practice 5

What is returned?

```text
push("A")
push("B")
pop()
```

<details>
<summary>Suggested Answer</summary>

`B`

</details>

---

### Practice 6

What is returned?

```text
enqueue("A")
enqueue("B")
dequeue()
```

<details>
<summary>Suggested Answer</summary>

`A`

</details>

---

## 37. Independent Practice

### Question 1

Define stack.

### Question 2

Define queue.

### Question 3

Explain LIFO using a real-world example.

### Question 4

Explain FIFO using a real-world example.

### Question 5

Trace five stack operations of your own.

### Question 6

Trace five queue operations of your own.

### Question 7

Explain why a stack is used in recursion.

### Question 8

Explain why a queue is used in a printer system.

### Question 9

Compare underflow and overflow.

### Question 10

Choose stack or queue for each scenario:

```text
browser back button
customer support line
undo feature
network packet buffer
function call tracking
```

---

## 38. Practice task
### Activity 1: Human Stack

Students hold cards and stand as a stack.

Use these stack operations:

```text
push A
push B
push C
pop
peek
```

Students physically add/remove from the top.

---

### Activity 2: Human Queue

Students stand in a line.

Use these queue operations:

```text
enqueue A
enqueue B
enqueue C
dequeue
front
```

Students enter at the back and leave from the front.

---

### Activity 3: Scenario Sorting

Give students scenario cards:

```text
undo
printer jobs
call stack
customer queue
browser back
help desk tickets
```

Students sort them into:

```text
stack
queue
priority queue
```

Then explain why.

---

## 39. Independent practice
### Independent practice part A

Explain stacks and queues in 8-10 sentences using your own examples.

### Independent practice part B

Trace these stack operations:

```text
push("red")
push("blue")
push("green")
pop()
push("yellow")
peek()
pop()
```

### Independent practice part C

Trace these queue operations:

```text
enqueue("red")
enqueue("blue")
enqueue("green")
dequeue()
enqueue("yellow")
front()
dequeue()
```

### Independent practice part D

Write short answers:

```text
1. Why is a stack suitable for undo?
2. Why is a queue suitable for printer jobs?
3. What is underflow?
4. What is overflow?
5. How is recursion connected to stacks?
```

### Independent practice part E

Correct these misconceptions:

```text
A stack removes the oldest item first.
A queue removes the newest item first.
Peek removes an item.
Pop adds an item to a stack.
Dequeue adds an item to a queue.
Underflow means adding too many items.
```

---

## 40. One-page Revision Summary

| Point | Summary |
|---|---|
| Stack | LIFO structure |
| Queue | FIFO structure |
| LIFO | Last In, First Out |
| FIFO | First In, First Out |
| Push | add to top of stack |
| Pop | remove top of stack |
| Peek / Top | view top without removing |
| Enqueue | add to rear of queue |
| Dequeue | remove front of queue |
| Front | view front without removing |
| Underflow | remove from empty structure |
| Overflow | add to full fixed-size structure |
| Stack use | undo, browser back, recursion, brackets |
| Queue use | printer jobs, customer line, tasks |
| Call stack | stores active function calls |
| Priority queue | removes by priority |
| Exam phrase | stack = most recent first; queue = earliest first |

