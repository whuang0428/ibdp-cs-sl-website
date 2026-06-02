# Criterion A: Problem Specification

## 1. What Criterion A Is About

Criterion A: Problem specification introduces the problem and explains why a computational solution is suitable. It should show that you understand the current situation, the problem, the affected user or context, and the requirements of the solution.

Criterion A is not just a vague introduction. It should connect the problem to measurable software requirements and prepare the success criteria that will guide the rest of the IA.

By the end of Criterion A, the reader should understand:

- what problem you are solving
- who or what context is affected
- why software is a suitable approach
- what the solution needs to do
- how the final product can be judged

## 2. What Criterion A Should Include

| Part | What to include | Why it matters |
|---|---|---|
| Problem scenario | Current situation, user/context, and specific problem | Shows what problem the solution is solving |
| Measurable solution requirements | What the software needs to do in practical terms | Connects the problem to software functionality |
| Success criteria | Clear, testable criteria for judging the final product | Guides planning, testing, and evaluation |
| Computational context | Programming language, environment, tools, and type of solution | Explains why the chosen technical approach fits the problem |

## 3. Problem Scenario

A problem scenario should describe the current situation, what is not working well, who is affected, and why a software solution could help.

Use this builder to draft the problem scenario:

```text
The current situation is [current method or process].
This causes [specific problem], especially when [condition or example].
The affected user/group is [user/group].
A computational solution is suitable because it can [benefit 1], [benefit 2], and [benefit 3].
```

Example:

```text
The current situation is that a small school library records book loans on paper forms.
This causes lost records and slow searching, especially when several books are borrowed or returned during a short break.
The affected user/group is the librarian and student library helpers.
A computational solution is suitable because it can store loan records, search books quickly, and update borrowed/returned status accurately.
```

This example includes the current method, a specific problem, the affected user group, and why software is suitable.

## 4. Measurable Solution Requirements

Measurable solution requirements describe what the software needs to do. They should be more specific than general goals.

| Weak requirement | Better measurable requirement |
|---|---|
| The system should be useful | The system should allow the user to add, search, update, and mark book records as borrowed or returned |
| The system should be fast | The system should display search results immediately after a title or borrower name is entered |
| The system should save data | The system should save book and loan records to persistent storage and reload them when the program restarts |
| The system should be easy | The system should show clear error messages when required fields are empty |

Good requirements should be practical enough to guide the design and specific enough to become test cases later.

## 5. Success Criteria

Success criteria are used later to test and evaluate the final product. They should be measurable, clear, achievable, and testable. They should link directly to the problem and the essential software functionality.

Do not use vague or subjective success criteria such as "the system is user-friendly" unless it is made measurable with clear evidence.

| Weak success criterion | Why it is weak | Better success criterion |
|---|---|---|
| The system is user-friendly | Subjective and hard to test | The user can add a new book record using required fields and the record appears in the book list |
| The program works well | Too vague | The system saves a new loan record and reloads it correctly after the program restarts |
| The search is good | Not measurable | The user can search by book title and all matching records are displayed |
| The database is reliable | Too broad | Invalid or duplicate book IDs are rejected with a clear error message |
| The app looks nice | Subjective | The main menu provides visible buttons for add, search, borrow, return, and report functions |

## 6. How Many Success Criteria?

You should normally have enough success criteria to cover the essential functionality of the product. Do not include too few, but also do not list many tiny details that do not matter.

Around 6 to 10 strong criteria is often a practical target, but you should follow teacher and school guidance.

- Each success criterion should connect to a real feature.
- Each success criterion should be testable.
- Each success criterion should help evaluation later.
- Avoid criteria about unfinished optional features.

## 7. Computational Context

Computational context means the technical setting of the solution. You should explain what kind of solution you are building and why the chosen language, environment, tools, or data approach is suitable.

| Project type | Possible computational context |
|---|---|
| Desktop management system | Java or Python application with file/database storage |
| Web-based tracker | HTML, CSS, JavaScript, and suitable storage approach |
| Data visualisation tool | Python with data processing and charting libraries |
| Educational quiz system | Program with question bank, scoring logic, and persistent progress data |
| Encryption/decryption utility | Program using string processing, validation, and algorithmic logic |

The computational context should serve the problem. Do not choose tools only because they sound advanced.

## 8. Running Example: Library Borrowing System

### Problem scenario

A small school library currently tracks borrowed books using paper or a simple spreadsheet. It is difficult to quickly check whether a book is available, who borrowed it, and which books have not been returned.

### Measurable solution requirements

- add book records
- search books
- borrow books
- return books
- save/load loan records

### Possible success criteria

- The user can add a new book record with required fields.
- The user can search for books by title.
- The user can mark an available book as borrowed.
- The system prevents an unavailable book from being borrowed twice.
- The user can mark a borrowed book as returned.
- The system saves records and reloads them after restart.

### Computational context

A Python or Java application with persistent storage would be suitable because it can store book and loan records, validate inputs, update borrowing status, and reload data later. The project can also be tested with normal cases, invalid data, duplicate IDs, and restart checks.

## 9. Common Mistakes in Criterion A

| Mistake | Why it is a problem | Better approach |
|---|---|---|
| Writing only a general topic | It does not identify a specific problem | Describe current situation, affected user, and issue |
| Choosing success criteria before understanding the problem | Criteria may not match the real need | Derive criteria from the problem and requirements |
| Using subjective success criteria | Hard to test or evaluate | Use measurable actions and evidence |
| Choosing tools before defining the problem | The project becomes technology-driven, not problem-driven | Start with the problem, then choose suitable tools |
| Making the project too large | It may not be finished | Define essential features first |
| Making the project too simple | It may not show enough computational thinking | Add meaningful logic, data handling, validation, or algorithms where needed |

## 10. Criterion A Checklist

- [ ] I have explained the current situation.
- [ ] I have identified the affected user, group, or context.
- [ ] I have described the specific problem.
- [ ] I have explained why a computational solution is suitable.
- [ ] I have listed measurable solution requirements.
- [ ] I have written success criteria that are clear and testable.
- [ ] My success criteria are linked to essential software functionality.
- [ ] My success criteria are not mainly subjective.
- [ ] I have explained the computational context.
- [ ] I can use these success criteria later for planning, testing, and evaluation.

## 11. Quick Check

1. What is the purpose of Criterion A?

<details>
<summary>Answer</summary>

Criterion A: Problem specification explains the problem, the affected user or context, why a computational solution is suitable, and what measurable requirements and success criteria will guide the project.

</details>

2. Why is "the system is user-friendly" a weak success criterion?

<details>
<summary>Answer</summary>

It is subjective and hard to test. A stronger criterion explains a specific action or visible result, such as whether a user can add a record successfully using required fields.

</details>

3. What is a measurable solution requirement?

<details>
<summary>Answer</summary>

A measurable solution requirement is a practical statement of what the software must do, such as saving records to persistent storage or displaying all matching search results.

</details>

4. Why should success criteria connect to the original problem?

<details>
<summary>Answer</summary>

Success criteria guide planning, testing, and evaluation. If they do not connect to the original problem, the final product may be judged on features that do not solve the real need.

</details>

5. What does computational context mean?

<details>
<summary>Answer</summary>

Computational context means the technical setting of the solution, such as the type of program, programming language, tools, storage method, and why those choices fit the problem.

</details>

6. Why should students avoid choosing tools before defining the problem?

<details>
<summary>Answer</summary>

If tools are chosen first, the project can become technology-driven instead of problem-driven. It is better to define the problem, then choose tools that support the required solution.

</details>
