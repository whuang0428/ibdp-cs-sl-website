$examPath = "docs\exam-practice"
$iaPath = "docs\ia-support"
$glossaryPath = "docs\glossary"

New-Item -ItemType Directory -Force $examPath | Out-Null
New-Item -ItemType Directory -Force $iaPath | Out-Null
New-Item -ItemType Directory -Force $glossaryPath | Out-Null

$examPages = @{
"index.md" = @'
# Exam Practice

## Module Overview

This section supports IBDP Computer Science exam preparation.

It is designed as a framework for collecting exam-style practice by topic, command term, and paper type. Later, each page can be expanded with more original questions, mark scheme-style answers, and teacher commentary.

## Pages

| Page | Purpose |
|---|---|
| Paper 1 Overview | Understand structure and skills for Paper 1 |
| Paper 2 Overview | Understand structure and skills for Paper 2 |
| Command Terms | Learn how to answer different question words |
| Mark Scheme Writing | Practise writing answers in mark scheme style |
| Trace Table Practice | Practise algorithm tracing |
| SQL Practice | Practise database query questions |
| Short Answer Templates | Build reusable exam answer structures |
| Revision Checklist | Track final revision progress |

::: warning Copyright Note
Do not upload official IB question papers or mark schemes directly to this public site. Use original exam-style questions or short teacher-created practice tasks.
:::
'@

"paper-1-overview.md" = @'
# Paper 1 Overview

## 1. Purpose

Paper 1 assesses core computer science understanding across the syllabus.

Students should be ready to answer short and extended questions involving technical knowledge, explanation, diagrams, algorithms, and scenario-based reasoning.

## 2. Skills Needed

| Skill | Example |
|---|---|
| Definition | Define a technical term clearly |
| Description | Describe how a process works |
| Explanation | Explain why a method is suitable |
| Comparison | Compare two technologies or methods |
| Application | Apply knowledge to a real scenario |

## 3. Common Question Areas

- computational thinking
- algorithms and trace tables
- computer fundamentals
- networks
- databases
- machine learning
- ethics and security

## 4. Exam Strategy

1. Read the command term carefully.
2. Identify the topic.
3. Look at the mark value.
4. Write one clear point per mark.
5. Use technical keywords.
6. Link your answer to the scenario.

## 5. Quick Check

1. Why is the command term important?
2. Why should students use technical vocabulary?
3. What does one clear point per mark mean?
'@

"paper-2-overview.md" = @'
# Paper 2 Overview

## 1. Purpose

Paper 2 focuses more strongly on problem-solving and option-style application.

For this course website, Paper 2 practice should connect strongly to programming, computational thinking, databases, and object-oriented design.

## 2. Skills Needed

| Skill | Example |
|---|---|
| Algorithm tracing | Complete trace tables |
| Problem-solving | Design an algorithm or solution |
| Database application | Identify keys, relationships, or SQL queries |
| OOP understanding | Explain classes, objects, attributes, and methods |
| Scenario analysis | Apply concepts to a realistic context |

## 3. Practice Areas

- trace tables
- pseudocode reading
- SQL queries
- ERD and relationships
- OOP class design
- testing and debugging
- scenario-based explanation

## 4. Exam Strategy

1. Identify the option or topic area.
2. Underline key data in the scenario.
3. Use tables for structured answers where useful.
4. For algorithm questions, trace slowly.
5. For explain questions, give reason and consequence.

## 5. Quick Check

1. Why are scenarios important in Paper 2?
2. What should students do before tracing an algorithm?
3. Why are structured answers useful?
'@

"command-terms.md" = @'
# Command Terms

## 1. Purpose

Command terms tell students what kind of answer is expected.

A student may know the content but lose marks if the answer style does not match the command term.

## 2. Common Command Terms

| Command Term | What to Do |
|---|---|
| State | Give a short answer, no explanation needed |
| Identify | Name or select the correct item |
| Outline | Give the main idea with a little detail |
| Describe | Give characteristics or steps |
| Explain | Give reasons, causes, or consequences |
| Compare | Give similarities and/or differences |
| Evaluate | Make a judgement using evidence |
| Construct | Create a diagram, table, algorithm, or query |

## 3. Answer Depth

| Mark Value | Expected Style |
|---|---|
| 1 mark | One clear point |
| 2 marks | Two points or one point with development |
| 3-4 marks | Several linked points |
| 6+ marks | Structured answer with explanation and scenario use |

## 4. Common Mistakes

| Mistake | Why it loses marks |
|---|---|
| Explaining when asked to state | Wastes time |
| Stating only when asked to explain | Not enough depth |
| Ignoring the scenario | Answer becomes too general |
| Writing vague words | Technical accuracy is weak |

## 5. Quick Check

1. What is the difference between state and explain?
2. What should an outline answer include?
3. Why is scenario context important?
'@

"mark-scheme-writing.md" = @'
# Mark Scheme Writing

## 1. Purpose

This page helps students write answers that match mark scheme style.

Good exam answers are clear, technical, and linked to the question.

## 2. Mark Scheme Style

| Feature | Good Answer Habit |
|---|---|
| Clear point | Write one idea clearly |
| Technical term | Use correct CS vocabulary |
| Expansion | Add detail or explanation |
| Consequence | Explain why it matters |
| Scenario link | Connect to the case in the question |

## 3. Example

Question: Explain one advantage of using a database for student records. [2]

Weak answer:

A database is better.

Better answer:

A database allows student records to be searched quickly; this helps staff find attendance or grade information more efficiently.

## 4. Answer Formula

::: info Explain Formula
Point → Explanation → Scenario consequence
:::

## 5. Common Mistakes

| Mistake | Fix |
|---|---|
| Too vague | Use a technical term |
| No consequence | Explain why the point matters |
| No scenario link | Mention the user/system in the question |
| Repeating the question | Add new information |

## 6. Quick Check

1. What makes an answer too vague?
2. What is a consequence?
3. Why should answers link to the scenario?
'@

"trace-table-practice.md" = @'
# Trace Table Practice

## 1. Purpose

Trace tables are used to follow an algorithm step by step.

They are important in both computational thinking and programming questions.

## 2. Method

1. List every variable as a column.
2. Start with initial values.
3. Follow the algorithm line by line.
4. Update values in order.
5. Check loop conditions carefully.
6. Record the final output.

## 3. Mini Practice

Algorithm:

| Step | Instruction |
|---|---|
| 1 | A = 2 |
| 2 | B = 5 |
| 3 | A = A + B |
| 4 | B = A - 1 |
| 5 | Output B |

Trace:

| Step | A | B | Output |
|---|---:|---:|---|
| A = 2 | 2 |  |  |
| B = 5 | 2 | 5 |  |
| A = A + B | 7 | 5 |  |
| B = A - 1 | 7 | 6 |  |
| Output B | 7 | 6 | 6 |

::: tip Answer
Final output: 6
:::

## 4. Common Mistakes

| Mistake | Why it matters |
|---|---|
| Skipping a line | Variable values become wrong |
| Updating variables in the wrong order | Later values become incorrect |
| Misreading loop condition | Wrong number of iterations |
| Forgetting output column | Final answer may be unclear |

## 5. Quick Check

1. Why should variables be updated in order?
2. What does a loop condition control?
3. What is the final output in the example?
'@

"sql-practice.md" = @'
# SQL Practice

## 1. Purpose

This page collects SQL practice tasks for database revision.

For the framework version, the focus is on SELECT, FROM, WHERE, and ORDER BY.

## 2. Basic Query Structure

| SQL Part | Purpose |
|---|---|
| SELECT | Choose fields to display |
| FROM | Choose the table |
| WHERE | Filter records |
| ORDER BY | Sort results |

## 3. Practice Table

Table: STUDENT

| StudentID | FirstName | Surname | YearGroup |
|---|---|---|---|
| 1001 | Alice | Chen | 11 |
| 1002 | Ben | Smith | 12 |
| 1003 | Clara | Wang | 11 |

## 4. Practice Questions

1. Display FirstName and Surname for all students.
2. Display all fields for students in YearGroup 11.
3. Display FirstName and YearGroup, ordered by FirstName.

## 5. Mark Scheme Style Answers

| Question | Expected Answer Structure |
|---|---|
| 1 | SELECT FirstName, Surname FROM STUDENT |
| 2 | SELECT * FROM STUDENT WHERE YearGroup = 11 |
| 3 | SELECT FirstName, YearGroup FROM STUDENT ORDER BY FirstName |

## 6. Quick Check

1. What does WHERE do?
2. What does ORDER BY do?
3. Why must field names be accurate?
'@

"short-answer-templates.md" = @'
# Short Answer Templates

## 1. Purpose

This page gives reusable answer patterns for common exam questions.

Students should adapt templates to the scenario rather than memorize them blindly.

## 2. Explanation Template

::: info Explain Template
[Technical point] because [reason]. This means [consequence in the scenario].
:::

## 3. Comparison Template

::: info Compare Template
A is ... whereas B is ... . This makes A more suitable when ... while B is more suitable when ...
:::

## 4. Advantage Template

::: info Advantage Template
One advantage of [technology/method] is [point]. This helps [user/system] because [scenario consequence].
:::

## 5. Disadvantage Template

::: info Disadvantage Template
One disadvantage is [point]. This may cause [problem] because [reason].
:::

## 6. Security Template

::: info Security Template
[Method] can protect the system by [action]. This reduces the risk of [threat] because [reason].
:::

## 7. Common Mistakes

| Mistake | Better Habit |
|---|---|
| Using template without scenario | Add specific context |
| Writing only one word | Add explanation |
| Repeating the same point | Give distinct points |
| Being too general | Use technical vocabulary |

## 8. Quick Check

1. Why should templates be adapted?
2. What does a consequence add to an answer?
3. What is one common security answer structure?
'@

"revision-checklist.md" = @'
# Revision Checklist

## 1. Purpose

This checklist helps students track revision progress.

Students can copy this page into their own notes and tick items as they review.

## 2. B Theme Checklist

| Unit | Can I do this? |
|---|---|
| B1 | Explain decomposition, abstraction, algorithms, flowcharts, and trace tables |
| B2 | Trace variables, selection, loops, arrays, searching, sorting, and files |
| B3 | Explain classes, objects, attributes, methods, constructors, and encapsulation |

## 3. A Theme Checklist

| Unit | Can I do this? |
|---|---|
| A1 | Explain CPU, memory, storage, data representation, logic gates, OS, and control systems |
| A2 | Explain LAN/WAN, devices, TCP/IP, packet switching, DNS, transmission, and security |
| A3 | Explain tables, keys, relationships, normalization, SQL, privacy, and transactions |
| A4 | Explain ML data, training/testing, learning approaches, evaluation, and ethics |

## 4. Exam Skill Checklist

| Skill | Ready? |
|---|---|
| I can answer command terms correctly |  |
| I can write mark scheme-style explanations |  |
| I can complete trace tables |  |
| I can write simple SQL queries |  |
| I can apply knowledge to scenarios |  |
| I can use technical keywords accurately |  |

## 5. Quick Check

1. Which unit is your weakest right now?
2. Which skill needs most practice?
3. What is your next revision target?
'@
}

$iaPages = @{
"index.md" = @'
# IA Support

## Module Overview

This section supports the IBDP Computer Science Internal Assessment process.

The IA requires students to design, develop, test, and evaluate a computational solution for a real problem.

This section is only a framework for now. Later, it can be expanded with templates, checklists, sample structures, and teacher guidance.

## Pages

| Page | Purpose |
|---|---|
| IA Overview | Understand the purpose and general workflow |
| Choosing a Topic | Choose a manageable problem |
| Client and Problem | Define the client, problem, and context |
| Success Criteria | Write measurable criteria |
| Design and Planning | Plan data structures, algorithms, and interface |
| Development Evidence | Record how the solution was created |
| Testing and Evaluation | Test against criteria and evaluate success |
| Academic Integrity | Use sources and AI tools responsibly |

::: warning Privacy Note
Do not publish real student IA files, real client personal data, or confidential project materials on a public GitHub Pages site.
:::
'@

"ia-overview.md" = @'
# IA Overview

## 1. Purpose

The IA is a practical project where students create a computational solution for a real problem.

A strong IA is not just a program. It also shows planning, design, development, testing, and evaluation.

## 2. General Workflow

| Stage | Main Task |
|---|---|
| Identify problem | Find a real need |
| Define client | Identify who the solution is for |
| Plan solution | Decide features and success criteria |
| Design | Plan data, algorithms, and interface |
| Develop | Build the solution |
| Test | Check whether the solution works |
| Evaluate | Judge success against criteria |

## 3. Good IA Characteristics

- problem is clear
- client or user is realistic
- scope is manageable
- success criteria are measurable
- development is well documented
- testing is linked to criteria
- evaluation is honest and specific

## 4. Quick Check

1. Why does the IA need a clear problem?
2. Why should scope be manageable?
3. Why are success criteria important?
'@

"choosing-topic.md" = @'
# Choosing a Topic

## 1. Purpose

A good IA topic should be useful, realistic, and manageable.

Students should avoid topics that are too large, too vague, or impossible to test properly.

## 2. Good Topic Features

| Feature | Explanation |
|---|---|
| Real user or client | Someone can explain the problem |
| Clear need | The problem is specific |
| Manageable scope | The project can be completed in time |
| Testable features | The solution can be checked |
| Suitable complexity | It is not too simple or too hard |

## 3. Possible Topic Areas

- booking system
- quiz or revision tool
- inventory tracker
- club management system
- simple database-backed prototype
- grade calculator
- appointment tracker
- training planner

## 4. Topics to Avoid

| Topic Type | Problem |
|---|---|
| Too broad | Hard to finish |
| Too simple | Not enough computational thinking |
| No real user | Weak problem context |
| Cannot be tested | Hard to evaluate |
| Requires sensitive data | Privacy risk |

## 5. Quick Check

1. Who is the user?
2. What problem does the user have?
3. Can the solution be tested?
'@

"client-problem.md" = @'
# Client and Problem

## 1. Purpose

The IA should be based on a clear client or user and a clear problem.

The client helps define what the solution needs to do.

## 2. Client Information

| Question | Purpose |
|---|---|
| Who is the client? | Identify the user or stakeholder |
| What do they currently do? | Understand the current system |
| What problem do they face? | Define the need |
| What would improve their work? | Guide the solution |
| What constraints exist? | Keep scope realistic |

## 3. Problem Statement Template

::: info Problem Statement
[Client/user] currently has difficulty with [specific problem]. This causes [consequence]. A computational solution could help by [general purpose].
:::

## 4. Example

A school club leader currently tracks attendance manually on paper. This causes lost records and slow counting. A digital attendance tracker could help record members, save attendance, and produce summaries.

## 5. Quick Check

1. Who is the client?
2. What is the current problem?
3. What will the solution improve?
'@

"success-criteria.md" = @'
# Success Criteria

## 1. Purpose

Success criteria define what the solution must do to be considered successful.

They should be specific and testable.

## 2. Good Success Criteria

| Weak Criteria | Better Criteria |
|---|---|
| The system is good | The system allows the user to add a new member with name and ID |
| It is easy to use | The user can complete attendance entry in under two minutes |
| It works | The system correctly calculates total attendance for each member |
| It stores data | The system saves records so they can be loaded later |

## 3. Criteria Types

| Type | Example |
|---|---|
| Functional | The system can add, edit, and delete records |
| Usability | The interface uses clear labels |
| Performance | Search results appear quickly for normal data size |
| Data | Data is saved and loaded correctly |
| Security | Only authorized users can access sensitive data |

## 4. Template

::: info Success Criterion Template
The solution will allow [user] to [specific action] so that [measurable result].
:::

## 5. Quick Check

1. Why must criteria be measurable?
2. What is one functional criterion?
3. What is one usability criterion?
'@

"design-planning.md" = @'
# Design and Planning

## 1. Purpose

Design and planning show how the solution will be built before coding starts.

Good planning makes development easier and helps testing later.

## 2. Design Areas

| Area | What to Plan |
|---|---|
| Data | What data will be stored |
| Interface | What screens or inputs are needed |
| Algorithms | How key processes work |
| Validation | How invalid input will be handled |
| Testing | How features will be checked |

## 3. Useful Design Evidence

- sketches of interface
- flowcharts
- pseudocode
- table designs
- class diagrams
- data dictionaries
- test plan outline

## 4. Planning Questions

1. What data is needed?
2. How will users enter data?
3. What processing is required?
4. What output is needed?
5. How will errors be handled?

## 5. Quick Check

1. Why should students plan before coding?
2. What is one useful design artifact?
3. How can design help testing?
'@

"development-evidence.md" = @'
# Development Evidence

## 1. Purpose

Development evidence shows how the solution was built.

Students should document important decisions, code development, problems, and improvements.

## 2. Good Evidence Includes

| Evidence | Purpose |
|---|---|
| Code snippets | Show important implementation |
| Screenshots | Show working features |
| Explanations | Explain how the code works |
| Problems and fixes | Show problem-solving |
| Version progress | Show development over time |

## 3. What to Avoid

| Weak Evidence | Problem |
|---|---|
| Only final screenshots | Does not show development process |
| Huge code dumps | Hard to understand |
| No explanation | Examiner cannot see thinking |
| No testing link | Hard to prove solution works |

## 4. Development Explanation Template

::: info Development Evidence Template
I implemented [feature] using [method/data structure]. This was needed because [reason]. I tested it by [test/action], and then improved [specific part].
:::

## 5. Quick Check

1. Why is code explanation important?
2. Why should problems and fixes be recorded?
3. Why are screenshots useful but not enough alone?
'@

"testing-evaluation.md" = @'
# Testing and Evaluation

## 1. Purpose

Testing checks whether the solution works.

Evaluation judges whether the solution meets the success criteria and solves the client's problem.

## 2. Testing Types

| Type | Purpose |
|---|---|
| Normal data | Check expected valid input |
| Boundary data | Check edge values |
| Invalid data | Check rejected input |
| User testing | Check whether the client can use the system |
| Functional testing | Check whether each feature works |

## 3. Test Table Template

| Test No. | Feature | Test Data | Expected Result | Actual Result | Pass/Fail |
|---|---|---|---|---|---|

## 4. Evaluation Structure

1. Restate success criterion.
2. Use test evidence.
3. Judge whether it was met.
4. Explain limitations.
5. Suggest future improvements.

## 5. Quick Check

1. What is the difference between testing and evaluation?
2. Why should expected result be written before testing?
3. Why should evaluation link to success criteria?
'@

"academic-integrity.md" = @'
# Academic Integrity

## 1. Purpose

Students must complete IA work honestly and acknowledge help or sources.

This includes code libraries, tutorials, images, datasets, and AI tools if used under school policy.

## 2. Good Habits

| Habit | Reason |
|---|---|
| Keep a bibliography | Shows sources used |
| Comment adapted code | Makes borrowed ideas clear |
| Record help received | Avoids misleading authorship |
| Use own explanation | Shows understanding |
| Follow school AI policy | Keeps work compliant |

## 3. Risky Habits

| Risky Habit | Problem |
|---|---|
| Copying code without understanding | Not authentic work |
| Not citing tutorials | Source is hidden |
| Submitting AI-generated text as own | May break policy |
| Using real private data | Privacy risk |
| Sharing another student's IA | Collusion risk |

## 4. Safe Source Note Template

::: info Source Note
This feature was developed after reading [source/tutorial]. I adapted the idea by [specific change] and tested it using [method].
:::

## 5. Quick Check

1. Why should sources be cited?
2. Why is copying code risky?
3. What should students do before using AI tools?
'@
}

$glossaryPages = @{
"index.md" = @'
# Glossary

## Module Overview

This glossary collects important IBDP Computer Science vocabulary.

For the framework version, terms are grouped by module. Later, each glossary page can be expanded with bilingual explanations, examples, diagrams, and exam-style usage.

## Glossary Sections

| Section | Focus |
|---|---|
| B1 Computational Thinking | Problem-solving vocabulary |
| B2 Programming | Programming vocabulary |
| B3 OOP | Object-oriented programming vocabulary |
| A3 Databases | Database vocabulary |
| A1 Computer Fundamentals | Hardware and system vocabulary |
| A2 Networks | Networking vocabulary |
| A4 Machine Learning | ML vocabulary |
| Command Terms | Exam wording vocabulary |

::: tip Study Tip
Students should not only memorize definitions. They should also practise using each term correctly in exam-style sentences.
:::
'@

"b1-computational-thinking.md" = @'
# Glossary: B1 Computational Thinking

| Term | Short Meaning |
|---|---|
| Decomposition | Breaking a problem into smaller parts |
| Abstraction | Focusing on important details and ignoring unnecessary details |
| Algorithm | Step-by-step instructions for solving a problem |
| Flowchart | Diagram showing algorithm steps |
| Pseudocode | Structured English-like algorithm notation |
| Trace table | Table used to follow variable values step by step |
| Pattern recognition | Finding similarities or repeated structures |
| Sub-problem | Smaller part of a larger problem |
'@

"b2-programming.md" = @'
# Glossary: B2 Programming

| Term | Short Meaning |
|---|---|
| Variable | Named storage location for data |
| Data type | Category of data such as integer, string, or Boolean |
| Selection | Decision-making structure |
| Iteration | Repetition using loops |
| Array | Structure storing multiple values |
| Index | Position of a value in an array |
| Linear search | Search that checks items one by one |
| Sort | Arrange values into order |
| File processing | Reading from or writing to files |
| Debugging | Finding and fixing errors |
'@

"b3-oop.md" = @'
# Glossary: B3 OOP

| Term | Short Meaning |
|---|---|
| Class | Template for creating objects |
| Object | Instance of a class |
| Attribute | Data stored in an object |
| Method | Action or behaviour of an object |
| Constructor | Special method used to create and initialize objects |
| Encapsulation | Protecting data and controlling access |
| Accessor | Method that returns an attribute value |
| Mutator | Method that changes an attribute value |
| UML class diagram | Diagram showing class name, attributes, and methods |
'@

"a3-databases.md" = @'
# Glossary: A3 Databases

| Term | Short Meaning |
|---|---|
| Database | Organized collection of data |
| DBMS | Software for managing databases |
| Table | Structure storing records and fields |
| Record | Row in a table |
| Field | Column in a table |
| Primary key | Field that uniquely identifies a record |
| Foreign key | Field linking to a primary key in another table |
| Relationship | Link between tables |
| Normalization | Organizing tables to reduce redundancy |
| SQL | Language used to query relational databases |
'@

"a1-computer-fundamentals.md" = @'
# Glossary: A1 Computer Fundamentals

| Term | Short Meaning |
|---|---|
| CPU | Central Processing Unit |
| ALU | Performs arithmetic and logic operations |
| Control Unit | Coordinates CPU operations |
| Register | Small fast storage inside CPU |
| RAM | Volatile primary memory |
| ROM | Non-volatile startup memory |
| Cache | Fast memory for frequently used data |
| Binary | Base 2 number system |
| Logic gate | Circuit performing Boolean operation |
| Operating system | System software managing hardware and software |
'@

"a2-networks.md" = @'
# Glossary: A2 Networks

| Term | Short Meaning |
|---|---|
| Network | Connected devices that communicate |
| LAN | Local Area Network |
| WAN | Wide Area Network |
| Router | Connects different networks |
| Switch | Connects devices inside a LAN |
| Firewall | Filters network traffic |
| Packet | Small unit of transmitted data |
| DNS | Maps domain names to IP addresses |
| Encryption | Converts data into unreadable form without a key |
| VPN | Secure connection over a public network |
| NAT | Translates private and public IP addresses |
'@

"a4-machine-learning.md" = @'
# Glossary: A4 Machine Learning

| Term | Short Meaning |
|---|---|
| Machine learning | Learning patterns from data |
| Model | Trained system that makes predictions |
| Feature | Input value used by a model |
| Label | Target output in supervised learning |
| Training data | Data used to train a model |
| Testing data | Data used to evaluate a model |
| Classification | Predicting a category |
| Confusion matrix | Table comparing predicted and actual results |
| Bias | Systematic unfairness or distortion |
| F1 score | Metric combining precision and recall |
'@

"command-terms.md" = @'
# Glossary: Command Terms

| Command Term | Expected Action |
|---|---|
| State | Give a brief answer |
| Identify | Name or select something |
| Outline | Give main points with limited detail |
| Describe | Give characteristics, steps, or details |
| Explain | Give reasons, causes, or consequences |
| Compare | Give similarities and/or differences |
| Evaluate | Make a judgement supported by evidence |
| Construct | Create a diagram, table, algorithm, or query |
| Discuss | Give a balanced answer with different points |
'@
}

foreach ($file in $examPages.Keys) {
    $fullPath = Join-Path $examPath $file
    Set-Content -Path $fullPath -Value $examPages[$file] -Encoding UTF8
}

foreach ($file in $iaPages.Keys) {
    $fullPath = Join-Path $iaPath $file
    Set-Content -Path $fullPath -Value $iaPages[$file] -Encoding UTF8
}

foreach ($file in $glossaryPages.Keys) {
    $fullPath = Join-Path $glossaryPath $file
    Set-Content -Path $fullPath -Value $glossaryPages[$file] -Encoding UTF8
}

Write-Host "Exam Practice, IA Support, and Glossary framework pages created successfully."
