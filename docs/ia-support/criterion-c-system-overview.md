# Criterion C: System Overview

## 1. What Criterion C Is About

Criterion C: System overview shows how the product is designed as a system. It should explain the main components, how they connect, what algorithms they use, and how the product will be tested.

Criterion C is not just a screenshot of the final product. It is also not just a list of features. It should make the system understandable to another programmer by showing the structure behind the product.

Criterion C should connect to:

- the problem specification from Criterion A
- the success criteria from Criterion A
- the development plan from Criterion B
- the development evidence that will appear in Criterion D

## 2. What Criterion C Should Include

| Part | What to include | Why it matters |
|---|---|---|
| System model | Main components and how they connect | Shows the structure of the product |
| Component relationships | How data or control moves between parts | Shows how the system works as a whole |
| Algorithms | Pseudocode, flowcharts, or clear natural language steps | Shows computational thinking |
| User interface design | Annotated sketches or screen plans | Shows how users interact with the product |
| Data model / storage design | Files, tables, classes, or data structures | Shows how information is organised |
| Testing strategy | Planned functional and structural tests | Shows how the solution will be checked |

## 3. System Model

A system model is a high-level view of the product. It shows the important parts of the system and how those parts connect.

Possible components include:

- user interface
- input validation
- data storage
- search module
- calculation module
- report generation
- authentication / user role module
- database tables
- classes and objects

Example for a Library Borrowing System:

```text
User Interface
    |
    v
Input Validation
    |
    v
Library Manager
    |-- Book Records
    |-- Borrower Records
    |-- Loan Records
    `-- Storage Manager
```

You can use diagrams, flowcharts, structured lists, or other clear models, depending on the project. Choose the format that explains your system most clearly.

## 4. Choosing the Right Diagram Type

| Project type | Useful system overview evidence |
|---|---|
| Procedural program | Flowcharts, module breakdown, structured pseudocode |
| OOP project | UML class diagram, object relationship diagram, method responsibility table |
| Database project | ERD, table design, normalized tables, data dictionary |
| Web app | Page flow diagram, frontend/backend/storage structure, API or data flow |
| Data processing project | Data flow diagram, algorithm steps, input-process-output model |
| GUI project | Annotated screen sketches and event flow |

Do not include many diagrams just to look impressive. Each diagram should help explain the system.

## 5. Component Responsibility Table

Template:

| Component | Responsibility | Input | Output | Related success criteria |
|---|---|---|---|---|
|  |  |  |  |  |

Example for a Library Borrowing System:

| Component | Responsibility | Input | Output | Related success criteria |
|---|---|---|---|---|
| Add Book Form | Collect and validate new book details | Book ID, title, author, category | New book record or error message | SC1 |
| Search Module | Find books that match a search term | Title or borrower search text | Matching book records | SC2 |
| Borrow / Return Module | Update loan status and prevent invalid borrowing | Book ID, borrower name, date, action | Updated loan record or warning | SC3, SC4, SC5 |
| Storage Manager | Save and load records | Book and loan data | Stored file/database records | SC6 |
| Report View | Summarise current borrowing information | Stored loan records | Borrowed book list or overdue summary | SC2, SC6 |

## 6. Algorithms in Criterion C

Algorithms should show how important parts of the system work. They can be written as pseudocode, flowcharts, or clear natural language steps.

- Do not include every tiny line of code.
- Focus on the important logic.
- Algorithms should connect to system components.
- Algorithms should later match the development evidence in Criterion D.

| Algorithm | Why it matters |
|---|---|
| Add new record | Shows validation and storage |
| Search records | Shows selection, iteration, and matching |
| Borrow / return item | Shows decision-making and state changes |
| Generate summary | Shows aggregation or calculation |
| Validate input | Shows defensive programming |

## 7. Example Algorithm: Search Books by Title

```text
INPUT searchText
SET results TO empty list

FOR each book IN bookList
    IF book title contains searchText
        ADD book TO results
    END IF
END FOR

IF results is empty
    DISPLAY "No matching books found"
ELSE
    DISPLAY results
END IF
```

This algorithm supports a success criterion about searching records. It also shows iteration, selection, matching, and output.

## 8. User Interface Design

UI design in Criterion C should show how the user will interact with the product before or during development.

Useful UI planning may include:

- main menu
- input forms
- search screen
- results table
- error messages
- confirmation messages
- report / summary screen

| Screen | Purpose | Important elements |
|---|---|---|
| Main menu | Navigate main features | Add, search, borrow, return, report buttons |
| Add book screen | Enter new book data | Book ID, title, author, category, validation message |
| Search screen | Find records | Search box, filter option, results table |
| Borrow screen | Mark book as borrowed | Borrower name, book ID, date, availability check |
| Report screen | View summary | Borrowed books, overdue books, export option if included |

## 9. Data Model and Storage Design

Students should show how data will be stored and organised. The format depends on the project.

### File-based project

| Field | Example | Purpose |
|---|---|---|
| bookID | B001 | Unique book identifier |
| title | Animal Farm | Book title |
| author | George Orwell | Author name |
| status | Available / Borrowed | Availability |
| borrower | Alex Chen | Current borrower if borrowed |

### Database project

A database project should show tables, keys, relationships, and a data dictionary. The design should make clear how records connect and how the database supports the success criteria.

### OOP project

An OOP project should show classes, attributes, methods, and relationships. The design should make clear what each class is responsible for and how objects interact.

## 10. Testing Strategy in Criterion C

Criterion C should include a planned testing strategy. It should not wait until after development. The strategy should connect to success criteria and major algorithms.

### Functional testing

Functional testing checks whether the product meets the success criteria.

| Success criterion | Feature tested | Test data | Expected result |
|---|---|---|---|
|  |  |  |  |

### Structural testing

Structural testing checks whether important algorithms handle valid, invalid, and extreme cases.

| Algorithm | Test type | Test data | Expected result |
|---|---|---|---|
|  |  |  |  |

## 11. Example Testing Strategy

Functional tests for a Library Borrowing System:

| Feature tested | Test data | Expected result |
|---|---|---|
| Add valid book record | Book ID B001, title Animal Farm, author George Orwell | New book appears in book list |
| Search by title | Search text `Animal` | Matching book record is displayed |
| Borrow available book | Book ID B001, borrower Alex Chen | Book status changes to borrowed |
| Reject borrowing already borrowed book | Try to borrow B001 again | Clear warning is displayed and status does not change |
| Save and reload records | Add record, close program, reopen program | Saved record is loaded again |

Structural tests for a Library Borrowing System:

| Algorithm | Test type | Test data | Expected result |
|---|---|---|---|
| Add book validation | Invalid | Empty title | Record is rejected with an error message |
| Add book validation | Invalid | Duplicate book ID B001 | Duplicate ID is rejected |
| Search books | Extreme | Search term with no match | "No matching books found" message is shown |
| Search books | Valid variation | Lowercase or uppercase search text | Matching records are still found if case-insensitive search is included |
| Return book | Invalid | Return a book that is not borrowed | Clear warning is shown and record is not changed |

## 12. Linking Criterion C to Other Criteria

| Link | How Criterion C should connect |
|---|---|
| Criterion A | System model and tests should match success criteria |
| Criterion B | System overview should follow the planned structure |
| Criterion D | Development should implement the algorithms and components described here |
| Criterion E | Evaluation should use testing evidence linked to success criteria |

## 13. Common Mistakes in Criterion C

| Mistake | Why it is a problem | Better approach |
|---|---|---|
| Only showing screenshots | Screenshots do not explain system structure | Include system model, algorithms, data design, and UI plan |
| Diagrams do not match the final product | The overview becomes unreliable | Keep diagrams aligned with actual design |
| No algorithms | Computational thinking is not shown clearly | Include important algorithms in pseudocode or flowcharts |
| No testing strategy | Testing later becomes weak | Plan tests against success criteria and algorithms |
| Too many unnecessary diagrams | Makes the section unclear | Use diagrams that support understanding |
| Data model missing | Storage and processing are unclear | Show fields, tables, classes, or data structures |

## 14. Criterion C Checklist

- [ ] I have included a system model.
- [ ] I have shown the main components and relationships.
- [ ] I have chosen diagram types suitable for my project.
- [ ] I have included algorithms for important components.
- [ ] My algorithms connect to the system model.
- [ ] I have included UI design or screen planning where relevant.
- [ ] I have shown how data will be stored or organised.
- [ ] I have included a testing strategy.
- [ ] My testing strategy links to success criteria.
- [ ] My structural tests include valid, invalid, and extreme cases where suitable.
- [ ] My Criterion C connects clearly to Criteria A and B.

## 15. Quick Check

1. What is the purpose of Criterion C?

<details>
<summary>Answer</summary>

Criterion C: System overview explains how the product is structured as a system, including components, relationships, algorithms, data design, UI planning, and testing strategy.

</details>

2. Why are screenshots alone not enough?

<details>
<summary>Answer</summary>

Screenshots show what the product looks like, but they do not explain how the system is structured, how data moves, what algorithms are used, or how the product will be tested.

</details>

3. What type of diagram might an OOP project use?

<details>
<summary>Answer</summary>

An OOP project might use a UML class diagram, an object relationship diagram, or a method responsibility table to show classes, attributes, methods, and relationships.

</details>

4. What should an algorithm in Criterion C show?

<details>
<summary>Answer</summary>

An algorithm should show the important logic behind a component, such as validation, searching, decision-making, calculations, or state changes.

</details>

5. What is the difference between functional and structural testing?

<details>
<summary>Answer</summary>

Functional testing checks whether the product meets success criteria. Structural testing checks whether important algorithms handle valid, invalid, and extreme cases correctly.

</details>

6. Why should testing strategy link to success criteria?

<details>
<summary>Answer</summary>

Success criteria define what the product should achieve. Linking tests to them makes testing more purposeful and gives stronger evidence for evaluation later.

</details>
