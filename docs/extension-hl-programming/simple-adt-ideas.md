# Simple ADT Ideas

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the idea of an abstract data type at a simple level
- identify stacks and queues
- describe basic stack and queue operations
- understand this as conceptual extension content

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Understanding ADT concepts |

## 3. Key Terms

| Term | Meaning |
|---|---|
| ADT | Abstract Data Type |
| Stack | A structure where the last item added is the first removed |
| Queue | A structure where the first item added is the first removed |
| Push | Add an item to a stack |
| Pop | Remove an item from a stack |
| Enqueue | Add an item to a queue |
| Dequeue | Remove an item from a queue |

## 4. Concept Explanation

An abstract data type describes what operations can be performed, without focusing on exactly how it is implemented.

Two common ADTs are stack and queue.

| ADT | Rule | Real-life Example |
|---|---|---|
| Stack | Last in, first out | Stack of plates |
| Queue | First in, first out | Queue at a cafeteria |

## 5. Step-by-step Example

Stack example:

| Operation | Stack |
|---|---|
| push A | A |
| push B | A, B |
| pop | A |

The last item added, B, is removed first.

## 6. Visual Structure

::: info ADT Rules
Stack → last in, first out.  
Queue → first in, first out.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Confusing stack and queue | They remove items in different orders |
| Saying ADT is a specific programming language feature only | It is a conceptual data structure idea |
| Forgetting operation names | Push/pop and enqueue/dequeue are different |
| Ignoring order of removal | The output sequence becomes wrong |

## 8. Exam-style Question

A system processes print jobs in the order they arrive.

**Identify whether a stack or queue is more suitable and justify your answer.** [2]

## 9. Mark Scheme Style Answer

Award marks for:

- queue
- print jobs should be processed first in, first out

## 10. Quick Check

1. What does ADT stand for?
2. What is the rule for a stack?
3. What is the rule for a queue?
