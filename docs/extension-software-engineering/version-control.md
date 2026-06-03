# Version Control

## Learning Goals

By the end of this page, you should be able to:

- explain why version control is useful in programming projects
- describe basic Git ideas such as repository, staging area, and commit
- use simple Git commands to track progress
- write clear commit messages
- avoid common version control mistakes

## Key Idea

Version control records project history so changes can be tracked and recovered.

Instead of saving many copies like `project-final.py`, `project-final2.py`, and `project-real-final.py`, version control lets you keep a clean project folder with a history of changes.

## Why Students Need Version Control

Version control helps you:

- avoid losing work
- save milestones
- understand what changed
- recover from mistakes
- show project progress

It is useful even if you are working alone. A project can break after a small change, and version control helps you find or undo that change.

## Basic Git Ideas

| Term | Meaning |
|---|---|
| Repository | A project folder that Git is tracking |
| Working tree | The current files you are editing |
| Staging area | The place where you prepare changes before committing |
| Commit | A saved snapshot of changes in the project history |
| Commit message | A short explanation of what changed |

A simple way to think about it:

```text
edit files
check status
stage changes
commit changes
continue working
```

## Basic Commands

Check what has changed:

```bash
git status
```

Stage changes:

```bash
git add .
```

Commit staged changes:

```bash
git commit -m "Add search feature"
```

View commit history:

```bash
git log
```

Restore one file to the last committed version:

```bash
git restore filename
```

Use `git status` often. It helps you understand what Git sees before you commit.

## Good Commit Message Examples

Good commit messages are short and specific:

- Add book search feature
- Fix empty input validation
- Update testing table
- Save study tasks to JSON file
- Add return book confirmation

These messages explain the main change.

## Bad Commit Message Examples

Weak commit messages are vague:

- update
- final final
- stuff
- changes
- fixed things

These messages do not help you understand the project history later.

## Suggested Student Workflow

1. Finish one feature or small improvement.
2. Test it.
3. Run `git status`.
4. Stage the changed files.
5. Commit it.
6. Write a clear message.

Example:

```text
finish search feature
test normal and invalid searches
git status
git add .
git commit -m "Add book search feature"
```

Try to commit when the project reaches a useful checkpoint.

## Common Mistakes

- Committing too rarely
- Committing broken code without notes
- Writing unclear messages
- Relying only on USB or email backups
- Saving many copied project folders instead of using history
- Forgetting to check `git status` before committing

## Quick Practice Questions

### 1. What does version control record?

<details>
<summary>Answer</summary>

Version control records the history of changes in a project so changes can be tracked and recovered.

</details>

### 2. What is a commit?

<details>
<summary>Answer</summary>

A commit is a saved snapshot of changes in the project history.

</details>

### 3. Why is `Add book search feature` better than `update` as a commit message?

<details>
<summary>Answer</summary>

It clearly explains what changed, while `update` is too vague to be useful later.

</details>

### 4. Why should you run `git status` before committing?

<details>
<summary>Answer</summary>

`git status` shows which files have changed and helps you check that you are committing the correct work.

</details>

## Small Task

Write good commit messages for this project progress list.

| Project Progress | Good Commit Message |
|---|---|
| You added a form for adding new books |  |
| You fixed a crash when the user enters an empty title |  |
| You added tests for borrowing and returning books |  |
| You updated the README with setup instructions |  |
| You changed the program so tasks are saved to a JSON file |  |

Each commit message should be short, clear, and specific.
