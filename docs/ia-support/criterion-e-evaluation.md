# Criterion E: Evaluation

## 1. What Criterion E Is About

Criterion E: Evaluation evaluates the final computational solution. It should judge the product against the success criteria from Criterion A and use evidence from testing, video, documentation, or user/client feedback.

Criterion E is not a general reflection. It is not just "the project went well". A strong evaluation explains how well the product solves the original problem and supports each judgement with evidence.

Criterion E should:

- evaluate each success criterion
- refer to evidence
- identify limitations
- justify specific improvements

::: tip Worked evidence chain
See the [PantryTrack Criterion E example](./worked-evidence-example#criterion-e-evaluation-evidence) for criterion-by-criterion judgements that distinguish fully met, partly met, corrected, and still-untested behaviour.
:::

## 2. What Criterion E Should Include

| Part | What to include | Why it matters |
|---|---|---|
| Success criteria evaluation | Explain whether each success criterion was fully met, partly met, or not met | Shows direct connection to Criterion A |
| Evidence | Test results, video evidence, screenshots, saved data, user/client feedback | Supports the judgement |
| Strengths | What the product does well | Shows achievement |
| Limitations | What the product still cannot do well | Shows honest evaluation |
| Improvements | Specific, realistic changes | Shows how the product could be improved |
| Justification | Explain why each improvement matters | Shows reasoning, not just wish-listing |

## 3. Evaluation vs Reflection

Evaluation means judging the product using evidence. Reflection means thinking about the experience. Criterion E should focus mainly on evaluation of the product.

| Weak reflection-style writing | Strong evaluation-style writing |
|---|---|
| I think my project was successful | Success Criterion 2 was fully met because Test 4 showed that the user can search by title and all matching records are displayed |
| I learned a lot from this project | The product meets the main user need because borrowed books can now be recorded, searched, and returned |
| The interface looks good | The main menu supports the required workflow because the user can access add, search, borrow, return, and report functions from one screen |
| I should add more features | A partial-search feature would address the limitation found in Test 6, where exact spelling was required |

## 4. Evaluating Success Criteria

You should evaluate each success criterion from Criterion A. Each judgement should be supported by evidence from testing or use.

Possible judgement labels:

- Fully met
- Mostly met
- Partly met
- Not met

Template:

| Success criterion | Evidence used | Extent achieved | Evaluation |
|---|---|---|---|
|  |  |  |  |

Column guide:

- Success criterion: the original criterion from Criterion A.
- Evidence used: test ID, video timestamp, screenshot, user/client feedback, data output, or code behaviour.
- Extent achieved: fully, mostly, partly, or not met.
- Evaluation: short explanation of what the evidence shows.

## 5. Example Evaluation Table: Library Borrowing System

| Success criterion | Evidence used | Extent achieved | Evaluation |
|---|---|---|---|
| User can add a new book record with required fields. | Test T1, screenshot of book list | Fully met | A valid book record was added and displayed with the correct fields. |
| User can search books by title. | Test T4 and T5, video timestamp 01:20 | Partly met | Exact and partial title searches worked, but the search did not handle spelling mistakes. |
| User can mark an available book as borrowed. | Test T6, before/after screenshot | Fully met | The selected book changed from available to borrowed and the borrower was recorded. |
| System prevents an already borrowed book from being borrowed again. | Test T7, warning screenshot | Fully met | The system rejected a second borrow attempt and kept the book status unchanged. |
| User can return a borrowed book. | Return test, video timestamp 02:05 | Fully met | The borrowed book was returned and the status changed back to available. |
| Records are saved and reloaded after restart. | Test T8, saved file and reopened app | Mostly met | Records loaded correctly after restart, but the storage method only works on one device. |

This example is honest because it identifies a partly met criterion and explains the limitation.

## 6. Using Testing Evidence

Evaluation should use actual testing evidence from Criterion D. Do not only repeat expected results.

| Evidence type | How it can support evaluation |
|---|---|
| Test table | Shows expected and actual results |
| Video timestamp | Shows the product working in real time |
| Screenshot | Shows interface or output evidence |
| Saved file / database record | Shows persistence or data change |
| User/client feedback | Shows whether the product fits the user context |
| Error message evidence | Shows validation and reliability |

Evidence should be specific. "It worked when I tested it" is too vague.

## 7. Strengths of the Final Product

Strengths should be linked to the problem and success criteria, not just personal opinion.

| Weak strength | Stronger strength |
|---|---|
| The product is good | The product reduces manual searching because the user can search all book records by title |
| The app looks nice | The main menu gives direct access to the required features, reducing navigation steps |
| The database works | Records persist after restart, so borrowing history is not lost |
| The code is advanced | The program separates storage, validation, and search functions, making the system easier to maintain |

## 8. Limitations of the Final Product

A limitation is a real weakness, constraint, or missing capability in the final product. A good limitation should be specific and connected to evidence.

| Limitation | Evidence / reason | Effect on user |
|---|---|---|
| Search requires exact spelling | No-match test fails when title is misspelled | User may not find existing records |
| No user roles | All users can access all features | Not suitable for multi-user deployment |
| No date reminder | Borrowed books are recorded but overdue warnings are not automatic | User must check dates manually |
| Local file storage only | Data is saved on one device | Cannot be shared across multiple computers |
| Interface is simple | Works for core tasks but lacks advanced navigation | May be less efficient for large data sets |

## 9. Justifying Improvements

Improvements should address real limitations. They should be specific, realistic, and justified.

| Weak improvement | Why it is weak | Stronger improvement |
|---|---|---|
| Add more features | Too vague | Add partial and case-insensitive search to reduce failed searches caused by exact spelling |
| Make it look better | Subjective | Add clear error labels beside invalid fields so users know what to correct |
| Add a GUI | Too broad if the solution was designed as CLI | Add a simple menu-based interface only if it supports the main workflow |
| Add more data | Not linked to a problem | Add due-date and overdue status fields so the system can identify late returns |
| Add everything I planned but missed | This may mean the original product was incomplete | Prioritise one specific missing function that directly improves a partly met success criterion |

Do not suggest improvements that were essential missing parts of the original solution without explaining the limitation honestly.

## 10. Improvement Justification Template

### Improvement: [specific improvement]

- Limitation it addresses:
- Evidence showing the limitation:
- How the improvement would work:
- Why it would improve the product:
- Whether it is realistic for future development:

Completed example:

### Improvement: Add partial and case-insensitive search

- Limitation it addresses: Current search requires exact spelling.
- Evidence showing the limitation: Test 6 showed that a slightly misspelled title returned no result.
- How the improvement would work: Convert both stored titles and search input to lowercase and check whether the search text appears inside the title.
- Why it would improve the product: Users can find records more reliably even when they do not enter the full exact title.
- Whether it is realistic for future development: This is realistic because it only changes the search comparison logic and does not require a full redesign.

## 11. Overall Conclusion

The final conclusion should briefly judge whether the product solves the original problem. It should refer to:

- the main problem
- success criteria achievement
- strongest evidence
- main limitation
- realistic future improvement

Structure:

```text
Overall, the product [fully/mostly/partly] solves the original problem because [main evidence].
Most success criteria were [fully/mostly] achieved, especially [strong feature].
However, [main limitation] remains, which affects [user/context].
A realistic future improvement would be [specific improvement] because [reason].
```

## 12. Common Mistakes in Criterion E

| Mistake | Why it is a problem | Better approach |
|---|---|---|
| Only saying the project was successful | No evidence or judgement | Evaluate each success criterion |
| Ignoring failed or partly met criteria | Evaluation becomes unrealistic | Explain limitations honestly |
| Listing improvements with no reason | Suggestions look random | Link each improvement to a limitation |
| Saying "add more features" | Too vague | Name one specific feature and explain why it helps |
| Not using test evidence | Evaluation is unsupported | Refer to test IDs, video, screenshots, data, or feedback |
| Making evaluation only about personal learning | Criterion E is about the product | Focus on how well the product solves the problem |

## 13. Criterion E Checklist

- [ ] I evaluated every success criterion.
- [ ] I used evidence from testing, video, documentation, or user/client feedback.
- [ ] I stated whether each criterion was fully, mostly, partly, or not met.
- [ ] I explained the product's strengths.
- [ ] I explained the product's limitations.
- [ ] I linked limitations to evidence.
- [ ] I suggested specific improvements.
- [ ] I justified each improvement.
- [ ] My improvements address real limitations.
- [ ] My conclusion judges whether the product solves the original problem.
- [ ] My evaluation is honest and evidence-based.

## 14. Quick Check

1. What is the purpose of Criterion E?

<details>
<summary>Answer</summary>

Criterion E: Evaluation judges how well the final computational solution meets the success criteria and solves the original problem, using evidence from testing, video, documentation, or user/client feedback.

</details>

2. Why should each success criterion be evaluated?

<details>
<summary>Answer</summary>

Each success criterion was used to define what the product should achieve. Evaluating each one keeps the conclusion connected to Criterion A and makes the judgement evidence-based.

</details>

3. Why is "add more features" a weak improvement?

<details>
<summary>Answer</summary>

It is too vague. A stronger improvement names a specific change, explains which limitation it addresses, and justifies how it would improve the product.

</details>

4. What type of evidence can support evaluation?

<details>
<summary>Answer</summary>

Evidence can include test results, video timestamps, screenshots, saved files, database records, user/client feedback, output examples, or error message evidence.

</details>

5. Why should limitations be included?

<details>
<summary>Answer</summary>

Limitations show honest judgement. They help explain what the product still cannot do well and make future improvements more specific and realistic.

</details>

6. What should the overall conclusion do?

<details>
<summary>Answer</summary>

The conclusion should judge whether the product solves the original problem, refer to success criteria and evidence, identify the main limitation, and suggest a realistic improvement.

</details>
