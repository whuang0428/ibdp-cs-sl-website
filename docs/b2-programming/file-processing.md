# File Processing

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why files are used in programs
- distinguish between temporary data in memory and persistent data in files
- explain the difference between reading from a file and writing to a file
- understand basic text file processing in IB pseudocode
- read a text file line by line in Java
- write output to a text file in Java
- process file data using loops, selection, arrays, and variables
- understand basic file-related errors, such as file not found
- use `try` / `catch` or `throws` at a beginner level
- answer exam-style questions about file input, file output, and data persistence

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core / practical programming support |
| Main skill | Reading data from files and writing data to files |
| Connected topics | Variables, data types, input/output, loops, arrays, testing, debugging |
| Programming language focus | IB pseudocode + Java |
| Exam relevance | File input/output concepts, algorithm writing, tracing loops over file records |

::: tip Learning Focus
File processing allows a program to remember data after the program closes. Without files, most variable values disappear when the program ends.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| File | 文件 | Data stored permanently on secondary storage |
| Text file | 文本文件 | A file containing readable characters |
| Persistent storage | 持久化存储 | Data that remains after the program ends |
| File input | 文件输入 | Reading data from a file |
| File output | 文件输出 | Writing data to a file |
| Read | 读取 | Get data from a file |
| Write | 写入 | Store data into a file |
| Append | 追加 | Add new data to the end of an existing file |
| Record | 记录 | One complete set of related data |
| Delimiter | 分隔符 | A character used to separate data values |
| CSV | 逗号分隔文件 | A text file where values are separated by commas |
| End of file | 文件结束 | The point where there is no more data to read |
| FileNotFoundException | 文件未找到异常 | Java error when a file cannot be found |
| Exception handling | 异常处理 | Code used to handle runtime problems safely |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

程序运行时，变量中的数据通常是临时的。程序关闭后，变量里的值就会消失。

例如：

```java
int score = 90;
```

这个 `score` 只在程序运行时存在。程序结束后，如果没有保存到文件或数据库，分数就没了。

**File processing（文件处理）** 允许程序把数据保存到文件里，或者从文件中读取数据。

常见操作：

```text
read from file     从文件读取
write to file      写入文件
append to file     追加到文件末尾
```

例如，一个程序可以：

1. 从 `marks.txt` 读取所有学生成绩
2. 计算平均分
3. 把结果写入 `summary.txt`

文件处理经常和 loops 一起使用，因为文件里可能有很多行数据，程序需要一行一行读取。

</template>

<template #en>

### English Explanation

Data stored in variables is usually temporary while the program is running. When the program closes, variable values disappear.

For example:

```java
int score = 90;
```

This `score` exists only while the program runs. After the program ends, the value is lost unless it is saved to a file or database.

**File processing** allows a program to save data to a file or read data from a file.

Common operations:

```text
read from file
write to file
append to file
```

For example, a program can:

1. read student marks from `marks.txt`
2. calculate the average mark
3. write the result to `summary.txt`

File processing often uses loops because a file may contain many lines of data, and the program needs to process them one by one.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Student Marks File

A teacher has a file called:

```text
marks.txt
```

File content:

```text
80
75
90
62
```

A program can read each line, convert it to a number, calculate the total, and output the average.

| Step | Action |
|---:|---|
| 1 | Open `marks.txt` |
| 2 | Read first line |
| 3 | Convert line to integer |
| 4 | Add mark to total |
| 5 | Repeat until no more lines |
| 6 | Calculate average |
| 7 | Output result |

::: info Scenario Link
This is more practical than typing all marks every time the program runs.
:::

---

## 6. Temporary Data vs Persistent Data

| Type | Where Stored | What Happens When Program Ends? | Example |
|---|---|---|---|
| Variable data | RAM / memory | Usually lost | `int score = 90;` |
| File data | Secondary storage | Remains saved | `marks.txt` |
| Database data | Database storage | Remains saved | student database |

### Exam-friendly sentence

Files are useful because they allow data to be stored persistently, so the data can still be accessed after the program has ended.

---

## 7. File Input and File Output

| Operation | Meaning | Example |
|---|---|---|
| File input | Program reads data from a file | Read marks from `marks.txt` |
| File output | Program writes data to a file | Save results to `results.txt` |
| Append | Program adds data to end of file | Add a new score to existing file |

### Important Difference

```text
reading = file → program
writing = program → file
```

---

## 8. Text Files

A text file stores characters that humans can read.

Example file:

```text
Alice,85
Ben,72
Clara,90
```

This could represent student names and marks.

Each line can be treated as a record:

| Line | Meaning |
|---|---|
| `Alice,85` | name = Alice, mark = 85 |
| `Ben,72` | name = Ben, mark = 72 |
| `Clara,90` | name = Clara, mark = 90 |

The comma is a **delimiter**, because it separates the name and mark.

---

## 9. IB Pseudocode: Reading a File

Different resources may write file pseudocode slightly differently. The core idea is:

```text
OPENFILE "marks.txt" FOR READ

WHILE NOT EOF("marks.txt") DO
    READFILE "marks.txt", mark
    OUTPUT mark
END WHILE

CLOSEFILE "marks.txt"
```

### Explanation

| Pseudocode | Meaning |
|---|---|
| `OPENFILE ... FOR READ` | Open the file for reading |
| `WHILE NOT EOF` | Repeat until the end of file |
| `READFILE` | Read one value or line |
| `CLOSEFILE` | Close the file when finished |

::: warning Note
Exact pseudocode style may vary, but exam answers should clearly show opening, reading, looping until end of file, and closing the file.
:::

---

## 10. IB Pseudocode: Writing a File

```text
OPENFILE "summary.txt" FOR WRITE

WRITEFILE "summary.txt", "Average mark: 76.75"

CLOSEFILE "summary.txt"
```

### Important Point

Writing to a file may overwrite existing content depending on the mode used.

| Mode | Meaning |
|---|---|
| READ | Read existing data |
| WRITE | Create or overwrite file |
| APPEND | Add to the end of file |

---

## 11. Java File Reading: Basic Pattern

Java has several ways to read files. For beginner teaching, one clear method is using `File` and `Scanner`.

### Example File: `marks.txt`

Put this file in the same project folder:

```text
80
75
90
62
```

### Java Code

```java
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class ReadMarks {
    public static void main(String[] args) {
        try {
            File file = new File("marks.txt");
            Scanner reader = new Scanner(file);

            while (reader.hasNextLine()) {
                String line = reader.nextLine();
                System.out.println(line);
            }

            reader.close();
        } catch (FileNotFoundException e) {
            System.out.println("File not found.");
        }
    }
}
```

---

## 12. Java File Reading Explanation

| Code | Explanation |
|---|---|
| `import java.io.File;` | Allows Java to represent a file |
| `import java.io.FileNotFoundException;` | Allows handling missing file errors |
| `Scanner reader = new Scanner(file);` | Creates a Scanner to read from the file |
| `reader.hasNextLine()` | Checks whether another line exists |
| `reader.nextLine()` | Reads the next line from the file |
| `reader.close()` | Closes the file reader |
| `catch (...)` | Runs if the file cannot be found |

### Output

For this file:

```text
80
75
90
62
```

The output is:

```text
80
75
90
62
```

---

## 13. Reading Numbers from a File

If the file stores numbers, each line can be converted from `String` to `int`.

### Java Code

```java
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class ReadNumberMarks {
    public static void main(String[] args) {
        int total = 0;
        int count = 0;

        try {
            File file = new File("marks.txt");
            Scanner reader = new Scanner(file);

            while (reader.hasNextLine()) {
                String line = reader.nextLine();
                int mark = Integer.parseInt(line);

                total = total + mark;
                count++;
            }

            reader.close();

            double average = (double) total / count;
            System.out.println("Average: " + average);

        } catch (FileNotFoundException e) {
            System.out.println("File not found.");
        }
    }
}
```

### Key Line

```java
int mark = Integer.parseInt(line);
```

This converts text like `"80"` into integer `80`.

---

## 14. Trace Table: Reading Marks

File content:

```text
80
75
90
62
```

| Iteration | line | mark | total before | total after | count |
|---:|---|---:|---:|---:|---:|
| 1 | `"80"` | 80 | 0 | 80 | 1 |
| 2 | `"75"` | 75 | 80 | 155 | 2 |
| 3 | `"90"` | 90 | 155 | 245 | 3 |
| 4 | `"62"` | 62 | 245 | 307 | 4 |

Final calculation:

```text
average = 307 / 4 = 76.75
```

---

## 15. Reading CSV-style Lines

A line may contain multiple values separated by commas.

File: `students.txt`

```text
Alice,85
Ben,72
Clara,90
```

### Java Code

```java
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class ReadStudents {
    public static void main(String[] args) {
        try {
            File file = new File("students.txt");
            Scanner reader = new Scanner(file);

            while (reader.hasNextLine()) {
                String line = reader.nextLine();
                String[] parts = line.split(",");

                String name = parts[0];
                int mark = Integer.parseInt(parts[1]);

                System.out.println(name + " scored " + mark);
            }

            reader.close();
        } catch (FileNotFoundException e) {
            System.out.println("File not found.");
        }
    }
}
```

### Explanation

| Code | Meaning |
|---|---|
| `line.split(",")` | Splits the line at the comma |
| `parts[0]` | First value, the name |
| `parts[1]` | Second value, the mark as text |
| `Integer.parseInt(parts[1])` | Converts mark from text to integer |

---

## 16. Java File Writing: Basic Pattern

To write to a file, Java can use `PrintWriter`.

### Java Code

```java
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class WriteSummary {
    public static void main(String[] args) {
        try {
            PrintWriter writer = new PrintWriter("summary.txt");

            writer.println("Average mark: 76.75");
            writer.println("Highest mark: 90");

            writer.close();

            System.out.println("File written successfully.");

        } catch (FileNotFoundException e) {
            System.out.println("Could not write file.");
        }
    }
}
```

### Output File: `summary.txt`

```text
Average mark: 76.75
Highest mark: 90
```

::: warning Important
`PrintWriter("summary.txt")` may overwrite the existing file content.
:::

---

## 17. Appending to a File

Appending means adding new content to the end of the file.

Java can use `FileWriter` with `true`.

```java
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class AppendResult {
    public static void main(String[] args) {
        try {
            FileWriter fileWriter = new FileWriter("log.txt", true);
            PrintWriter writer = new PrintWriter(fileWriter);

            writer.println("Program ran successfully.");

            writer.close();

        } catch (IOException e) {
            System.out.println("Could not append to file.");
        }
    }
}
```

### Key Line

```java
new FileWriter("log.txt", true)
```

The `true` means append mode.

---

## 18. Reading and Writing Together

### Problem

Read marks from `marks.txt`, calculate average, and write the result to `summary.txt`.

### Java Code

```java
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;

public class MarksSummary {
    public static void main(String[] args) {
        int total = 0;
        int count = 0;

        try {
            File file = new File("marks.txt");
            Scanner reader = new Scanner(file);

            while (reader.hasNextLine()) {
                String line = reader.nextLine();
                int mark = Integer.parseInt(line);

                total = total + mark;
                count++;
            }

            reader.close();

            double average = (double) total / count;

            PrintWriter writer = new PrintWriter("summary.txt");
            writer.println("Total: " + total);
            writer.println("Count: " + count);
            writer.println("Average: " + average);
            writer.close();

            System.out.println("Summary created.");

        } catch (FileNotFoundException e) {
            System.out.println("File not found.");
        }
    }
}
```

---

## 19. File Errors and Defensive Checks

### Common Problems

| Problem | Possible Cause |
|---|---|
| File not found | Wrong filename or folder |
| Number format error | File contains text when number expected |
| Empty file | Count is 0, average calculation may divide by zero |
| Wrong delimiter | Program expects comma but file uses space |
| Extra blank line | Parsing may fail |
| File overwritten | Write mode used instead of append mode |

### Defensive Example: Avoid Divide by Zero

```java
if (count > 0) {
    double average = (double) total / count;
    System.out.println("Average: " + average);
} else {
    System.out.println("No marks found.");
}
```

---

## 20. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Wrong file name | Program cannot find file | Check spelling and extension |
| Wrong folder | File is not in expected location | Keep file in project working directory |
| Forgetting to close file | Data may not be saved fully | Use `close()` |
| Reading number as String but not converting | Cannot do numeric calculation | Use `Integer.parseInt()` or `Double.parseDouble()` |
| Using write mode when append is needed | Existing content may be lost | Use append mode if needed |
| Printing not found too early | File may still have more lines | Check after loop |
| Not checking empty file | May divide by zero | Check `count > 0` |
| Wrong delimiter in `split()` | Data not separated correctly | Match delimiter to file format |
| Assuming all lines are valid | Program may crash on bad data | Validate or handle exceptions |
| Mixing file input and keyboard input confusingly | Hard to trace | Keep file-reading logic clear |

---

## 21. Guided Practice

### Practice 1: File Direction

For each case, identify whether it is file input or file output.

| Case | Input or Output? |
|---|---|
| Reading marks from `marks.txt` | ? |
| Saving report to `summary.txt` | ? |
| Loading names from a file | ? |
| Writing log messages to `log.txt` | ? |

<details>
<summary>Suggested Answer</summary>

| Case | Input or Output? |
|---|---|
| Reading marks from `marks.txt` | File input |
| Saving report to `summary.txt` | File output |
| Loading names from a file | File input |
| Writing log messages to `log.txt` | File output |

</details>

---

### Practice 2: Trace File Reading

File content:

```text
5
10
15
```

Code logic:

```text
total = 0
count = 0
for each line:
    convert line to number
    total = total + number
    count = count + 1
```

Complete the final total and count.

<details>
<summary>Suggested Answer</summary>

Trace:

| number | total | count |
|---:|---:|---:|
| 5 | 5 | 1 |
| 10 | 15 | 2 |
| 15 | 30 | 3 |

Final:

```text
total = 30
count = 3
```

</details>

---

### Practice 3: Split CSV Line

Given:

```java
String line = "Alice,85";
String[] parts = line.split(",");
```

What are `parts[0]` and `parts[1]`?

<details>
<summary>Suggested Answer</summary>

```text
parts[0] = "Alice"
parts[1] = "85"
```

</details>

---

### Practice 4: Number Conversion

Why is this needed?

```java
int mark = Integer.parseInt(parts[1]);
```

<details>
<summary>Suggested Answer</summary>

`parts[1]` is a String because it came from splitting a line of text. To use it in numeric calculations, it must be converted to an integer using `Integer.parseInt()`.

</details>

---

### Practice 5: Empty File Problem

A program calculates:

```java
double average = (double) total / count;
```

What problem occurs if the file is empty?

<details>
<summary>Suggested Answer</summary>

If the file is empty, `count` remains 0. Dividing by 0 causes an error or invalid result. The program should check `count > 0` before calculating the average.

</details>

---

## 22. Independent Practice

### Question 1

Explain why files are useful in programs.

### Question 2

Write IB pseudocode to open a file called `names.txt`, read all names, and output each name.

### Question 3

Write Java code to read each line from `names.txt` and output it.

### Question 4

A file contains one mark per line. Write Java code to calculate the total of all marks.

### Question 5

A file contains:

```text
Alice,85
Ben,72
```

Explain how `split(",")` can be used to separate the name and mark.

### Question 6

Write Java code to write `"Hello"` and `"Goodbye"` to a file called `messages.txt`.

### Question 7

Explain the difference between write mode and append mode.

### Question 8

Explain why a file might not be found by a Java program.

### Question 9

Write Java code that checks `count > 0` before calculating an average.

### Question 10

Create a test plan for a program that reads marks from a file.

---

## 23. Exam-style Questions

### Question 1 [4 marks]

Explain why a program may use a file instead of only variables.

<details>
<summary>Mark Scheme Style Answer</summary>

Variables store data temporarily while the program is running. When the program ends, the values are usually lost. A file stores data persistently on secondary storage, so the data can be accessed again later. This is useful for saving results, loading existing records, or processing large amounts of data without typing it each time.

</details>

---

### Question 2 [5 marks]

Describe how a program can read all lines from a text file.

<details>
<summary>Mark Scheme Style Answer</summary>

The program opens the file for reading. It uses a loop to continue while the end of the file has not been reached or while another line exists. In each iteration, it reads one line from the file and processes it. After all lines have been read, the file should be closed.

</details>

---

### Question 3 [6 marks]

Write Java code to read all lines from a file called `names.txt` and output each line.

<details>
<summary>Mark Scheme Style Answer</summary>

```java
try {
    File file = new File("names.txt");
    Scanner reader = new Scanner(file);

    while (reader.hasNextLine()) {
        String name = reader.nextLine();
        System.out.println(name);
    }

    reader.close();
} catch (FileNotFoundException e) {
    System.out.println("File not found.");
}
```

Possible marks:

- creates File object
- creates Scanner for file
- loops while another line exists
- reads next line
- outputs line
- closes reader or handles file-not-found error

</details>

---

### Question 4 [6 marks]

A file line is:

```text
Clara,90
```

Explain how a program can extract the name and mark.

<details>
<summary>Mark Scheme Style Answer</summary>

The program can read the line as a String and use the comma as a delimiter. In Java, `split(",")` separates the line into parts. `parts[0]` contains the name `"Clara"` and `parts[1]` contains the mark as text `"90"`. The mark can then be converted to an integer using `Integer.parseInt(parts[1])` before being used in calculations.

</details>

---

### Question 5 [6 marks]

Explain two possible errors when processing a file and how they could be handled.

<details>
<summary>Mark Scheme Style Answer</summary>

One possible error is that the file cannot be found because the filename or folder is wrong. The program can handle this using exception handling and display a clear message. Another possible error is that the file contains invalid data, such as text when a number is expected. The program can validate the data or catch the conversion error before using it in calculations. An empty file could also be checked by testing whether the count is greater than 0 before calculating an average.

</details>

---

## 24. Practice task
### Activity 1: Human File Reader

Students represent lines in a file. One student is the program reader.

Process:

1. Reader reads the first line.
2. Class processes the line.
3. Reader moves to next line.
4. Repeat until no lines remain.

This demonstrates line-by-line processing.

---

### Activity 2: CSV Split Cards

Give students lines like:

```text
Alice,85
Ben,72
Clara,90
```

Students physically split each line into:

```text
name
mark
```

Then decide which data type each part should become.

---

### Activity 3: File Error Detective

Students receive scenarios:

```text
wrong filename
empty file
missing comma
mark is written as "eighty"
write mode overwrites file
```

They identify the problem and suggest a defensive fix.

---

## 25. Independent practice
### Independent practice part A: Pseudocode

Write IB pseudocode to:

1. open `marks.txt`
2. read each mark
3. calculate total and count
4. calculate average
5. output average
6. close the file

---

### Independent practice part B: Java Reading

Write Java code that reads all lines from `items.txt` and outputs each line with a line number.

Example:

```text
1: Pencil
2: Notebook
3: Calculator
```

---

### Independent practice part C: Java Writing

Write Java code that writes three student names to `names.txt`.

---

### Independent practice part D: Explanation

In 4-5 sentences, explain why file processing often needs loops.

---

## 26. One-page Revision Summary

| Point | Summary |
|---|---|
| File | Stores data persistently |
| File input | Reading data from a file |
| File output | Writing data to a file |
| Text file | File containing readable characters |
| Record | One set of related data |
| Delimiter | Separates values in a line |
| CSV | Values separated by commas |
| `hasNextLine()` | Checks if another line exists |
| `nextLine()` | Reads the next line |
| `Integer.parseInt()` | Converts String to int |
| `PrintWriter` | Can write text to a file |
| Append | Adds to end of file |
| File not found | Common file error |
| Exam phrase | File processing allows data to be stored and retrieved after a program ends |

---

## 27. Quick Self-test

Before finishing this topic, students should be able to answer these:

1. Why are files useful?
2. What is the difference between reading and writing?
3. What is persistent storage?
4. Why does file reading often use a loop?
5. What does `hasNextLine()` check?
6. What does `nextLine()` do?
7. Why might `Integer.parseInt()` be needed?
8. What is a delimiter?
9. What is the difference between write and append?
10. What should a program do if a file is not found?

