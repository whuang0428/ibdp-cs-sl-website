# Documentation and Maintainability

::: tip Extension / enrichment content
This page helps you go beyond the SL core syllabus. It is not a required SL core topic unless your teacher tells you to study it. Use it after you are confident with the required SL topics or when it supports your IA-style project work.
:::

## Learning Goals

By the end of this page, you should be able to:

- explain why software should be understandable by humans
- describe what maintainability means in a small project
- write a useful README outline
- use comments carefully and only when they help
- improve unclear names in code
- explain known limitations and future improvements

## Key Idea

Good software should be understandable by humans, not only executable by computers.

A program might run correctly today, but later you may need to fix a bug, add a feature, explain the project, or help someone else use it. Clear documentation and readable code make this easier.

## Maintainability

Maintainability means the software is easier to understand, fix, and improve.

Maintainable software has code that:

- can be read
- can be changed
- allows bugs to be fixed
- allows features to be added

For a beginner project, maintainability often comes from simple habits: clear names, small functions, sensible files, useful documentation, and consistent formatting.

## Documentation Types

| Documentation Type | Purpose |
|---|---|
| README | Explains the project, how to run it, and important project details |
| Code comments | Explain parts of the code that may not be obvious |
| User instructions | Tell users how to use the software |
| Test evidence | Shows what was tested and what happened |
| Known limitations | Explains what the software does not yet do or cannot handle |

Documentation does not need to be long to be useful. It should help someone understand, run, test, or improve the project.

## README Structure

A useful README for a small project might include:

```text
Project name
Purpose
Features
How to run
How data is stored
Known limitations
Future improvements
```

Example:

```text
Project name
Library Borrowing System

Purpose
Helps a small school library track books, borrowers, and loans.

Features
- Add books
- Search books
- Borrow and return books
- Save book records to a file

How to run
Run main.py from the project folder.

How data is stored
Book records are saved in books.json.

Known limitations
The program does not support multiple libraries.

Future improvements
Add overdue date warnings.
```

## Good Comments vs Bad Comments

Useful comments explain why something is done.

Bad comments repeat code that is already obvious.

| Code or Comment | Why It Helps or Does Not Help |
|---|---|
| `# Check duplicate IDs before saving so each book can be found safely` | Useful because it explains the reason for the check |
| `# Increase count by 1` | Usually not useful if the code already says `count = count + 1` |
| `# Convert date text before comparing deadlines` | Useful because it explains why the conversion is needed |
| `# Set title to title` | Not useful because it repeats the code without adding meaning |

Use comments when they make code easier to understand. Do not use comments to explain every obvious line.

## Naming and Style

Readable code uses:

- clear variable names
- clear function names
- consistent formatting

Names should describe purpose.

| Unclear Name | Clearer Name |
|---|---|
| `x` | `bookTitle` |
| `n` | `numberOfTickets` |
| `data` | `studentRecords` |
| `doThing()` | `searchBooksByTitle()` |
| `process()` | `calculateTotalScore()` |

Consistent formatting also helps. Indentation, spacing, and naming style should be predictable across the project.

## Example: Improve Unclear Names

Unclear version:

```text
x = input("Title: ")
doThing(x)
```

Clearer version:

```text
bookTitle = input("Title: ")
searchBooksByTitle(bookTitle)
```

The clearer version helps the reader understand what the value stores and what the function does.

## Common Mistakes

- No README
- Too many obvious comments
- Unclear names
- No instructions for running the program
- No explanation of limitations
- Different files using different naming styles
- Important decisions only existing in the programmer's memory

## Quick Practice Questions

### 1. What does maintainability mean?

<details>
<summary>Answer</summary>

Maintainability means software is easier to understand, change, fix, and improve.

</details>

### 2. What should a README explain?

<details>
<summary>Answer</summary>

A README should explain the project purpose, features, how to run the program, how data is stored, known limitations, and possible future improvements.

</details>

### 3. What makes a comment useful?

<details>
<summary>Answer</summary>

A useful comment explains something that is not obvious from the code, especially why a decision or check is needed.

</details>

### 4. Why is `searchBooksByTitle()` clearer than `doThing()`?

<details>
<summary>Answer</summary>

`searchBooksByTitle()` describes the function's purpose. `doThing()` is vague and does not tell the reader what the function does.

</details>

## Small Task

Write a README outline for a small project, such as a quiz app, study task tracker, library system, or booking system.

Include:

- project name
- purpose
- main features
- how to run the program
- how data is stored
- known limitations
- future improvements
