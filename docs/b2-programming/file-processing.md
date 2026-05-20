# File Processing

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why files are used in programs
- distinguish between reading and writing files
- describe the basic steps of file processing
- identify common file handling errors

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B2 Programming |
| Label | SL Core |
| Main skill | Persistent data storage |

## 3. Key Terms

| Term | Meaning |
|---|---|
| File | A collection of data stored outside the program |
| Read | Get data from a file |
| Write | Save data to a file |
| Append | Add new data to the end of a file |
| File path | The location of a file |
| Persistent storage | Storage that keeps data after the program ends |

## 4. Concept Explanation

Variables and arrays store data while a program is running. However, this data is usually lost when the program ends.

Files allow data to be stored permanently.

Common file operations include:

| Operation | Purpose |
|---|---|
| Read | Load existing data from a file |
| Write | Create or replace file contents |
| Append | Add new data without deleting old data |
| Close | Finish using the file safely |

## 5. Step-by-step Example

Problem: Save a student's score to a file.

Steps:

1. Open the file.
2. Write the student's name and score.
3. Close the file.

Problem: Read scores from a file.

Steps:

1. Open the file.
2. Read each line.
3. Process the data.
4. Close the file.

## 6. Visual Structure

::: info File Processing Structure

**Writing data**

Open file  
→ Write data  
→ Close file  

**Reading data**

Open file  
→ Read data  
→ Process data  
→ Close file  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Forgetting to close the file | Data may not be saved properly |
| Using the wrong file path | The program may not find the file |
| Writing instead of appending | Existing data may be overwritten |
| Not checking file format | The program may read data incorrectly |

## 8. Exam-style Question

A program stores the names and marks of students in a file.

**Explain one advantage of storing the data in a file instead of only using variables.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- data in a file is stored permanently
- the data can still be accessed after the program has ended
- variables usually lose their values when the program stops

## 10. Quick Check

1. What is the difference between read and write?
2. Why should a file be closed after use?
3. What does append mean?
