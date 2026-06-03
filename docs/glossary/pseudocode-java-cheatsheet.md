# Pseudocode and Java Cheatsheet

## 1. Lesson Goals

By the end of this page, students should be able to:

- read common pseudocode structures
- translate basic pseudocode ideas into Java-style code
- understand assignment, input, output, selection, iteration, arrays, and subprograms
- distinguish functions and procedures
- trace variable values through code
- avoid common syntax and logic mistakes
- write simple algorithm answers clearly
- explain code using input → processing → output
- prepare for programming questions and IA development explanations

::: tip Learning Focus
Pseudocode and Java may look different, but the logic is usually the same: sequence, selection, iteration, data storage, and subprograms.
:::

---

## 2. How to Use This Cheatsheet

Use this page in two ways:

```text
1. Reading pseudocode in exam questions
2. Writing or explaining Java-style code in class / IA work
```

Do not only memorize syntax. For each structure, understand:

```text
purpose
input
condition
processing
output
common mistake
```

---

## 3. Bilingual Explanation

<LangBlock>
<template #cn>

### 中文说明

Pseudocode（伪代码）不是某一种真正的编程语言。它的作用是用接近英文的结构表达算法逻辑。

Java 是真实编程语言，需要更严格的语法，比如：

```text
分号 ;
大括号 { }
变量类型 int / double / String / boolean
方法 method
数组 array
```

但是它们的核心逻辑是一样的：

```text
sequence = 按顺序执行
selection = if / else 选择
iteration = for / while 循环
array = 用 index 存多个数据
function / method = 把代码封装起来重复使用
```

学习时不要只问：

```text
这个符号怎么背？
```

更应该问：

```text
这个结构想做什么？
条件是什么？
循环什么时候停止？
变量值怎么变化？
输出是什么？
```

考试做 trace table 的时候，最重要的是一步一步更新变量，不要跳步。

</template>

<template #en>

### English Explanation

Pseudocode is not one real programming language. It is a structured way to express algorithm logic using English-like statements.

Java is a real programming language, so it needs stricter syntax, such as:

```text
semicolons ;
curly braces { }
variable types int / double / String / boolean
methods
arrays
```

However, the core logic is the same:

```text
sequence = instructions run in order
selection = if / else decision
iteration = for / while loop
array = store multiple values using indexes
function / method = reusable block of code
```

When studying, do not only ask:

```text
How do I memorize this symbol?
```

Ask:

```text
What is this structure trying to do?
What is the condition?
When does the loop stop?
How do variable values change?
What is the output?
```

When doing trace tables, the most important skill is updating variables step by step without skipping.

</template>
</LangBlock>

---

## 4. Quick Mapping Table

| Concept | Pseudocode-style | Java-style |
|---|---|---|
| assignment | `score ← 0` | `int score = 0;` |
| output | `OUTPUT score` | `System.out.println(score);` |
| input | `INPUT name` | `String name = scanner.nextLine();` |
| if | `IF score >= 50 THEN` | `if (score >= 50) {` |
| else | `ELSE` | `} else {` |
| end if | `ENDIF` | `}` |
| for loop | `FOR i ← 0 TO 9` | `for (int i = 0; i <= 9; i++) {` |
| while loop | `WHILE total < 100` | `while (total < 100) {` |
| array access | `marks[0]` | `marks[0]` |
| function | `FUNCTION total(...) RETURNS INTEGER` | `public static int total(...)` |
| procedure | `PROCEDURE display(...)` | `public static void display(...)` |
| comment | `// comment` | `// comment` |

::: warning Syntax Note
Different schools and exam boards may use slightly different pseudocode conventions. Focus on the algorithmic logic and follow your teacher's style.
:::

---

## 5. Variables and Assignment

A variable stores a value that can change.

### Pseudocode

```text
score ← 0
name ← "Anna"
passed ← TRUE
```

### Java

```java
int score = 0;
String name = "Anna";
boolean passed = true;
```

### Explanation

| Part | Meaning |
|---|---|
| variable name | name used to refer to stored value |
| assignment | stores a value in the variable |
| data type | kind of value stored |
| value | actual data stored |

### Common Mistake

Confusing comparison and assignment.

```java
score = 50;      // assignment
score == 50;     // comparison
```

---

## 6. Common Java Data Types

| Java Type | Meaning | Example |
|---|---|---|
| `int` | whole number | `int age = 16;` |
| `double` | decimal number | `double price = 12.5;` |
| `boolean` | true/false | `boolean found = false;` |
| `char` | one character | `char grade = 'A';` |
| `String` | text | `String name = "Anna";` |

### Pseudocode Equivalent

```text
INTEGER age
REAL price
BOOLEAN found
CHARACTER grade
STRING name
```

### Common Mistake

Java uses capital `String`:

```java
String name = "Anna";   // correct
string name = "Anna";   // wrong in Java
```

---

## 7. Input and Output

### Pseudocode Output

```text
OUTPUT "Enter your name"
OUTPUT name
```

### Java Output

```java
System.out.println("Enter your name");
System.out.println(name);
```

### Java Input with Scanner

```java
import java.util.Scanner;

Scanner scanner = new Scanner(System.in);

System.out.print("Enter your name: ");
String name = scanner.nextLine();

System.out.print("Enter your age: ");
int age = scanner.nextInt();
```

### Common Input Methods

| Method | Reads |
|---|---|
| `nextLine()` | full line of text |
| `next()` | one word |
| `nextInt()` | integer |
| `nextDouble()` | decimal number |
| `nextBoolean()` | boolean value |

### Common Mistake: `nextInt()` then `nextLine()`

After `nextInt()`, the newline may still remain.

```java
int age = scanner.nextInt();
scanner.nextLine(); // consume leftover newline
String name = scanner.nextLine();
```

---

## 8. Arithmetic Operators

| Operation | Pseudocode | Java | Example Result |
|---|---|---|---|
| addition | `a + b` | `a + b` | `3 + 2 = 5` |
| subtraction | `a - b` | `a - b` | `3 - 2 = 1` |
| multiplication | `a * b` | `a * b` | `3 * 2 = 6` |
| division | `a / b` | `a / b` | `5 / 2 = 2` if both int in Java |
| remainder | `a MOD b` | `a % b` | `5 % 2 = 1` |

### Integer Division Warning

```java
System.out.println(5 / 2);     // 2
System.out.println(5.0 / 2);   // 2.5
```

### Common Mistake

Expecting `int / int` to produce a decimal in Java.

---

## 9. Comparison Operators

| Meaning | Pseudocode | Java |
|---|---|---|
| equal to | `=` or `==` depending on style | `==` |
| not equal | `≠` | `!=` |
| greater than | `>` | `>` |
| less than | `<` | `<` |
| greater or equal | `>=` | `>=` |
| less or equal | `<=` | `<=` |

### Example

```java
if (score >= 50) {
    System.out.println("Pass");
}
```

### String Comparison Warning

In Java, compare string contents using `.equals()`.

```java
String answer = "yes";

if (answer.equals("yes")) {
    System.out.println("Continue");
}
```

Avoid:

```java
if (answer == "yes") {  // not recommended for string content comparison
}
```

---

## 10. Logical Operators

| Meaning | Pseudocode | Java |
|---|---|---|
| AND | `AND` | `&&` |
| OR | `OR` | `||` |
| NOT | `NOT` | `!` |

### Example

Pseudocode:

```text
IF score >= 0 AND score <= 100 THEN
    OUTPUT "Valid"
ENDIF
```

Java:

```java
if (score >= 0 && score <= 100) {
    System.out.println("Valid");
}
```

### Common Mistake

Writing math-style comparison in Java:

```java
if (0 <= score <= 100) { }  // wrong in Java
```

Correct:

```java
if (score >= 0 && score <= 100) { }
```

---

## 11. Sequence

Sequence means instructions run in order.

### Pseudocode

```text
price ← 10
quantity ← 3
total ← price * quantity
OUTPUT total
```

### Java

```java
int price = 10;
int quantity = 3;
int total = price * quantity;
System.out.println(total);
```

### Trace

| Step | price | quantity | total | Output |
|---:|---:|---:|---:|---|
| 1 | 10 | - | - | |
| 2 | 10 | 3 | - | |
| 3 | 10 | 3 | 30 | |
| 4 | 10 | 3 | 30 | 30 |

---

## 12. Selection: IF

Selection chooses different actions based on a condition.

### Pseudocode

```text
IF score >= 50 THEN
    OUTPUT "Pass"
ENDIF
```

### Java

```java
if (score >= 50) {
    System.out.println("Pass");
}
```

### IF / ELSE

Pseudocode:

```text
IF score >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

Java:

```java
if (score >= 50) {
    System.out.println("Pass");
} else {
    System.out.println("Fail");
}
```

---

## 13. Selection: ELSE IF

Use else if for multiple conditions.

### Pseudocode

```text
IF mark >= 80 THEN
    grade ← "A"
ELSE IF mark >= 60 THEN
    grade ← "B"
ELSE IF mark >= 50 THEN
    grade ← "C"
ELSE
    grade ← "F"
ENDIF
```

### Java

```java
if (mark >= 80) {
    grade = "A";
} else if (mark >= 60) {
    grade = "B";
} else if (mark >= 50) {
    grade = "C";
} else {
    grade = "F";
}
```

### Important

Order matters. Put highest boundary first in this example.

---

## 14. Switch / Case

Switch is useful when choosing between fixed values.

### Pseudocode

```text
SWITCH choice
    CASE 1:
        OUTPUT "Add"
    CASE 2:
        OUTPUT "Search"
    DEFAULT:
        OUTPUT "Invalid"
ENDSWITCH
```

### Java

```java
switch (choice) {
    case 1:
        System.out.println("Add");
        break;
    case 2:
        System.out.println("Search");
        break;
    default:
        System.out.println("Invalid");
}
```

### Common Mistake

Forgetting `break`, causing fall-through in Java.

---

## 15. Iteration: FOR Loop

A for loop is usually used when the number of repetitions is known.

### Pseudocode

```text
FOR i ← 1 TO 5
    OUTPUT i
ENDFOR
```

### Java

```java
for (int i = 1; i <= 5; i++) {
    System.out.println(i);
}
```

### Output

```text
1
2
3
4
5
```

### Common Mistake

Off-by-one errors.

```java
for (int i = 0; i < 5; i++) { }  // runs 5 times: 0,1,2,3,4
for (int i = 1; i <= 5; i++) { } // runs 5 times: 1,2,3,4,5
```

---

## 16. Iteration: WHILE Loop

A while loop repeats while a condition is true.

### Pseudocode

```text
WHILE total < 100
    INPUT value
    total ← total + value
ENDWHILE
```

### Java

```java
while (total < 100) {
    int value = scanner.nextInt();
    total = total + value;
}
```

### Important

A while loop may run zero times if the condition is false at the start.

---

## 17. Iteration: DO WHILE Loop

A do while loop runs at least once.

### Pseudocode

```text
DO
    INPUT password
WHILE password ≠ "secret"
```

### Java

```java
do {
    password = scanner.nextLine();
} while (!password.equals("secret"));
```

### Difference from WHILE

| Loop | Condition Checked | Runs At Least Once? |
|---|---|---|
| while | before loop body | not always |
| do while | after loop body | yes |

---

## 18. Loop Control: Break and Continue

### Break

`break` exits the loop.

```java
for (int i = 0; i < 10; i++) {
    if (i == 5) {
        break;
    }
    System.out.println(i);
}
```

Output:

```text
0
1
2
3
4
```

### Continue

`continue` skips to the next iteration.

```java
for (int i = 0; i < 5; i++) {
    if (i == 2) {
        continue;
    }
    System.out.println(i);
}
```

Output:

```text
0
1
3
4
```

---

## 19. Arrays

An array stores multiple values of the same type.

### Pseudocode

```text
marks ← [80, 65, 90]
OUTPUT marks[0]
```

### Java

```java
int[] marks = {80, 65, 90};
System.out.println(marks[0]);
```

Output:

```text
80
```

### Key Point

Most programming languages, including Java, use zero-based indexing.

```text
marks[0] = first element
marks[1] = second element
marks[2] = third element
```

---

## 20. Array Traversal

Traversal means visiting each element.

### Pseudocode

```text
FOR i ← 0 TO LENGTH(marks) - 1
    OUTPUT marks[i]
ENDFOR
```

### Java

```java
for (int i = 0; i < marks.length; i++) {
    System.out.println(marks[i]);
}
```

### Enhanced For Loop

```java
for (int mark : marks) {
    System.out.println(mark);
}
```

### When to Use Each

| Loop Type | Useful When |
|---|---|
| index loop | need index position |
| enhanced for | only need element value |

---

## 21. Finding Total and Average

### Pseudocode

```text
total ← 0

FOR i ← 0 TO LENGTH(marks) - 1
    total ← total + marks[i]
ENDFOR

average ← total / LENGTH(marks)
OUTPUT average
```

### Java

```java
int total = 0;

for (int i = 0; i < marks.length; i++) {
    total = total + marks[i];
}

double average = (double) total / marks.length;
System.out.println(average);
```

### Common Mistake

Forgetting to cast to `double` and getting integer division.

---

## 22. Finding Maximum

### Pseudocode

```text
max ← marks[0]

FOR i ← 1 TO LENGTH(marks) - 1
    IF marks[i] > max THEN
        max ← marks[i]
    ENDIF
ENDFOR

OUTPUT max
```

### Java

```java
int max = marks[0];

for (int i = 1; i < marks.length; i++) {
    if (marks[i] > max) {
        max = marks[i];
    }
}

System.out.println(max);
```

### Why Start at Index 1?

`max` already starts as the first value, so comparison can begin at the second value.

---

## 23. Linear Search

Linear search checks items one by one.

### Pseudocode

```text
found ← FALSE
target ← "Anna"

FOR i ← 0 TO LENGTH(names) - 1
    IF names[i] = target THEN
        found ← TRUE
    ENDIF
ENDFOR

IF found = TRUE THEN
    OUTPUT "Found"
ELSE
    OUTPUT "Not found"
ENDIF
```

### Java

```java
boolean found = false;
String target = "Anna";

for (int i = 0; i < names.length; i++) {
    if (names[i].equals(target)) {
        found = true;
    }
}

if (found) {
    System.out.println("Found");
} else {
    System.out.println("Not found");
}
```

### Improved Version with Break

```java
boolean found = false;

for (int i = 0; i < names.length; i++) {
    if (names[i].equals(target)) {
        found = true;
        break;
    }
}
```

---

## 24. Counting Matches

### Pseudocode

```text
count ← 0

FOR i ← 0 TO LENGTH(statuses) - 1
    IF statuses[i] = "Missing" THEN
        count ← count + 1
    ENDIF
ENDFOR

OUTPUT count
```

### Java

```java
int count = 0;

for (int i = 0; i < statuses.length; i++) {
    if (statuses[i].equals("Missing")) {
        count++;
    }
}

System.out.println(count);
```

### IA Link

This pattern is useful for:

```text
attendance totals
missing assignment counts
inventory low-stock counts
quiz correct answer counts
```

---

## 25. 2D Arrays

A 2D array stores data in rows and columns.

### Java Example

```java
int[][] grid = {
    {1, 2, 3},
    {4, 5, 6}
};

System.out.println(grid[0][0]); // 1
System.out.println(grid[1][2]); // 6
```

### Traversing a 2D Array

```java
for (int row = 0; row < grid.length; row++) {
    for (int col = 0; col < grid[row].length; col++) {
        System.out.println(grid[row][col]);
    }
}
```

### Index Meaning

```text
grid[row][column]
```

---

## 26. Functions and Procedures

A function returns a value.  
A procedure performs a task but does not return a value.

### Pseudocode Function

```text
FUNCTION add(a, b) RETURNS INTEGER
    RETURN a + b
ENDFUNCTION
```

### Java Method Returning Value

```java
public static int add(int a, int b) {
    return a + b;
}
```

### Pseudocode Procedure

```text
PROCEDURE displayMessage(message)
    OUTPUT message
ENDPROCEDURE
```

### Java Void Method

```java
public static void displayMessage(String message) {
    System.out.println(message);
}
```

### Function vs Procedure

| Type | Returns Value? | Java Example |
|---|---|---|
| function | yes | `int add(...)` |
| procedure | no | `void display(...)` |

---

## 27. Parameters and Arguments

A parameter is the variable in the method definition.  
An argument is the actual value passed when calling the method.

### Java

```java
public static int square(int number) {
    return number * number;
}

int result = square(5);
```

| Word | Example | Meaning |
|---|---|---|
| parameter | `number` | placeholder in method |
| argument | `5` | actual value passed in |

---

## 28. Return Values

A return value is the result sent back by a function/method.

### Java

```java
public static boolean isPass(int score) {
    return score >= 50;
}

boolean result = isPass(72);
```

### Explanation

```text
input = score
processing = compare score >= 50
output/return = true or false
```

### Common Mistake

Forgetting to use the return value.

```java
isPass(72);  // result is returned but ignored
```

Better:

```java
boolean passed = isPass(72);
```

---

## 29. Strings

Strings store text.

### Common Java String Operations

| Operation | Java Example | Meaning |
|---|---|---|
| length | `name.length()` | number of characters |
| equals | `name.equals("Anna")` | compare contents |
| contains | `name.contains("an")` | check substring |
| substring | `name.substring(0, 2)` | get part of string |
| toLowerCase | `name.toLowerCase()` | lowercase copy |
| toUpperCase | `name.toUpperCase()` | uppercase copy |

### Example: Case-insensitive Search

```java
if (name.toLowerCase().equals(target.toLowerCase())) {
    System.out.println("Match");
}
```

---

## 30. Lists / ArrayList

Java arrays have fixed size. `ArrayList` can grow and shrink.

### Import

```java
import java.util.ArrayList;
```

### Create and Use

```java
ArrayList<String> names = new ArrayList<>();

names.add("Anna");
names.add("Ben");

System.out.println(names.get(0)); // Anna
System.out.println(names.size()); // 2

names.remove("Ben");
```

### Common Methods

| Method | Meaning |
|---|---|
| `add(value)` | add item |
| `get(index)` | get item |
| `set(index, value)` | replace item |
| `remove(index)` | remove by index |
| `remove(value)` | remove by value |
| `size()` | number of items |
| `contains(value)` | check if item exists |

---

## 31. Records / Classes

A class can group related data.

### Example

```java
public class Student {
    String name;
    int score;

    public Student(String name, int score) {
        this.name = name;
        this.score = score;
    }
}
```

### Use

```java
Student s1 = new Student("Anna", 85);
System.out.println(s1.name);
System.out.println(s1.score);
```

### IA Use

Classes are useful for products like:

```text
student record system
inventory item system
booking system
quiz score tracker
attendance tracker
```

---

## 32. Basic File Writing

File handling stores data after the program closes.

### Java Example

```java
import java.io.FileWriter;
import java.io.IOException;

try {
    FileWriter writer = new FileWriter("records.txt");
    writer.write("Anna,85\n");
    writer.write("Ben,72\n");
    writer.close();
} catch (IOException e) {
    System.out.println("File error.");
}
```

### Explanation

```text
FileWriter opens a file.
write stores text.
close finishes writing.
try/catch handles file errors.
```

---

## 33. Basic File Reading

### Java Example

```java
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

try {
    File file = new File("records.txt");
    Scanner reader = new Scanner(file);

    while (reader.hasNextLine()) {
        String line = reader.nextLine();
        System.out.println(line);
    }

    reader.close();
} catch (FileNotFoundException e) {
    System.out.println("File not found.");
}
```

### IA Link

File reading is useful for:

```text
loading saved records
checking previous data
creating persistent storage
```

---

## 34. Exception Handling

Exception handling prevents a program from crashing when an error occurs.

### Example

```java
try {
    int number = scanner.nextInt();
    System.out.println(number);
} catch (Exception e) {
    System.out.println("Invalid input.");
}
```

### Better Habit

Try to handle specific exceptions when possible.

### IA Explanation Phrase

```text
Exception handling improves robustness because the program can respond to invalid input or file errors without crashing.
```

---

## 35. Validation Patterns

### Blank String Check

```java
if (name.isBlank()) {
    System.out.println("Name cannot be blank.");
}
```

### Range Check

```java
if (score < 0 || score > 100) {
    System.out.println("Score must be between 0 and 100.");
}
```

### Positive Number Check

```java
if (quantity <= 0) {
    System.out.println("Quantity must be positive.");
}
```

### Option Check

```java
if (!status.equals("Completed") && !status.equals("Missing")) {
    System.out.println("Invalid status.");
}
```

---

## 36. Trace Tables

A trace table records variable values step by step.

### Code

```text
x ← 2
y ← 5
x ← x + y
y ← x - y
OUTPUT x
OUTPUT y
```

### Trace Table

| Step | x | y | Output |
|---:|---:|---:|---|
| start | - | - | |
| x ← 2 | 2 | - | |
| y ← 5 | 2 | 5 | |
| x ← x + y | 7 | 5 | |
| y ← x - y | 7 | 2 | |
| OUTPUT x | 7 | 2 | 7 |
| OUTPUT y | 7 | 2 | 2 |

### Common Mistake

Using the old value after assignment. Once a variable changes, future steps use the new value.

---

## 37. Trace Table with Loop

### Pseudocode

```text
total ← 0

FOR i ← 1 TO 3
    total ← total + i
ENDFOR

OUTPUT total
```

### Trace Table

| Iteration | i | total |
|---:|---:|---:|
| start | - | 0 |
| 1 | 1 | 1 |
| 2 | 2 | 3 |
| 3 | 3 | 6 |

Output:

```text
6
```

---

## 38. Common Java Syntax Mistakes

| Mistake | Wrong | Correct |
|---|---|---|
| missing semicolon | `int x = 5` | `int x = 5;` |
| wrong string quote | `String s = 'hi';` | `String s = "hi";` |
| wrong char quote | `char c = "A";` | `char c = 'A';` |
| assignment in condition | `if (x = 5)` | `if (x == 5)` |
| string comparison | `name == "Anna"` | `name.equals("Anna")` |
| array length | `marks.length()` | `marks.length` |
| ArrayList size | `names.length` | `names.size()` |
| missing braces | unclear block | use `{ }` |
| wrong boolean case | `True` | `true` |
| wrong class name | `scanner` type | `Scanner` |

---

## 39. Common Logic Mistakes

| Mistake | Example | Fix |
|---|---|---|
| off-by-one loop | misses first/last item | check start/end index |
| infinite loop | condition never changes | update loop variable |
| wrong condition | `score > 100 && score < 0` | use `score > 100 || score < 0` |
| reset total inside loop | total never accumulates | initialize before loop |
| integer division | average becomes whole number | cast to double |
| string case mismatch | `"anna"` not equal `"Anna"` | use lowercase comparison if suitable |
| not handling no result | blank output | show “No records found” |
| ignoring return value | function result unused | store or output return value |
| modifying array while traversing | skipped elements | use careful index/list strategy |
| no validation | bad data saved | check before storing |

---

## 40. Algorithm Explanation Template

Use this in IA development or exam answers:

```text
This algorithm takes [input]. It processes the data by [main steps]. It uses [loop/selection/data structure] to [purpose]. The output is [output]. This is useful because [link to problem or success criterion].
```

### Example

```text
This algorithm takes a student name as input. It loops through the list of assignment records and compares each record's student name with the input. Matching records are added to a results list. The output is a table of all matching records. This supports the success criterion that a user can search assignment history by student name.
```

---

## 41. Pseudocode Writing Checklist

When writing pseudocode, check:

```text
variables have clear names
steps are in logical order
IF statements have clear conditions
loops have clear start/end conditions
arrays use correct indexes
output is clear
algorithm eventually stops
indentation shows structure
```

### Weak Pseudocode

```text
do search
show result
```

### Stronger Pseudocode

```text
INPUT targetName
found ← FALSE

FOR i ← 0 TO LENGTH(names) - 1
    IF names[i] = targetName THEN
        OUTPUT names[i]
        found ← TRUE
    ENDIF
ENDFOR

IF found = FALSE THEN
    OUTPUT "No matching student"
ENDIF
```

---

## 42. Java Writing Checklist

When writing Java, check:

```text
class name matches file name if public
main method is correct
variables have data types
statements end with semicolons
strings use double quotes
characters use single quotes
conditions use == for numbers/booleans
strings use .equals()
loops update correctly
arrays use valid indexes
methods have correct return type
input errors are handled if needed
```

---

## 43. Mini Example: Grade Classifier

### Pseudocode

```text
INPUT mark

IF mark < 0 OR mark > 100 THEN
    OUTPUT "Invalid mark"
ELSE IF mark >= 80 THEN
    OUTPUT "A"
ELSE IF mark >= 60 THEN
    OUTPUT "B"
ELSE IF mark >= 50 THEN
    OUTPUT "C"
ELSE
    OUTPUT "F"
ENDIF
```

### Java

```java
Scanner scanner = new Scanner(System.in);

System.out.print("Enter mark: ");
int mark = scanner.nextInt();

if (mark < 0 || mark > 100) {
    System.out.println("Invalid mark");
} else if (mark >= 80) {
    System.out.println("A");
} else if (mark >= 60) {
    System.out.println("B");
} else if (mark >= 50) {
    System.out.println("C");
} else {
    System.out.println("F");
}
```

### Key Ideas

```text
input
validation
selection
ordered conditions
output
```

---

## 44. Mini Example: Count Missing Assignments

### Pseudocode

```text
missingCount ← 0

FOR i ← 0 TO LENGTH(statuses) - 1
    IF statuses[i] = "Missing" THEN
        missingCount ← missingCount + 1
    ENDIF
ENDFOR

OUTPUT missingCount
```

### Java

```java
String[] statuses = {"Completed", "Missing", "Missing", "Completed"};
int missingCount = 0;

for (int i = 0; i < statuses.length; i++) {
    if (statuses[i].equals("Missing")) {
        missingCount++;
    }
}

System.out.println(missingCount);
```

### Output

```text
2
```

---

## 45. Scenario Answer Bank

### If Asked: “What is pseudocode?”

```text
Pseudocode is a structured, language-independent way to describe an algorithm.
```

### If Asked: “What is the difference between pseudocode and Java?”

```text
Pseudocode describes algorithm logic without strict language syntax, while Java is a real programming language with strict syntax and data types.
```

### If Asked: “Why use a trace table?”

```text
A trace table records variable values step by step so the behaviour of an algorithm can be checked.
```

### If Asked: “What is validation?”

```text
Validation checks whether input follows required rules before it is accepted.
```

### If Asked: “What is an array?”

```text
An array stores multiple values of the same type using indexes.
```

### If Asked: “What is a function?”

```text
A function is a reusable block of code that performs a task and returns a value.
```

---

## 46. Guided Practice

### Practice 1

Convert to Java:

```text
score ← 75
OUTPUT score
```

<details>
<summary>Suggested Answer</summary>

```java
int score = 75;
System.out.println(score);
```

</details>

---

### Practice 2

Convert to Java:

```text
IF age >= 18 THEN
    OUTPUT "Adult"
ELSE
    OUTPUT "Child"
ENDIF
```

<details>
<summary>Suggested Answer</summary>

```java
if (age >= 18) {
    System.out.println("Adult");
} else {
    System.out.println("Child");
}
```

</details>

---

### Practice 3

Trace this algorithm:

```text
x ← 1
x ← x + 4
x ← x * 2
OUTPUT x
```

<details>
<summary>Suggested Answer</summary>

```text
x starts as 1.
x becomes 5.
x becomes 10.
Output is 10.
```

</details>

---

### Practice 4

What is wrong with this Java code?

```java
if (name == "Anna") {
    System.out.println("Found");
}
```

<details>
<summary>Suggested Answer</summary>

String contents should be compared using `.equals()`:

```java
if (name.equals("Anna")) {
    System.out.println("Found");
}
```

</details>

---

### Practice 5

Write pseudocode to count how many marks are greater than or equal to 50.

<details>
<summary>Suggested Answer</summary>

```text
count ← 0

FOR i ← 0 TO LENGTH(marks) - 1
    IF marks[i] >= 50 THEN
        count ← count + 1
    ENDIF
ENDFOR

OUTPUT count
```

</details>

---

## 47. Independent Practice

### Question 1

Convert this pseudocode to Java:

```text
total ← 0
FOR i ← 1 TO 10
    total ← total + i
ENDFOR
OUTPUT total
```

### Question 2

Write pseudocode for checking whether a score is between 0 and 100.

### Question 3

Write Java code to print all elements in an integer array.

### Question 4

Write pseudocode for finding the largest value in an array.

### Question 5

Write a Java method:

```text
isPass(score)
```

that returns true if score is at least 50.

### Question 6

Create a trace table for:

```text
a ← 3
b ← 2
a ← a * b
b ← a + b
OUTPUT b
```

### Question 7

Write Java validation code for a quantity that must be greater than 0.

### Question 8

Write pseudocode for a linear search.

### Question 9

Explain the difference between a function and a procedure.

### Question 10

Find three errors in this Java code:

```java
String name = 'Anna';
if (name == "Anna") {
    System.out.println("Hi")
}
```

---

## 48. Practice task
### Activity 1: Pseudocode to Java Relay

Students convert small pseudocode fragments into Java:

```text
assignment
if/else
for loop
while loop
array traversal
function
```

---

### Activity 2: Trace Table Race

Students trace variable changes step by step.

Focus:

```text
assignment updates
loop iterations
condition results
output order
```

---

### Activity 3: Debug the Code

Students fix common Java mistakes:

```text
missing semicolon
wrong quotes
wrong string comparison
off-by-one loop
wrong logical operator
```

---

## 49. Independent practice
### Independent practice part A

Create a two-column table:

```text
pseudocode
Java
```

Include at least 12 structures.

### Independent practice part B

Write Java code for:

```text
1. add all numbers in an array
2. count values above 50
3. find the maximum value
4. search for a name
5. validate a mark from 0 to 100
```

### Independent practice part C

Create trace tables for three short algorithms.

### Independent practice part D

Answer:

```text
1. Why is pseudocode useful?
2. Why is Java syntax stricter than pseudocode?
3. Why should strings be compared using .equals()?
4. Why do loops often cause off-by-one errors?
5. Why is validation important in IA projects?
```

---

## 51. One-page Pseudocode and Java Sheet

| Concept | Pseudocode | Java |
|---|---|---|
| assignment | `x ← 5` | `int x = 5;` |
| output | `OUTPUT x` | `System.out.println(x);` |
| input string | `INPUT name` | `String name = scanner.nextLine();` |
| if | `IF x > 0 THEN` | `if (x > 0) { }` |
| else | `ELSE` | `else { }` |
| for | `FOR i ← 0 TO 9` | `for (int i = 0; i <= 9; i++) { }` |
| while | `WHILE x < 10` | `while (x < 10) { }` |
| array | `marks[0]` | `marks[0]` |
| length | `LENGTH(marks)` | `marks.length` |
| AND | `AND` | `&&` |
| OR | `OR` | `||` |
| NOT | `NOT` | `!` |
| function | `RETURNS INTEGER` | `int methodName(...)` |
| procedure | `PROCEDURE` | `void methodName(...)` |
| string compare | `name = "Anna"` | `name.equals("Anna")` |
| best habit | trace step by step | test with normal/boundary/invalid data |
| best phrase | Pseudocode expresses algorithm logic, while Java implements the same logic with strict programming syntax. |

