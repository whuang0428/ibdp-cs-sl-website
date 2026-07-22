# Criterion B: Planning

## 1. What Criterion B Is About

Criterion B: Planning explains how you plan to develop the computational solution. It should show a realistic development route from the problem and success criteria toward a working product.

Criterion B is not just a list of dates. It is also not a diary written after coding. A strong plan should guide development from the beginning, then be adjusted responsibly if the project changes.

Criterion B should connect to Criterion A and prepare for Criteria C, D, and E:

- Criterion A gives the problem and success criteria.
- Criterion B plans how the solution will be developed.
- Criterion C explains the system structure.
- Criterion D shows development evidence.
- Criterion E evaluates the finished product against the success criteria.

::: tip Worked evidence chain
See the [PantryTrack Criterion B example](./worked-evidence-example#criterion-b-planning-evidence) for task dependencies, success-criterion links, resources, time estimates, risks, and a recorded plan change caused by test evidence.
:::

## 2. What Criterion B Should Include

| Planning element | What to include | Why it matters |
|---|---|---|
| Development stages | Planning, designing, developing, testing, evaluating | Shows the full project route |
| Task order | What should be done first, next, and later | Helps development happen logically |
| Dependencies | Which tasks depend on earlier tasks | Prevents unrealistic planning |
| Success criteria link | Which tasks support which success criteria | Keeps the plan connected to the problem |
| Time plan | Estimated time or week for each stage | Shows feasibility |
| Resources | Software, hardware, libraries, data, tutorials, or people needed | Shows preparation |
| Limitations and risks | Possible problems and how to reduce them | Shows realistic thinking |
| Research needs | What the student must learn before building | Shows how missing knowledge will be handled |

## 3. Planning Is Not a Process Journal

A plan should be created before or at the start of development. It may be adjusted later, but it should not be written as if you already knew everything after finishing the product.

| Weak approach | Better approach |
|---|---|
| I wrote the plan after finishing the product | I planned the main stages first, then adjusted when necessary |
| The plan only says "code the app" | The plan breaks coding into features and dependencies |
| The plan lists dates but no tasks | The plan explains what will be done and why |
| The plan ignores success criteria | Each major task supports one or more success criteria |
| The plan has no risks | The plan identifies possible problems and responses |

## 4. Planning Stages

### Planning

Understand the problem, confirm requirements, define success criteria, choose tools, and identify resources.

### Designing

Plan system structure, user interface, data storage, algorithms, and testing strategy.

### Developing

Build the product feature by feature.

### Testing

Test the product against success criteria and test important algorithms with valid, invalid, and edge cases.

### Evaluating

Compare the final product with the success criteria, user needs, limitations, and possible improvements.

## 5. Chronological Plan Template

| Stage | Task | Depends on | Related success criteria | Resources needed | Estimated time | Risk / limitation | Response |
|---|---|---|---|---|---|---|---|
|  |  |  |  |  |  |  |  |

Column guide:

- Stage: the broad project phase, such as planning, designing, developing, testing, or evaluating.
- Task: the specific work to complete.
- Depends on: the earlier task or decision that must happen first.
- Related success criteria: the success criteria supported by this task.
- Resources needed: software, data, documentation, tutorials, feedback, or hardware needed.
- Estimated time: the expected week, lesson, or time block.
- Risk / limitation: what might make this task difficult.
- Response: how you will reduce the risk or handle the limitation.

## 6. Example Plan: Library Borrowing System

| Stage | Task | Depends on | Related success criteria | Resources needed | Estimated time | Risk / limitation | Response |
|---|---|---|---|---|---|---|---|
| Planning | Confirm problem and essential features | Initial project idea | All criteria | User discussion, notes | Week 1 | Scope may become too broad | Prioritise add, search, borrow, return, and save/load |
| Planning | Write success criteria | Confirmed problem | SC1-SC6 | Criterion A notes | Week 1 | Criteria may be vague | Use measurable actions and expected results |
| Designing | Choose storage method | Success criteria | SC6 | File storage or database research | Week 2 | Database may take too long to learn | Use CSV/JSON first if database is not feasible |
| Designing | Design book and loan data model | Storage method | SC1, SC3, SC4, SC5, SC6 | Sample records, field list | Week 2 | Missing fields may cause later changes | Create test records before coding |
| Designing | Design main menu and input screens | Essential features | SC1-SC5 | UI sketches or menu outline | Week 2 | Interface may take too long | Keep layout simple and focus on core actions |
| Developing | Develop add/search book feature | Data model and menu | SC1, SC2 | IDE, language documentation | Week 3 | Search may only work for exact matches | Add case-insensitive or partial search if feasible |
| Developing | Develop borrow/return feature | Add/search feature | SC3, SC4, SC5 | Data model, test records | Week 4 | Book status may update incorrectly | Test available and unavailable book cases |
| Testing | Test save/load and invalid inputs | Core features complete | SC1-SC6 | Test table, sample data | Week 5 | Bugs may appear near deadline | Test each feature before adding optional extras |

This is only a model. Your own plan should use your own project, success criteria, resources, risks, and timeline.

## 7. Linking the Plan to Success Criteria

A strong plan should show how development tasks support the success criteria from Criterion A.

| Success criterion | Planned task that supports it | Evidence expected later |
|---|---|---|
| User can add a new book record | Develop add book form and validation | Screenshot, code excerpt, test result |
| User can search by title | Develop search algorithm | Test table and video evidence |
| Borrowed books cannot be borrowed twice | Add availability check | Invalid test case |
| Records save and reload after restart | Implement persistent storage | Save/load test |

Replace these examples with your own project-specific criteria.

## 8. Resources and Research

Resources are not only physical tools. They may include:

- programming language
- IDE
- libraries
- database or file format
- sample data
- documentation
- tutorials used for learning
- user/client feedback
- hardware or device requirements

If you need to learn a new technique, it should appear in the plan as research or skill preparation.

| Need | Example | How to document it responsibly |
|---|---|---|
| Learn file storage | Reading/writing JSON or CSV | Cite tutorial/documentation if used |
| Learn database basics | SQLite or simple relational database | Explain why the database is needed |
| Learn GUI library | JavaFX, Tkinter, Swing, or web interface | Use only what supports the problem |
| Collect sample data | Mock library records | Avoid sensitive real data if not needed |
| Use external library | Charting, date handling, or validation library | Acknowledge the library |

## 9. Risk and Limitation Planning

A realistic plan should identify what could go wrong.

| Risk / limitation | Why it matters | Possible response |
|---|---|---|
| Feature list is too large | Product may remain unfinished | Prioritise essential features first |
| Student has not used database before | Development may be delayed | Start with file storage or plan time for learning |
| Real data is sensitive | Privacy issue | Use mock data |
| External API may fail | Product may become unreliable | Prepare local test data or backup method |
| Search feature may require exact spelling | Results may be missed | Add partial or case-insensitive search if feasible |
| GUI takes too long | Core logic may be unfinished | Build console or simple interface first |

## 10. Gantt Chart Guidance

A Gantt chart or timeline can be useful, but it must be specific. A generic timeline with broad labels is weak.

| Generic timeline | Stronger planning evidence |
|---|---|
| Week 1: planning | Week 1: confirm problem, write success criteria, identify required data |
| Week 2: coding | Week 2: implement add book and search book features |
| Week 3: testing | Week 3: test SC1-SC3 using normal, invalid, and edge cases |
| Week 4: evaluation | Week 4: compare final product against success criteria and identify limitations |

The exact format can vary. The important part is that the plan is detailed, realistic, and connected to the project.

## 11. Common Mistakes in Criterion B

| Mistake | Why it is a problem | Better approach |
|---|---|---|
| Plan is too generic | It does not show real preparation | Break the project into specific tasks |
| Plan does not mention success criteria | It disconnects planning from Criterion A | Link tasks to success criteria |
| No dependencies | Some tasks appear in the wrong order | Show what must happen first |
| No risks or limitations | Plan looks unrealistic | Identify likely problems and responses |
| No resources | Reader cannot see what is needed | List software, data, libraries, and research |
| Plan written after development | It becomes a diary, not a plan | Start planning before coding and update responsibly |

## 12. Criterion B Checklist

- [ ] I have a clear chronological plan.
- [ ] My plan covers planning, designing, developing, testing, and evaluating.
- [ ] My plan is connected to my success criteria.
- [ ] I have identified task dependencies.
- [ ] I have estimated time realistically.
- [ ] I have listed software, hardware, data, libraries, and research needs.
- [ ] I have included risks, limitations, and possible responses.
- [ ] My plan is specific to my project, not generic.
- [ ] My plan can guide my development work.
- [ ] My plan is not written only after the product is finished.

## 13. Quick Check

1. What is the purpose of Criterion B?

<details>
<summary>Answer</summary>

Criterion B: Planning shows how you plan to develop the computational solution. It should give a realistic route from the problem and success criteria toward a working, testable product.

</details>

2. Why is a generic Gantt chart weak?

<details>
<summary>Answer</summary>

A generic Gantt chart only gives broad labels such as "planning" or "coding". It is stronger when it names specific tasks, success criteria links, resources, time estimates, and risks.

</details>

3. Why should tasks be linked to success criteria?

<details>
<summary>Answer</summary>

Linking tasks to success criteria keeps the plan connected to the problem from Criterion A. It also helps you prepare evidence for testing and evaluation later.

</details>

4. What is a task dependency?

<details>
<summary>Answer</summary>

A task dependency is something that must happen before another task can be completed. For example, designing the data model should happen before coding features that use that data.

</details>

5. Why should research needs appear in the plan?

<details>
<summary>Answer</summary>

Research needs show that you have identified missing knowledge and planned how to handle it. This makes the plan more realistic and helps you document external sources responsibly.

</details>

6. Why is Criterion B not the same as a process journal?

<details>
<summary>Answer</summary>

Criterion B should guide development before or near the start of the project. A process journal records what happened later, but Criterion B should show a realistic plan for how the solution will be developed.

</details>
