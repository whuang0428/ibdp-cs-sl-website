# IA Support

## 1. What the IA Is

The Computer Science IA is a computational solution to a chosen problem. It is not just a programming exercise or a set of screenshots.

You choose a topic within computer science, specify a problem of your own choosing, plan a suitable solution, develop the product, test it, and evaluate how well it meets the success criteria. Your solution should show computational thinking through the way you break down the problem, design the system, use data, write algorithms, test behaviour, and improve the product.

The documentation should cover the official Criteria A-E:

- Criterion A: Problem specification
- Criterion B: Planning
- Criterion C: System overview
- Criterion D: Development
- Criterion E: Evaluation

Your work must be your own. External sources, libraries, tutorials, images, data, and AI assistance should be acknowledged where applicable.

At SL, the public 2027 subject brief allocates **35 hours** to the computational solution and gives it a weighting of **30%**.

::: info Source boundary
The 35-hour allocation, 30% SL weighting, real-world problem, and computational-thinking focus were checked on **22 July 2026** against the [IB Computer Science subject brief for first assessment 2027](https://www.ibo.org/globalassets/new-structure/university-admission/pdfs/dp_comp_sci_subjectbrief_en.pdf). The public brief does not contain every detailed submission instruction. Criteria wording, report/video limits, appendix packaging, permitted tools, and final upload format must therefore be confirmed against the latest official guidance available through your school.
:::

## 2. What You Submit

| Submission item | What it should show |
|---|---|
| Documentation / report | A written explanation of Criteria A-E; this site uses the current 2000-word maximum guidance |
| Product | The working computational solution |
| Video | This site uses the current 5-minute maximum guidance; show product functionality and examples of testing strategy |
| Appendix | Full source code and any required supporting material under the current guidance |

Before submission, confirm all three detailed limits and packaging requirements with your teacher or school. If their current official instructions differ from this site, follow the school instructions and report the difference so this page can be reviewed.

## 3. The Five Criteria

| Criterion | Name | Main question |
|---|---|---|
| A | Problem specification | What problem are you solving, and why is a computational solution suitable? |
| B | Planning | What are your success criteria, timeline, resources, and development plan? |
| C | System overview | How is your system structured, and what algorithms / models / testing strategy support it? |
| D | Development | How did you build the product, and what techniques did you use? |
| E | Evaluation | How well does the final product meet the success criteria, and what are its limitations? |

Keep these official criterion names visible in your own planning. Older words such as analysis, design, testing, and reflection can still be useful, but they should be clearly connected to Criteria A-E.

## 4. Evidence Chain Across A-E

A strong IA does not treat the five criteria as separate essays. Each criterion should pass evidence to the next one.

| Stage | What you create | How it should connect |
|---|---|---|
| Criterion A | Problem, user/context, requirements, success criteria | Success criteria become the targets for planning, testing, and evaluation |
| Criterion B | Development plan, resources, risks, timeline | The plan should show how the success criteria will be built and checked |
| Criterion C | System model, algorithms, data/UI design, testing strategy | The design should explain how the product will meet the planned requirements |
| Criterion D | Development explanation, code excerpts, test evidence, video evidence | The evidence should show important features working, not just describe them |
| Criterion E | Judgement against success criteria, strengths, limitations, improvements | The evaluation should use evidence from testing and the video, not personal opinion |

Use this simple check:

```text
Problem -> Success criteria -> Design -> Development evidence -> Evaluation judgement
```

If a feature appears in Criterion D but was never planned in A-C, explain why it was added. If a success criterion appears in Criterion A but is never tested or evaluated, the evidence chain is broken.

For a complete original example, use [IA Evidence Chain: Worked Original Example](./worked-evidence-example). It follows one feature from the problem and success criteria through planning, system design, code, failed and passed tests, video evidence, and final evaluation.

## 5. Mini Evidence Example

This example shows how one small project idea can connect across Criteria A-E.

### Project idea

A small school library currently records book loans on paper. The librarian needs a simple system to store book records, search books, mark loans, return books, and save the data.

### Evidence chain

| Criterion | Example evidence |
|---|---|
| A: Problem specification | Problem: paper records are slow to search and easy to lose. Success criterion: the user can search books by title and see all matching records. |
| B: Planning | Task: implement search feature after the book-record structure is finished. Risk: search may fail if title case differs. Response: plan case-insensitive matching. |
| C: System overview | Design: `Book` records include ID, title, author, and status. Search algorithm compares the typed title with stored titles. Test plan includes exact, partial, and no-match cases. |
| D: Development | Code excerpt: search function loops through book records and returns matching titles. Test evidence: T4 exact search passes, T5 partial search passes, T6 no-match message appears. |
| E: Evaluation | Success criterion mostly met: title search works for exact and partial text, but spelling mistakes are not handled. Improvement: add fuzzy matching or suggestions for similar titles. |

This chain is strong because the same feature appears in the problem, plan, system design, development evidence, testing evidence, and final evaluation.

### Weak chain to avoid

| Problem | Why it is weak |
|---|---|
| Criterion A says the system should be "easy to use" | Too subjective and hard to test |
| Criterion C does not show how search works | Design evidence is missing |
| Criterion D only shows screenshots of menus | Development evidence does not prove the algorithm works |
| Criterion E says "the search is good" | Evaluation is opinion, not evidence |

Use the stronger chain above as a model: every important claim should connect to a feature, test, screenshot, video timestamp, data record, or user feedback.

## 6. Recommended IA Support Learning Path

Use these IA Support pages as a learning path while you plan, build, document, and evaluate your computational solution.

| Step | Page to study | Purpose |
|---|---|---|
| 1 | Computational Solution Overview | Understand the whole IA task |
| 2 | Choosing a Suitable Problem | Choose a problem with enough complexity |
| 3 | Criterion A: Problem Specification | Define the problem clearly |
| 4 | Criterion B: Planning | Plan success criteria, resources, and timeline |
| 5 | Criterion C: System Overview | Show structure, algorithms, models, and testing strategy |
| 6 | Criterion D: Development | Explain how the product was built |
| 7 | Criterion E: Evaluation | Judge the product against success criteria |
| 8 | Worked Evidence Example | Follow one original project evidence chain across A-E |
| 9 | Ethics and Academic Integrity | Handle consent, data, AI, libraries, and citations responsibly |
| 10 | Submission Checklist | Check documentation, video, appendix, and source code |

## 7. What Makes a Suitable IA Project

A good IA project usually:

- solves a clear problem
- has enough complexity
- can be completed in the available time
- uses computational thinking
- involves meaningful programming
- can be tested using clear success criteria
- is the student's own work

| Stronger project | Weaker project |
|---|---|
| Solves a clear real problem | Has no clear problem |
| Uses data structures, files, databases, algorithms, or OOP where appropriate | Only stores data temporarily in RAM |
| Has measurable success criteria | Uses vague goals such as "easy to use" |
| Can be tested with normal, invalid, and edge cases | Only works for one perfect input |
| Is realistic to finish | Is too broad or unfinished |
| Shows the student's own design and programming | Is mainly copied from a template or existing project |

This does not mean every project must be large. A focused project with clear logic, persistent data, meaningful validation, and strong testing is usually better than an ambitious idea that is unfinished.

## 8. Success Criteria Reminder

Success criteria are not just a checklist of features. They should be measurable, clear, achievable, and testable. They should connect directly to the problem and the essential functionality of the software.

Weak:

> The system is user-friendly.

Better:

> The system allows the user to search records by student name and displays all matching records within the results table.

Weak:

> The database works well.

Better:

> The system saves new records to persistent storage and loads them again when the program restarts.

## 9. Academic Integrity Reminder

- The submitted work must be your own.
- External code, libraries, tutorials, images, data, and AI assistance should be acknowledged where applicable.
- Do not copy an existing project and present it as your own.
- If you use an external source to learn a technique, cite it.
- If you use AI to help refine code or wording, follow your school's guidance and acknowledge it where required.

## 10. How to Use This IA Support Section

Use this section as a guide while developing your IA. Start with the overview, then work through the criteria in order. Keep checking whether your project is still linked to the problem and success criteria.

As you work, ask yourself:

- Does my project solve a specific problem?
- Are my success criteria measurable and testable?
- Does my system structure support the problem I identified?
- Can I explain the important parts of my code and design decisions?
- Can I evaluate the finished product using evidence?

## 11. Quick Check

1. What is the IA product supposed to be?

<details>
<summary>Answer</summary>

The product should be a working computational solution to a chosen computer science problem. It should show meaningful programming and computational thinking, not just a simple demonstration.

</details>

2. Why should success criteria be measurable?

<details>
<summary>Answer</summary>

Measurable success criteria make it possible to test and evaluate the product using evidence. If a criterion is vague, it is hard to prove whether the product meets it.

</details>

3. Why is a simple calculator usually too weak?

<details>
<summary>Answer</summary>

A simple calculator usually has limited complexity, limited data handling, and very little connection to a real problem. A stronger IA project normally needs clearer users, richer functionality, and testable success criteria.

</details>

4. What should the video show?

<details>
<summary>Answer</summary>

The video should show the product's functionality and examples of the testing strategy. It should help demonstrate that the product works and that testing was planned, not just show a quick tour of screens.

</details>

5. Why must external libraries or AI use be acknowledged?

<details>
<summary>Answer</summary>

Acknowledgement makes it clear which work is yours and which help or resources came from elsewhere. This supports academic integrity and helps the reader understand your own contribution.

</details>
