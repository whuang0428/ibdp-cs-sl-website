# ArrayList and Dynamic Lists

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define a dynamic list
- explain how a dynamic list differs from a fixed-size array
- explain why ArrayList is useful in Java-style programming
- add, access, update, search, and remove items in a dynamic list
- process a dynamic list using loops
- explain common ArrayList operations such as `add`, `get`, `set`, `remove`, and `size`
- choose between an array and a dynamic list based on a scenario
- identify common index and boundary errors
- write pseudocode or Java-style examples using dynamic lists
- explain why dynamic lists support flexible program design
- answer exam-style questions about ArrayList and dynamic lists

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | HL Programming Extension |
| Topic | ArrayList and Dynamic Lists |
| Main skill | Storing and processing collections whose size may change |
| Connected topics | Arrays, loops, searching, sorting, methods, OOP, robust programs |
| Practical focus | Add/remove/search/update dynamic collections |
| Exam relevance | Definitions, array vs dynamic list comparison, scenario choice, code tracing |

::: tip Learning Focus
A dynamic list can grow or shrink while a program is running. In Java, an `ArrayList` is a common dynamic list structure.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Dynamic list | 动态列表 | List whose number of elements can change during execution |
| ArrayList | Java 动态数组列表 | Java collection class that stores a dynamic list of objects |
| Array | 数组 | Fixed-size indexed structure storing multiple values |
| Element | 元素 | One item stored in a list |
| Index | 索引 | Position of an element |
| Size | 大小 | Number of elements currently stored |
| Capacity | 容量 | Internal storage space available before resizing |
| Add | 添加 | Insert a new item into the list |
| Get | 获取 | Access an item at an index |
| Set | 设置 / 更新 | Replace an item at an index |
| Remove | 删除 | Delete an item from the list |
| Traverse | 遍历 | Visit each item in the list |
| Search | 搜索 | Check list items to find a target |
| Boundary error | 边界错误 | Accessing an index outside valid range |
| Generic type | 泛型类型 | Type specified inside angle brackets, such as `ArrayList<String>` |
| Wrapper class | 包装类 | Object version of primitive type, such as `Integer` for `int` |
| Import | 导入 | Make a library class available, such as `java.util.ArrayList` |
| List | 列表 | Ordered collection of elements |
| Fixed size | 固定大小 | Size cannot change after creation |
| Mutable | 可变的 | Can be changed after creation |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

ArrayList / dynamic list 的核心是：

```text
list size can change while the program runs
```

普通 array 往往是固定长度：

```java
int[] scores = new int[5];
```

这个 array 一开始就是 5 个位置。  
如果后面学生数量变成 6 个，array 本身不能直接变长。

但是 ArrayList 可以动态添加：

```java
ArrayList<String> names = new ArrayList<String>();
names.add("Ali");
names.add("Maya");
names.add("Chen");
```

现在 list 里有 3 个元素。  
之后还可以继续：

```java
names.add("Lina");
```

ArrayList 适合：

```text
购物车商品
学生报名名单
搜索结果
游戏背包
待办事项
消息列表
```

因为这些场景中 item 数量经常变化。

简单记忆：

```text
array = fixed size
ArrayList = dynamic size
```

</template>

<template #en>

### English Explanation

The key idea of an ArrayList / dynamic list is:

```text
list size can change while the program runs
```

A normal array often has fixed length:

```java
int[] scores = new int[5];
```

This array has 5 positions from the start.  
If the number of students later becomes 6, the array itself cannot directly grow.

An ArrayList can add items dynamically:

```java
ArrayList<String> names = new ArrayList<String>();
names.add("Ali");
names.add("Maya");
names.add("Chen");
```

Now the list has 3 elements.  
Later, we can still add:

```java
names.add("Lina");
```

ArrayList is suitable for:

```text
shopping cart items
student sign-up lists
search results
game inventory
to-do items
message lists
```

because the number of items often changes.

Simple memory:

```text
array = fixed size
ArrayList = dynamic size
```

</template>
</LangBlock>

---

## 5. What Is a Dynamic List?

A dynamic list is a collection where the number of elements can change while the program is running.

### Simple Definition

```text
A dynamic list stores multiple values and can grow or shrink during execution.
```

### Example

A shopping cart starts empty:

```text
cart = []
```

The user adds items:

```text
cart = ["mouse", "keyboard"]
```

Then removes an item:

```text
cart = ["keyboard"]
```

### Mark Scheme Phrase

```text
A dynamic list is suitable when elements need to be added or removed while the program is running.
```

---

## 6. What Is ArrayList?

In Java, `ArrayList` is a class used to create dynamic lists.

### Java Import

```java
import java.util.ArrayList;
```

### Create an ArrayList

```java
ArrayList<String> names = new ArrayList<String>();
```

### Add Items

```java
names.add("Ali");
names.add("Maya");
names.add("Chen");
```

### Key Point

An `ArrayList` stores objects and can change size as items are added or removed.

---

## 7. Array vs ArrayList

| Feature | Array | ArrayList / Dynamic List |
|---|---|---|
| Size | fixed after creation | can grow/shrink |
| Data type | primitives or objects | objects |
| Access | by index | by index |
| Add/remove | less flexible | easier |
| Length/size | `array.length` | `list.size()` |
| Syntax | `scores[index]` | `list.get(index)` |
| Suitable when | number of items known | number of items changes |
| Example | 12 monthly sales values | shopping cart |

### Exam Phrase

```text
An array is suitable when the number of elements is known in advance, while an ArrayList is suitable when items need to be added or removed during execution.
```

---

## 8. Common ArrayList Operations

| Operation | Java-style Example | Meaning |
|---|---|---|
| add | `names.add("Ali")` | add item to end |
| get | `names.get(0)` | access item at index |
| set | `names.set(1, "Maya")` | replace item at index |
| remove by index | `names.remove(0)` | remove item at index |
| remove by value | `names.remove("Ali")` | remove matching item |
| size | `names.size()` | number of items |
| clear | `names.clear()` | remove all items |
| contains | `names.contains("Ali")` | check if item exists |
| isEmpty | `names.isEmpty()` | check if list has no items |

---

## 9. Adding Items

### Java-style Example

```java
ArrayList<String> names = new ArrayList<String>();

names.add("Ali");
names.add("Maya");
names.add("Chen");
```

Result:

```text
["Ali", "Maya", "Chen"]
```

### Add at Specific Index

```java
names.add(1, "Lina");
```

Result:

```text
["Ali", "Lina", "Maya", "Chen"]
```

### Important

Adding at a specific index shifts later elements to the right.

---

## 10. Accessing Items

Use `get(index)`.

```java
String firstName = names.get(0);
```

If:

```text
names = ["Ali", "Maya", "Chen"]
```

Then:

```text
names.get(0) = "Ali"
names.get(1) = "Maya"
names.get(2) = "Chen"
```

### Boundary Error

```java
names.get(3)
```

is invalid if the size is 3.

Valid indexes:

```text
0, 1, 2
```

---

## 11. Updating Items

Use `set(index, newValue)`.

```java
names.set(1, "Lina");
```

Before:

```text
["Ali", "Maya", "Chen"]
```

After:

```text
["Ali", "Lina", "Chen"]
```

### Mark Scheme Phrase

```text
The set operation replaces the value stored at a given index.
```

---

## 12. Removing Items

### Remove by Index

```java
names.remove(1);
```

Before:

```text
["Ali", "Maya", "Chen"]
```

After:

```text
["Ali", "Chen"]
```

### Remove by Value

```java
names.remove("Ali");
```

Before:

```text
["Ali", "Chen"]
```

After:

```text
["Chen"]
```

### Important

Removing an element shifts later elements left and changes indexes.

---

## 13. Getting the Size

Use `size()`.

```java
int numberOfNames = names.size();
```

### Example

```text
names = ["Ali", "Maya", "Chen"]
```

Then:

```text
names.size() = 3
```

### Common Confusion

| Structure | Size Expression |
|---|---|
| array | `array.length` |
| ArrayList | `list.size()` |

---

## 14. Traversing an ArrayList

### Java-style For Loop

```java
for (int index = 0; index < names.size(); index++) {
    System.out.println(names.get(index));
}
```

### Enhanced For Loop

```java
for (String name : names) {
    System.out.println(name);
}
```

### Pseudocode

```text
FOR index ← 0 TO size(names) - 1
    OUTPUT names[index]
ENDFOR
```

### Key Point

Use `size()` as the loop boundary because the list may change size.

---

## 15. Searching an ArrayList

### Java-style Example

```java
boolean found = false;

for (int index = 0; index < names.size(); index++) {
    if (names.get(index).equals(target)) {
        found = true;
    }
}
```

### Pseudocode

```text
found ← false

FOR index ← 0 TO size(names) - 1
    IF names[index] = target THEN
        found ← true
    ENDIF
ENDFOR

OUTPUT found
```

### Better Version with Early Stop

```text
found ← false
index ← 0

WHILE index < size(names) AND found = false
    IF names[index] = target THEN
        found ← true
    ELSE
        index ← index + 1
    ENDIF
ENDWHILE

OUTPUT found
```

---

## 16. Counting Items That Meet a Condition

### Example

Count how many scores are at least 50.

```text
passCount ← 0

FOR index ← 0 TO size(scores) - 1
    IF scores[index] >= 50 THEN
        passCount ← passCount + 1
    ENDIF
ENDFOR

OUTPUT passCount
```

### Java-style Example

```java
int passCount = 0;

for (int index = 0; index < scores.size(); index++) {
    if (scores.get(index) >= 50) {
        passCount++;
    }
}

System.out.println(passCount);
```

---

## 17. Calculating Total and Average

### Pseudocode

```text
total ← 0

FOR index ← 0 TO size(scores) - 1
    total ← total + scores[index]
ENDFOR

average ← total / size(scores)
OUTPUT average
```

### Java-style Example

```java
int total = 0;

for (int index = 0; index < scores.size(); index++) {
    total = total + scores.get(index);
}

double average = (double) total / scores.size();
System.out.println(average);
```

### Important

Check that the list is not empty before dividing by size.

---

## 18. Finding Maximum in an ArrayList

### Pseudocode

```text
maximum ← scores[0]

FOR index ← 1 TO size(scores) - 1
    IF scores[index] > maximum THEN
        maximum ← scores[index]
    ENDIF
ENDFOR

OUTPUT maximum
```

### Java-style Example

```java
int maximum = scores.get(0);

for (int index = 1; index < scores.size(); index++) {
    if (scores.get(index) > maximum) {
        maximum = scores.get(index);
    }
}

System.out.println(maximum);
```

### Key Idea

Initialize maximum using the first element, not 0.

---

## 19. Removing While Looping

Removing items while looping can cause skipped elements or index errors.

### Problem Example

```java
for (int index = 0; index < names.size(); index++) {
    if (names.get(index).equals("Ali")) {
        names.remove(index);
    }
}
```

After removing, later elements shift left.

### Safer Approach: Loop Backwards

```java
for (int index = names.size() - 1; index >= 0; index--) {
    if (names.get(index).equals("Ali")) {
        names.remove(index);
    }
}
```

### Why Backwards?

Removing an item does not affect indexes of elements that have already been checked.

---

## 20. ArrayList with Objects

ArrayList can store objects.

### Example Class

```java
class Student {
    private String name;
    private int score;
}
```

### ArrayList of Objects

```java
ArrayList<Student> students = new ArrayList<Student>();
```

### Possible Use

```text
store all students
add new student
remove leaving student
search by name
calculate average score
```

### Mark Scheme Phrase

```text
An ArrayList can store object references, allowing a program to manage a dynamic collection of objects.
```

---

## 21. Primitive Types and Wrapper Classes

In Java, `ArrayList` stores objects, not primitive types directly.

### Primitive

```java
int
double
boolean
```

### Wrapper Classes

```java
Integer
Double
Boolean
```

### Example

```java
ArrayList<Integer> scores = new ArrayList<Integer>();
scores.add(75);
```

### Key Point

Java can often automatically convert between primitives and wrapper objects using autoboxing, but exam answers should still know that `ArrayList<int>` is not standard Java syntax.

---

## 22. Scenario: Shopping Cart

A shopping cart is a good example of a dynamic list.

### Why?

```text
user can add items
user can remove items
number of items is not known in advance
items need to be displayed and totaled
```

### Pseudocode

```text
cart ← empty list

ADD "mouse" TO cart
ADD "keyboard" TO cart
REMOVE "mouse" FROM cart

FOR index ← 0 TO size(cart) - 1
    OUTPUT cart[index]
ENDFOR
```

### Exam Phrase

```text
A dynamic list is suitable for a shopping cart because items can be added and removed while the program runs.
```

---

## 23. Scenario: Student Sign-up List

A club sign-up system may use a dynamic list.

### Why?

```text
students can join
students can withdraw
number of students is not fixed
list can be searched for a name
```

### Example Operations

```text
add student
remove student
check whether student has signed up
count students
display all names
```

---

## 24. Scenario: Game Inventory

A game inventory can use a dynamic list.

### Why?

```text
player picks up items
player drops items
inventory size changes
items can be searched or displayed
```

### Example

```text
inventory = ["potion", "sword"]
ADD "key"
REMOVE "potion"
```

Result:

```text
["sword", "key"]
```

---

## 25. Internal Resizing Concept

A dynamic list may internally use an array.

When more space is needed, it can:

```text
create a larger internal array
copy existing elements
add the new element
```

### Important

Students usually do not need to implement this manually, but it explains why dynamic lists can grow.

### Mark Scheme Phrase

```text
A dynamic list can resize internally, allowing the number of stored elements to change during execution.
```

---

## 26. Advantages of ArrayList / Dynamic Lists

| Advantage | Explanation |
|---|---|
| Flexible size | can grow or shrink |
| Easier add/remove | useful for changing collections |
| Cleaner code | avoids manually managing fixed-size arrays |
| Good for user-driven data | users can add/remove items |
| Works well with objects | can store collections of objects |
| Useful for search results | number of results not known in advance |

---

## 27. Limitations of ArrayList / Dynamic Lists

| Limitation | Explanation |
|---|---|
| More overhead | dynamic resizing may use extra memory/time |
| Requires object types in Java | primitives need wrapper classes |
| Index errors still possible | invalid indexes can still cause errors |
| Removing from middle can be costly | later elements may shift |
| Less simple than arrays | syntax and methods may be more complex |
| Not always best | fixed-size data may be simpler as array |

---

## 28. Common Errors

| Error | Why It Happens | Fix |
|---|---|---|
| using `length` instead of `size()` | array syntax confused with ArrayList | use `list.size()` |
| using `list[index]` in Java | array access syntax used | use `list.get(index)` |
| accessing index `size()` | last index is `size() - 1` | use `< size()` |
| removing while moving forward | elements shift left | loop backwards or adjust index |
| using `ArrayList<int>` | primitive type used | use `ArrayList<Integer>` |
| comparing strings with `==` in Java | checks reference not content | use `.equals()` |
| dividing by zero size | empty list | check `size() > 0` |
| confusing capacity and size | internal storage vs actual elements | size = current number of items |
| forgetting import | Java class unavailable | `import java.util.ArrayList;` |
| assuming ArrayList always faster | depends on operation | choose by scenario |

---

## 29. Worked Example: Trace Add and Remove

### Operations

```text
names ← empty list
ADD "Ali" TO names
ADD "Maya" TO names
ADD "Chen" TO names
REMOVE item at index 1
OUTPUT names[1]
```

### Trace

| Step | names | Output |
|---:|---|---|
| 1 | [] |  |
| 2 | ["Ali"] |  |
| 3 | ["Ali", "Maya"] |  |
| 4 | ["Ali", "Maya", "Chen"] |  |
| 5 | ["Ali", "Chen"] |  |
| 6 | ["Ali", "Chen"] | Chen |

### Key Point

After removing index 1, `"Chen"` shifts from index 2 to index 1.

---

## 30. Worked Example: Search in Dynamic List

### Problem

Check whether `"Maya"` appears in a list.

### Pseudocode

```text
found ← false
index ← 0

WHILE index < size(names) AND found = false
    IF names[index] = "Maya" THEN
        found ← true
    ELSE
        index ← index + 1
    ENDIF
ENDWHILE

OUTPUT found
```

### Example

```text
names = ["Ali", "Maya", "Chen"]
```

Trace:

| Iteration | index | names[index] | found |
|---:|---:|---|---|
| Start | 0 |  | false |
| 1 | 0 | Ali | false |
| 2 | 1 | Maya | true |

Output:

```text
true
```

---

## 31. Worked Example: Remove Failed Scores

### Problem

Remove all scores below 50 from a dynamic list.

### Safer Pseudocode

```text
FOR index ← size(scores) - 1 DOWNTO 0
    IF scores[index] < 50 THEN
        REMOVE scores[index]
    ENDIF
ENDFOR
```

### Why Loop Backwards?

If removing from the end toward the start, unprocessed elements do not shift into indexes that have already been passed.

---

## 32. Scenario Answer Bank

### If Asked: “Define dynamic list”

```text
A dynamic list is a list whose number of elements can grow or shrink while the program is running.
```

### If Asked: “Why use ArrayList instead of array?”

```text
An ArrayList is suitable when the number of elements is not known in advance or items need to be added and removed during execution.
```

### If Asked: “Compare array and ArrayList”

```text
An array usually has fixed size after creation, while an ArrayList can change size as items are added or removed.
```

### If Asked: “Why is ArrayList suitable for a shopping cart?”

```text
A shopping cart needs a dynamic list because the user can add and remove items and the number of items is not known in advance.
```

### If Asked: “Common ArrayList boundary error”

```text
Accessing index `size()` is invalid because valid indexes go from 0 to `size() - 1`.
```

---

## 33. Exam-style Questions

### Question 1 [2 marks]

Define dynamic list.

<details>
<summary>Mark Scheme Style Answer</summary>

A dynamic list is a list whose number of elements can grow or shrink while the program is running.

</details>

---

### Question 2 [4 marks]

Compare an array and an ArrayList.

<details>
<summary>Mark Scheme Style Answer</summary>

An array usually has fixed size after creation and is suitable when the number of elements is known in advance. An ArrayList can grow or shrink while the program runs, making it suitable when items need to be added or removed. Both store multiple values and allow indexed access.

</details>

---

### Question 3 [4 marks]

Explain why an ArrayList is suitable for a shopping cart.

<details>
<summary>Mark Scheme Style Answer</summary>

An ArrayList is suitable because the number of items in a shopping cart is not known in advance. The user can add items, remove items, and display all items while the program runs, so a dynamic list is more flexible than a fixed-size array.

</details>

---

### Question 4 [5 marks]

Write pseudocode to output every item in a dynamic list called `cart`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
FOR index ← 0 TO size(cart) - 1
    OUTPUT cart[index]
ENDFOR
```

</details>

---

### Question 5 [6 marks]

Write pseudocode to count how many values in dynamic list `scores` are at least 50.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
passCount ← 0

FOR index ← 0 TO size(scores) - 1
    IF scores[index] >= 50 THEN
        passCount ← passCount + 1
    ENDIF
ENDFOR

OUTPUT passCount
```

</details>

---

### Question 6 [6 marks]

A dynamic list `names` stores student names. Write pseudocode to search for a name stored in `target`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
found ← false
index ← 0

WHILE index < size(names) AND found = false
    IF names[index] = target THEN
        found ← true
    ELSE
        index ← index + 1
    ENDIF
ENDWHILE

IF found = true THEN
    OUTPUT "Found"
ELSE
    OUTPUT "Not found"
ENDIF
```

</details>

---

### Question 7 [4 marks]

Explain one problem that may happen when removing items from a dynamic list while looping forward.

<details>
<summary>Mark Scheme Style Answer</summary>

When an item is removed, later elements shift left and their indexes change. If the loop then increments the index, it may skip the item that shifted into the removed item's position. A safer approach is to loop backward or adjust the index after removal.

</details>

---

## 34. Guided Practice

### Practice 1

If:

```text
names = ["Ali", "Maya", "Chen"]
```

What is the size?

<details>
<summary>Suggested Answer</summary>

```text
3
```

</details>

---

### Practice 2

What is the last valid index of a dynamic list of size 6?

<details>
<summary>Suggested Answer</summary>

```text
5
```

because the last index is `size - 1`.

</details>

---

### Practice 3

After removing index 0 from:

```text
["A", "B", "C"]
```

what is the list?

<details>
<summary>Suggested Answer</summary>

```text
["B", "C"]
```

</details>

---

### Practice 4

Why is `ArrayList<Integer>` used instead of `ArrayList<int>` in Java?

<details>
<summary>Suggested Answer</summary>

Because ArrayList stores objects, and `Integer` is the wrapper class for primitive `int`.

</details>

---

### Practice 5

Which is better for a fixed list of 12 months: array or ArrayList?

<details>
<summary>Suggested Answer</summary>

An array is suitable because the number of months is fixed and known in advance.

</details>

---

## 35. Independent Practice

### Question 1

Define dynamic list.

### Question 2

Explain two advantages of ArrayList.

### Question 3

Explain two limitations of ArrayList.

### Question 4

Compare array and ArrayList.

### Question 5

Write pseudocode to add three names to a dynamic list.

### Question 6

Write pseudocode to output every item in a dynamic list.

### Question 7

Write pseudocode to find the largest number in a dynamic list.

### Question 8

Write pseudocode to remove all values below 0 from a dynamic list.

### Question 9

Explain why looping backward can help when removing items.

### Question 10

Give three scenarios where a dynamic list is more suitable than an array.

---

## 36. Practice Activity

### Activity 1: Human Dynamic List

Students stand in a row as list elements.

The teacher performs operations:

```text
add at end
add at index 1
remove index 2
get index 0
set index 1
```

Students physically shift positions to model dynamic list behaviour.

---

### Activity 2: Shopping Cart Simulation

Students design operations for:

```text
add item
remove item
display cart
search item
calculate total price
```

Then choose whether an array or ArrayList is better.

---

### Activity 3: Debug the Loop

Give students faulty code:

```text
FOR index ← 0 TO size(list) - 1
    IF list[index] = "delete" THEN
        REMOVE list[index]
    ENDIF
ENDFOR
```

Students explain why items may be skipped and rewrite using a backwards loop.

---

## 37. Homework

### Homework Part A

Explain dynamic lists and ArrayLists in 8-10 sentences using one real scenario.

### Homework Part B

Write pseudocode for:

```text
1. add five items to a dynamic list
2. output all items
3. count items matching a condition
4. search for a target item
5. remove all items below a threshold
```

### Homework Part C

Compare arrays and dynamic lists using:

```text
size
access
add/remove
memory/overhead
suitable scenarios
```

### Homework Part D

Correct these misconceptions:

```text
ArrayLists cannot use indexes.
ArrayLists always have fixed size.
The last valid index is size.
ArrayList<int> is standard Java syntax.
Removing items never changes indexes.
ArrayLists are always better than arrays.
```

---

## 38. One-page Revision Summary

| Point | Summary |
|---|---|
| Dynamic list | can grow or shrink during execution |
| ArrayList | Java dynamic list class |
| Array | fixed-size indexed structure |
| Add | insert new item |
| Get | access by index |
| Set | replace item at index |
| Remove | delete item |
| Size | number of current elements |
| Last valid index | size - 1 |
| Traversal | loop through every item |
| Search | check items for target |
| Removing while looping | may shift indexes |
| Loop backwards | safer for removal |
| Wrapper class | object type for primitive |
| Array vs ArrayList | fixed size vs dynamic size |
| Best scenario | use ArrayList when item count changes |
| Exam phrase | dynamic lists are suitable when elements need to be added or removed while the program runs |

