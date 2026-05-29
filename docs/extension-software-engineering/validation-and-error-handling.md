# Validation and Error Handling

## Learning Goals

By the end of this page, you should be able to:

- explain why validation is important
- describe common validation checks
- handle common errors safely
- write clear error messages for users
- plan validation rules for a small software project

## Key Idea

Good software should expect users to make mistakes and should respond safely.

Users may type the wrong thing, leave a field blank, choose an impossible option, or try an action that does not make sense. A reliable program should not crash or accept bad data without checking it.

## Validation

Validation means checking data before the program accepts or uses it.

| Validation Check | Meaning | Example |
|---|---|---|
| Presence check | Checks that data has been entered | A book title must not be empty |
| Type check | Checks that data is the correct type | Age must be a number |
| Range check | Checks that a value is within allowed limits | Age must be between 0 and 120 |
| Format check | Checks that data follows a pattern | A date should use `YYYY-MM-DD` format |
| Length check | Checks the number of characters | A password must be at least 8 characters |
| Duplicate check | Checks that a value is not already used | A book ID must be unique |

Validation helps stop invalid data from entering the system.

## Error Handling

Error handling means deciding what the program should do when something goes wrong.

Common errors include:

- file not found
- invalid number
- empty input
- failed save
- unexpected user action

Good error handling should protect the program and help the user recover.

## Bad vs Better Examples

| Situation | Bad Response | Better Response |
|---|---|---|
| User enters text instead of a number | Program crashes | Show a message and ask for the number again |
| User leaves a required field empty | Empty value is saved | Explain which field is required |
| Data file is missing | Program stops with a technical error | Show a clear message and create a new file if suitable |
| User chooses an invalid menu option | Program behaves unpredictably | Show valid options and ask again |
| Save fails | Program says nothing | Tell the user the save failed and keep the data in memory if possible |

The aim is not to hide every problem. The aim is to respond in a controlled and helpful way.

## Simple Pseudocode Examples

### Validate Age

```text
INPUT ageText

IF ageText is empty THEN
    OUTPUT "Please enter an age."
ELSE IF ageText is not a number THEN
    OUTPUT "Age must be a number."
ELSE IF age < 0 OR age > 120 THEN
    OUTPUT "Age must be between 0 and 120."
ELSE
    OUTPUT "Age accepted."
END IF
```

### Validate Date

```text
INPUT dateText

IF dateText is empty THEN
    OUTPUT "Please enter a date."
ELSE IF dateText does not match YYYY-MM-DD format THEN
    OUTPUT "Use the date format YYYY-MM-DD."
ELSE
    OUTPUT "Date accepted."
END IF
```

### Check Duplicate Book ID

```text
INPUT newBookId

IF newBookId is empty THEN
    OUTPUT "Please enter a book ID."
ELSE IF newBookId already exists in bookList THEN
    OUTPUT "This book ID is already used."
ELSE
    ADD new book
    OUTPUT "Book added."
END IF
```

## Example: Library Borrowing System

| Situation | Validation or Error Handling |
|---|---|
| Empty book title | Do not save the book. Ask the user to enter a title. |
| Duplicate book ID | Do not add the book. Explain that the ID already exists. |
| Returning a book that is not borrowed | Show a message such as "This book is already available." |
| Deleting a record | Ask for confirmation before deleting the record. |

Possible messages:

- "Book title cannot be empty."
- "Book ID B014 already exists. Please enter a different ID."
- "This book is not currently borrowed, so it cannot be returned."
- "Are you sure you want to delete this record? This cannot be undone."

## Error Message Design

Good error messages should be:

- clear
- specific
- helpful
- not too technical

| Weak Message | Better Message |
|---|---|
| Error | Please enter a book title. |
| Invalid | Age must be a number between 0 and 120. |
| Failed | The file could not be saved. Check that the file is not open in another program. |
| Wrong input | Choose option 1, 2, 3, or 4 from the menu. |

A user should understand what went wrong and what to do next.

## Common Mistakes

- Only testing perfect input
- Writing unclear error messages
- Not checking for duplicates
- Letting the program crash when input is wrong
- Accepting invalid data
- Showing technical messages that users cannot understand
- Forgetting to test missing files or failed saves

## Quick Practice Questions

### 1. What is validation?

<details>
<summary>Answer</summary>

Validation is checking data before the program accepts or uses it.

</details>

### 2. Which validation check is used when a required field must not be empty?

<details>
<summary>Answer</summary>

A presence check is used to check that data has been entered.

</details>

### 3. Why should a program check for duplicate book IDs?

<details>
<summary>Answer</summary>

Book IDs should uniquely identify books. If two books have the same ID, the program may update, borrow, return, or delete the wrong book.

</details>

### 4. What should a program do if the user enters text when a number is needed?

<details>
<summary>Answer</summary>

It should show a clear message, explain that a number is required, and ask the user to try again.

</details>

## Small Task

A small booking system lets users book seats for a school event.

List validation rules for:

- the user's name
- the seat number
- the event date
- the number of tickets
- duplicate bookings

For each rule, write a clear error message that would help the user fix the problem.
