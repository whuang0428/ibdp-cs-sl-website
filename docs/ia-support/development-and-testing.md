# Development and Testing

## 1. Purpose

Development evidence shows how the product was built. Testing evidence shows whether the product works.

Students should not only paste final code. They should explain important parts of the solution and show how problems were solved.

## 2. Development Evidence

Useful evidence includes:

- screenshots of interface
- code snippets with explanation
- database table screenshots
- class diagrams and actual implementation
- version notes
- problems encountered and fixes
- validation and error handling examples

## 3. Code Explanation Formula

```text
Purpose → key variables/data structures → logic → result
```

Example:

```text
This method adds a new student record. It first checks whether the student ID is empty or already exists. If validation passes, a new Student object is created and added to the list. This prevents duplicate records.
```

## 4. Testing Types

| Test Type | Purpose | Example |
|---|---|---|
| Normal test | Valid expected input | Add student with valid ID |
| Boundary test | Edge of valid range | Mark = 0 or 100 |
| Invalid test | Wrong or unacceptable input | Empty ID or mark = 150 |
| Extreme test | Very large/small input | Very long name |
| User acceptance test | Client checks usefulness | Teacher tries report feature |

## 5. Test Table Template

| Test ID | Feature | Test Data | Expected Result | Actual Result | Pass/Fail | Fix Needed |
|---|---|---|---|---|---|---|
| T1 | Add student | ID=1001, name=Alice | Student added | Student added | Pass | None |
| T2 | Duplicate ID | ID=1001 again | Error shown | Error shown | Pass | None |
| T3 | Empty name | name="" | Error shown | No error | Fail | Add validation |

## 6. Testing Best Practice

1. Test every success criterion.
2. Include normal, invalid, and boundary data.
3. Record actual results honestly.
4. If a test fails, fix the code and retest.
5. Use screenshots or outputs as evidence.

## 7. Common Mistakes

| Mistake | Fix |
|---|---|
| Only testing valid input | Include invalid and boundary cases |
| Expected and actual result too vague | Write exact output |
| No failed tests | Real development often has fixes |
| Test data not linked to criteria | Add criterion ID |
| Code pasted without explanation | Explain important logic |

## 8. Practice

### Task

Create three tests for a mark input feature that accepts 0 to 100.

<details>
<summary>Example Answer</summary>

| Test Data | Expected Result | Test Type |
|---|---|---|
| 75 | Accepted | Normal |
| 0 | Accepted | Boundary |
| 101 | Rejected | Invalid |

</details>
