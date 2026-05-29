# Problem Analysis

## 1. Lesson Goals

By the end of this page, students should be able to:

- explain the purpose of problem analysis in the IA
- identify a clear client or target user
- describe the current system or current method
- explain specific weaknesses of the current system
- collect client/user requirements
- distinguish problem, requirement, and solution idea
- explain why a computer-based solution is suitable
- define project scope and constraints
- avoid vague or invented problem statements
- prepare evidence that supports the need for the project
- write a clear problem analysis section that connects to later success criteria

::: tip Learning Focus
Problem analysis is the foundation of the IA. If the problem is vague, the success criteria, design, testing, and evaluation will also become weak.
:::

---

## 2. What Is Problem Analysis?

Problem analysis is the section where the student explains the real problem that the project will solve.

### Simple Definition

```text
Problem analysis explains who has the problem, what the current problem is, why the current method is not good enough, and what the user needs from a computer-based solution.
```

### It Should Answer

```text
Who is the client or user?
What task are they trying to do?
How do they currently do it?
What problems or inefficiencies exist?
What evidence shows this problem is real?
Why is a computer-based solution suitable?
What are the main requirements?
What are the limits of the project?
```

### Key Point

Problem analysis is not the same as describing the final app.

Weak:

```text
I will make an attendance app with buttons and a database.
```

Better:

```text
The coach currently records attendance on paper, which makes it difficult to search old records and calculate attendance rates. A computer-based system can store attendance records, search by player name, and generate weekly summaries.
```

---

## 3. Bilingual Explanation

<LangBlock>
<template #cn>

### 中文讲解

Problem Analysis 是 IA 的起点。它不是介绍你想做什么 app，而是解释：

```text
谁遇到了问题？
现在怎么做？
现在的方法哪里不好？
为什么需要一个计算机解决方案？
用户真正需要什么？
```

很多学生会直接写：

```text
I want to make a booking system.
```

这太像“我想做一个东西”，不是 problem analysis。

更好的写法是：

```text
The club leader currently records event sign-ups using messages in a group chat. This makes it difficult to see who has signed up, who has cancelled, and how many spaces are still available. A computer-based system would allow the leader to store sign-up records, search members, and display the number of available places.
```

这样就清楚说明了：

```text
client = club leader
current system = group chat
problem = hard to track sign-ups and available places
computer solution = store/search/display records
```

Problem Analysis 要帮后面的 success criteria 铺路。  
如果这里说用户需要 search，那么后面 success criteria、design、testing、evaluation 都应该出现 search。

</template>

<template #en>

### English Explanation

Problem Analysis is the starting point of the IA. It is not mainly about introducing the app you want to make. It explains:

```text
Who has the problem?
How is the task currently done?
What is wrong with the current method?
Why is a computer-based solution needed?
What does the user really need?
```

Many students write:

```text
I want to make a booking system.
```

This sounds like “I want to build something”, not problem analysis.

A stronger version is:

```text
The club leader currently records event sign-ups using messages in a group chat. This makes it difficult to see who has signed up, who has cancelled, and how many spaces are still available. A computer-based system would allow the leader to store sign-up records, search members, and display the number of available places.
```

This clearly shows:

```text
client = club leader
current system = group chat
problem = hard to track sign-ups and available places
computer solution = store/search/display records
```

Problem Analysis should prepare for the success criteria later.  
If this section says the user needs search, then search should appear in the success criteria, design, testing, and evaluation.

</template>
</LangBlock>

---

## 4. Key Terms

| Term | Meaning |
|---|---|
| Client | person or group who has the problem and wants the solution |
| User | person or group who will use the final product |
| Current system | method currently used to complete the task |
| Problem | specific issue, inefficiency, or limitation in the current system |
| Requirement | something the client/user needs the system to do |
| Constraint | limitation that affects the project, such as time, device, platform, or user skill |
| Scope | what the project will and will not include |
| Evidence | proof that supports the analysis, such as interview notes or current system screenshots |
| Functional requirement | feature or action the system must perform |
| Non-functional requirement | quality the system should have, such as usability or reliability |
| Stakeholder | person or group affected by the product |
| Success criterion | measurable condition used later to judge whether the solution is successful |
| Feasibility | whether the project can realistically be completed with available time and skills |
| Automation | using a computer to perform or support a task |
| Data input | information entered into the system |
| Data output | information produced by the system |
| Data storage | how the system keeps information for later use |

---

## 5. Difference Between Problem, Requirement, and Solution

Students often mix these up.

| Item | Meaning | Example |
|---|---|---|
| Problem | what is wrong now | teacher cannot quickly find missing homework records |
| Requirement | what the user needs | system must search homework records by student name |
| Solution feature | what you build | search box and search function |

### Bad Writing

```text
The problem is that there is no search button.
```

This is weak because it describes a missing feature, not the real-world problem.

### Better Writing

```text
The teacher cannot quickly find a student's homework history because records are stored on paper and must be checked manually.
```

Then the requirement can be:

```text
The system should allow the teacher to search records by student name.
```

---

## 6. Identify the Client and User

### Client

The client is the person or group who has the problem or requested the solution.

### User

The user is the person or group who will use the solution.

### Examples

| Project | Client | User |
|---|---|---|
| homework tracker | teacher | teacher |
| club sign-up system | club leader | club members and club leader |
| inventory tracker | shop owner | shop staff |
| quiz score recorder | tutor | tutor and students |
| training attendance system | coach | coach |

### Writing Template

```text
The client for this project is [client role/name]. The client currently [current method]. The target users are [users], who will use the system to [main tasks].
```

### Example

```text
The client for this project is a school basketball coach. The coach currently records attendance on paper after each training session. The target user is the coach, who will use the system to add attendance records, search player history, and view attendance summaries.
```

---

## 7. Describe the Current System

The current system is how the client/user currently completes the task.

### Current System Could Be

```text
paper notebook
spreadsheet
group chat
manual counting
email messages
shared document
memory / verbal communication
existing app that is too limited
folder of files
whiteboard
```

### What to Describe

```text
what information is recorded
who records it
when it is updated
where it is stored
how it is searched
how mistakes are corrected
how summaries or reports are made
what takes too much time
what causes errors
```

### Good Current System Description

```text
The teacher currently records homework completion in a paper notebook after each lesson. Each row includes the date, student name, task name, and whether the task was completed. To find a student's history, the teacher must manually check several pages. Weekly summaries are counted by hand, which takes time and may lead to mistakes.
```

---

## 8. Identify Weaknesses of the Current System

A strong IA problem needs specific weaknesses.

### Common Weakness Types

| Weakness | Example |
|---|---|
| slow search | user must check paper records manually |
| calculation errors | totals are counted by hand |
| data loss risk | paper notebook can be lost or damaged |
| duplicated records | same record entered in multiple places |
| hard to update | old records must be crossed out manually |
| no summary | user cannot quickly see trends |
| poor validation | missing information is not noticed |
| hard to share | only one person can access paper record |
| poor organization | information is mixed across messages |
| difficult comparison | user cannot compare results over time |

### Weak Analysis

```text
The current system is bad.
```

### Strong Analysis

```text
The current paper system is slow because the teacher must manually search through many pages to find one student's missing homework history. It is also error-prone because weekly totals are counted by hand.
```

---

## 9. Evidence for the Problem

The IA should not feel invented. Evidence makes the problem more believable.

### Possible Evidence

```text
client interview summary
questionnaire summary
observation notes
photo or screenshot of current system
sample paper form
sample spreadsheet structure
summary of client feedback
workflow diagram of current method
time taken using current method
examples of common mistakes
```

### Evidence Safety

Do not expose private information.

```text
blur names if needed
use sample data
remove personal details
get permission
avoid publishing sensitive data
```

### Good Writing Pattern

```text
From the client interview, the teacher explained that finding a student's previous homework records can take several minutes because the records are spread across different pages. This supports the need for a searchable digital system.
```

---

## 10. Collecting Client/User Requirements

Requirements should come from client/user needs.

### Methods

```text
interview
questionnaire
observation
review of current documents
prototype feedback
conversation summary
```

### Interview Questions

```text
What task do you currently do?
How do you currently do it?
What takes the most time?
What mistakes happen often?
What information do you need to store?
What information do you need to search or view?
What reports or summaries would help you?
What device will you use?
What features are most important?
What would make the system easy to use?
```

### Requirement Summary Template

```text
Based on the client interview, the main requirements are:
1. The system should...
2. The system should...
3. The system should...
```

---

## 11. Functional Requirements

Functional requirements describe what the system must do.

### Examples

```text
add a new student record
edit an existing record
delete an incorrect record
search records by name
filter records by date
calculate total score
display weekly summary
save data to a file or database
load previous data
validate required fields
export a report
```

### Good Functional Requirement

```text
The system should allow the teacher to search homework records by student name and display all matching results.
```

### Weak Functional Requirement

```text
The system should be useful.
```

Why weak?

```text
not specific
not directly testable
does not describe a system action
```

---

## 12. Non-functional Requirements

Non-functional requirements describe qualities of the system.

### Examples

```text
easy to use
clear layout
runs on Windows laptop
loads within a reasonable time
uses readable error messages
protects sensitive data
works without internet connection
uses simple navigation
```

### Make Them More Measurable

Weak:

```text
The system should be easy to use.
```

Better:

```text
The main user should be able to add a new record using one form without needing to switch pages.
```

Weak:

```text
The system should be fast.
```

Better:

```text
The system should display search results within two seconds for the expected class-size dataset.
```

---

## 13. Constraints

Constraints are limits on the project.

### Common Constraints

```text
time available
student programming skill
software/platform required
client's device
internet availability
data privacy
school policy
no budget
client's computer skill
need to use sample data
small number of users
```

### Example

```text
The client will use the system on a Windows laptop, so the product should run locally without requiring a paid online service.
```

### Why Constraints Matter

Constraints help explain design decisions and project scope.

---

## 14. Scope

Scope defines what the project includes and excludes.

### In Scope

```text
features that will be built
data that will be stored
users supported
platform supported
main workflows supported
```

### Out of Scope

```text
features not included
complex features saved for future improvements
unsupported platforms
unnecessary user roles
advanced features beyond time/skill limit
```

### Example

```text
This project will include adding, editing, searching, and summarizing homework records. It will not include automatic email reminders because this would require email server integration and additional privacy considerations.
```

### Why Scope Helps

It prevents the project from becoming too large.

---

## 15. Why a Computer-based Solution Is Suitable

Do not assume a computer solution is automatically needed. Explain why it helps.

### Good Reasons

```text
faster searching
automatic calculations
more organized storage
data validation
easier editing
summary generation
reduced manual counting
better consistency
can store historical records
can filter or sort data
```

### Weak Reason

```text
Computers are better.
```

### Better Reason

```text
A computer-based solution is suitable because it can store all homework records in a structured format, search them by student name, and automatically calculate weekly missing homework totals.
```

---

## 16. Data Analysis

A good problem analysis considers what data the system will handle.

### Data Inputs

```text
student name
date
task name
completion status
score
item name
quantity
event name
attendance status
comments
```

### Data Outputs

```text
search results
summary table
total count
average score
weekly report
warning message
filtered list
exported report
```

### Data Storage

```text
file
database
list/array during runtime
CSV
JSON
local storage
spreadsheet export
```

### Writing Pattern

```text
The system will need to store [data items]. The user will input [inputs], and the system will output [outputs].
```

---

## 17. Feasibility

Feasibility means whether the project can realistically be completed.

### Questions

```text
Can I build this with my current programming skill?
Can it be completed in the available time?
Can the client provide feedback?
Can I test it with realistic data?
Is the scope small enough?
Is the data safe to use?
Do I understand the main algorithms needed?
```

### Good Feasibility Statement

```text
The project is feasible because it focuses on one main user, a limited set of records, and core features such as add, search, edit, and summary. These features can be implemented and tested within the available time.
```

---

## 18. From Problem Analysis to Success Criteria

Problem analysis should naturally lead to success criteria.

### Example Chain

```text
Problem:
The teacher cannot quickly find a student's missing homework history.

Requirement:
The system should search records by student name.

Success Criterion:
The teacher can enter a student name and the system displays all matching homework records.
```

### Another Chain

```text
Problem:
Weekly totals are counted manually and may contain mistakes.

Requirement:
The system should calculate summary totals automatically.

Success Criterion:
The system can generate a weekly summary showing the number of missed tasks per student.
```

### Key Rule

Every important problem should lead to a requirement or success criterion.

---

## 19. Problem Analysis Structure

A strong Problem Analysis section may use this structure:

```text
1. Client and User
2. Current System
3. Problems with Current System
4. Evidence from Client/User
5. Main Requirements
6. Constraints and Scope
7. Why a Computer-based Solution Is Suitable
8. Link to Success Criteria
```

### Short Writing Template

```text
The client is [client]. They currently use [current system] to [task]. This causes [problem 1] and [problem 2]. Evidence from [interview/observation] shows that [specific detail]. Therefore, the solution should [requirement 1], [requirement 2], and [requirement 3]. A computer-based solution is suitable because [reason]. The project will focus on [scope] and will not include [out-of-scope feature].
```

---

## 20. Strong Example: Homework Tracker

### Client and Current System

```text
The client is a Grade 10 teacher. The teacher currently records homework completion in a paper notebook after each lesson.
```

### Problems

```text
It is slow to search for one student's missing homework history because the teacher must check many pages manually. Weekly totals are also counted by hand, which can lead to mistakes.
```

### Requirements

```text
The system should allow the teacher to add homework records, search by student name, edit incorrect records, and generate weekly missing homework summaries.
```

### Why Computer Solution Is Suitable

```text
A computer-based system is suitable because it can store structured records, search records faster than paper, validate missing fields, and calculate weekly summaries automatically.
```

---

## 21. Strong Example: Club Sign-up System

### Client and Current System

```text
The client is the leader of a school robotics club. Event sign-ups are currently collected through group chat messages.
```

### Problems

```text
Messages are easy to miss, and the leader must manually count how many students signed up. It is also difficult to track cancellations because new messages appear after the original sign-up.
```

### Requirements

```text
The system should allow students to sign up, allow the leader to view the sign-up list, show the number of remaining spaces, and allow cancellation or editing.
```

### Why Computer Solution Is Suitable

```text
A digital system is suitable because it can store sign-up records in one place, automatically update remaining spaces, and reduce manual counting.
```

---

## 22. Weak vs Strong Problem Analysis

| Weak | Strong |
|---|---|
| I want to make an app for students. | The tutor needs a system to record quiz scores and view progress over time. |
| The current system is bad. | The current spreadsheet requires manual filtering and does not show topic progress clearly. |
| My system will have login and buttons. | The client needs to add scores, search student history, and view topic summary. |
| It will be useful. | It will reduce manual counting and make progress review faster. |
| The app should be nice. | The user should be able to add a score record in one form and receive validation if fields are blank. |

---

## 23. Common Mistakes

| Mistake | Why It Is Weak | Better Approach |
|---|---|---|
| starting with solution not problem | no clear need | explain current system first |
| vague client | unclear user needs | identify specific client/user |
| no evidence | problem seems invented | include interview or observation summary |
| saying only “manual is bad” | too general | explain exact manual problem |
| requirements not linked to problem | features feel random | connect each requirement to a problem |
| too many requirements | project becomes too large | prioritize core needs |
| no constraints | unrealistic plan | discuss platform/time/privacy limits |
| no scope control | project may become unfinished | state what is in/out of scope |
| no data analysis | design becomes unclear | list inputs, outputs, storage |
| weak computer-solution reason | poor justification | explain search, storage, validation, calculation benefits |

---

## 24. Problem Analysis Checklist

Before moving to success criteria, check:

```text
I have identified a clear client/user.
I have described the current system.
I have explained at least two specific weaknesses.
I have included evidence from client/user or current method.
I have summarized main requirements.
I have considered functional and non-functional requirements.
I have identified constraints.
I have controlled project scope.
I have explained why a computer-based solution is suitable.
I can link each major requirement to later success criteria.
```

---

## 25. Scenario Answer Bank

### If Asked: “What should problem analysis include?”

```text
Problem analysis should include the client/user, current system, weaknesses of the current method, evidence of the problem, requirements, constraints, scope, and why a computer-based solution is suitable.
```

### If Asked: “Why is client evidence important?”

```text
Client evidence shows that the problem is real and helps justify the requirements and success criteria.
```

### If Asked: “Why describe the current system?”

```text
The current system shows how the task is done now and helps identify specific problems the new solution should solve.
```

### If Asked: “Why define scope?”

```text
Scope prevents the project from becoming too large and clarifies what features will and will not be included.
```

### If Asked: “Why explain suitability of a computer solution?”

```text
It shows why software is an appropriate way to solve the problem, such as faster searching, automatic calculation, validation, or organized data storage.
```

---

## 26. Guided Practice

### Practice 1

Identify the real problem:

```text
The teacher wants an app with a search button.
```

<details>
<summary>Suggested Answer</summary>

The real problem might be that the teacher cannot quickly find student records using the current paper or spreadsheet system.

</details>

---

### Practice 2

Improve this sentence:

```text
The current system is slow and bad.
```

<details>
<summary>Suggested Answer</summary>

The current paper system is slow because the teacher must manually check many pages to find one student's previous homework records.

</details>

---

### Practice 3

Write one requirement from this problem:

```text
The club leader has to manually count sign-up messages to know how many spaces are left.
```

<details>
<summary>Suggested Answer</summary>

The system should automatically display the number of remaining spaces after each sign-up or cancellation.

</details>

---

### Practice 4

What evidence could support this problem?

```text
A coach finds it difficult to track attendance trends over time.
```

<details>
<summary>Suggested Answer</summary>

Interview notes from the coach, a sample paper attendance sheet, observation of the current method, or an example of manually counted attendance totals.

</details>

---

## 27. Independent Practice

### Question 1

Choose one IA idea and identify the client and users.

### Question 2

Describe the current system for a homework tracker.

### Question 3

List three weaknesses of a group-chat event sign-up method.

### Question 4

Write five interview questions for a client.

### Question 5

Write three functional requirements for an inventory tracker.

### Question 6

Write two non-functional requirements for a quiz system.

### Question 7

Identify two constraints for a school-based IA project.

### Question 8

Write an in-scope and out-of-scope statement for a booking system.

### Question 9

Explain why a computer solution is suitable for a mark tracking system.

### Question 10

Create two problem → requirement → success criterion chains.

---

## 28. Practice Activity

### Activity 1: Problem or Feature?

Students classify statements as:

```text
problem
requirement
solution feature
success criterion
```

Example statements:

```text
The teacher cannot quickly find old records.
The system should search by student name.
The interface will include a search box.
Search results should appear after entering a valid student name.
```

---

### Activity 2: Current System Interview

Students role-play client and developer.

The developer must ask:

```text
how the task is done now
what takes time
what mistakes happen
what information is needed
what output would be useful
what device/platform is available
```

---

### Activity 3: Scope Control

Students receive large project ideas and reduce them to realistic IA scope.

Example:

```text
full school management system
```

Reduced scope:

```text
homework tracking system for one teacher and one class
```

---

## 29. Homework

### Homework Part A

Write a 250-300 word problem analysis for one IA idea.

Include:

```text
client/user
current system
specific problems
evidence
requirements
constraints
why a computer solution is suitable
```

### Homework Part B

Create a table:

```text
problem
requirement
possible success criterion
```

Use at least five rows.

### Homework Part C

Answer:

```text
1. Why should the IA start with a real client/user?
2. Why is “the system is useful” not a good requirement?
3. Why should constraints be discussed?
4. Why does scope control matter?
5. Why should problem analysis connect to success criteria?
```

### Homework Part D

Correct these weak statements:

```text
The current system is bad.
The user wants an app.
The system should be good.
The project will do everything for the club.
A computer is better because computers are fast.
```

---

## 31. One-page Problem Analysis Sheet

| Area | Key Reminder |
|---|---|
| Client/user | identify who has or uses the solution |
| Current system | describe the existing method clearly |
| Specific problems | explain exact weaknesses |
| Evidence | interview, observation, screenshot, sample form |
| Functional requirements | actions the system must perform |
| Non-functional requirements | qualities the system should have |
| Constraints | limits such as time, platform, privacy |
| Scope | what is included and excluded |
| Data | inputs, outputs, storage |
| Suitability | why a computer solution helps |
| Link to criteria | each major problem should lead to measurable criteria |
| Common risk | writing about the app before explaining the problem |
| Best phrase | The client currently uses [method], which causes [specific problem]. A computer-based solution is suitable because it can [specific benefit]. |

