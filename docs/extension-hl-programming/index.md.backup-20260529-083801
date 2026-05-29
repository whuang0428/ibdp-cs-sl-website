# HL Programming Extension

## 1. Section Overview

This extension section supports students who need stronger programming depth beyond the SL core programming pages.

It focuses on advanced programming ideas that often appear when students move from simple programs to larger, more structured solutions:

```text
advanced arrays and 2D arrays
dynamic lists / ArrayList
recursion
stacks and queues
linked lists
searching and sorting extension
inheritance and polymorphism
exception handling and robust programs
```

The goal is not only to memorize definitions.  
Students should learn how each structure or technique works, when it is useful, and how to explain it in clear exam-style language.

---

## 2. Learning Goals

By the end of this extension section, students should be able to:

- use one-dimensional and two-dimensional arrays to store and process data
- explain why dynamic lists are useful when the number of items changes
- distinguish arrays and dynamic lists
- understand recursion using base case and recursive case
- trace simple recursive algorithms
- explain stack operations such as push and pop
- explain queue operations such as enqueue and dequeue
- compare stacks and queues
- explain the idea of linked lists using nodes and references
- compare arrays and linked lists
- trace and explain common searching and sorting algorithms
- explain inheritance and polymorphism in object-oriented programming
- explain how exception handling improves robustness
- write and explain pseudocode or Java-style examples
- answer extension-style programming questions using mark scheme vocabulary

---

## 3. Topic Index

| Order | Page | Main Focus | Link |
|---:|---|---|---|
| 1 | Overview | roadmap for HL programming extension | [Open](./) |
| 2 | Advanced Arrays and 2D Arrays | arrays, nested loops, tables, grids, matrices | [Open](./advanced-arrays-2d-arrays) |
| 3 | ArrayList and Dynamic Lists | flexible-size lists and common operations | [Open](./arraylist-dynamic-lists) |
| 4 | Recursion | base case, recursive case, tracing recursive calls | [Open](./recursion) |
| 5 | Stacks and Queues | LIFO, FIFO, push/pop, enqueue/dequeue | [Open](./stacks-queues) |
| 6 | Linked Lists | nodes, data, references, insertion, deletion | [Open](./linked-lists) |
| 7 | Searching and Sorting Extension | linear/binary search, bubble/insertion/selection ideas | [Open](./searching-sorting-extension) |
| 8 | Inheritance and Polymorphism | superclass, subclass, overriding, dynamic behaviour | [Open](./inheritance-polymorphism) |
| 9 | Exception Handling and Robust Programs | try/catch, validation, defensive programming | [Open](./exception-handling-robust-programs) |

::: warning Folder Name Note
The real folder name is `docs/extension-hl-programming`, matching the sidebar link `/extension-hl-programming/`.
:::

---

## 4. Concept Map

```text
HL Programming Extension
├── Advanced Data Structures
│   ├── arrays
│   ├── 2D arrays
│   ├── ArrayList / dynamic lists
│   ├── stacks
│   ├── queues
│   └── linked lists
├── Algorithmic Techniques
│   ├── nested loops
│   ├── recursion
│   ├── searching
│   ├── sorting
│   └── tracing
├── Object-Oriented Extension
│   ├── inheritance
│   ├── superclass / subclass
│   ├── method overriding
│   ├── polymorphism
│   └── reusable design
└── Robust Programming
    ├── validation
    ├── exception handling
    ├── try / catch
    ├── error messages
    └── program reliability
```

---

## 5. Bilingual Section Explanation

<LangBlock>
<template #cn>

### 中文说明

HL Programming Extension 这一部分主要是帮助学生从“会写简单程序”进入“能设计更复杂程序”。

SL core programming 里通常重点是：

```text
variables
selection
loops
arrays
methods
basic OOP
testing
```

而 extension 里会更强调：

```text
数据结构怎么选
算法怎么追踪
程序怎么变得更可靠
OOP 怎么处理更复杂的关系
```

比如：

```text
array 固定长度，适合大小已知的数据
ArrayList 动态长度，适合数量会变化的数据
stack 是 LIFO，最后进入的最先出来
queue 是 FIFO，最先进入的最先出来
recursion 必须有 base case，否则可能无限递归
linked list 通过 node 和 reference 连接数据
exception handling 可以防止程序因为错误输入直接崩溃
```

学习这一部分时，不要只背定义。  
更重要的是能解释：

```text
它是什么
它怎么工作
它适合什么场景
它和另一个结构有什么区别
它有什么优点和限制
```

</template>

<template #en>

### English Explanation

The HL Programming Extension helps students move from writing simple programs to designing more complex programs.

SL core programming usually focuses on:

```text
variables
selection
loops
arrays
methods
basic OOP
testing
```

This extension focuses more on:

```text
choosing suitable data structures
tracing algorithms carefully
making programs more robust
using OOP for more complex relationships
```

Examples:

```text
an array has fixed size and suits data where size is known
an ArrayList has dynamic size and suits data where the number of items changes
a stack is LIFO, so the last item added is removed first
a queue is FIFO, so the first item added is removed first
recursion must have a base case or it may recurse forever
a linked list connects data using nodes and references
exception handling can prevent a program from crashing due to invalid input
```

Do not only memorize definitions.  
Students should be able to explain:

```text
what it is
how it works
when it is suitable
how it differs from another structure
its advantages and limitations
```

</template>
</LangBlock>

---

## 6. Key Vocabulary

| Term | Meaning |
|---|---|
| Array | fixed-size indexed data structure storing multiple values |
| 2D array | array with rows and columns |
| Index | position of an element in an array/list |
| Nested loop | loop inside another loop |
| ArrayList | dynamic list that can grow or shrink while the program runs |
| Dynamic list | list where the number of elements can change |
| Recursion | when a method/function calls itself |
| Base case | condition that stops recursion |
| Recursive case | part where the method calls itself with a smaller/simpler problem |
| Stack | LIFO data structure |
| LIFO | last in, first out |
| Push | add item to top of stack |
| Pop | remove item from top of stack |
| Queue | FIFO data structure |
| FIFO | first in, first out |
| Enqueue | add item to back of queue |
| Dequeue | remove item from front of queue |
| Linked list | data structure made of nodes connected by references |
| Node | structure containing data and a reference to the next node |
| Head | first node in a linked list |
| Inheritance | subclass receives attributes/methods from superclass |
| Polymorphism | same method call can behave differently for different object types |
| Override | subclass provides its own version of inherited method |
| Exception | error/event that interrupts normal program flow |
| Exception handling | code that catches and responds to errors |
| Robustness | ability of a program to handle unexpected input or errors |

---

## 7. Advanced Arrays and 2D Arrays

Arrays are useful when data items have a fixed size and the same type.

### One-dimensional Array

```text
scores = [72, 85, 91, 64]
```

Typical operations:

```text
access element by index
update element
loop through all values
find total / average / maximum / minimum
search for a value
```

### Two-dimensional Array

A 2D array stores data in rows and columns.

Example:

```text
seats[row][column]
grid[y][x]
marks[student][subject]
```

### Typical Exam Skill

Students may need to use nested loops:

```text
FOR row ← 0 TO rows - 1
    FOR col ← 0 TO cols - 1
        OUTPUT grid[row][col]
    ENDFOR
ENDFOR
```

### Mark Scheme Phrase

```text
A 2D array stores data in rows and columns, and nested loops can be used to process every element.
```

---

## 8. ArrayList and Dynamic Lists

An ArrayList or dynamic list is useful when the number of items is not known in advance.

### Why Useful?

```text
items can be added
items can be removed
size can change during execution
good for collections where data grows or shrinks
```

### Array vs ArrayList

| Array | ArrayList / Dynamic List |
|---|---|
| fixed size | dynamic size |
| often faster/simple indexing | easier insertion/removal at end |
| size known in advance | size may change |
| may waste space if too large | grows as needed |

### Example Scenario

A shopping cart is better represented by a dynamic list because the user can add and remove products.

### Mark Scheme Phrase

```text
A dynamic list is suitable when the number of elements changes while the program is running.
```

---

## 9. Recursion

Recursion happens when a method or function calls itself.

### Required Parts

```text
base case
recursive case
progress toward base case
```

### Example: Factorial

```text
factorial(1) = 1
factorial(n) = n * factorial(n - 1)
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

### Common Mistake

If there is no base case, recursion may continue forever until the program runs out of memory.

### Mark Scheme Phrase

```text
A recursive algorithm must have a base case to stop the recursion and a recursive case that moves toward the base case.
```

---

## 10. Stacks and Queues

Stacks and queues are abstract data types.

### Stack

A stack follows **LIFO**:

```text
Last In, First Out
```

Common operations:

```text
push = add to top
pop = remove from top
peek = view top item
isEmpty = check if stack is empty
```

Example uses:

```text
undo feature
browser back button
function call stack
checking brackets
```

### Queue

A queue follows **FIFO**:

```text
First In, First Out
```

Common operations:

```text
enqueue = add to back
dequeue = remove from front
peek/front = view front item
isEmpty = check if queue is empty
```

Example uses:

```text
printer queue
customer service queue
task scheduling
network packet processing
```

### Mark Scheme Phrase

```text
A stack removes the most recently added item first, while a queue removes the earliest added item first.
```

---

## 11. Linked Lists

A linked list stores data in nodes.

Each node contains:

```text
data
reference/pointer to next node
```

### Simple Structure

```text
head → node(data, next) → node(data, next) → null
```

### Advantages

```text
can grow and shrink dynamically
insertion/removal can be efficient if node reference is known
does not require contiguous memory
```

### Limitations

```text
no direct indexing like arrays
must traverse from head to find an item
extra memory needed for references
```

### Mark Scheme Phrase

```text
A linked list consists of nodes where each node stores data and a reference to the next node.
```

---

## 12. Searching and Sorting Extension

Students should understand how searching and sorting algorithms work, not only memorize their names.

### Linear Search

```text
checks each item one by one
works on unsorted data
may need to check every item
```

### Binary Search

```text
requires sorted data
checks middle item
discards half of remaining search space each step
more efficient for large sorted lists
```

### Bubble Sort

```text
compares adjacent items
swaps if in wrong order
repeats passes until sorted
```

### Insertion Sort

```text
takes next item
inserts it into correct place among already sorted items
```

### Selection Sort

```text
finds smallest/largest remaining item
places it in correct position
```

### Mark Scheme Phrase

```text
Binary search is more efficient than linear search for large sorted lists because it halves the search space each step.
```

---

## 13. Inheritance and Polymorphism

Inheritance allows a subclass to reuse attributes and methods from a superclass.

### Example

```text
Superclass: Animal
Subclasses: Dog, Cat
```

Shared attributes/methods:

```text
name
age
eat()
sleep()
```

Subclass-specific methods:

```text
bark()
meow()
```

### Polymorphism

Polymorphism means the same method call can behave differently depending on the object type.

Example:

```text
animal.makeSound()
```

could call:

```text
Dog.makeSound() → bark
Cat.makeSound() → meow
```

### Mark Scheme Phrase

```text
Inheritance allows code reuse by letting a subclass inherit attributes and methods from a superclass, while polymorphism allows the same method call to behave differently for different object types.
```

---

## 14. Exception Handling and Robust Programs

Exception handling helps a program deal with errors without crashing.

### Common Errors

```text
invalid input
division by zero
file not found
array index out of range
null reference
network failure
```

### Example Structure

```text
TRY
    INPUT number
    result ← 100 / number
    OUTPUT result
CATCH error
    OUTPUT "Invalid input"
ENDTRY
```

### Robust Program Features

```text
input validation
clear error messages
exception handling
safe file closing
backup or recovery steps
defensive programming
testing with invalid data
```

### Mark Scheme Phrase

```text
Exception handling improves robustness because the program can detect and respond to runtime errors instead of terminating unexpectedly.
```

---

## 15. Choosing a Data Structure

| Scenario | Suitable Structure | Reason |
|---|---|---|
| fixed number of exam marks | array | size known |
| shopping cart | ArrayList/dynamic list | items can be added/removed |
| undo feature | stack | most recent action undone first |
| printer jobs | queue | first job submitted should print first |
| unknown number of connected nodes | linked list | dynamic insertion/removal |
| grid-based game board | 2D array | rows and columns |
| call history where newest first | stack | LIFO behaviour |
| customer service waiting line | queue | FIFO behaviour |

---

## 16. Common Comparisons

### Array vs Linked List

| Array | Linked List |
|---|---|
| direct indexed access | sequential traversal |
| fixed size in many contexts | dynamic size |
| contiguous memory | nodes linked by references |
| easy access by index | easier insertion/removal if node known |

### Stack vs Queue

| Stack | Queue |
|---|---|
| LIFO | FIFO |
| push/pop | enqueue/dequeue |
| undo/call stack | printer/customer queue |

### Iteration vs Recursion

| Iteration | Recursion |
|---|---|
| uses loops | method calls itself |
| often uses less memory | uses call stack |
| good for repeated steps | good for naturally recursive problems |
| stop condition in loop | base case |

### Inheritance vs Composition

| Inheritance | Composition |
|---|---|
| "is-a" relationship | "has-a" relationship |
| subclass extends superclass | object contains other objects |
| code reuse through parent class | code reuse through contained objects |

---

## 17. Exam-style Answer Templates

### Compare Data Structures

```text
[A] is suitable because...
[B] is suitable because...
The main difference is...
In this scenario, [choice] is better because...
```

### Explain Recursion

```text
The algorithm calls itself with a smaller/simpler input. The base case is [condition], which stops recursion. Without this base case, the recursion may not terminate.
```

### Explain Stack / Queue

```text
A [stack/queue] is suitable because it follows [LIFO/FIFO]. This matches the scenario because...
```

### Explain Encapsulation / Robustness

```text
The program should restrict direct access or catch errors so invalid states/runtime errors can be handled safely. This improves reliability because...
```

---

## 18. Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| saying ArrayList is always better than array | not always; arrays are useful when size is fixed | choose by scenario |
| forgetting recursion base case | recursion may never stop | always define stopping condition |
| stack and queue confused | LIFO vs FIFO mixed up | stack = last in first out, queue = first in first out |
| linked list described as normal array | linked list uses nodes and references | no direct indexing |
| binary search used on unsorted data | binary search requires sorted list | sort first or use linear search |
| inheritance described as object copying | subclass inherits structure/behaviour from superclass | class relationship |
| polymorphism described as many classes only | key idea is same method call behaves differently | method overriding |
| exception handling replaces validation | both may be needed | validate expected input, catch runtime errors |
| robust program means no errors ever | impossible | program handles errors safely |
| comparing without scenario | loses application marks | link structure to task |

---

## 19. Mini Diagnostic Check

### Question 1

A program stores exactly 12 monthly sales values. Which data structure is suitable?

<details>
<summary>Suggested Answer</summary>

An array is suitable because the number of values is fixed and known in advance.

</details>

---

### Question 2

A program stores items in a shopping cart where items can be added and removed. Which structure is suitable?

<details>
<summary>Suggested Answer</summary>

An ArrayList or dynamic list is suitable because the number of items can change while the program runs.

</details>

---

### Question 3

What is the base case in recursion?

<details>
<summary>Suggested Answer</summary>

The base case is the condition that stops the recursive calls.

</details>

---

### Question 4

Which structure is suitable for an undo feature?

<details>
<summary>Suggested Answer</summary>

A stack is suitable because the most recent action should be undone first, matching LIFO.

</details>

---

### Question 5

Which structure is suitable for printer jobs?

<details>
<summary>Suggested Answer</summary>

A queue is suitable because the first print job submitted should be printed first, matching FIFO.

</details>

---

### Question 6

Why is exception handling useful?

<details>
<summary>Suggested Answer</summary>

It allows a program to catch and respond to runtime errors instead of crashing unexpectedly.

</details>

---

## 20. 20-mark Extension Practice

### Question 1 [4 marks]

Compare arrays and dynamic lists.

<details>
<summary>Mark Scheme Style Answer</summary>

An array usually has a fixed size and is suitable when the number of elements is known in advance. A dynamic list such as an ArrayList can grow or shrink while the program runs, making it suitable when items need to be added or removed. Both store multiple values under one name and allow elements to be accessed through positions or indexes.

</details>

---

### Question 2 [4 marks]

Explain why a stack is suitable for an undo feature.

<details>
<summary>Mark Scheme Style Answer</summary>

A stack is suitable because it follows LIFO, meaning the last item added is the first item removed. In an undo feature, the most recent action should be undone first, so each action can be pushed onto the stack and popped when the user selects undo.

</details>

---

### Question 3 [4 marks]

Explain why binary search is more efficient than linear search for a large sorted list.

<details>
<summary>Mark Scheme Style Answer</summary>

Binary search compares the target with the middle item and then discards half of the remaining search space each step. Linear search may need to check every item one by one. For a large sorted list, repeatedly halving the search space usually requires far fewer comparisons.

</details>

---

### Question 4 [4 marks]

Explain why recursion needs a base case.

<details>
<summary>Mark Scheme Style Answer</summary>

A base case is needed to stop the recursive calls. Without a base case, or if the recursive call does not move toward the base case, the method may call itself indefinitely and eventually cause a stack overflow or program failure.

</details>

---

### Question 5 [4 marks]

Explain how exception handling can make a program more robust.

<details>
<summary>Mark Scheme Style Answer</summary>

Exception handling allows the program to catch runtime errors and respond safely instead of terminating unexpectedly. For example, if a user enters invalid input or a file is missing, the program can display an error message, request new input, or close resources properly.

</details>

---

## 21. Completion Checklist

Students should be able to:

- [ ] explain arrays and 2D arrays
- [ ] use nested loops with 2D arrays
- [ ] distinguish arrays and ArrayLists
- [ ] explain recursion using base case and recursive case
- [ ] trace a simple recursive method
- [ ] explain stack operations
- [ ] explain queue operations
- [ ] compare stacks and queues
- [ ] explain linked lists using nodes and references
- [ ] compare arrays and linked lists
- [ ] explain linear search and binary search
- [ ] explain bubble/insertion/selection sort at a high level
- [ ] explain inheritance
- [ ] explain polymorphism
- [ ] explain exception handling
- [ ] choose suitable data structures for scenarios
- [ ] write mark scheme style comparison answers

---

## 22. One-page Extension Summary

| Topic | One-line Summary |
|---|---|
| Array | fixed-size indexed collection |
| 2D array | rows and columns |
| ArrayList | dynamic list that can grow/shrink |
| Recursion | method calls itself |
| Base case | stops recursion |
| Stack | LIFO structure |
| Queue | FIFO structure |
| Linked list | nodes connected by references |
| Linear search | checks items one by one |
| Binary search | halves sorted search space |
| Bubble sort | compare adjacent items and swap |
| Inheritance | subclass inherits from superclass |
| Polymorphism | same method call behaves differently |
| Exception handling | catches/responds to runtime errors |
| Robustness | program handles unexpected situations safely |

::: tip Next Step
After this overview page, the next page should be **Advanced Arrays and 2D Arrays**, using the real file name `advanced-arrays-2d-arrays.md`.
:::
