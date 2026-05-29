# Development and Testing

## 1. Lesson Goals

By the end of this page, students should be able to:

- explain the purpose of the development section in the IA
- document important programming work with clear evidence
- choose useful code snippets instead of pasting all code
- explain algorithms, data structures, validation, and problem solving
- link development evidence to success criteria
- explain the purpose of testing in the IA
- create test tables with test data, expected results, actual results, and evidence
- distinguish normal, boundary, invalid, and user acceptance testing
- test validation and error handling
- use testing evidence to prepare for final evaluation
- avoid common IA mistakes such as weak screenshots, vague explanations, and testing only happy paths

::: tip Learning Focus
Development shows how the product was built. Testing proves whether it works. Both should link clearly to the success criteria.
:::

---

## 2. What Is Development?

Development is the section where students explain how the product was built.

### Simple Definition

```text
Development documents the process of building the product, including important code, algorithms, data structures, validation, problems solved, and evidence of working features.
```

### Development Should Show

```text
what was built
why it was needed
how it was implemented
which code or algorithm was important
what problems occurred
how problems were fixed
how the feature links to success criteria
```

### Development Is Not

```text
only screenshots
a full code dump
a diary with no technical explanation
a list of buttons
a copy of every line of code
```

---

## 3. What Is Testing?

Testing checks whether the product works correctly.

### Simple Definition

```text
Testing is the process of checking the product using planned test data and comparing expected results with actual results.
```

### Testing Should Show

```text
which feature was tested
what test data was used
what result was expected
what actually happened
whether the test passed
what evidence proves it
what was fixed if it failed
```

### Testing Is Not

```text
only saying "it works"
only showing final screenshots
only testing normal data
only testing one feature
testing without expected results
```

---

## 4. Bilingual Explanation

<LangBlock>
<template #cn>

### 中文讲解

Development 部分不是把所有代码贴进去。它要展示你真正做了什么重要功能，以及你如何解决问题。

强的 development 通常会这样写：

```text
这个功能对应哪个 success criterion
为什么需要这个功能
关键代码是什么
代码如何工作
遇到了什么问题
我怎么修改
最后效果是什么
```

例如：

```text
The search function supports Success Criterion 3. It loops through all saved records and compares each student name with the search input. Matching records are added to the result list and displayed in the table.
```

Testing 部分是证明你的系统真的能运行。不能只测试“正常情况”，也要测试：

```text
normal data = 正常有效输入
boundary data = 边界数据
invalid data = 错误输入
user acceptance testing = 用户是否能完成真实任务
```

测试表要写：

```text
test data
expected result
actual result
pass/fail
evidence
```

最重要的是：testing 要对应 success criteria。  
如果 success criterion 写了 search，那么 testing 就必须测试 search。

</template>

<template #en>

### English Explanation

The development section is not a place to paste all code. It should show what important features were built and how problems were solved.

A strong development explanation usually includes:

```text
which success criterion the feature supports
why the feature is needed
what the key code is
how the code works
what problem occurred
how it was fixed
what the final result looks like
```

Example:

```text
The search function supports Success Criterion 3. It loops through all saved records and compares each student name with the search input. Matching records are added to the result list and displayed in the table.
```

Testing proves that the system works. Students should not only test “happy paths”. They should also test:

```text
normal data = typical valid input
boundary data = edge values
invalid data = incorrect input
user acceptance testing = whether the user can complete real tasks
```

A test table should include:

```text
test data
expected result
actual result
pass/fail
evidence
```

Most importantly, testing should match the success criteria.  
If a success criterion mentions search, testing must test search.

</template>
</LangBlock>

---

## 5. Key Terms

| Term | Meaning |
|---|---|
| Development | process of building and explaining the product |
| Feature | function or part of the product that supports user needs |
| Code snippet | selected part of code used as evidence |
| Algorithm | step-by-step logic used to solve a problem |
| Data structure | way data is stored and organized |
| Validation | checking input before accepting it |
| Error handling | responding safely when something goes wrong |
| Debugging | finding and fixing code errors |
| Iteration | repeated improvement after testing or feedback |
| Test case | one planned check of a feature |
| Test data | input or condition used in a test |
| Expected result | what should happen if the system works correctly |
| Actual result | what happened when the test was run |
| Pass/Fail | whether the actual result matched the expected result |
| Normal data | typical valid data |
| Boundary data | data at the edge of a valid range |
| Invalid data | data that should be rejected |
| User acceptance testing | testing whether the user can complete realistic tasks |
| Evidence | screenshot, result table, code output, or user feedback |
| Regression testing | re-testing after changes to check old features still work |
| Test coverage | how much of the system has been tested |

---

## 6. Development Should Link to Success Criteria

Development should not feel random.

### Good Link

```text
Success Criterion 2:
The system prevents saving a record if required fields are blank.

Development Evidence:
validation function checks student name, task name, date, and status before saving.
```

### Weak Link

```text
I made a form and a button.
```

### Better Development Explanation

```text
This validation function supports Success Criterion 2 because it checks whether the required fields are complete before the record is saved. If a field is blank, the function returns an error message and prevents incomplete data from being added to the record list.
```

---

## 7. Development Section Structure

A strong development section can be organized by feature.

### Recommended Structure

```text
Feature 1: Add Record
- purpose
- related success criterion
- key code snippet
- explanation of code
- screenshot/output evidence
- problem solved or design decision

Feature 2: Search Records
- purpose
- related success criterion
- key code snippet
- explanation of algorithm
- testing link

Feature 3: Generate Summary
- purpose
- related success criterion
- key code snippet
- explanation of calculation
- evidence
```

### Why Feature-based Structure Helps

It makes the IA easy to follow because each feature connects to:

```text
client need
success criterion
design
development
testing
evaluation
```

---

## 8. Choosing Code Snippets

Do not paste every line of code into the main IA text.

### Good Code Snippets Show

```text
important algorithm
validation logic
data storage/retrieval
search/filter/sort logic
summary calculation
class/object structure
error handling
file/database connection
important user interaction
```

### Weak Code Snippets

```text
button color code
large repeated code
import statements only
simple print statements only
unexplained full file
code copied without explanation
```

### Good Rule

Choose snippets that show computational thinking.

---

## 9. Explaining Code

A code snippet needs explanation.

### Weak Explanation

```text
This code searches.
```

### Strong Explanation

```text
This code loops through each homework record stored in the records list. For each record, it compares the stored student name with the search input. If the names match, the record is added to the results list. This supports Success Criterion 3 because it allows the teacher to find all records for one student.
```

### Explanation Template

```text
This code is used for [feature]. It takes [input], processes it by [logic], and produces [output]. This supports Success Criterion [number] because [reason].
```

---

## 10. Development Evidence Types

Good evidence may include:

```text
selected code snippets
screenshots of working features
before/after screenshots
error message screenshots
test output
database/file examples
version change notes
client feedback on prototype
debugging evidence
design change explanation
```

### Important

Evidence should be relevant. Do not add many screenshots without explaining them.

---

## 11. Showing Problem Solving

Development should show that the student solved problems.

### Examples of Development Problems

```text
search returned only first matching record
blank fields were saved accidentally
summary count was wrong
date format caused sorting errors
file data did not load after restart
duplicate records were created
user could enter negative scores
interface was confusing for the client
```

### Strong Writing Pattern

```text
Initial problem:
The first version of the search function only returned one record.

Cause:
The loop stopped after finding the first match.

Fix:
I changed the algorithm so it continues checking all records and adds each match to the results list.

Result:
The final version displays all matching records for the searched student.
```

---

## 12. Development Change Log

A short change log can show iteration.

| Version | Change | Reason | Evidence |
|---|---|---|---|
| v1 | add record form created | needed for basic data entry | screenshot |
| v2 | validation added | blank records were possible | error screenshot |
| v3 | search returns all matches | first version returned one result | code snippet |
| v4 | weekly summary added | client wanted overview | summary screenshot |
| v5 | layout simplified | client feedback said navigation was confusing | final screenshot |

### Why Useful?

It shows development process rather than only final product.

---

## 13. Validation in Development

Validation is important because it prevents bad data.

### Examples

| Input | Validation |
|---|---|
| name | cannot be blank |
| score | must be 0 to 100 |
| quantity | must be positive integer |
| date | must follow expected format |
| email | should contain suitable structure if required |
| event capacity | cannot exceed maximum places |

### Development Explanation Example

```text
The validation code checks whether the score is between 0 and 100 before saving. This prevents invalid marks from being stored and supports the success criterion related to reliable data entry.
```

---

## 14. Error Handling in Development

Error handling is how the program responds when something goes wrong.

### Examples

```text
file not found
invalid input
missing required field
duplicate record
failed login
no search result
empty data list
database connection problem
```

### Strong IA Explanation

```text
If no matching records are found, the system displays "No records found" instead of showing a blank table. This helps the user understand the result and avoids confusion.
```

---

## 15. Data Storage Evidence

Many IA products need persistent storage.

### Storage Options

```text
CSV file
text file
JSON file
SQLite database
local database
browser local storage
spreadsheet export
```

### What to Explain

```text
what data is stored
why this format was chosen
how records are saved
how records are loaded
how data structure supports features
how errors are handled
```

### Example Explanation

```text
I used a CSV file because the client only needs a small local system and the data can be opened in spreadsheet software if needed. Each row stores one homework record with student name, task, date, status, and notes.
```

---

## 16. Testing Should Link to Success Criteria

Testing should prove success criteria.

### Example

```text
Success Criterion 3:
The teacher can search records by student name and view all matching records.

Tests:
1. search an existing name with multiple records
2. search an existing name with one record
3. search a name that does not exist
4. search with blank input
```

### Strong Link

```text
These tests check whether the search feature works for normal input, no-result cases, and invalid blank input.
```

---

## 17. Test Table Format

A strong test table includes:

| Test No. | Success Criterion | Feature | Test Data | Expected Result | Actual Result | Pass/Fail | Evidence |
|---:|---|---|---|---|---|---|---|
| 1 | SC1 | Add record | Anna, Task 1, 10/06, Missing | record saved and displayed | record saved and displayed | Pass | screenshot 1 |
| 2 | SC2 | Validation | blank student name | error message shown, record not saved | error message shown | Pass | screenshot 2 |
| 3 | SC3 | Search | search "Anna" | all Anna records shown | all Anna records shown | Pass | screenshot 3 |

### Why This Is Strong

It includes:

```text
criterion link
feature
input data
expected result
actual result
evidence
```

---

## 18. Normal Data Testing

Normal data is typical valid data.

### Example

For mark input from 0 to 100:

```text
75
88
42
```

### Example Test

| Feature | Test Data | Expected Result |
|---|---|---|
| Add score | student = Anna, score = 85 | score record is saved |

### Purpose

Normal tests prove the system works for expected use.

---

## 19. Boundary Data Testing

Boundary data tests values at the edge of an allowed range.

### Example Range

```text
score must be 0 to 100
```

Boundary valid:

```text
0
100
```

Boundary invalid:

```text
-1
101
```

### Why Useful?

Many errors happen at the edges of ranges.

### Example Test

| Test Data | Expected Result |
|---:|---|
| 0 | accepted |
| 100 | accepted |
| -1 | rejected |
| 101 | rejected |

---

## 20. Invalid Data Testing

Invalid data should be rejected safely.

### Examples

```text
blank required field
text where number expected
negative quantity
date in wrong format
duplicate username
search with no input
event sign-up when capacity is full
```

### Purpose

Invalid testing proves the program handles bad input without storing incorrect data or crashing.

### Example

| Feature | Invalid Data | Expected Result |
|---|---|---|
| Add record | blank name | error message and record not saved |
| Enter score | "abc" | error message and no score saved |
| Event sign-up | capacity already full | sign-up rejected |

---

## 21. User Acceptance Testing

User acceptance testing checks whether the user can complete real tasks.

### Examples

```text
teacher adds a homework record
coach searches player attendance
club leader views event sign-up list
shop owner updates inventory quantity
student completes a quiz and sees score
```

### Evidence

```text
client feedback
short user comment
observation note
completed task checklist
screenshot of user task result
```

### Strong Writing

```text
The client tested the Add Record and Search features using sample student data. They confirmed that the search feature would reduce the time needed to find previous homework records.
```

---

## 22. Regression Testing

Regression testing means re-testing old features after changes.

### Example

A student changes the data storage code. They should retest:

```text
add record
search record
summary calculation
edit/delete record
load saved records
```

### Why Useful?

A change in one part of the program may break another part.

### Exam Phrase

```text
Regression testing checks that existing features still work after changes or bug fixes.
```

---

## 23. Failed Tests

Failed tests are not always bad. They can show improvement.

### How to Document a Failed Test

| Test | Expected | Actual | Fix |
|---|---|---|---|
| blank name rejected | error message | record saved | added required-field validation |

### Strong Explanation

```text
This test initially failed because the system saved records even when the student name was blank. I added a validation check before saving. After the fix, the test passed and the system displayed an error message.
```

### Why Useful?

It shows debugging and development thinking.

---

## 24. Testing Evidence

Testing evidence may include:

```text
screenshots of input and output
screenshots of error messages
test table
database/file before and after
console output
client testing notes
short video reference if allowed
```

### Good Evidence

```text
shows test data
shows result
matches actual result in table
is labelled clearly
does not expose private data
```

### Weak Evidence

```text
random screenshot
no test data visible
no expected result
no label
private data exposed
```

---

## 25. Testing Coverage

Testing coverage means how much of the system has been tested.

### Check Coverage By Asking

```text
Have I tested every success criterion?
Have I tested every main feature?
Have I tested validation?
Have I tested saving/loading data?
Have I tested search/filter/sort/report features?
Have I tested invalid input?
Have I tested edge cases?
Have I tested after fixing bugs?
```

### Strong IA Habit

Use success criteria as a checklist for testing.

---

## 26. Example Development: Search Feature

### Related Success Criterion

```text
SC3: The teacher can search records by student name and view all matching records.
```

### Pseudocode

```text
INPUT searchName
results ← empty list

FOR each record IN records
    IF record.studentName = searchName THEN
        ADD record TO results
    ENDIF
ENDFOR

DISPLAY results
```

### Development Explanation

```text
The search feature loops through all stored records and compares each record's student name with the user's search input. Matching records are added to a results list and displayed in a table. This supports SC3 because the teacher can quickly view all homework records for one student.
```

### Testing Ideas

```text
search existing student with multiple records
search existing student with one record
search non-existing student
search blank input
```

---

## 27. Example Development: Summary Feature

### Related Success Criterion

```text
SC5: The system can generate a weekly summary showing the number of missing tasks per student.
```

### Logic

```text
FOR each record in selected week
    IF status = "Missing" THEN
        increase missing count for that student
    ENDIF
ENDFOR
DISPLAY summary table
```

### Development Explanation

```text
The summary algorithm checks each homework record from the selected week. If the completion status is "Missing", the student's missing count increases by one. The final counts are displayed in a summary table, helping the teacher identify repeated missing homework.
```

### Testing Ideas

```text
week with several missing records
week with no missing records
student with multiple missing tasks
manual comparison with expected total
```

---

## 28. Example Testing Table

| Test No. | SC | Feature | Test Data | Expected Result | Actual Result | Pass/Fail | Evidence |
|---:|---|---|---|---|---|---|---|
| 1 | SC1 | Add record | Anna, Essay, 12/05, Completed | record saved | record saved | Pass | Fig. 1 |
| 2 | SC2 | Blank validation | blank student name | error shown and not saved | error shown and not saved | Pass | Fig. 2 |
| 3 | SC3 | Search | Anna | all Anna records displayed | all Anna records displayed | Pass | Fig. 3 |
| 4 | SC3 | Search no result | Zoe | no records message | no records message | Pass | Fig. 4 |
| 5 | SC5 | Weekly summary | sample week data | counts match manual total | counts match manual total | Pass | Fig. 5 |
| 6 | SC6 | Save/load | restart program | records still available | records still available | Pass | Fig. 6 |

---

## 29. Common Development Mistakes

| Mistake | Why It Is Weak | Better Approach |
|---|---|---|
| pasting all code | hard to read and not explained | use selected snippets |
| only screenshots | no technical explanation | explain algorithms and data |
| no link to criteria | development feels random | mention related success criterion |
| no problems/fixes | process looks hidden | show debugging or iteration |
| explaining simple UI only | weak CS depth | show data structures and logic |
| no validation evidence | robustness not shown | show validation code and tests |
| no storage explanation | data handling unclear | explain save/load design |
| using code student cannot explain | academic integrity risk | understand and cite sources |
| no version changes | process not visible | add change log |
| no client feedback | weak user connection | include prototype or final feedback |

---

## 30. Common Testing Mistakes

| Mistake | Why It Is Weak | Better Approach |
|---|---|---|
| testing only valid input | invalid cases may fail | include invalid/boundary tests |
| no expected result | cannot judge pass/fail | write expected result before testing |
| no actual result | no evidence of execution | record what happened |
| no evidence | unsupported claims | add labelled screenshots/output |
| not testing criteria | evaluation unsupported | test each success criterion |
| vague test data | unclear what was tested | write exact input |
| all tests pass magically | no development process shown | include failed/fixed tests if real |
| no user testing | weak client connection | include user acceptance test |
| private data shown | privacy risk | use sample/anonymized data |
| no retest after fix | fix not proven | repeat failed test after correction |

---

## 31. Development Checklist

Before finishing development documentation, check:

```text
I have explained each major feature.
I have linked features to success criteria.
I have included selected code snippets.
I have explained the code in my own words.
I have shown data structures or storage.
I have explained important algorithms.
I have shown validation or error handling.
I have included evidence of working features.
I have documented at least some problems/fixes or design changes.
I have avoided pasting full code in the main text.
```

---

## 32. Testing Checklist

Before finishing testing, check:

```text
Every success criterion has been tested or evaluated.
Normal data has been tested.
Boundary data has been tested where appropriate.
Invalid data has been tested.
Validation has been tested.
Storage/load has been tested if used.
Search/filter/sort/report features have been tested if used.
Expected and actual results are included.
Pass/fail is clear.
Evidence is labelled and matches the test.
Failed tests have fixes and retests where relevant.
User acceptance testing is included if possible.
```

---

## 33. Scenario Answer Bank

### If Asked: “What should development include?”

```text
Development should include selected code snippets, explanations of algorithms and data structures, evidence of working features, problems solved, and links to success criteria.
```

### If Asked: “Why should code snippets be selected?”

```text
Selected snippets make the documentation easier to read and focus on important logic rather than pasting the entire code.
```

### If Asked: “Why is testing important?”

```text
Testing provides evidence that the product works correctly and meets the success criteria using normal, boundary, and invalid data where appropriate.
```

### If Asked: “Why test invalid data?”

```text
Invalid data testing checks whether the system prevents incorrect input and handles errors safely.
```

### If Asked: “Why include failed tests?”

```text
Failed tests can show debugging, improvement, and evidence that the final version was corrected and retested.
```

### If Asked: “Why link testing to success criteria?”

```text
The success criteria are the standards for judging the product, so testing should provide evidence for whether each criterion has been achieved.
```

---

## 34. Guided Practice

### Practice 1

What is weak about this development explanation?

```text
This is my code for the search button. It searches.
```

<details>
<summary>Suggested Answer</summary>

It is too vague. It does not explain the algorithm, input, output, data structure, or link to success criteria.

</details>

---

### Practice 2

Improve this testing row:

```text
Feature: Add record
Result: works
```

<details>
<summary>Suggested Answer</summary>

A better row should include test data, expected result, actual result, pass/fail, and evidence. For example: test data = Anna, Task 1, 12/05, Completed; expected = record saved and displayed; actual = record saved and displayed; pass; evidence = screenshot.

</details>

---

### Practice 3

Give one boundary test for a score input from 0 to 100.

<details>
<summary>Suggested Answer</summary>

Valid boundary tests: 0 and 100. Invalid boundary tests: -1 and 101.

</details>

---

### Practice 4

Why should a failed test be retested after fixing?

<details>
<summary>Suggested Answer</summary>

Retesting proves that the fix worked and that the feature now behaves as expected.

</details>

---

## 35. Independent Practice

### Question 1

Choose one IA feature and write a development explanation for it.

### Question 2

Write a code explanation template for a search function.

### Question 3

Create a development change log for three versions of a homework tracker.

### Question 4

Create five normal test cases for an attendance system.

### Question 5

Create four invalid test cases for a club sign-up system.

### Question 6

Create boundary tests for a mark input from 0 to 100.

### Question 7

Create a testing table for a search feature.

### Question 8

Explain why user acceptance testing is useful.

### Question 9

Explain why screenshots alone are not enough in development.

### Question 10

Explain how testing supports evaluation.

---

## 36. Practice Activity

### Activity 1: Code Explanation Practice

Students are given a short pseudocode or code snippet and must write:

```text
purpose
input
processing
output
success criterion link
```

---

### Activity 2: Test Case Builder

Students choose one feature and create:

```text
2 normal tests
2 invalid tests
2 boundary tests if relevant
1 user acceptance test
```

---

### Activity 3: Failed Test Reflection

Students are given a failed test scenario and write:

```text
expected result
actual result
likely cause
fix
retest result
```

---

## 37. Homework

### Homework Part A

For your IA idea, choose three major features and write a development plan for each:

```text
related success criterion
key code/algorithm
data used
validation/error handling
evidence you will collect
```

### Homework Part B

Create a full testing table with at least 10 test cases.

Include:

```text
normal data
boundary data
invalid data
user acceptance test
evidence column
```

### Homework Part C

Answer:

```text
1. Why should development link to success criteria?
2. Why should students avoid pasting all code in the main text?
3. Why should testing include invalid data?
4. Why should expected results be written before testing?
5. Why is user acceptance testing useful?
```

### Homework Part D

Correct these weak testing statements:

```text
The feature works.
The app saved data.
The search was good.
The user liked it.
The program did not crash.
```

---

## 39. One-page Development and Testing Sheet

| Area | Key Reminder |
|---|---|
| Development purpose | explain how the product was built |
| Code snippets | selected important code only |
| Explanation | input → processing → output → criterion link |
| Algorithms | search, filter, sort, calculate, validate |
| Data structures | lists, arrays, files, tables, objects |
| Validation | prevent bad input |
| Error handling | respond safely to problems |
| Evidence | screenshots, code, output, change logs |
| Testing purpose | prove the product works |
| Test table | test data, expected, actual, pass/fail, evidence |
| Normal data | typical valid input |
| Boundary data | edge values |
| Invalid data | should be rejected |
| User testing | checks real user tasks |
| Failed tests | show fixing and retesting |
| Best exam structure | criterion → feature → code/evidence → test → result |
| Best phrase | Development explains how features were built, while testing provides evidence that those features meet the success criteria. |

