# Criterion D: Development

## 1. What Criterion D Is About

Criterion D: Development is where you show the actual development of the computational solution. It should demonstrate how the product was built, how important algorithms were implemented, what programming techniques were used, and how the testing strategy was carried out.

Criterion D is not a process journal. It is not a long diary of every coding session, and it is not just screenshots of the interface. A strong development section explains and justifies important development decisions.

Criterion D should connect clearly to:

- Criterion A: Problem specification
- Criterion B: Planning
- Criterion C: System overview

## 2. What Criterion D Should Include

| Part | What to include | Why it matters |
|---|---|---|
| Development consistency | Show that the product follows the problem specification, plan, and system overview | Connects Criterion D to Criteria A-C |
| Programming techniques | Loops, conditionals, data structures, files/databases, OOP, libraries, validation, algorithms | Shows technical skill |
| Code excerpts | Key parts of code with comments or explanation | Shows how the product works |
| Justification of techniques | Why the chosen technique is suitable | Shows decision-making, not just coding |
| Testing evidence | Implemented tests with actual results | Shows the product was checked |
| Video evidence | Product functionality and testing examples | Supports the written documentation |
| Full source code appendix | Complete source code outside the main word count | Gives full technical evidence |

## 3. Development Is Not a Process Journal

You should not simply write what you did day by day. Instead, choose important features, algorithms, and techniques, then explain how and why they were implemented.

| Weak approach | Better approach |
|---|---|
| Week 1: I made the menu | The menu was developed to separate the main features and reduce user navigation errors |
| I fixed some bugs | Input validation was added to reject empty book IDs and prevent duplicate records |
| I copied code from a tutorial | I learned a storage technique from a source, adapted it to my data model, and acknowledged the source |
| Here is a screenshot of my app | This code excerpt shows how the search algorithm loops through records and returns matching results |
| The program works | Test evidence shows which success criteria were met and how invalid data was handled |

## 4. Connecting Development to Criteria A-C

| Earlier criterion | What Criterion D should show |
|---|---|
| Criterion A: Problem specification | The product addresses the stated problem and success criteria |
| Criterion B: Planning | The development follows the planned stages and responds to planned risks |
| Criterion C: System overview | The implemented code matches the system model, algorithms, data model, and testing strategy |
| Criterion E: Evaluation | Development and testing evidence will later support evaluation |

## 5. Choosing Code Excerpts

Do not paste the whole source code into the main documentation. The full code belongs in the appendix. In Criterion D, include selected code excerpts that show important algorithms, techniques, or design decisions.

Good code excerpts may show:

- important algorithm implementation
- validation logic
- search/sort logic
- file/database processing
- OOP class or method design
- data structure use
- error handling
- integration of libraries or tools
- meaningful testing support

| Code excerpt type | Why it is useful |
|---|---|
| Search algorithm | Shows iteration, selection, and matching logic |
| Save/load function | Shows persistent data handling |
| Validation function | Shows defensive programming |
| Class method | Shows OOP design and responsibility |
| Database query | Shows data retrieval or modification |
| Report generator | Shows processing and output |
| Error handling block | Shows reliability and user protection |

## 6. How to Explain a Code Excerpt

Use this structure:

### Code excerpt: [feature or algorithm name]

- Purpose:
- Related success criterion:
- Related system component:
- Programming techniques used:
- Why this technique is suitable:
- How it was tested:

Example model:

### Code excerpt: Search books by title

- Purpose: Allows the user to find matching book records.
- Related success criterion: User can search by book title and view matching records.
- Related system component: Search Module.
- Programming techniques used: loop, selection, string comparison, results list.
- Why this technique is suitable: The program must check each stored record and collect matches.
- How it was tested: Tested with exact match, partial match, no match, and different letter cases.

This model explains the development without pasting too much code into the main documentation.

## 7. Programming Techniques Students Can Demonstrate

| Technique | What it can show | Example use |
|---|---|---|
| Selection | Decisions and branching | Reject invalid input |
| Iteration | Repeated processing | Search all records |
| Data structures | Organised data handling | Store records in lists, arrays, dictionaries, objects |
| File processing | Persistent storage | Save and load CSV/JSON/text files |
| Database processing | Structured persistent data | Add, update, search, or delete records |
| OOP | Encapsulation and responsibility | Book, Borrower, LoanRecord classes |
| Validation | Robust input handling | Check empty fields or duplicate IDs |
| Error handling | Reliability | Handle missing file or invalid data |
| Libraries | Efficient use of tools | Date handling, charts, GUI, database connector |
| Modular design | Maintainability | Separate UI, storage, and logic functions |

Do not include a technique just because it sounds advanced. The technique should support the problem and the product.

## 8. Justifying Development Choices

A strong development section should explain why a method, structure, library, or algorithm was chosen.

| Choice | Weak explanation | Stronger explanation |
|---|---|---|
| Using JSON storage | JSON is good | JSON stores structured book and loan records clearly and can be reloaded when the program restarts |
| Using a list of objects | I used objects because OOP is advanced | Each book has related data and behaviour, so a Book class keeps the code organised |
| Using validation | It stops errors | Validation prevents empty or duplicate IDs, which protects the accuracy of loan records |
| Using a search loop | It finds books | The loop checks each stored book and collects all matching titles, supporting the search success criterion |
| Using an external library | The library is useful | The library handles date formatting reliably, reducing errors in due-date calculations |

## 9. Testing Evidence in Criterion D

Criterion C planned the testing strategy. Criterion D should show that testing was actually carried out and what the results were.

Testing evidence should include both functional testing and structural testing where suitable.

### Functional testing

Functional testing checks whether success criteria are met.

### Structural testing

Structural testing checks whether important algorithms behave correctly with valid, invalid, and extreme cases.

| Test ID | Success criterion / algorithm | Test type | Test data | Expected result | Actual result | Pass/Fail | Evidence |
|---|---|---|---|---|---|---|---|
|  |  |  |  |  |  |  |  |

Evidence could be a screenshot, video timestamp, console output, database view, saved file content, or another clear record.

## 10. Example Testing Evidence: Library Borrowing System

| Test ID | Success criterion / algorithm | Test type | Test data | Expected result | Actual result | Pass/Fail | Evidence |
|---|---|---|---|---|---|---|---|
| T1 | Add valid book record | Functional | ID B001, title Animal Farm, author George Orwell | New book appears in list | Record appeared with correct fields | Pass | Screenshot of book list |
| T2 | Reject empty book ID | Structural | Empty ID field | Error message shown, record not saved | Error message shown and no record added | Pass | Screenshot of error |
| T3 | Reject duplicate book ID | Structural | Existing ID B001 | Duplicate rejected | Duplicate warning shown | Pass | Test table and screenshot |
| T4 | Search existing title | Functional | Search `Animal` | Matching book is displayed | Animal Farm displayed in results | Pass | Video timestamp |
| T5 | Search title with no match | Structural | Search `Unknown Book` | No matching books message | Message displayed | Pass | Screenshot |
| T6 | Borrow available book | Functional | Borrow B001 for Alex Chen | Status changes to borrowed | Status changed to borrowed | Pass | Screenshot before/after |
| T7 | Reject borrowing already borrowed book | Structural | Borrow B001 again | Warning shown, status unchanged | Warning shown and status stayed borrowed | Pass | Screenshot of warning |
| T8 | Save and reload records after restart | Functional | Save B001, restart program | B001 loads again | Record loaded after restart | Pass | Saved file and reopened app |

## 11. Video Evidence

The video should support Criterion D by showing the product functioning and showing examples of testing strategy in action.

The video may show:

- main features working
- success criteria being tested
- valid input
- invalid input
- important algorithm behaviour
- save/load or database persistence
- error messages
- final product functionality

| Video evidence | What it can prove |
|---|---|
| Adding a valid record | Product can create data |
| Searching for records | Search algorithm works |
| Invalid input rejected | Validation works |
| Borrow/return process | State change works |
| Restart and reload | Persistent storage works |
| Summary/report shown | Processing and output work |

The video should not be only a tour of the interface. It should demonstrate functionality and examples of testing.

## 12. Full Source Code Appendix

The full source code should be included in the appendix, while Criterion D should use selected excerpts in the main documentation.

- Full source code belongs in the appendix.
- Code excerpts in the main report should be selected and explained.
- Code should be readable and consistently formatted.
- Important code should have helpful comments.
- External code or AI-assisted code should be acknowledged according to school guidance.

## 13. AI, Libraries, and External Help

You may learn from documentation, tutorials, libraries, or AI tools, but you must be transparent and follow school and IB guidance.

- Acknowledge external libraries.
- Cite tutorials or sources used to learn techniques.
- Explain how borrowed ideas were adapted.
- Do not submit generated code that you cannot explain.
- Add comments or notes where AI assistance affected code or ideas, if required by school guidance.
- The final work must remain your own.

## 14. Common Mistakes in Criterion D

| Mistake | Why it is a problem | Better approach |
|---|---|---|
| Writing a diary of coding sessions | Does not explain technical development | Explain key algorithms and techniques |
| Pasting too much code | Makes the report hard to read | Use selected excerpts and put full code in appendix |
| Showing interface screenshots only | Does not show programming skill | Include code excerpts and explanations |
| Not justifying choices | Reader cannot see why techniques were suitable | Explain why each method fits the problem |
| Testing only perfect input | Reliability is not shown | Test valid, invalid, and extreme cases |
| No link to success criteria | Development evidence becomes disconnected | Refer to success criteria and system components |
| Unacknowledged external help | Academic integrity risk | Cite sources, libraries, and AI help where required |

## 15. Criterion D Checklist

- [ ] I have shown how the product was developed.
- [ ] My development matches the problem specification.
- [ ] My development follows the planned system overview.
- [ ] I selected important code excerpts, not the whole source code.
- [ ] I explained what each excerpt does.
- [ ] I linked excerpts to success criteria or system components.
- [ ] I justified important programming choices.
- [ ] I included evidence of functional testing.
- [ ] I included evidence of structural testing where suitable.
- [ ] I used actual results, not only expected results.
- [ ] I referenced video evidence where useful.
- [ ] My full source code is included in the appendix.
- [ ] I acknowledged external sources, libraries, or AI assistance where required.

## 16. Quick Check

1. What is the purpose of Criterion D?

<details>
<summary>Answer</summary>

Criterion D: Development shows how the computational solution was built, which important programming techniques were used, why they were suitable, and how testing evidence supports the product.

</details>

2. Why is Criterion D not a process journal?

<details>
<summary>Answer</summary>

A process journal lists what happened over time. Criterion D should explain selected development evidence, algorithms, code excerpts, decisions, and tests that show how the product works.

</details>

3. Why should students use selected code excerpts instead of the whole code?

<details>
<summary>Answer</summary>

Selected excerpts keep the main documentation focused on important algorithms and techniques. The full source code should be placed in the appendix for complete evidence.

</details>

4. What is the difference between functional and structural testing?

<details>
<summary>Answer</summary>

Functional testing checks whether success criteria are met. Structural testing checks whether important algorithms handle valid, invalid, and extreme cases correctly.

</details>

5. What should the video demonstrate?

<details>
<summary>Answer</summary>

The video should demonstrate product functionality and examples of testing strategy, such as valid input, invalid input, important features, persistence, or error handling.

</details>

6. Why must external libraries or AI-assisted code be acknowledged?

<details>
<summary>Answer</summary>

Acknowledgement shows which work is yours and which help came from external sources. It supports academic integrity and helps the reader understand your own contribution.

</details>
