# File Processing

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why files are used
- distinguish reading, writing, and appending
- describe the basic file processing steps
- understand persistent storage
- write simple Java file output and input examples
- identify common file handling errors

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Persistent data storage |
| Connected units | Variables, Arrays, Testing, Databases |
| Exam relevance | File concepts, read/write logic, scenario explanations |

---

## 3. Key Terms

| Term | 中文解释 | Meaning |
|---|---|---|
| File | 文件 | Stored data outside the running program |
| Read | 读取 | Get data from a file |
| Write | 写入 | Save data to a file, often replacing old data |
| Append | 追加 | Add data to the end of a file |
| Close | 关闭 | Finish using a file safely |
| Persistent storage | 持久存储 | Data kept after program ends |
| File path | 文件路径 | Location of a file |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

变量和数组通常只在程序运行时保存数据。程序结束后，这些数据通常会消失。

**File processing（文件处理）** 让程序可以把数据保存到文件中，之后再次读取。常见操作包括：

- read：从文件读取数据
- write：写入文件，可能覆盖旧内容
- append：在文件末尾添加新内容
- close：关闭文件，确保数据安全保存

</template>

<template #en>

### English Explanation

Variables and arrays usually store data only while the program is running. When the program ends, that data is often lost.

**File processing** allows a program to save data to a file and read it again later. Common operations include:

- read: get data from a file
- write: save data to a file, possibly replacing old content
- append: add new data to the end of a file
- close: finish using the file safely

</template>
</LangBlock>

---

## 5. Real-life Example

A quiz program saves scores to a file.

| Operation | Purpose |
|---|---|
| Write | Save first score list |
| Append | Add new score after another student plays |
| Read | Load scores for analysis |
| Close | Finish file operation safely |

---

## 6. IB Pseudocode Pattern

```text
OPEN file "scores.txt" FOR WRITING
WRITE "Alice,85" TO file
CLOSE file
```

```text
OPEN file "scores.txt" FOR READING
WHILE NOT end of file DO
    READ line FROM file
    OUTPUT line
END WHILE
CLOSE file
```

---

## 7. Java Code Example

### Writing a file

```java
import java.io.FileWriter;
import java.io.IOException;

public class WriteFileExample {
    public static void main(String[] args) {
        try {
            FileWriter writer = new FileWriter("scores.txt");
            writer.write("Alice,85\n");
            writer.write("Ben,72\n");
            writer.close();
            System.out.println("File written.");
        } catch (IOException e) {
            System.out.println("An error occurred.");
        }
    }
}
```

### Reading a file

```java
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class ReadFileExample {
    public static void main(String[] args) {
        try {
            File file = new File("scores.txt");
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

## 8. Line-by-line Code Explanation

| Code Part | Explanation |
|---|---|
| `FileWriter` | Used to write text to a file |
| `writer.write(...)` | Writes data to file |
| `writer.close()` | Closes file safely |
| `File file = new File(...)` | Represents the file |
| `Scanner reader = new Scanner(file)` | Reads from file |
| `reader.hasNextLine()` | Checks whether more lines exist |
| `reader.nextLine()` | Reads one line |

---

## 9. Step-by-step Execution

Writing:

| Step | Action |
|---|---|
| 1 | Open file |
| 2 | Write Alice score |
| 3 | Write Ben score |
| 4 | Close file |

Reading:

| Step | Action |
|---|---|
| 1 | Open file |
| 2 | Check if line exists |
| 3 | Read line |
| 4 | Output line |
| 5 | Repeat until file ends |
| 6 | Close file |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Forgetting close | Data may not save properly | Always close file |
| Wrong file path | File cannot be found | Check location |
| Writing instead of appending | Old data may be overwritten | Choose mode carefully |
| Ignoring exceptions | Program may crash | Use try-catch |
| Not checking file format | Data may be read incorrectly | Use consistent format |

---

## 11. Guided Practice

Explain why a score file is useful.

<details>
<summary>Suggested Answer</summary>

A file keeps scores after the program ends, so they can be loaded and used again later.

</details>

State the difference between write and append.

<details>
<summary>Suggested Answer</summary>

Writing may replace existing content, while appending adds new data to the end of the file.

</details>

---

## 12. Independent Practice

1. Write pseudocode to save a username to a file.
2. Write pseudocode to read all lines from a file.
3. Explain why file format matters.
4. Identify one possible file processing error.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

Explain one advantage of storing data in a file.

<details>
<summary>Mark Scheme Style Answer</summary>

Data stored in a file is persistent, so it can still be accessed after the program ends.

</details>

### Question 2 [4 marks]

Describe the steps needed to read records from a file.

<details>
<summary>Mark Scheme Style Answer</summary>

Open the file, read each record or line, process the data, and close the file when finished.

</details>

---

## 14. Classroom Activity

Students design a file format for storing quiz results, then discuss how each line should be read and processed.

---

## 15. Homework

Write Java code that writes three student names to a file, then describe how the file could be read later.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| File | Stores data outside program |
| Read | Get data from file |
| Write | Save data to file |
| Append | Add data to end |
| Exam phrase | "Files provide persistent storage because data remains after the program stops." |
