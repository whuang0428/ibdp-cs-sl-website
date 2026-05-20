# Stacks and Queues

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define stack and queue
- explain LIFO and FIFO
- identify push, pop, enqueue, and dequeue
- trace stack and queue operations
- implement simple stack/queue behaviour in Java
- choose suitable ADT for scenarios

---

## 2. Course Position

| Item | Detail |
|---|---|
| Section | HL Programming Extension / School Extension |
| Main link | B2 Programming + B3 OOP |
| Language focus | IB pseudocode + Java |
| Difficulty | Extension beyond SL |
| Main skill | Understanding abstract data types based on order of access |

::: warning Extension Note
This section is included because the course plans to give students stronger programming ability beyond the minimum SL requirement. It should be taught after students are comfortable with B2 Programming and B3 OOP basics.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Stack | 栈 | ADT where last item added is first removed |
| Queue | 队列 | ADT where first item added is first removed |
| LIFO | 后进先出 | Last In, First Out |
| FIFO | 先进先出 | First In, First Out |
| Push | 入栈 | Add item to a stack |
| Pop | 出栈 | Remove item from a stack |
| Enqueue | 入队 | Add item to a queue |
| Dequeue | 出队 | Remove item from a queue |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Stack（栈）** 使用 LIFO：Last In, First Out。最后放进去的元素最先取出。例子：撤销操作、函数调用栈、浏览器返回。

**Queue（队列）** 使用 FIFO：First In, First Out。最先进入的元素最先离开。例子：打印队列、排队买票、客服等待队列。

它们都是 ADT（Abstract Data Type），重点是行为规则，而不是底层如何实现。

</template>

<template #en>

### English Explanation

A **stack** uses LIFO: Last In, First Out. The last item added is the first removed. Examples include undo operations, function call stacks, and browser back behaviour.

A **queue** uses FIFO: First In, First Out. The first item added is the first removed. Examples include print queues, ticket lines, and customer service waiting lists.

They are ADTs, meaning the focus is on behaviour rather than the exact internal implementation.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Print queue

| Operation | Queue |
|---|---|
| enqueue Alice | [Alice] |
| enqueue Ben | [Alice, Ben] |
| dequeue | [Ben] |

Alice is printed first because queue uses FIFO.

---

## 6. IB Pseudocode Pattern

```text
STACK:
PUSH A
PUSH B
POP    // removes B

QUEUE:
ENQUEUE A
ENQUEUE B
DEQUEUE    // removes A
```

---

## 7. Java Code Example

```java
import java.util.Stack;
import java.util.LinkedList;
import java.util.Queue;

public class StackQueueExample {
    public static void main(String[] args) {
        Stack<String> stack = new Stack<String>();
        stack.push("A");
        stack.push("B");
        System.out.println(stack.pop());

        Queue<String> queue = new LinkedList<String>();
        queue.add("A");
        queue.add("B");
        System.out.println(queue.remove());
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `Stack<String>` | Creates a stack of strings |
| `push("A")` | Adds A to top of stack |
| `pop()` | Removes most recent item |
| `Queue<String>` | Creates a queue interface reference |
| `add("A")` | Enqueues A |
| `remove()` | Dequeues oldest item |

---

## 9. Step-by-step Trace / Process

Stack trace:

| Operation | Stack |
|---|---|
| push A | [A] |
| push B | [A, B] |
| pop | [A], output B |

Queue trace:

| Operation | Queue |
|---|---|
| enqueue A | [A] |
| enqueue B | [A, B] |
| dequeue | [B], output A |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Confusing stack and queue | Order of removal becomes wrong | Stack = LIFO, Queue = FIFO |
| Calling push on queue | Different terminology | Use enqueue/add for queue |
| Calling dequeue on stack | Different ADT | Use pop for stack |
| Ignoring empty structure | Removing from empty structure causes error | Check not empty first |
| Focusing only on Java class | ADT behaviour matters more | Explain LIFO/FIFO |

---

## 11. Guided Practice

### Practice 1

Stack: push A, push B, pop. What is removed?

<details><summary>Suggested Answer</summary>

B is removed because stack uses LIFO.

</details>

### Practice 2

Queue: enqueue A, enqueue B, dequeue. What is removed?

<details><summary>Suggested Answer</summary>

A is removed because queue uses FIFO.

</details>

---

## 12. Independent Practice

1. Trace five stack operations.
2. Trace five queue operations.
3. Give two real-life stack examples.
4. Give two real-life queue examples.
5. Explain which ADT is better for a printer queue.

---

## 13. Exam-style / Code-reading Questions

### Question 1 [4 marks]

Compare a stack and a queue.

<details><summary>Mark Scheme Style Answer</summary>

A stack uses LIFO, so the last item added is the first item removed. A queue uses FIFO, so the first item added is the first item removed. Stack operations include push and pop, while queue operations include enqueue and dequeue.

</details>

### Question 2 [3 marks]

Explain why a queue is suitable for print jobs.

<details><summary>Mark Scheme Style Answer</summary>

A queue is suitable because print jobs should usually be processed in the order they arrive. The first job added should be the first job printed, matching FIFO behaviour.

</details>

---

## 14. Classroom Activity

### Activity: Stack and Queue Role-play

Students act as data items. One side forms a stack, the other forms a queue. The class performs operations and observes removal order.

---

## 15. Homework

Create a table showing operations and contents for both a stack and a queue. Include at least six operations for each.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Stack | LIFO |
| Queue | FIFO |
| Push/Pop | Stack operations |
| Enqueue/Dequeue | Queue operations |
| ADT | Defined by behaviour |
| Exam phrase | A queue is suitable because items are processed in the order they arrive. |
