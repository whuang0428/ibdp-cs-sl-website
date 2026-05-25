# IA Overview

## 1. Lesson Goals

By the end of this page, students should be able to:

- explain what the IBDP Computer Science IA is
- describe the main purpose of the IA
- identify the major parts of a complete IA project
- explain the difference between the product and the written documentation
- understand the role of client/user needs
- explain why success criteria are central to the IA
- understand how design, development, testing, and evaluation connect
- identify what evidence should be collected during the project
- avoid common IA planning mistakes
- use a clear IA workflow from problem choice to final evaluation

::: tip Learning Focus
The IA is a complete software project. The final program matters, but the explanation, evidence, testing, and evaluation are also essential.
:::

---

## 2. What Is the Computer Science IA?

The Computer Science IA is an internal assessment project where students design, develop, test, and evaluate a computational solution to a real or realistic problem.

### Simple Definition

```text
The IA is a student-created software solution supported by written documentation that explains the problem, design, development, testing, and evaluation.
```

### Main Idea

The IA should show that the student can:

```text
understand a user/client problem
plan a suitable computational solution
build the solution
test it carefully
evaluate whether it solves the problem
reflect on limitations and improvements
```

### Important

The IA is not only:

```text
a coding assignment
a random app
a website design task
a screenshot collection
a full code dump
```

It is a documented project with a clear problem-solving process.

---

## 3. Bilingual Explanation

<LangBlock>
<template #cn>

### 中文讲解

IA 可以理解成一个完整的软件开发小项目。

你不能只交一个程序，然后说：

```text
It works.
```

你需要讲清楚：

```text
为什么要做？
给谁做？
原来的方法有什么问题？
用户需要什么？
什么样才算成功？
你是怎么设计的？
你是怎么开发的？
你怎么证明它可以运行？
最后它有没有真正解决问题？
```

IA 的重点是“项目闭环”。

也就是：

```text
problem → requirements → success criteria → design → development → testing → evaluation
```

每一个部分都应该互相对应。

例如，success criteria 里写：

```text
The user can search records by name.
```

那么后面应该看到：

```text
design: search input / search logic
development: search function code
testing: search normal / no result / partial input
evaluation: this criterion achieved or partly achieved
```

如果前面写了，后面没有测试和评价，就会显得不完整。

</template>

<template #en>

### English Explanation

The IA can be understood as a small complete software development project.

You cannot only submit a program and say:

```text
It works.
```

You need to explain:

```text
Why is the product needed?
Who is it for?
What is wrong with the current method?
What does the user need?
What counts as success?
How was the solution designed?
How was it developed?
How was it tested?
Did it solve the original problem?
```

The key idea is a connected project chain:

```text
problem → requirements → success criteria → design → development → testing → evaluation
```

Each part should match the others.

For example, if a success criterion says:

```text
The user can search records by name.
```

Then later the IA should include:

```text
design: search input / search logic
development: search function code
testing: search normal / no result / partial input
evaluation: this criterion achieved or partly achieved
```

If a feature is mentioned early but not tested or evaluated later, the project feels incomplete.

</template>
</LangBlock>

---

## 4. IA Product vs IA Documentation

The IA has two important parts:

```text
product
documentation
```

### Product

The product is the software solution.

Examples:

```text
desktop application
web application
database-backed system
quiz program
inventory tracker
booking system
attendance system
revision tool
game-like learning tool
```

### Documentation

The documentation explains the project process.

It should show:

```text
problem analysis
client/user requirements
success criteria
design decisions
development evidence
testing evidence
evaluation
limitations
future improvements
```

### Key Point

A strong product with weak documentation can still lose marks.  
A simple product with strong evidence and clear explanation can be much stronger.

---

## 5. Main IA Sections

A student-friendly IA structure can be:

```text
1. Introduction and Problem Context
2. Client/User and Current System
3. Requirements and Success Criteria
4. Design
5. Development
6. Testing
7. Evaluation
8. Limitations and Future Improvements
9. Appendix
```

::: warning Follow Official Guidance
Your teacher's official IA structure and school requirements should be followed. This page gives a practical student-friendly structure for planning.
:::

---

## 6. Section Purpose Table

| IA Part | Main Purpose | Key Question |
|---|---|---|
| Problem context | explain why the project is needed | What problem exists? |
| Client/user | identify who needs the solution | Who is this for? |
| Current system | describe the existing method | What happens now? |
| Requirements | summarize user needs | What must the solution do? |
| Success criteria | define measurable success | How will success be judged? |
| Design | plan before coding | How will the solution work? |
| Development | show how product was built | What did I build and why? |
| Testing | prove it works | Does it work correctly? |
| Evaluation | judge final success | Did it meet the criteria? |
| Limitations | identify remaining issues | What is still weak or missing? |
| Improvements | suggest realistic future changes | How could it be improved? |

---

## 7. The IA Storyline

A strong IA should feel like one storyline.

```text
The client has a problem.
The student understands the problem.
The student defines measurable success.
The student designs a suitable solution.
The student builds the solution.
The student tests the solution.
The student evaluates the solution against the original criteria.
```

### Weak Storyline

```text
I made an app.
Here are some screenshots.
Here is some code.
It works.
```

### Strong Storyline

```text
My client currently uses a paper system to track homework.
This causes searching and summary problems.
The client needs add/search/report features.
I created measurable criteria for these needs.
I designed forms, data structures, and algorithms.
I developed the features step by step.
I tested each criterion with normal and invalid data.
I evaluated which criteria were achieved and what remains limited.
```

---

## 8. Choosing a Project Type

Good IA projects usually solve a clear management, learning, tracking, or automation problem.

### Common Suitable Project Types

| Project Type | Example |
|---|---|
| Record management | student homework tracker |
| Booking system | room or equipment booking |
| Quiz/revision system | topic quiz with score records |
| Inventory system | small shop stock tracker |
| Attendance system | club or training attendance |
| Scheduling helper | simple event/session planner |
| Report generator | weekly summary from stored data |
| Learning tool | interactive practice app |
| Simple game with educational purpose | vocabulary or logic practice game |

### Risky Project Types

| Project Type | Why Risky |
|---|---|
| huge social media app | too large |
| full e-commerce platform | too broad |
| simple calculator | too simple |
| personal homepage | weak problem-solving |
| generic game | may lack client need |
| AI system with vague goal | hard to evaluate |
| copied tutorial project | weak originality and analysis |

---

## 9. Client and User Role

A strong IA normally has a clear client/user.

### Client

The client is the person or group with the problem.

### User

The user is the person or group who will use the system.

### Examples

| Project | Client | User |
|---|---|---|
| Homework tracker | teacher | teacher |
| Quiz system | tutor | students and tutor |
| Inventory tracker | shop owner | shop staff |
| Attendance tracker | coach | coach |
| Club signup system | club leader | club members and leader |

### Good Writing Pattern

```text
The client is [name/role], who currently [current method]. The target users are [users], who need to [main tasks].
```

---

## 10. Requirement Collection

Requirements should come from the client/user, not only from the student's imagination.

### Possible Evidence

```text
interview notes
questionnaire summary
observation of current method
sample paper form
screenshots of current spreadsheet
email/chat summary
client feedback on prototype
```

### Requirement Types

```text
functional requirements = what the system must do
non-functional requirements = qualities such as usability, reliability, privacy, or performance
constraints = limits such as time, platform, user skill, or available devices
```

### Example

Functional:

```text
The system must allow the teacher to add homework records.
```

Non-functional:

```text
The interface should be simple enough for the teacher to use without training.
```

Constraint:

```text
The system should run on the teacher's Windows laptop.
```

---

## 11. Success Criteria Overview

Success criteria are measurable conditions used later in evaluation.

### Good Success Criteria

```text
The user can add a new record with student name, task, due date, and completion status.
The system can search all records by student name.
The system rejects blank required fields and shows a clear error message.
The system can display a weekly summary of missed homework by student.
The user can edit or delete an incorrect record.
```

### Weak Success Criteria

```text
The system is good.
The system looks nice.
The system is useful.
The system is easy.
The system works.
```

### Rule

If you cannot test or evaluate it clearly, rewrite it.

---

## 12. Design Overview

Design should show the planned solution before development.

### Useful Design Evidence

```text
wireframes / interface sketches
flowcharts
pseudocode
data structure plan
database table design
class diagram if OOP
validation plan
navigation structure
test plan outline
```

### Design Should Answer

```text
What screens will exist?
What data will be stored?
How will data flow through the system?
What algorithms are important?
How will input be validated?
How will the user complete key tasks?
```

---

## 13. Development Overview

Development shows how the product was built.

### Good Development Sections

For each important feature:

```text
feature purpose
code snippet
screenshot of result
technical explanation
problem encountered
solution or improvement
link to success criterion
```

### Example Development Explanation

```text
The search feature was needed for Success Criterion 2. I used a loop to check each saved record and compare the stored student name with the search input. Matching records are added to the result list and displayed to the user.
```

### Common Mistake

Do not paste the entire code into the main body. Use selected important snippets and put full code in the appendix if required.

---

## 14. Testing Overview

Testing proves the system works.

### Good Testing Should Include

```text
normal data
boundary data
invalid data
feature testing
validation testing
user acceptance testing
```

### Test Table

| Test No. | Feature | Test Data | Expected Result | Actual Result | Pass/Fail | Evidence |
|---:|---|---|---|---|---|---|
| 1 | Add record | valid name/task/date | record saved | record saved | Pass | screenshot |
| 2 | Blank field | blank student name | error message | error message shown | Pass | screenshot |
| 3 | Search | name = "Anna" | Anna records shown | Anna records shown | Pass | screenshot |

### Important

Testing should connect to success criteria.

```text
Each success criterion should have at least one relevant test or evaluation point.
```

---

## 15. Evaluation Overview

Evaluation judges the final product against the success criteria.

### Evaluation Should Use

```text
testing evidence
client/user feedback
success criteria
known limitations
realistic improvements
```

### Strong Evaluation Sentence

```text
Success Criterion 2 was achieved because Test 4 shows that searching by student name returns all matching records. The client also confirmed that this feature reduces the time needed to find a student's homework history.
```

### Weak Evaluation Sentence

```text
The search works well.
```

Why weak?

```text
no criterion reference
no evidence
no client/user link
too vague
```

---

## 16. Evidence Collection

Students should collect evidence throughout the project.

### Evidence Types

```text
client interview summary
current system screenshots/photos
requirements list
design diagrams
prototype feedback
code snippets
development screenshots
test results
error messages fixed
client/user feedback
final product screenshots
evaluation evidence
```

### Good Habit

Create an evidence folder from the beginning.

Suggested folders:

```text
01-client-research
02-design
03-development
04-testing
05-feedback
06-final-screenshots
```

---

## 17. Time Management

The IA should be planned early.

### Suggested Timeline

| Stage | Focus |
|---|---|
| Week 1 | choose problem and client |
| Week 2 | collect requirements |
| Week 3 | write success criteria |
| Week 4 | create design |
| Week 5-7 | develop core features |
| Week 8 | test core features |
| Week 9 | improve product |
| Week 10 | final testing |
| Week 11 | evaluation and reflection |
| Week 12 | final edit and checklist |

### Advice

Do not leave documentation until the end.  
Write notes as you build.

---

## 18. Scope Control

Scope means the size and complexity of the project.

### Good Scope

```text
5-7 strong core features
clear data storage
some validation
search/filter/sort/report feature
client-specific need
testable success criteria
```

### Too Small

```text
only one screen
no data storage
only simple calculations
no real client need
no meaningful testing
```

### Too Large

```text
too many user types
online payment system
full social network
complex AI with no clear evaluation
many features but none completed well
```

### Good Rule

A finished, tested, well-explained smaller product is better than an unfinished large product.

---

## 19. Programming Complexity

The IA should show appropriate computational thinking and programming skill.

### Possible Complexity Features

```text
data storage and retrieval
searching / filtering / sorting
validation and error handling
multiple screens or states
file handling or database use
classes and objects
lists / arrays / dictionaries
report generation
login or role-based access if appropriate
algorithmic processing
```

### Warning

Complexity should serve the client problem.  
Do not add random features only to look complex.

---

## 20. Academic Integrity

Students must produce their own work and acknowledge help.

### Safe Practice

```text
write your own code
understand every part of your code
cite external libraries or resources
do not copy full projects from tutorials
keep development evidence
explain your own decisions
ask teacher when unsure
```

### Risky Practice

```text
copying a GitHub project
using code you cannot explain
submitting tutorial code as your own
hiding AI-generated code
using a client/problem that is not real
fabricating feedback or test evidence
```

### Strong Habit

If you use any external resource, record:

```text
what it was
how it helped
what you changed
why it is allowed
```

---

## 21. Common IA Mistakes

| Mistake | Problem | Fix |
|---|---|---|
| coding before problem analysis | weak purpose | start with client need |
| no clear client | project feels generic | identify real client/user |
| vague success criteria | cannot evaluate | make criteria measurable |
| too many features | unfinished product | reduce scope |
| too simple product | weak technical evidence | add meaningful data/logic features |
| design does not match product | poor planning | update design carefully and explain changes |
| testing only screenshots | weak evidence | include test data and expected/actual results |
| no invalid testing | robustness not shown | test validation and errors |
| evaluation not linked to criteria | unsupported judgement | evaluate each criterion |
| improvements too vague | weak reflection | suggest specific realistic improvements |

---

## 22. IA Quality Checklist

### Strong IA Should Have

```text
clear client/user
specific real problem
evidence of requirements
measurable success criteria
planned design
technical development explanation
working product evidence
normal, boundary, and invalid tests
evaluation against criteria
client/user feedback
specific limitations
realistic improvements
clear appendix
```

### Weak IA Often Has

```text
generic app idea
no real need
vague criteria
screenshots without explanation
little testing
no client feedback
evaluation only says "it works"
```

---

## 23. Scenario Answer Bank

### If Asked: “What is the IA?”

```text
The IA is a student-created software solution with documentation explaining the problem, design, development, testing, and evaluation.
```

### If Asked: “Why is a client/user important?”

```text
A clear client or user makes the problem real and helps define requirements and success criteria.
```

### If Asked: “Why are success criteria important?”

```text
Success criteria provide measurable conditions used to judge whether the final product solves the problem.
```

### If Asked: “Why is testing important?”

```text
Testing provides evidence that the product works correctly and handles suitable normal, boundary, and invalid data.
```

### If Asked: “Why is evaluation important?”

```text
Evaluation judges the final product against the success criteria using test evidence and user/client feedback.
```

---

## 24. Guided Practice

### Practice 1

A student wants to make a general recipe website.

What is missing?

<details>
<summary>Suggested Answer</summary>

A clear client/user and a specific problem. It needs a real person or group with a need, such as a family member who wants to search meals by ingredient and dietary restriction.

</details>

---

### Practice 2

Is this a good success criterion?

```text
The app should be nice and useful.
```

<details>
<summary>Suggested Answer</summary>

No. It is vague and hard to test. A better criterion should describe a measurable feature or user task.

</details>

---

### Practice 3

What evidence could support development?

<details>
<summary>Suggested Answer</summary>

Code snippets, screenshots of working features, explanations of algorithms/data structures, problems fixed, and links to success criteria.

</details>

---

### Practice 4

Why should evaluation mention success criteria?

<details>
<summary>Suggested Answer</summary>

Because success criteria are the measurable standards used to judge whether the product solved the original problem.

</details>

---

## 25. Independent Practice

### Question 1

Explain what the Computer Science IA is in your own words.

### Question 2

List the main sections of an IA document.

### Question 3

Write one strong IA project idea and identify the client/user.

### Question 4

Write one weak IA project idea and explain why it is weak.

### Question 5

Write five measurable success criteria for a club attendance system.

### Question 6

List five types of evidence students should collect.

### Question 7

Explain why testing should include invalid data.

### Question 8

Explain why evaluation should use client/user feedback.

### Question 9

Explain why scope control matters.

### Question 10

Create a mini IA workflow for a homework tracking system.

---

## 26. Classroom Activity

### Activity 1: IA Idea Clinic

Students present one IA idea in this format:

```text
client/user
current method
problem
proposed solution
three success criteria
```

Classmates identify whether the project is:

```text
specific enough
too large
too small
testable
client-focused
```

---

### Activity 2: Criteria Check

Students classify criteria as:

```text
measurable
vague
not client-related
not testable
too broad
```

Then rewrite weak ones.

---

### Activity 3: Evidence Chain

For one feature, students build:

```text
requirement → success criterion → design → development → test → evaluation
```

---

## 27. Teacher Notes

### Teaching Emphasis

Students usually need the most support with:

```text
narrowing project scope
finding a real client/user
writing measurable success criteria
linking testing to criteria
writing evaluation with evidence
```

A project should not be judged only by how impressive the idea sounds. A smaller project with clear requirements, reliable development, and strong testing can be very successful.

### Suggested Teacher Questions

```text
Who exactly will use this?
What does the user currently do?
What is inconvenient or inefficient now?
Which feature proves this is a computer science solution?
How will you test this success criterion?
What evidence will you collect?
```

---

## 28. One-page IA Overview Sheet

| Area | Key Reminder |
|---|---|
| IA purpose | solve a real or realistic problem with software |
| Client/user | must be clear |
| Problem | specific and evidence-based |
| Requirements | come from client/user needs |
| Success criteria | measurable and testable |
| Design | plan before coding |
| Development | explain important code and decisions |
| Testing | normal, boundary, invalid data where suitable |
| Evaluation | judge against success criteria |
| Evidence | collect throughout the project |
| Scope | not too small, not too large |
| Complexity | meaningful, not random |
| Academic integrity | own work, cite resources, understand code |
| Best habit | keep problem, criteria, testing, and evaluation connected |

::: tip Next Step
After this page, the next page should be **Problem Analysis**, using the real file name `problem-analysis.md`.
:::
