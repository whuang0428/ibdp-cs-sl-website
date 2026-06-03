# Testing Workflow

## Learning Goals

By the end of this page, you should be able to:

- explain why testing should be planned
- choose suitable test data for a feature
- predict expected results before running tests
- record actual results clearly
- use failed tests to improve software
- retest old features after making changes

## Key Idea

Testing is planned evidence that a feature works correctly.

A test is stronger when it has clear test data, a predicted expected result, an actual result, and a pass or fail decision. This makes testing more useful than simply clicking around and hoping the program works.

## Test Types

| Test Type | Meaning | Example |
|---|---|---|
| Normal test | Uses typical valid data | Search for a book title that exists |
| Boundary test | Uses data at the edge of what is allowed | Enter the shortest allowed username |
| Invalid test | Uses data that should be rejected | Enter letters where a number is required |
| Extreme test | Uses unusually large or small data | Add a very long task description |
| Regression test | Rechecks old features after a change | Test borrowing again after changing return logic |
| User testing | Lets a real user try the software | Ask a classmate to use the study task tracker and report confusion |

Different test types find different problems. A good testing plan uses more than one type.

## Simple Testing Workflow

Use this workflow for each feature:

1. Choose the feature to test.
2. Choose test data.
3. Predict the expected result.
4. Run the test.
5. Record the actual result.
6. Decide pass or fail.
7. Fix and retest if needed.

The expected result should be written before running the test. This helps you judge the program fairly.

## Testing Table Template

| Test ID | Feature | Test Data | Expected Result | Actual Result | Pass/Fail | Notes |
|---|---|---|---|---|---|---|
| T01 |  |  |  |  |  |  |
| T02 |  |  |  |  |  |  |
| T03 |  |  |  |  |  |  |

This table creates a record of what was tested and what happened.

## Example: Library Borrowing System Testing Table

| Test ID | Feature | Test Data | Expected Result | Actual Result | Pass/Fail | Notes |
|---|---|---|---|---|---|---|
| T01 | Add book | ID: B001, title: The Hobbit, author: J.R.R. Tolkien | Book is added and shown in the book list | Book is added and shown | Pass | Normal test |
| T02 | Add book | ID: B001, title: Wonder, author: R.J. Palacio | System rejects duplicate book ID | Error message shown: "Book ID already exists" | Pass | Invalid test |
| T03 | Add book | Empty title | System rejects empty title | Error message shown: "Book title cannot be empty" | Pass | Invalid test |
| T04 | Borrow book | Book ID: B001, borrower ID: S014 | Book status changes to borrowed | Book status changes to borrowed | Pass | Normal test |
| T05 | Borrow book | Book ID: B001 after it is already borrowed | System prevents borrowing again | Book is borrowed again incorrectly | Fail | Need duplicate borrow check |
| T06 | Return book | Book ID: B999 | System says book was not found | Message shown: "Book not found" | Pass | Invalid test |

Failed tests are useful because they show exactly what needs to be fixed.

## Why One Test Is Not Enough

One test only proves that the feature worked for one situation.

For example, a search feature might work when the exact title is entered, but fail when:

- the title uses different capital letters
- the title does not exist
- the search box is empty
- the title is only partly entered
- there are many matching results

Testing several cases gives better evidence that the feature works reliably.

## Regression Testing

Regression testing means checking that old features still work after you fix or add something.

For example, if you fix the return-book feature in a Library Borrowing System, you should also test that:

- books can still be added
- books can still be borrowed
- unavailable books are still blocked from borrowing
- saved data still loads correctly

Changing code can accidentally break something that worked before. Regression testing helps catch that.

## Common Mistakes

- Only testing valid input
- Not writing an expected result
- Using vague test data such as "some data"
- Not recording failed tests
- Changing code without retesting
- Marking a test as pass even when the result is partly wrong
- Testing only at the end of the project

## Quick Practice Questions

### 1. What makes testing stronger than just trying the program?

<details>
<summary>Answer</summary>

Testing is stronger when it uses planned test data, a predicted expected result, a recorded actual result, and a clear pass or fail decision.

</details>

### 2. What is an invalid test?

<details>
<summary>Answer</summary>

An invalid test uses data that the program should reject, such as empty input, letters where a number is required, or a duplicate ID.

</details>

### 3. Why should expected results be written before running a test?

<details>
<summary>Answer</summary>

Expected results should be written first so you can judge the actual result fairly and clearly.

</details>

### 4. What is regression testing?

<details>
<summary>Answer</summary>

Regression testing means checking that old features still work after fixing or adding a feature.

</details>

## Small Task

Design 5 tests for a search feature in a small app.

Your tests should include:

- at least 1 normal test
- at least 1 invalid test
- at least 1 boundary or extreme test
- the test data
- the expected result
- a pass or fail column to complete after running the test
