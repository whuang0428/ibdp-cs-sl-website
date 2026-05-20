# Evaluation and Reflection

## 1. Purpose

Evaluation checks whether the final product meets the success criteria and solves the client's problem.

Reflection explains what went well, what limitations remain, and how the product could be improved.

## 2. Evaluation Structure

```text
Success criterion
→ evidence from testing/product
→ judgement
→ client/user feedback if available
```

Example:

```text
SC2 required the system to reject duplicate student IDs. Test T2 entered an existing ID and the system displayed "Duplicate ID". This shows that SC2 was met.
```

## 3. Evaluation Table

| Success Criterion | Evidence | Met? | Comment |
|---|---|---|---|
| SC1 Add student | T1 passed | Yes | Valid records are added |
| SC2 Reject duplicate ID | T2 passed | Yes | Error message shown |
| SC3 Generate report | T5 partly passed | Partly | Report works but layout could be clearer |

## 4. Client Feedback

Client feedback should be specific.

Weak:

```text
The client liked it.
```

Better:

```text
The teacher said the missing homework report was useful because it reduced the time needed to check incomplete work. However, they wanted the report to be exportable as a PDF in the future.
```

## 5. Limitations

Good limitations are honest and specific.

| Limitation | Possible Improvement |
|---|---|
| Data is stored locally only | Add cloud or shared database |
| Interface is simple | Improve layout and navigation |
| No login system | Add role-based access |
| Report cannot export | Add CSV or PDF export |
| Limited test users | Test with more users |

## 6. Reflection Questions

1. Which success criteria were fully met?
2. Which criteria were partly met?
3. What evidence proves this?
4. What did the client say?
5. What limitations remain?
6. What would be improved with more time?
7. What did you learn about development?

## 7. Common Mistakes

| Mistake | Fix |
|---|---|
| Only says “it works” | Refer to criteria and tests |
| No evidence | Use test results and screenshots |
| No limitations | Include honest weaknesses |
| Client feedback too vague | Quote or summarize specific feedback |
| Future improvements unrealistic | Suggest reasonable next steps |

## 8. Practice

### Task

Evaluate this criterion:

```text
SC1: The system should allow users to search books by title.
Test result: Searching "Dune" displayed the correct record.
```

<details>
<summary>Example Answer</summary>

SC1 was met because the search test using the title "Dune" returned the correct book record. This shows that the system can search by title for existing books. Further testing could include partial titles or titles that do not exist.

</details>
