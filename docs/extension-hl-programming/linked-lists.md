# Linked Lists

::: warning Extension / enrichment content
This page is for extension learning or HL-related enrichment. It is not a required SL core topic unless your teacher tells you to study it.
:::

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define a linked list
- explain what a node is
- explain the role of data and reference/pointer fields
- explain the meaning of head and null
- distinguish linked lists from arrays
- trace simple linked list operations
- describe traversal through a linked list
- explain insertion at the head, middle, and end
- explain deletion from a linked list
- identify advantages and limitations of linked lists
- explain why linked lists are dynamic structures
- connect linked lists to stacks, queues, and dynamic collections
- answer exam-style questions about linked lists using mark scheme vocabulary

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | HL Programming Extension |
| Topic | Linked Lists |
| Main skill | Understanding dynamic node-based data structures |
| Connected topics | Arrays, ArrayList, stacks, queues, recursion, OOP, references |
| Practical focus | Nodes, links, traversal, insertion, deletion |
| Exam relevance | Definitions, comparisons, diagrams, tracing, scenario choice |

::: tip Learning Focus
A linked list stores data in nodes. Each node stores data and a reference to the next node.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Linked list | 链表 | Dynamic data structure made of nodes connected by references |
| Node | 节点 | Structure containing data and one or more references |
| Data field | 数据域 | Part of a node storing the value |
| Reference / pointer | 引用 / 指针 | Part of a node storing the address/reference of another node |
| Head | 头节点引用 | Reference to the first node in the linked list |
| Tail | 尾节点 | Last node in the list |
| Null | 空引用 | Indicates no next node |
| Traverse | 遍历 | Visit nodes one by one by following references |
| Insert | 插入 | Add a new node into the list |
| Delete | 删除 | Remove a node from the list |
| Dynamic structure | 动态结构 | Structure that can grow or shrink during execution |
| Singly linked list | 单向链表 | Each node refers to the next node only |
| Doubly linked list | 双向链表 | Each node refers to both previous and next nodes |
| Circular linked list | 循环链表 | Last node refers back to first node |
| Pointer update | 指针更新 | Changing references so nodes connect correctly |
| Sequential access | 顺序访问 | Items are accessed by following nodes in order |
| Direct access | 直接访问 | Accessing an item immediately by index, as in arrays |
| Memory overhead | 内存额外开销 | Extra memory used to store references |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Linked list（链表）是一种由 node 连接起来的数据结构。

每个 node 通常包含：

```text
data = 这个节点存的值
next = 指向下一个节点的 reference / pointer
```

例如：

```text
head → [A | next] → [B | next] → [C | null]
```

这里：

```text
head 指向第一个 node
A 的 next 指向 B
B 的 next 指向 C
C 的 next 是 null，表示没有下一个
```

linked list 和 array 最大区别：

```text
array 可以直接用 index 访问
linked list 需要从 head 开始一个一个走
```

比如想访问第三个 node：

```text
不能直接 linkedList[2]
要从 head 开始：
A → B → C
```

linked list 的优点是：

```text
可以动态增长和缩小
插入/删除节点时不一定需要移动大量元素
不需要连续内存空间
```

缺点是：

```text
不能快速按 index 访问
需要额外 memory 存 reference
操作 pointer 容易出错
```

简单记忆：

```text
linked list = nodes connected by references
```

</template>

<template #en>

### English Explanation

A linked list is a data structure made of connected nodes.

Each node usually contains:

```text
data = value stored in the node
next = reference/pointer to the next node
```

Example:

```text
head → [A | next] → [B | next] → [C | null]
```

Here:

```text
head refers to the first node
A's next refers to B
B's next refers to C
C's next is null, meaning there is no next node
```

The main difference between a linked list and an array:

```text
an array can be accessed directly by index
a linked list must be followed node by node from the head
```

To access the third node:

```text
you cannot directly use linkedList[2]
you must start from head:
A → B → C
```

Advantages of linked lists:

```text
can grow and shrink dynamically
insertion/deletion may not require shifting many elements
does not require contiguous memory
```

Limitations:

```text
no fast direct index access
extra memory is needed for references
pointer/reference updates can be error-prone
```

Simple memory:

```text
linked list = nodes connected by references
```

</template>
</LangBlock>

---

## 5. What Is a Linked List?

A linked list is a dynamic data structure made of nodes.

### Simple Definition

```text
A linked list is a data structure where each node stores data and a reference to the next node.
```

### Basic Diagram

```text
head → [data | next] → [data | next] → [data | null]
```

### Mark Scheme Phrase

```text
A linked list consists of nodes where each node stores data and a reference to the next node.
```

---

## 6. What Is a Node?

A node is one item in a linked list.

### Node Parts

```text
data
next reference
```

### Example Node

```text
[A | next]
```

This node stores:

```text
data = A
next = reference to another node
```

### Last Node

The final node points to `null`.

```text
[C | null]
```

This means the list has ended.

---

## 7. Head and Null

### Head

The `head` is a reference to the first node.

```text
head → [A | next] → [B | next] → [C | null]
```

If `head` is lost, the list cannot be accessed.

### Null

`null` means there is no node.

The last node has:

```text
next = null
```

An empty linked list may have:

```text
head = null
```

---

## 8. Traversing a Linked List

Traversal means visiting each node one by one.

### Pseudocode

```text
current ← head

WHILE current ≠ null
    OUTPUT current.data
    current ← current.next
ENDWHILE
```

### Explanation

```text
start at head
process current node
move to next node
stop when current becomes null
```

### Mark Scheme Phrase

```text
A linked list is traversed by starting at the head and repeatedly following each node's next reference until null is reached.
```

---

## 9. Trace Traversal Example

Linked list:

```text
head → [10] → [20] → [30] → null
```

Algorithm:

```text
current ← head

WHILE current ≠ null
    OUTPUT current.data
    current ← current.next
ENDWHILE
```

Trace:

| Step | current.data | Output | Next current |
|---:|---:|---:|---|
| 1 | 10 | 10 | node with 20 |
| 2 | 20 | 20 | node with 30 |
| 3 | 30 | 30 | null |
| Stop | null |  |  |

Final output:

```text
10
20
30
```

---

## 10. Linked List vs Array

| Feature | Array | Linked List |
|---|---|---|
| Structure | contiguous indexed elements | nodes connected by references |
| Size | often fixed | dynamic |
| Access | direct by index | sequential from head |
| Insert/delete middle | may require shifting elements | update references |
| Memory | stores values only | stores values plus references |
| Cache performance | often good | may be worse due to scattered nodes |
| Suitable when | frequent indexed access | frequent insertion/deletion |

### Exam Phrase

```text
An array allows direct indexed access, while a linked list requires traversal from the head to reach a node.
```

---

## 11. Why Use a Linked List?

Linked lists are useful when the number of items changes and insertion/deletion is common.

### Advantages

```text
dynamic size
can grow and shrink during execution
insertion/deletion can be efficient if node position is known
does not require contiguous memory
useful for implementing stacks and queues
```

### Example Scenarios

```text
playlist where songs can be inserted/removed
task list where items change often
undo/redo history
queue implementation
memory management structures
```

---

## 12. Limitations of Linked Lists

Linked lists also have limitations.

### Limitations

```text
no direct access by index
must traverse from head
extra memory needed for references
more complex than arrays
reference errors can break the list
search may be slow
```

### Example

To access the 100th node, the program may need to follow 99 links first.

---

## 13. Inserting at the Head

To insert a new node at the start:

Current list:

```text
head → [B] → [C] → null
```

New node:

```text
[A]
```

Steps:

```text
newNode.next ← head
head ← newNode
```

Result:

```text
head → [A] → [B] → [C] → null
```

### Why This Order?

If `head ← newNode` happens first, the original list may be lost.

---

## 14. Inserting at the End

Current list:

```text
head → [A] → [B] → null
```

New node:

```text
[C | null]
```

Steps:

```text
current ← head
WHILE current.next ≠ null
    current ← current.next
ENDWHILE
current.next ← newNode
```

Result:

```text
head → [A] → [B] → [C] → null
```

### Key Idea

Find the last node, then make it point to the new node.

---

## 15. Inserting in the Middle

Current list:

```text
head → [A] → [C] → null
```

Insert `B` after `A`.

Steps:

```text
newNode.next ← current.next
current.next ← newNode
```

Result:

```text
head → [A] → [B] → [C] → null
```

### Important Order

Do this first:

```text
newNode.next ← current.next
```

Then:

```text
current.next ← newNode
```

Otherwise the link to `C` may be lost.

---

## 16. Deleting the Head

Current list:

```text
head → [A] → [B] → [C] → null
```

Delete `A`.

Step:

```text
head ← head.next
```

Result:

```text
head → [B] → [C] → null
```

### Important

If the list is empty, check first:

```text
IF head = null THEN
    OUTPUT "List is empty"
ENDIF
```

---

## 17. Deleting from the Middle

Current list:

```text
head → [A] → [B] → [C] → null
```

Delete `B`.

If `current` points to `A`, then:

```text
current.next ← current.next.next
```

Result:

```text
head → [A] → [C] → null
```

### Key Idea

The previous node skips over the deleted node.

---

## 18. Searching a Linked List

### Pseudocode

```text
found ← false
current ← head

WHILE current ≠ null AND found = false
    IF current.data = target THEN
        found ← true
    ELSE
        current ← current.next
    ENDIF
ENDWHILE

OUTPUT found
```

### Explanation

```text
start at head
compare current node data with target
move to next node if not found
stop when found or null reached
```

---

## 19. Counting Nodes

### Pseudocode

```text
count ← 0
current ← head

WHILE current ≠ null
    count ← count + 1
    current ← current.next
ENDWHILE

OUTPUT count
```

### Key Idea

Each node visited increases the counter by one.

---

## 20. Calculating Total

For numeric data:

```text
total ← 0
current ← head

WHILE current ≠ null
    total ← total + current.data
    current ← current.next
ENDWHILE

OUTPUT total
```

### Key Idea

This is the linked-list version of array traversal.

---

## 21. Singly Linked List

A singly linked list has nodes that point only to the next node.

```text
head → [A | next] → [B | next] → [C | null]
```

### Advantage

```text
simple structure
less memory than doubly linked list
```

### Limitation

```text
cannot move backward directly
```

---

## 22. Doubly Linked List

A doubly linked list has nodes with references to both previous and next nodes.

```text
null ← [A] ⇄ [B] ⇄ [C] → null
```

Each node stores:

```text
data
previous reference
next reference
```

### Advantage

```text
can move forward and backward
easier deletion if node reference is known
```

### Limitation

```text
uses more memory
more references must be updated
```

---

## 23. Circular Linked List

In a circular linked list, the last node points back to the first node.

```text
[A] → [B] → [C]
 ↑           ↓
 └───────────┘
```

### Possible Uses

```text
round-robin scheduling
turn-based games
circular playlists
```

### Warning

Traversal must have a stopping condition, or it may loop forever.

---

## 24. Linked Lists and Stacks

A stack can be implemented using a linked list.

### Push at Head

```text
newNode.next ← head
head ← newNode
```

### Pop from Head

```text
item ← head.data
head ← head.next
RETURN item
```

### Why Head?

Adding/removing at the head is efficient because no traversal is needed.

---

## 25. Linked Lists and Queues

A queue can be implemented using a linked list.

### Useful References

```text
front
rear
```

### Enqueue

```text
rear.next ← newNode
rear ← newNode
```

### Dequeue

```text
item ← front.data
front ← front.next
```

### Key Idea

Using both `front` and `rear` makes enqueue and dequeue efficient.

---

## 26. Common Pointer / Reference Errors

| Error | Why It Happens | Fix |
|---|---|---|
| losing head | head overwritten incorrectly | keep reference to first node |
| losing rest of list | update order wrong during insertion | set newNode.next before changing current.next |
| null reference error | using current.data when current is null | check current ≠ null first |
| infinite loop | current never moves to current.next | update current each loop |
| skipping nodes | wrong pointer update | trace links carefully |
| deleting wrong node | previous/current confused | track previous node |
| circular list never stops | no stopping condition | stop when back to head or count reached |
| tail not updated | deleting/inserting at end | update tail/rear reference |
| memory leak concept | removed node still referenced unexpectedly | clear unused references if needed |
| off-by-one traversal | stopping too early/late | trace head, middle, tail cases |

---

## 27. Choosing Array, ArrayList, or Linked List

| Scenario | Suitable Structure | Reason |
|---|---|---|
| exactly 12 monthly values | array | fixed size and direct index access |
| shopping cart | ArrayList | easy add/remove and indexed access |
| frequent insert/delete at front | linked list | head update can be efficient |
| need fast access by index | array / ArrayList | direct indexed access |
| queue with many additions/removals | linked list | front/rear references support efficient operations |
| small simple list | array / ArrayList | simpler implementation |
| memory is limited | array may be better | linked list stores extra references |

---

## 28. Worked Example: Insert at Head

Before:

```text
head → [B] → [C] → null
```

Insert `A`.

Steps:

```text
newNode.data ← "A"
newNode.next ← head
head ← newNode
```

After:

```text
head → [A] → [B] → [C] → null
```

### Mark Scheme Point

Insertion at the head changes the new node's next reference to the old head, then updates head to the new node.

---

## 29. Worked Example: Delete Middle Node

Before:

```text
head → [A] → [B] → [C] → null
```

Delete `B`.

If `previous` points to `A`:

```text
previous.next ← previous.next.next
```

After:

```text
head → [A] → [C] → null
```

### Mark Scheme Point

The previous node's next reference is changed to skip over the deleted node.

---

## 30. Worked Example: Trace a Search

List:

```text
head → [4] → [7] → [9] → null
```

Target:

```text
7
```

Algorithm:

```text
found ← false
current ← head

WHILE current ≠ null AND found = false
    IF current.data = target THEN
        found ← true
    ELSE
        current ← current.next
    ENDIF
ENDWHILE

OUTPUT found
```

Trace:

| Step | current.data | target | found |
|---:|---:|---:|---|
| Start | 4 | 7 | false |
| 1 | 4 | 7 | false |
| 2 | 7 | 7 | true |

Output:

```text
true
```

---

## 31. Scenario Answer Bank

### If Asked: “Define linked list”

```text
A linked list is a dynamic data structure made of nodes, where each node stores data and a reference to the next node.
```

### If Asked: “What is a node?”

```text
A node is an element of a linked list that stores data and one or more references to other nodes.
```

### If Asked: “What is head?”

```text
The head is a reference to the first node in a linked list.
```

### If Asked: “How is a linked list traversed?”

```text
Start at the head and repeatedly follow each node's next reference until null is reached.
```

### If Asked: “Compare linked list and array”

```text
An array allows direct access using an index, while a linked list must be traversed from the head. A linked list can grow and shrink dynamically, while arrays are often fixed size.
```

### If Asked: “Why use linked list?”

```text
A linked list is suitable when frequent insertions or deletions are needed and the number of items changes during execution.
```

---

## 32. Common Misconceptions

| Misconception | Correction |
|---|---|
| A linked list is the same as an array | linked list uses nodes and references, array uses indexed positions |
| Linked lists allow instant index access | linked lists need traversal from head |
| The head stores all data | head is a reference to the first node |
| Null means zero | null means no reference / no next node |
| Deleting always removes data physically immediately | deletion usually means changing references so the node is no longer in the list |
| Linked lists are always faster | depends on operation; indexed access is slower |
| Inserting is always easy | must update references correctly |
| A linked list cannot implement a queue | linked lists can implement stacks and queues |
| Circular list stops at null | circular lists do not end at null |
| Doubly linked lists use less memory | they use more references |

---

## 33. Exam-style Questions

### Question 1 [2 marks]

Define linked list.

<details>
<summary>Mark Scheme Style Answer</summary>

A linked list is a dynamic data structure made of nodes, where each node stores data and a reference to the next node.

</details>

---

### Question 2 [2 marks]

Define node.

<details>
<summary>Mark Scheme Style Answer</summary>

A node is an element in a linked list that stores data and a reference to another node, such as the next node.

</details>

---

### Question 3 [4 marks]

Compare an array and a linked list.

<details>
<summary>Mark Scheme Style Answer</summary>

An array stores elements in indexed positions and allows direct access by index. A linked list stores data in nodes connected by references and must be traversed from the head to reach a node. Arrays are often fixed size, while linked lists can grow and shrink dynamically. Linked lists need extra memory for references.

</details>

---

### Question 4 [4 marks]

Explain how a linked list is traversed.

<details>
<summary>Mark Scheme Style Answer</summary>

Traversal starts with a current reference pointing to the head. The algorithm processes the current node, then moves current to current.next. This repeats until current becomes null, meaning the end of the list has been reached.

</details>

---

### Question 5 [4 marks]

Explain how to insert a node at the head of a linked list.

<details>
<summary>Mark Scheme Style Answer</summary>

Create the new node and set its next reference to the current head. Then update head to refer to the new node. This makes the new node the first node while preserving the rest of the list.

</details>

---

### Question 6 [4 marks]

Explain one advantage and one limitation of linked lists.

<details>
<summary>Mark Scheme Style Answer</summary>

One advantage is that linked lists can grow and shrink dynamically, so they are suitable when the number of items changes. One limitation is that they do not allow direct index access, so the list must be traversed from the head to find a particular item.

</details>

---

### Question 7 [6 marks]

A music playlist allows songs to be inserted and removed often. Explain why a linked list could be suitable.

<details>
<summary>Mark Scheme Style Answer</summary>

A linked list could be suitable because the playlist size changes as songs are added and removed. Inserting or deleting a song can be done by updating references between nodes rather than shifting many array elements. A playlist also naturally follows an order from one song to the next, which matches the node-to-node structure of a linked list.

</details>

---

## 34. Guided Practice

### Practice 1

What does `head` refer to?

<details>
<summary>Suggested Answer</summary>

The first node in the linked list.

</details>

---

### Practice 2

What does `null` mean in the last node?

<details>
<summary>Suggested Answer</summary>

There is no next node; the list has ended.

</details>

---

### Practice 3

What are the two main parts of a singly linked list node?

<details>
<summary>Suggested Answer</summary>

Data and next reference.

</details>

---

### Practice 4

Why is direct indexing not normally possible in a linked list?

<details>
<summary>Suggested Answer</summary>

Because nodes are connected by references and not stored as indexed positions, so the list must be traversed from the head.

</details>

---

### Practice 5

What must happen to insert a node at the head?

<details>
<summary>Suggested Answer</summary>

Set the new node's next reference to the current head, then update head to the new node.

</details>

---

## 35. Independent Practice

### Question 1

Define linked list.

### Question 2

Define node.

### Question 3

Explain the role of the head reference.

### Question 4

Draw a linked list with three nodes storing `A`, `B`, and `C`.

### Question 5

Write pseudocode to traverse a linked list and output all data values.

### Question 6

Write pseudocode to count the nodes in a linked list.

### Question 7

Explain how to insert a node at the start of a linked list.

### Question 8

Explain how to delete a node from the middle of a linked list.

### Question 9

Compare a singly linked list and a doubly linked list.

### Question 10

Compare linked lists and arrays.

---

## 36. Practice task
### Activity 1: Human Linked List

Students each hold:

```text
data card
next reference card
```

The first student is `head`.  
Students point to the next student to model references.

Operations:

```text
insert at head
insert in middle
delete a node
traverse the list
```

---

### Activity 2: Broken Links

Give students faulty diagrams:

```text
node skipped
head lost
last node not null
cycle accidentally created
```

Students identify the error and repair the links.

---

### Activity 3: Structure Choice Debate

Students choose between:

```text
array
ArrayList
linked list
stack
queue
```

for scenarios:

```text
playlist
monthly sales
shopping cart
printer jobs
undo history
```

They must justify the choice using mark scheme language.

---

## 37. Independent practice
### Independent practice part A

Explain linked lists in 8-10 sentences using a playlist as an example.

### Independent practice part B

Draw diagrams for:

```text
1. empty linked list
2. linked list with one node
3. linked list with three nodes
4. insert new node at head
5. delete middle node
```

### Independent practice part C

Write pseudocode for:

```text
1. traverse a linked list
2. search for a target value
3. count all nodes
4. calculate total of numeric nodes
5. insert at head
```

### Independent practice part D

Correct these misconceptions:

```text
A linked list is accessed by index just like an array.
The head stores every value in the list.
The last node points to the first node in every linked list.
Deleting a node never needs pointer changes.
Linked lists always use less memory than arrays.
```

---

## 38. One-page Revision Summary

| Point | Summary |
|---|---|
| Linked list | dynamic structure made of nodes |
| Node | stores data and reference |
| Data field | value stored in node |
| Next reference | points to next node |
| Head | first node reference |
| Null | no next node / end of list |
| Traversal | follow next references from head |
| Insert at head | newNode.next = head, then head = newNode |
| Delete head | head = head.next |
| Delete middle | previous.next = previous.next.next |
| Singly linked | next reference only |
| Doubly linked | previous and next references |
| Circular linked | last node links back to first |
| Array comparison | array has direct indexing |
| Linked list advantage | dynamic size and flexible insertion/deletion |
| Linked list limitation | slower access by position and extra references |
| Exam phrase | linked lists store nodes connected by references rather than contiguous indexed elements |

