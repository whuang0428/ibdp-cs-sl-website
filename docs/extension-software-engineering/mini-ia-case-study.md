# Mini IA Case Study

This case study shows how a small software project can be planned and improved using software engineering ideas.

The example is a simple Library Borrowing System. It is small enough for a beginner project, but it still connects requirements, structure, modules, storage, validation, testing, version control, and documentation.

## Project Idea

The project is a simple library borrowing system for a small school library or classroom book collection.

The system should help a user record books, search for books, borrow books, return books, and see which books are currently borrowed.

## User Needs

The user needs to:

- record books
- search books
- borrow books
- return books
- see overdue or borrowed books

These needs guide the project. Features should be chosen because they help satisfy these needs.

## Requirements Table

| Requirement ID | Requirement | Related Feature |
|---|---|---|
| R01 | The system must allow the user to add a book with an ID, title, and author | Add book |
| R02 | The system must allow the user to search for a book by ID or title | Search book |
| R03 | The system must allow an available book to be borrowed | Borrow book |
| R04 | The system must prevent unavailable books from being borrowed again | Borrow validation |
| R05 | The system must allow a borrowed book to be returned | Return book |
| R06 | The system must list all currently borrowed books | List borrowed books |
| R07 | The system must save and load book and loan data | Save/load data |

## Feature List

- Add book
- Search book
- Borrow book
- Return book
- List borrowed books
- Save and load data

These features are enough for a useful first version. More features can be added later after the core system works.

## Suggested Project Structure

A Python-style structure could look like this:

```text
library-project/
├── main.py
├── book.py
├── borrower.py
├── loan_record.py
├── library_manager.py
├── storage_manager.py
├── validation.py
└── README.md
```

A Java-style structure could look like this:

```text
src/
├── Main.java
├── Book.java
├── Borrower.java
├── LoanRecord.java
├── LibraryManager.java
├── StorageManager.java
└── InputValidator.java
```

The exact names can change, but each file should have a clear purpose.

## Data Model

The project can use three main data types.

| Data Type | Example Fields | Purpose |
|---|---|---|
| Book | book ID, title, author, borrowed status | Stores details about one book |
| Borrower | borrower ID, name | Stores details about one person borrowing books |
| LoanRecord | book ID, borrower ID, borrow date, return date | Stores details about one borrowing event |

These data types help the project stay organised.

## Storage Choice

The project needs persistent data because book and loan records should still exist after the program closes.

| Storage Option | Suitability for This Project |
|---|---|
| CSV | Good for a simple version with flat book records |
| JSON | Good for storing books, borrowers, and loan records with clear field names |
| SQLite | Useful if the project grows and needs stronger searching or related tables |

For a beginner version, JSON is a suitable choice because it can store structured records clearly without needing a full database.

Example JSON structure:

```json
{
  "books": [
    {
      "book_id": "B001",
      "title": "The Hobbit",
      "author": "J.R.R. Tolkien",
      "is_borrowed": false
    }
  ],
  "borrowers": [],
  "loans": []
}
```

## Modular Design

Possible functions and classes:

| Function or Class | Responsibility |
|---|---|
| `Book` | Store information about one book |
| `Borrower` | Store information about one borrower |
| `LoanRecord` | Store one borrowing record |
| `addBook()` | Add a new book after validation |
| `searchBooks()` | Find books by ID or title |
| `borrowBook()` | Borrow a book if it is available |
| `returnBook()` | Return a book if it is currently borrowed |
| `listBorrowedBooks()` | Show all books currently borrowed |
| `saveData()` | Save project data to a file |
| `loadData()` | Load project data from a file |
| `isValidBookId()` | Check whether a book ID can be used |

Each function or class should have one main job.

## Validation Rules

The system should check data before accepting it.

| Rule | Reason |
|---|---|
| Book ID cannot be empty | Each book needs an identifier |
| Duplicate book ID is not allowed | Each book ID should refer to one book only |
| Book title cannot be empty | A book record needs a useful title |
| Cannot borrow an unavailable book | A book should not be borrowed by two people at once |
| Cannot return a book not currently borrowed | The return action should only apply to borrowed books |
| Delete actions should ask for confirmation | Important data should not be removed accidentally |

Clear validation makes the system safer and easier to use.

## Testing Plan

| Test ID | Feature | Test Data | Expected Result | Test Type |
|---|---|---|---|---|
| T01 | Add book | ID: B001, title: The Hobbit, author: J.R.R. Tolkien | Book is added successfully | Normal |
| T02 | Add book | Empty book ID | System rejects the book and asks for an ID | Invalid |
| T03 | Add book | Duplicate ID: B001 | System rejects the duplicate ID | Invalid |
| T04 | Search book | Search title: Hobbit | Matching book is shown | Normal |
| T05 | Search book | Empty search text | System asks the user to enter a search term | Boundary-style |
| T06 | Borrow book | Book ID: B001 when available | Book status changes to borrowed | Normal |
| T07 | Borrow book | Book ID: B001 when already borrowed | System prevents borrowing again | Invalid |
| T08 | Return book | Book ID: B001 when borrowed | Book status changes to available | Normal |
| T09 | Return book | Book ID: B001 when not borrowed | System explains that the book is not currently borrowed | Invalid |
| T10 | Save/load data | Add book, save, close, reopen, load | Saved book appears after loading | Regression |

One test is not enough. The system needs normal, invalid, and boundary-style tests to show that features work in different situations.

## Version Control Plan

Useful commits could include:

- Create project structure
- Add book model
- Add search feature
- Add borrow and return validation
- Add save and load feature
- Add testing evidence

Each commit should represent a clear step in the project. This makes the project history easier to understand.

## Documentation Plan

A README could include:

```text
Project name
Purpose
Features
How to run
How data is stored
Validation rules
Testing summary
Known limitations
Future improvements
```

User instructions could explain:

- how to add a book
- how to search for a book
- how to borrow a book
- how to return a book
- what error messages mean
- where saved data is stored

Documentation helps another person understand and use the project.

## Possible Improvements

After the first version works, possible improvements include:

- partial search
- overdue date calculation
- simple GUI
- export report
- sorting books by title or author
- showing borrowing history

Improvements should be added carefully, tested, and committed as separate steps.

## Final Reflection

This project becomes more mature when software engineering ideas are used.

Requirements keep the project focused on user needs. Project structure and modular design make the code easier to read and change. Storage keeps data after the program closes. Validation and error handling make the system safer. Testing gives evidence that features work. Version control records progress. Documentation helps people understand, run, and improve the project.

Together, these habits turn a small program into a clearer and more reliable software project.

## Quick Practice Questions

### 1. Why should features be linked to user needs?

<details>
<summary>Answer</summary>

Features should be linked to user needs so the project solves real problems instead of adding random functions.

</details>

### 2. Why is JSON a suitable storage choice for this beginner version?

<details>
<summary>Answer</summary>

JSON can store structured records with clear field names without requiring a full database.

</details>

### 3. Why should borrowing an unavailable book be blocked?

<details>
<summary>Answer</summary>

A book should not be borrowed by two people at the same time, so the system must check whether it is available before borrowing.

</details>

### 4. What is the purpose of regression testing in this project?

<details>
<summary>Answer</summary>

Regression testing checks that old features still work after new features are added or bugs are fixed.

</details>

### 5. Why are clear commits useful?

<details>
<summary>Answer</summary>

Clear commits show the project's progress and make it easier to understand, track, or recover changes.

</details>
