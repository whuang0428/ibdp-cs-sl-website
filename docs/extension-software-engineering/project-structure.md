# Project Structure

## Learning Goals

By the end of this page, you should be able to:

- explain why project structure matters
- describe the purpose of common project files
- avoid putting all code into one large file
- choose clear file names for a small programming project
- plan a simple folder structure before writing code

## Key Idea

A project should be organised so each file has a clear purpose.

When a project is small, one file may seem easy. As the project grows, a single large file becomes harder to read, test, debug, and improve.

Good structure helps you:

- find code quickly
- understand what each part of the program does
- test smaller parts of the project
- avoid repeating the same logic
- make changes without breaking everything else

## Bad Structure Example

A weak project structure often looks like this:

```text
project/
└── main.py
```

or this:

```text
project/
└── Main.java
```

In this structure, one giant file may contain:

- input and output
- data storage
- validation
- calculations
- classes or records
- menu logic
- file saving and loading

This becomes difficult because:

- the file is long and tiring to read
- bugs are harder to find
- testing one part of the program is harder
- similar code may be copied in many places
- changing one feature may accidentally break another feature

## Better Python-Style Structure

A small Python project can be split into files like this:

```text
project/
├── main.py
├── models.py
├── storage.py
├── validation.py
└── README.md
```

Possible responsibilities:

- `main.py` starts the program and controls the main menu
- `models.py` stores classes or data structures
- `storage.py` saves and loads data
- `validation.py` checks user input
- `README.md` explains what the project does and how to run it

## Better Java-Style Structure

A small Java project can be split into files like this:

```text
src/
├── Main.java
├── Student.java
├── Record.java
├── RecordManager.java
└── FileHandler.java
```

Possible responsibilities:

- `Main.java` starts the program
- `Student.java` stores details about one student
- `Record.java` stores one record or result
- `RecordManager.java` manages a collection of records
- `FileHandler.java` saves and loads data

## Common File Responsibilities

| File Type | Main Responsibility |
|---|---|
| Main file | Starts the program and connects the main parts together |
| Model or class files | Define important objects, such as `Student`, `Book`, or `Task` |
| Storage or file handling | Save data, load data, and work with files |
| Validation | Check that input is allowed before using it |
| User interface | Show menus, ask for input, and display results |
| README | Explain the project, setup, features, and important notes |

Some small projects may combine a few responsibilities. That is fine at the start, but each file should still have a clear purpose.

## Before and After

| Before | After |
|---|---|
| One huge file contains everything | Several smaller files each have a clear job |
| File names are vague | File names describe purpose |
| Validation is repeated in many places | Validation is kept in one clear place |
| Saving and loading are mixed into menu code | File handling is separated from the menu |
| Testing one feature is difficult | Smaller functions and files are easier to test |
| Future changes feel risky | Changes are easier to make carefully |

## Project Structure for a Library Borrowing System

A simple Library Borrowing System might use this structure:

```text
library-project/
├── main.py
├── book.py
├── library.py
├── storage.py
├── validation.py
└── README.md
```

Possible responsibilities:

| File | Responsibility |
|---|---|
| `main.py` | Shows the menu and starts the program |
| `book.py` | Defines what information a book should store |
| `library.py` | Handles borrowing, returning, searching, and listing books |
| `storage.py` | Saves and loads book data |
| `validation.py` | Checks book IDs, empty titles, and menu choices |
| `README.md` | Explains how to run and use the system |

For a Java version, similar responsibilities could be split across `Main.java`, `Book.java`, `Library.java`, `FileHandler.java`, and `InputValidator.java`.

## Common Mistakes

- Putting everything in one file
- Using unclear file names such as `stuff.py` or `things.java`
- Duplicating the same logic in different files
- Mixing interface, storage, and program logic too much
- Creating too many files before the project needs them
- Moving code into files without knowing each file's purpose

## Quick Practice Questions

### 1. Why can one giant `main.py` or `Main.java` become a problem?

<details>
<summary>Answer</summary>

It can become hard to read, test, debug, and maintain because many different responsibilities are mixed together in one long file.

</details>

### 2. What should a main file usually do?

<details>
<summary>Answer</summary>

A main file usually starts the program and connects the main parts together. It should not contain every detail of the whole project.

</details>

### 3. Why is `storage.py` a clearer file name than `stuff.py`?

<details>
<summary>Answer</summary>

`storage.py` tells you that the file is probably used for saving and loading data. `stuff.py` does not explain its purpose.

</details>

### 4. What is one reason to keep validation code in a clear place?

<details>
<summary>Answer</summary>

It avoids repeating the same checks in many places and makes it easier to update input rules later.

</details>

## Small Task

A student is building a messy homework tracker. The current plan is to put the menu, task list, due date checks, file saving, and input validation all inside one large `main.py` file.

Propose a better file structure.

Include:

- the file names
- the purpose of each file
- which file should start the program
- which file should save and load homework tasks
