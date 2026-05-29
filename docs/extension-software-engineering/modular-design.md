# Modular Design

## Learning Goals

By the end of this page, you should be able to:

- explain what modular design means
- split a large problem into smaller parts
- describe the purpose of functions, classes, and modules
- write functions with clear responsibilities
- recognise when a function is trying to do too much

## Key Idea

A large problem should be split into smaller parts that each have a clear job.

This is sometimes called separation of concerns. In simple terms, it means each part of the program should focus on one main concern instead of mixing everything together.

## Important Terms

| Term | Meaning |
|---|---|
| Function | A named block of code that performs a specific task |
| Module | A file or section of code that groups related functions or classes |
| Class | A blueprint for objects that store data and behaviour together |
| Responsibility | The main job a function, class, or module should perform |
| Helper function | A smaller function used by another function to keep the code simpler |

Clear responsibilities make code easier to understand. If you cannot explain what a function does in one short sentence, it may be doing too much.

## Bad Example: One Huge Function

A weak design might use one huge function that does everything:

```text
manageLibrary()
```

This one function might:

- ask the user for input
- check whether the input is valid
- search for books
- display results
- borrow or return books
- save records to a file

This becomes hard to read because many different jobs are mixed together. It also becomes hard to test because you cannot easily check one part without running the whole function.

## Better Example: Smaller Functions

A better design splits the work into smaller functions:

```text
getInput()
validateInput()
searchRecords()
displayResults()
saveRecords()
```

Each function has a clearer job:

- `getInput()` gets information from the user
- `validateInput()` checks that the input can be used
- `searchRecords()` finds matching data
- `displayResults()` shows the result to the user
- `saveRecords()` saves updated data

This design is easier to understand because each function name explains its purpose.

## Why Modular Design Helps

Modular design helps because code becomes:

- easier to read
- easier to test
- easier to debug
- easier to reuse
- easier to change later

For example, if file saving does not work, you can check `saveRecords()` or the storage module instead of searching through one giant file.

## Example: Library Borrowing System Modules

A Library Borrowing System could be split into these parts:

| Module or Class | Responsibility |
|---|---|
| `Book` | Stores information about one book, such as title, author, and ID |
| `Borrower` | Stores information about one person who can borrow books |
| `LoanRecord` | Stores information about one borrowing event |
| `LibraryManager` | Handles searching, borrowing, returning, and listing books |
| `StorageManager` | Saves and loads book, borrower, and loan data |

This structure keeps the main project easier to follow. A book stores book data. A storage manager handles files. A library manager handles library actions.

## Function Responsibility Table

| Function Name | Input | Output | Responsibility |
|---|---|---|---|
| `findBookById()` | Book ID and list of books | Matching book or no result | Search for one book |
| `borrowBook()` | Book ID and borrower ID | Updated loan record or error message | Borrow an available book |
| `returnBook()` | Book ID | Updated book status | Mark a borrowed book as returned |
| `isValidBookId()` | Book ID | `true` or `false` | Check whether the book ID format is allowed |
| `saveLoans()` | List of loan records | Saved file or confirmation | Store loan records for later use |

When planning functions, ask:

- What information does this function need?
- What should it return or change?
- What is its one main responsibility?

## Common Mistakes

- One function does too much
- Function names are unclear, such as `doStuff()` or `process()`
- The same code is repeated in several places
- Functions depend too much on global variables
- A function changes data in a surprising way
- A module contains unrelated code that should be separated

## Quick Practice Questions

### 1. Why is one huge function difficult to test?

<details>
<summary>Answer</summary>

It mixes many jobs together, so it is hard to test one part of the behaviour without running everything else.

</details>

### 2. What is the responsibility of a validation function?

<details>
<summary>Answer</summary>

A validation function checks whether input is allowed before the program uses it.

</details>

### 3. Why are clear function names important?

<details>
<summary>Answer</summary>

Clear names help readers understand what the function does without reading every line of its code.

</details>

### 4. What does separation of concerns mean in simple language?

<details>
<summary>Answer</summary>

It means different parts of the program should have different clear jobs instead of mixing many jobs together.

</details>

## Small Refactoring Task

A student is building a study planner. Their program currently has one long section of code that does all of these tasks:

- asks the user for a task name
- checks that the task name is not empty
- asks for a due date
- checks that the due date is valid
- stores the task in a list
- shows all incomplete tasks
- marks a task as complete
- saves tasks to a file
- loads tasks from a file

Group these tasks into functions or modules.

For each function or module, write:

- its name
- its main responsibility
- the input it needs
- the output it should produce
