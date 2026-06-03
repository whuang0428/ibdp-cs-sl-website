# Data Storage

::: tip Extension / enrichment content
This page helps you go beyond the SL core syllabus. It is not a required SL core topic unless your teacher tells you to study it. Use it after you are confident with the required SL topics or when it supports your IA-style project work.
:::

## Learning Goals

By the end of this page, you should be able to:

- explain why software may need to store data after closing
- compare simple storage options for small projects
- decide when a list, CSV file, JSON file, or small database is suitable
- explain the difference between temporary and persistent data
- avoid over-engineering data storage

## Key Idea

Software often needs to store data after the program closes.

If data only exists while the program is running, it will be lost when the program stops. Many projects need a way to save data and load it again later.

## Storage Options

### Variables, Arrays, and Lists

Variables, arrays, and lists store data while the program is running.

They are useful for:

- temporary calculations
- current menu choices
- data that has just been loaded from a file
- small collections used during one run of the program

They are not enough if the data must still exist after the program closes.

### CSV File

A CSV file stores data in rows and columns. Each line is usually one record.

Example:

```text
book_id,title,author,is_borrowed
B001,The Hobbit,J.R.R. Tolkien,false
B002,Wonder,R.J. Palacio,true
```

CSV is useful when the data is simple and table-like.

### JSON File

A JSON file stores structured data using names and values.

Example:

```json
[
  {
    "book_id": "B001",
    "title": "The Hobbit",
    "author": "J.R.R. Tolkien",
    "is_borrowed": false
  }
]
```

JSON is useful when records have more structure, such as lists inside records or nested data.

### SQLite or Small Relational Database

SQLite is a small database stored in a file. It can be useful when the project has several related tables or needs stronger searching and filtering.

For example, a library system might have:

- a books table
- a borrowers table
- a loans table

SQLite is more powerful than a simple file, but it also adds more complexity.

### Cloud Storage

Cloud storage means data is stored online instead of only on one computer.

This can be useful when users need to share data across devices, but it usually requires accounts, internet access, permissions, and extra setup. For beginner projects, local files are often enough.

## Comparison Table

| Storage Option | Suitable For | Advantages | Limitations |
|---|---|---|---|
| Variables, arrays, lists | Temporary data during one program run | Simple and fast | Data is lost when the program closes |
| CSV file | Simple table-like data | Easy to read, edit, and export | Not ideal for nested data or complex relationships |
| JSON file | Structured records | Good for named fields and nested data | Can become harder to manage if the file gets very large |
| SQLite database | Related data and stronger searching | Supports tables, relationships, and queries | More setup and more concepts to learn |
| Cloud storage | Shared online data | Can work across devices | Requires internet, accounts, permissions, and extra security care |

## Temporary Data vs Persistent Data

Temporary data only exists while the program is running.

Examples:

- the current menu choice
- a calculation result
- a list of records loaded into memory

Persistent data is saved so it can be used again after the program closes.

Examples:

- saved study tasks
- library book records
- quiz scores
- user settings

A common project pattern is:

```text
load data from storage
use the data in variables or lists
change the data while the program runs
save the updated data before closing
```

## Example: Library Borrowing System

### What Data Needs to Be Stored?

A Library Borrowing System may need to store:

- book ID
- title
- author
- whether the book is borrowed
- borrower ID
- borrower name
- date borrowed
- date returned

### Possible CSV Structure

For a simple version, one CSV file might store books:

```text
book_id,title,author,is_borrowed,borrower_id
B001,The Hobbit,J.R.R. Tolkien,false,
B002,Wonder,R.J. Palacio,true,S014
```

This works if the project is small and each book only needs simple information.

### Possible JSON Structure

A JSON version could store more detailed records:

```json
[
  {
    "book_id": "B001",
    "title": "The Hobbit",
    "author": "J.R.R. Tolkien",
    "is_borrowed": false,
    "borrower": null
  },
  {
    "book_id": "B002",
    "title": "Wonder",
    "author": "R.J. Palacio",
    "is_borrowed": true,
    "borrower": {
      "borrower_id": "S014",
      "name": "Ava Chen"
    }
  }
]
```

JSON can be clearer when one record contains related details.

### When SQLite Might Be Useful

SQLite might be useful if the library system needs:

- many books and borrowers
- a history of all loans
- searches by borrower, book, or date
- separate records for books, borrowers, and loans

For a very small project, a CSV or JSON file may be enough.

## Avoid Over-Engineering

Do not use a database just to look advanced if a file is enough.

Choose the simplest storage method that fits the project. A clear CSV or JSON file is often better than a database that is poorly understood or unfinished.

## Data Storage Decision Checklist

Ask these questions before choosing storage:

- How much data will the project store?
- Is the data structured in clear fields?
- Are there relationships between different types of data?
- Does the data need to be searched or filtered often?
- Does the data need to persist after closing the program?
- Will the storage method be simple enough to implement and test?

## Common Mistakes

- Storing everything in one long string
- Having no save or load feature when persistent data is needed
- Choosing a database too early
- Keeping no backup of important data
- Using unclear field names such as `x`, `data1`, or `thing`
- Saving data in a format that is hard to read or debug

## Quick Practice Questions

### 1. Why are variables and lists not enough for saved data?

<details>
<summary>Answer</summary>

Variables and lists usually store temporary data while the program is running. Their contents are lost when the program closes unless the data is saved somewhere persistent.

</details>

### 2. When might CSV be a good choice?

<details>
<summary>Answer</summary>

CSV can be a good choice when the data is simple, table-like, and made of rows and columns.

</details>

### 3. Why might JSON be useful for a project?

<details>
<summary>Answer</summary>

JSON is useful when records have named fields and more structure, such as nested data or lists inside records.

</details>

### 4. Why should you avoid choosing a database too early?

<details>
<summary>Answer</summary>

A database adds extra complexity. If a CSV or JSON file can solve the problem clearly, it may be easier to build, test, and explain.

</details>

## Small Task

For each app idea, choose a suitable storage option and explain why.

| App Idea | Storage Choice | Reason |
|---|---|---|
| A quiz app that saves each user's score |  |  |
| A study task tracker with tasks, due dates, and completion status |  |  |
| A library system with books, borrowers, and loan history |  |  |

Try to choose the simplest storage method that still meets the needs of the project.
