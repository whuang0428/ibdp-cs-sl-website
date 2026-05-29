# Requirements and Features

## Learning Goals

By the end of this page, you should be able to:

- explain the difference between a user need, a requirement, and a feature
- write clear requirements for a small programming project
- choose features that match real user needs
- decide which features are must-have and which are nice-to-have
- turn a requirement into a simple code plan

## Key Idea

Software projects should start with the user's problem, not with random code.

These words help you plan a project clearly:

| Term | Meaning |
|---|---|
| User need | The problem, goal, or task the user cares about |
| Requirement | What the system must do to help with that need |
| Feature | A visible function the user can use |
| Scope | What the project will and will not include |
| Priority | How important a requirement or feature is |

## User Need, Requirement, and Feature

A user need is the problem or goal.

A requirement is what the system must do.

A feature is a visible function that helps satisfy a requirement.

For example:

| Type | Example |
|---|---|
| User need | A student wants to remember homework deadlines |
| Requirement | The system must store homework tasks with due dates |
| Feature | Add homework task form |

Good features should connect back to real requirements. If a feature does not help the user, it may not belong in the project.

## Example 1: Library Borrowing System

### User Need

A school library wants to track which books are available and which books have been borrowed.

### Requirements

- The system must store book details such as title, author, and book ID.
- The system must show whether a book is available or borrowed.
- The system must allow a user to borrow a book.
- The system must allow a user to return a book.
- The system must prevent a borrowed book from being borrowed again.

### Features

- Add a new book
- Search for a book by title or ID
- View available books
- Borrow a selected book
- Return a selected book
- Show an error message if the book is already borrowed

## Example 2: Study Planner or Homework Tracker

### User Need

A student wants to organise homework, study tasks, and deadlines in one place.

### Requirements

- The system must store tasks with a subject, description, and due date.
- The system must show incomplete tasks.
- The system must allow tasks to be marked as complete.
- The system must highlight tasks that are due soon.
- The system must save tasks so they are still available later.

### Features

- Add a homework task
- View all incomplete tasks
- Mark a task as complete
- Sort tasks by due date
- Show tasks due today or tomorrow
- Save and load tasks from a file

## Must-Have vs Nice-to-Have

Not every idea should be included in the first version of a project. Start with the features needed for the software to work.

| Type | Meaning | Example |
|---|---|---|
| Must-have | Needed for the main purpose of the system | Add and view homework tasks |
| Nice-to-have | Useful, but the system can work without it | Colour themes or custom icons |

For a beginner project, a smaller working system is usually better than a large unfinished system.

## From Requirement to Code Plan

A clear requirement can be turned into a plan for code.

| Requirement | Input Needed | Processing Needed | Output Needed | Possible Function Name |
|---|---|---|---|---|
| The system must add a homework task | Subject, task description, due date | Validate the input and store the task | Updated task list | `addTask()` |
| The system must show incomplete tasks | Stored task list | Filter tasks where complete is false | List of incomplete tasks | `getIncompleteTasks()` |
| The system must mark a task as complete | Task ID | Find the task and update its status | Confirmation message | `markTaskComplete()` |
| The system must show books that are available | Stored book list | Filter books where borrowed is false | List of available books | `getAvailableBooks()` |

This kind of planning helps you see what data, logic, and functions your program may need.

## Common Mistakes

- Writing code before understanding the need
- Adding too many features before the basic version works
- Writing vague requirements such as "make it useful"
- Creating features that are not linked to real user needs
- Mixing up requirements and features
- Forgetting what the project will not include

## Quick Practice Questions

### 1. What is the difference between a requirement and a feature?

<details>
<summary>Answer</summary>

A requirement says what the system must do. A feature is a visible function that helps the system meet that requirement.

</details>

### 2. A user says, "I keep forgetting when my homework is due." Is this a user need, requirement, or feature?

<details>
<summary>Answer</summary>

This is a user need because it describes the user's problem.

</details>

### 3. Which is clearer: "The app should be good" or "The app must let the user add a task with a due date"?

<details>
<summary>Answer</summary>

"The app must let the user add a task with a due date" is clearer because it describes a specific system behaviour.

</details>

### 4. Why should features be prioritised?

<details>
<summary>Answer</summary>

Prioritising features helps you build the most important parts first. It also helps stop the project from becoming too large or unfinished.

</details>

## Short Project Task

Choose one small app idea, such as a quiz app, budget tracker, fitness log, revision planner, or book tracker.

Write:

- 3 requirements
- 5 features

Check that each feature links to at least one real user need or requirement.
