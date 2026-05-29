# IA Support

## 1. Section Overview

This section supports students through the **IBDP Computer Science Internal Assessment (IA)** process.

The IA is not only a programming task. It is a complete project that requires students to:

```text
identify a real problem
work with a real or realistic client/user
analyse requirements
design a solution
develop and test the product
evaluate whether the solution meets the success criteria
reflect on limitations and improvements
```

The goal of this section is to help students produce clear, organized, evidence-based IA work rather than only writing code.

::: tip Learning Focus
A strong IA connects the problem, client needs, success criteria, design, development, testing, and evaluation. These parts should not feel separate.
:::

---

## 2. Topic Index

| Order | Page | Main Focus | Link |
|---:|---|---|---|
| 1 | Overview | IA roadmap and project workflow | [Open](./) |
| 2 | IA Overview | what the IA is and what students must produce | [Open](./ia-overview) |
| 3 | Problem Analysis | choosing a real problem and analysing client needs | [Open](./problem-analysis) |
| 4 | Design and Success Criteria | planning the solution and writing measurable success criteria | [Open](./design-and-success-criteria) |
| 5 | Development and Testing | building the product and proving it works | [Open](./development-and-testing) |
| 6 | Evaluation and Reflection | judging success, limitations, and future improvements | [Open](./evaluation-and-reflection) |
| 7 | IA Checklist | final self-check before submission | [Open](./ia-checklist) |

::: warning Folder Name Note
The real folder name is `docs/ia-support`, matching the sidebar link `/ia-support/`.
:::

---

## 3. Learning Goals

By the end of this section, students should be able to:

- explain the purpose of the Computer Science IA
- choose a suitable IA problem
- identify a real or realistic client/user
- collect and summarize client requirements
- write a clear problem statement
- create measurable success criteria
- design the solution before coding
- explain important algorithms, data structures, and user interface choices
- document development with evidence
- test the product using normal, boundary, and invalid data
- evaluate the final product against the success criteria
- identify limitations and realistic future improvements
- avoid common IA mistakes such as vague criteria, weak testing, or unsupported evaluation

---

## 4. IA Big Picture

A Computer Science IA should feel like one connected story:

```text
Problem
  ↓
Client / User Need
  ↓
Requirements
  ↓
Success Criteria
  ↓
Design
  ↓
Development
  ↓
Testing
  ↓
Evaluation
  ↓
Reflection and Improvements
```

Each part should link to the previous part.

For example:

```text
If a success criterion says the system must search records by student name,
then the design should include search functionality,
the development should show it being built,
the testing should test it,
and the evaluation should judge whether it was achieved.
```

---

## 5. Bilingual Explanation

<LangBlock>
<template #cn>

### 中文说明

IA 不是简单地“做一个程序”。它更像是一个完整的软件项目。

学生需要先说明：

```text
谁有问题？
问题是什么？
为什么现在的方法不好？
这个问题为什么值得用计算机解决？
```

然后要说明：

```text
用户真正需要什么？
我的系统要做到什么才算成功？
我准备怎么设计？
我写了哪些重要代码？
我如何证明它能运行？
最终有没有解决原来的问题？
```

很多 IA 低分的问题不是代码写得太少，而是文档没有形成闭环。

比如：

```text
success criteria 写了 A
但是 design 没有设计 A
development 没有展示 A
testing 没有测试 A
evaluation 也没有评价 A
```

这样就会显得项目不完整。

所以 IA 写作要一直记住：

```text
problem → criteria → product → testing → evaluation
```

这条线必须连起来。

</template>

<template #en>

### English Explanation

The IA is not simply “make a program”. It is a complete software project.

Students first need to explain:

```text
Who has the problem?
What is the problem?
Why is the current method not good enough?
Why is this problem suitable for a computer-based solution?
```

Then they need to explain:

```text
What does the user really need?
What must the system do to be considered successful?
How will the solution be designed?
Which important code was developed?
How can the student prove it works?
Did the final product solve the original problem?
```

Many weak IAs do not lose marks because the code is tiny only. They lose marks because the documentation does not form a clear chain.

Example problem:

```text
success criteria mention feature A
but design does not plan A
development does not show A
testing does not test A
evaluation does not evaluate A
```

This makes the project feel incomplete.

So IA writing should always remember:

```text
problem → criteria → product → testing → evaluation
```

This chain must stay connected.

</template>
</LangBlock>

---

## 6. Key Vocabulary

| Term | Meaning |
|---|---|
| IA | Internal Assessment project for Computer Science |
| Client | person or group with the problem |
| User | person who uses the final product |
| Problem statement | clear explanation of the issue being solved |
| Current system | existing manual or digital method |
| Requirement | something the client/user needs the system to do |
| Success criterion | measurable condition used to judge whether the solution is successful |
| Design | planned structure of the solution before development |
| Prototype | early or partial version of the product |
| Product | final software solution |
| Development | process of building the solution |
| Testing | checking whether the solution works correctly |
| Test data | data used to test the product |
| Normal data | typical valid data |
| Boundary data | data at the edge of valid range |
| Invalid data | data that should be rejected |
| Evaluation | judging the final product against the success criteria |
| Limitation | weakness or missing feature in the final product |
| Improvement | realistic change that could make the product better |
| Appendix | supporting material, often including code or additional evidence |
| Evidence | screenshots, code snippets, test results, user feedback, or explanations that support claims |

---

## 7. Recommended IA Workflow

A safe IA workflow:

```text
1. Choose a real problem.
2. Identify client/user.
3. Interview or collect requirements.
4. Analyse the current system.
5. Write measurable success criteria.
6. Design the solution.
7. Build a simple working prototype.
8. Develop the full product step by step.
9. Test each important feature.
10. Collect user/client feedback.
11. Evaluate against success criteria.
12. Reflect on limitations and improvements.
13. Final check for clarity, evidence, and consistency.
```

::: warning Common Mistake
Do not start by coding first and then inventing the problem later. This often creates weak analysis and vague evaluation.
:::

---

## 8. Choosing a Suitable IA Problem

A suitable IA problem should be:

```text
realistic
specific
solvable with the student's skills
connected to a clear user/client
large enough to show programming skill
not too large to finish
easy to test and evaluate
```

### Good Problem Examples

```text
A teacher needs a tool to track student homework completion.
A small club needs a system to manage event sign-ups.
A tutor needs a quiz system that records student scores.
A family business needs a simple inventory tracker.
A coach needs a system to record player training attendance.
```

### Weak Problem Examples

```text
I want to make a game because games are fun.
I want to make a website about myself.
I want to make a calculator.
I want to make a social media app like Instagram.
I want to make an AI system that solves all school problems.
```

### Why Weak?

They may be:

```text
too vague
too simple
too large
no clear client
hard to evaluate
not based on real requirements
```

---

## 9. Client and User

The client and user may be the same person, but not always.

### Client

The client is the person or organization that has the problem and wants the solution.

### User

The user is the person who will use the product.

### Example

```text
Client: teacher
Users: teacher and students
Product: homework tracking system
```

### Good IA Habit

Always write clearly:

```text
The client is...
The target users are...
The client needs...
The users need...
```

---

## 10. Problem Analysis

Problem analysis explains why the project is needed.

### It Should Include

```text
background of the client/user
current method
problems with current method
why a computer solution helps
requirements collected from the client/user
constraints
success criteria
```

### Good Problem Statement Pattern

```text
The client currently uses [current method] to do [task]. This causes [specific problems], such as [example]. A computer-based solution is suitable because it can [benefit], [benefit], and [benefit].
```

### Example

```text
The teacher currently records homework completion in a paper notebook. This makes it difficult to search student records quickly and identify repeated missing homework. A computer-based solution is suitable because it can store records, search by student name, and generate summary information.
```

---

## 11. Success Criteria

Success criteria are used later to evaluate the product.

### Good Success Criteria Should Be

```text
specific
measurable
linked to client/user needs
testable
realistic
not just about appearance
```

### Weak Criteria

```text
The system is easy to use.
The system looks good.
The system works well.
The system is fast.
The system has no bugs.
```

### Better Criteria

```text
The teacher can add a new homework record with student name, task, date, and completion status.
The system can search records by student name and display all matching records.
The system prevents saving a record if the student name or task field is blank.
The system can generate a summary showing how many tasks each student missed.
The teacher can export or view a weekly report.
```

### Key Rule

Every success criterion should be tested or evaluated later.

---

## 12. Design

Design explains the planned solution before development.

### Design May Include

```text
system overview
user interface sketches
input/output design
data structure design
database/table design if used
class design if object-oriented
algorithm design
validation design
testing plan
```

### Why Design Matters

Design shows that the product was planned, not randomly built.

### Good Design Link

```text
Each important success criterion should appear in the design.
```

---

## 13. Development

Development explains how the product was built.

### Good Development Evidence

```text
important code snippets
screenshots of working features
explanations of algorithms
explanations of data structures
problems encountered and how they were fixed
versions or iterations
validation and error handling
links between code and success criteria
```

### Weak Development

```text
only screenshots
only full code dump
no explanation
no link to requirements
no evidence of problem solving
```

### Strong Development Habit

For each important feature:

```text
feature goal
code / screenshot evidence
short explanation
problem solved or decision made
connection to success criteria
```

---

## 14. Testing

Testing proves that the product works.

### Test Types

```text
normal data
boundary data
invalid data
functional testing
validation testing
user acceptance testing
```

### Test Table Template

| Test No. | Feature | Test Data | Expected Result | Actual Result | Pass/Fail | Evidence |
|---:|---|---|---|---|---|---|
| 1 | Add record | valid name/task/date | record is saved | record saved | Pass | screenshot |
| 2 | Blank name validation | name is blank | error message shown | error shown | Pass | screenshot |
| 3 | Search | student name = "Anna" | matching records shown | records shown | Pass | screenshot |

### Common Mistake

Testing only happy paths is not enough. Students should also test invalid and boundary cases where appropriate.

---

## 15. Evaluation

Evaluation judges the final product.

### Evaluation Should Include

```text
success criteria table
evidence from testing
client/user feedback
what was achieved
what was not fully achieved
limitations
future improvements
```

### Evaluation Table Template

| Success Criterion | Evidence | Achieved? | Explanation |
|---|---|---|---|
| Add homework records | Test 1 screenshot | Yes | valid records can be saved |
| Reject blank fields | Test 2 screenshot | Yes | blank name shows error |
| Weekly report | Test 7 screenshot | Partly | report works but cannot export yet |

### Strong Evaluation

A strong evaluation does not just say:

```text
The project was successful.
```

It explains:

```text
which criteria were achieved
which evidence proves this
what limitations remain
what should be improved
```

---

## 16. IA Evidence Chain

A strong IA has a clear evidence chain.

```text
Client says search is needed
  ↓
Success criterion: system can search by student name
  ↓
Design includes search input and search algorithm
  ↓
Development shows search function/code
  ↓
Testing tests several search cases
  ↓
Evaluation says whether search criterion was achieved
```

If this chain is broken, the IA feels weak.

---

## 17. Common IA Mistakes

| Mistake | Why It Is Weak | Better Approach |
|---|---|---|
| no real client/user | problem feels invented | identify clear client/user |
| vague problem | hard to design/evaluate | describe current system and specific issues |
| vague success criteria | cannot judge success | make criteria measurable |
| criteria not tested | evaluation unsupported | test every important criterion |
| design after coding | design seems fake | plan before building |
| only screenshots in development | weak technical explanation | explain code and algorithms |
| full code pasted in main text | poor readability | use selected snippets and appendix |
| testing only valid data | misses robustness | include invalid/boundary data |
| evaluation only says “it works” | not evidence-based | compare against criteria |
| improvements too vague | not useful | suggest realistic specific improvements |

---

## 18. Recommended IA File Structure

A clear IA document may use sections like:

```text
1. Introduction and Problem Context
2. Client / User and Current System
3. Requirements and Success Criteria
4. Design
5. Development
6. Testing
7. Evaluation
8. Limitations and Future Improvements
9. Appendix
```

::: warning Note
Always follow the official instructions and teacher guidance for final formatting. This structure is a student-friendly planning model.
:::

---

## 19. IA Planning Checklist

Before coding, students should be able to answer:

```text
Who is the client/user?
What problem do they have?
How do they currently solve it?
What is wrong with the current method?
What data will the system use?
What are the key features?
How will each feature be tested?
What programming techniques will be shown?
How will the client/user judge success?
Is the project realistic for the time available?
```

---

## 20. Scenario Answer Bank

### If Asked: “What makes a good IA problem?”

```text
A good IA problem is specific, realistic, linked to a clear client or user, suitable for a computer-based solution, and possible to test and evaluate.
```

### If Asked: “Why are success criteria important?”

```text
Success criteria define measurable conditions used to judge whether the final product solves the client or user problem.
```

### If Asked: “Why does IA need testing?”

```text
Testing provides evidence that the product works correctly and handles normal, boundary, and invalid data where appropriate.
```

### If Asked: “Why is client feedback useful?”

```text
Client feedback helps judge whether the product meets real user needs and supports the final evaluation.
```

### If Asked: “What should evaluation include?”

```text
Evaluation should compare the final product against the success criteria using testing evidence and user/client feedback, then identify limitations and improvements.
```

---

## 21. Student Self-check Questions

### Problem

```text
Is the problem real and specific?
Is the client/user clear?
Have I explained the current system?
Have I explained why the current system is not good enough?
```

### Criteria

```text
Are my success criteria measurable?
Can each criterion be tested?
Are criteria linked to the client/user needs?
```

### Design

```text
Does my design show how the solution will work?
Have I planned data, interface, and algorithms?
Does the design match my criteria?
```

### Development

```text
Have I explained important code?
Have I shown evidence of problem solving?
Have I linked development to criteria?
```

### Testing

```text
Have I tested normal data?
Have I tested invalid data?
Have I tested boundary data where suitable?
Have I recorded expected and actual results?
```

### Evaluation

```text
Have I evaluated each success criterion?
Have I used testing evidence?
Have I included client/user feedback if available?
Have I explained limitations and improvements?
```

---

## 22. Guided Practice

### Practice 1

A student wants to make “a calculator app”.

Why is this usually weak as an IA idea?

<details>
<summary>Suggested Answer</summary>

It may be too simple, may not have a clear real client/user, and may be hard to connect to a meaningful real-world problem.

</details>

---

### Practice 2

Improve this success criterion:

```text
The system is easy to use.
```

<details>
<summary>Suggested Answer</summary>

A better criterion could be:

```text
The user can add a new record using one form with clear labels and receive a confirmation message after saving.
```

</details>

---

### Practice 3

Why should invalid data be tested?

<details>
<summary>Suggested Answer</summary>

Invalid data testing checks whether the system handles incorrect input safely and prevents incorrect or incomplete data from being saved.

</details>

---

### Practice 4

What is wrong with this evaluation?

```text
My product is successful because it works well.
```

<details>
<summary>Suggested Answer</summary>

It is too vague and has no evidence. A stronger evaluation should compare the product against each success criterion using testing evidence and client/user feedback.

</details>

---

## 23. Independent Practice

### Question 1

Write a suitable IA problem statement for a school-based project.

### Question 2

Identify the client and user for a club event sign-up system.

### Question 3

Write five measurable success criteria for a homework tracker.

### Question 4

Create a design outline for a quiz score recording system.

### Question 5

Write three normal tests, two invalid tests, and one boundary test for a mark entry system.

### Question 6

Explain why a success criterion must be testable.

### Question 7

Explain how client feedback can support evaluation.

### Question 8

Identify three limitations for a simple inventory tracker.

### Question 9

Suggest three realistic future improvements for a booking system.

### Question 10

Explain how the problem, criteria, testing, and evaluation should connect.

---

## 24. Practice Activity

### Activity 1: Good or Weak IA Idea?

Students sort ideas into:

```text
strong
needs improvement
weak
too large
too simple
```

Example ideas:

```text
homework tracker for a teacher
student revision timer
full social media platform
basic calculator
club attendance system
AI system to grade all essays
inventory tracker for a small shop
```

---

### Activity 2: Criteria Rewrite

Students rewrite vague criteria:

```text
easy to use
fast
looks nice
secure
works well
has many features
```

into measurable criteria.

---

### Activity 3: Evidence Chain Mapping

Students choose one feature and map:

```text
requirement → success criterion → design → development → testing → evaluation
```

---

## 26. One-page IA Overview Sheet

| Part | What It Must Do |
|---|---|
| Problem | explain the real issue |
| Client/User | identify who needs or uses the product |
| Current system | describe what happens now |
| Requirements | explain what the user needs |
| Success criteria | measurable conditions for success |
| Design | plan interface, data, algorithms, structure |
| Development | show and explain important building steps |
| Testing | prove features work with suitable data |
| Evaluation | judge against success criteria |
| Limitations | explain what is still weak or missing |
| Improvements | suggest realistic future changes |
| Evidence | screenshots, code snippets, tests, feedback |
| Main risk | weak links between criteria, testing, and evaluation |
| Best habit | keep the whole IA connected from problem to evaluation |

