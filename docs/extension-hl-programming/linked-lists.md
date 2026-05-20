# Linked Lists

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define linked list and node
- explain data and next reference
- compare arrays and linked lists
- trace insertion and deletion conceptually
- understand simple Java node structure
- explain advantages and disadvantages of linked lists

---

## 2. Course Position

| Item | Detail |
|---|---|
| Section | HL Programming Extension / School Extension |
| Main link | B2 Programming + B3 OOP |
| Language focus | IB pseudocode + Java |
| Difficulty | Extension beyond SL |
| Main skill | Understanding node-based dynamic structures |

::: warning Extension Note
This section is included because the course plans to give students stronger programming ability beyond the minimum SL requirement. It should be taught after students are comfortable with B2 Programming and B3 OOP basics.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Linked list | 链表 | A data structure made of nodes connected by references |
| Node | 节点 | An element containing data and a reference to another node |
| Head | 头节点 | Reference to the first node in a linked list |
| Next reference | 下一个引用 | Reference pointing to the next node |
| Null | 空引用 | A reference pointing to no object |
| Traversal | 遍历 | Following nodes from head to end |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Linked list（链表）** 由一系列 nodes 组成。每个 node 通常包含两部分：

1. data：保存值
2. next：指向下一个 node 的 reference

链表的第一个 node 由 `head` 指向。最后一个 node 的 next 通常是 `null`。

和 array 不同，linked list 的元素在内存中不需要连续存放。插入和删除节点可以更灵活，但访问某个 index 通常需要从 head 开始一个一个走。

</template>

<template #en>

### English Explanation

A **linked list** is made of nodes. Each node usually contains two parts:

1. data: the stored value
2. next: a reference to the next node

The first node is referenced by `head`. The final node usually has `next = null`.

Unlike arrays, linked list elements do not need to be stored next to each other in memory. Insertion and deletion can be flexible, but accessing a specific index usually requires traversal from the head.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Playlist

```text
head → Song A → Song B → Song C → null
```

Each song node stores the song title and a reference to the next song.

---

## 6. IB Pseudocode Pattern

```text
NODE
    data
    next
END NODE

head = firstNode
current = head

WHILE current != null DO
    OUTPUT current.data
    current = current.next
END WHILE
```

---

## 7. Java Code Example

```java
class Node {
    String data;
    Node next;

    public Node(String data) {
        this.data = data;
        this.next = null;
    }
}

public class LinkedListDemo {
    public static void main(String[] args) {
        Node head = new Node("A");
        head.next = new Node("B");
        head.next.next = new Node("C");

        Node current = head;
        while (current != null) {
            System.out.println(current.data);
            current = current.next;
        }
    }
}
```

---

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `String data` | Value stored in the node |
| `Node next` | Reference to next node |
| `head` | First node |
| `head.next` | Link from first node to second node |
| `current = current.next` | Move to next node during traversal |
| `current != null` | Continue until end of list |

---

## 9. Step-by-step Trace / Process

Traversal:

| Step | current node | output | next |
|---|---|---|---|
| 1 | A | A | B |
| 2 | B | B | C |
| 3 | C | C | null |
| 4 | null | stop |  |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Thinking linked list uses indexes like array | Access is by following references | Traverse from head |
| Forgetting next reference | Nodes would not be connected | Each node needs link |
| Losing head reference | List becomes inaccessible | Preserve head |
| Not stopping at null | Can cause error | Check `current != null` |
| Saying linked lists are always better | They have trade-offs | Compare access vs insertion/deletion |

---

## 11. Guided Practice

### Practice 1

What does `next` store?

<details><summary>Suggested Answer</summary>

It stores a reference to the next node in the linked list.

</details>

### Practice 2

What does `null` mean at the end of a linked list?

<details><summary>Suggested Answer</summary>

It means there is no next node, so the list has ended.

</details>

---

## 12. Independent Practice

1. Draw a linked list with four nodes.
2. Trace traversal from head to null.
3. Compare linked list and array.
4. Explain why losing the head reference is a problem.

---

## 13. Exam-style / Code-reading Questions

### Question 1 [2 marks]

State what is meant by a node in a linked list.

<details><summary>Mark Scheme Style Answer</summary>

A node is an element in a linked list that stores data and a reference to the next node.

</details>

### Question 2 [4 marks]

Compare an array and a linked list.

<details><summary>Mark Scheme Style Answer</summary>

An array stores elements in indexed positions and allows direct access by index, but its size is usually fixed. A linked list stores nodes connected by references, allowing flexible insertion and deletion, but accessing an element usually requires traversal from the head.

</details>

---

## 14. Classroom Activity

### Activity: Linked List Chain

Students hold cards as nodes. Each student points to the next node. The class inserts and removes nodes by changing who points to whom.

---

## 15. Homework

Create a linked list diagram for a playlist. Then write a short paragraph explaining traversal from head to null.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Linked list | Nodes connected by references |
| Node | Data + next reference |
| Head | First node |
| Null | No next node |
| Traversal | Follow next references |
| Exam phrase | A linked list is traversed by starting at the head and following each next reference until null is reached. |
