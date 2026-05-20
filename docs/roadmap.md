# Course Roadmap

## 1. Course Structure

This website follows the school's IBDP Computer Science SL teaching order.

| Order | Module | Main Role in Course | Website Path |
|---:|---|---|---|
| 1 | B1 Computational Thinking | Build problem-solving foundation | `/b1-computational-thinking/` |
| 2 | B2 Programming | Build programming fluency using IB pseudocode and Java | `/b2-programming/` |
| 3 | B3 Object-Oriented Programming | Introduce OOP design and Java class structure | `/b3-oop/` |
| 4 | A3 Databases | Teach data organization, SQL, and relational design | `/a3-databases/` |
| 5 | A1 Computer Fundamentals | Explain hardware, CPU, memory, storage, OS, and control systems | `/a1-computer-fundamentals/` |
| 6 | A2 Networks | Explain network communication, protocols, security, and web access | `/a2-networks/` |
| 7 | A4 Machine Learning | Introduce ML workflow, evaluation, ethics, and limitations | `/a4-machine-learning/` |
| 8 | HL Programming Extension | Strengthen programming beyond SL | `/extension-hl-programming/` |
| 9 | Social Engineering Awareness | Build defensive cybersecurity awareness | `/extension-social-engineering/` |
| 10 | Exam / IA / Glossary | Support assessment and revision | `/exam-practice/`, `/ia-support/`, `/glossary/` |

---

## 2. Recommended Teaching Flow

```text
B1 Computational Thinking
        ↓
B2 Programming
        ↓
B3 Object-Oriented Programming
        ↓
A3 Databases
        ↓
A1 Computer Fundamentals
        ↓
A2 Networks
        ↓
A4 Machine Learning
        ↓
Extension + Revision + IA Support
```

This order is designed to let students first build algorithmic thinking and programming confidence, then move into systems, networks, databases, and machine learning.

---

## 3. Module-by-module Learning Goals

### B1 Computational Thinking

Students should be able to:

- break problems into smaller parts
- identify patterns
- remove unnecessary detail
- design algorithms
- use flowcharts
- trace variable changes

Recommended outcome:

```text
Students can explain and trace an algorithm before writing code.
```

---

### B2 Programming

Students should be able to:

- use variables and data types
- write input/output code
- use selection and loops
- process arrays
- search and sort data
- test and debug programs
- understand basic file processing

Recommended outcome:

```text
Students can write and trace small Java programs and connect them to IB pseudocode.
```

---

### B3 Object-Oriented Programming

Students should be able to:

- explain classes and objects
- use attributes and methods
- write constructors
- apply encapsulation
- use accessors and mutators
- interpret UML class diagrams
- understand multiple-class programs

Recommended outcome:

```text
Students can design simple class-based Java programs and explain OOP vocabulary.
```

---

### A3 Databases

Students should be able to:

- explain table, record, field, primary key, and foreign key
- identify relationships
- understand ERD basics
- reduce redundancy through normalization
- write SQL SELECT queries
- explain database security, transactions, and recovery

Recommended outcome:

```text
Students can design a small relational database and write simple SQL queries.
```

---

### A1 Computer Fundamentals

Students should be able to:

- identify hardware components
- explain CPU components
- describe the fetch-decode-execute cycle
- compare memory and storage
- explain data representation
- use basic logic gates
- explain operating systems
- describe control systems and cloud computing

Recommended outcome:

```text
Students can explain how a computer system processes, stores, and manages data.
```

---

### A2 Networks

Students should be able to:

- explain LAN and WAN
- identify network devices
- compare client-server and peer-to-peer
- explain TCP/IP model
- describe packet switching
- explain DNS and web access
- compare wired and wireless transmission
- explain network security, encryption, VPN, and NAT

Recommended outcome:

```text
Students can explain how data moves across networks and how communication can be protected.
```

---

### A4 Machine Learning

Students should be able to:

- define machine learning
- identify features and labels
- distinguish supervised and unsupervised learning
- explain training, validation, and testing
- distinguish classification and regression
- interpret simple evaluation metrics
- explain overfitting, underfitting, bias, privacy, and ethics

Recommended outcome:

```text
Students can explain the ML workflow and evaluate whether ML is suitable in a scenario.
```

---

## 4. Suggested Pacing Guide

The school has around **5 lessons per week**. Actual speed can change depending on student background and understanding.

| Stage | Suggested Time | Notes |
|---|---:|---|
| B1 Computational Thinking | 2-3 weeks | Keep examples visual and trace-based |
| B2 Programming | 6-9 weeks | Slow down for loops, arrays, tracing, and debugging |
| B3 OOP | 4-6 weeks | Use many Java class examples |
| A3 Databases | 3-5 weeks | SQL needs repeated practice |
| A1 Computer Fundamentals | 4-6 weeks | Use process diagrams and comparison tables |
| A2 Networks | 4-6 weeks | Focus on packet/DNS/security process explanations |
| A4 Machine Learning | 3-4 weeks | Use simple datasets and ethics scenarios |
| HL Programming Extension | Flexible | Use for advanced students or after B3 |
| Social Engineering Awareness | 1-2 weeks or embedded | Can be integrated with A2 Networks |
| Exam Practice and IA Support | Ongoing | Use after each module and near assessment periods |

---

## 5. Classroom Use Pattern

Each lesson page is designed to support this teaching rhythm:

```text
1. Lesson goals
2. Key terms
3. Bilingual concept explanation
4. Real-life example
5. Pseudocode / Java / technical example
6. Step-by-step trace
7. Common mistakes
8. Guided practice
9. Independent practice
10. Exam-style question
11. Homework
```

Teachers can use the page directly during class, and students can use the same page for revision at home.

---

## 6. Student Revision Path

Before a quiz or test, students should use this path:

```text
Read One-page Revision Summary
→ Memorize Key Terms
→ Redo Guided Practice
→ Attempt Exam-style Questions
→ Compare hidden answers
→ Rewrite one weak answer
```

For programming topics:

```text
Read code
→ predict output
→ trace variables
→ run or rewrite code
→ explain logic in words
```

For theory topics:

```text
Define term
→ explain how it works
→ connect to scenario
→ give advantage or limitation
```

---

## 7. Teacher Maintenance Checklist

After adding or editing pages:

- [ ] File name uses lowercase letters and hyphens.
- [ ] Sidebar link matches the real file name.
- [ ] Link does not include `.md`.
- [ ] Every folder has an `index.md`.
- [ ] Local site runs with `npm run docs:dev`.
- [ ] Production build passes with `npm run docs:build`.
- [ ] GitHub Actions deployment succeeds.
- [ ] New pages are linked from sidebar or index page.
- [ ] No old broken paths remain.

---

## 8. Broken Link Rule

If a page shows 404, check:

```text
docs/folder-name/file-name.md
```

The VitePress link should be:

```text
/folder-name/file-name
```

Example:

```text
docs/a2-networks/packet-switching.md
```

Correct link:

```text
/a2-networks/packet-switching
```

Do not include `.md` in the link.

---

## 9. Current Website Completion Status

| Section | Status |
|---|---|
| B1 Computational Thinking | Content v1.0 completed |
| B2 Programming | Content v1.0 completed |
| B3 OOP | Content v1.0 completed |
| A3 Databases | Content v1.0 completed |
| A1 Computer Fundamentals | Content v1.0 completed |
| A2 Networks | Content v1.0 completed |
| A4 Machine Learning | Content v1.0 completed |
| HL Programming Extension | Content v1.0 completed |
| Social Engineering Awareness | Content v1.0 completed |
| Exam Practice | Support v1.0 completed |
| IA Support | Support v1.0 completed |
| Glossary | Support v1.0 completed |

::: tip Next Stage
After the framework and content v1.0 are complete, the next stage should be quality control: check links, improve page consistency, add more exam-style questions, and gradually enrich examples based on classroom use.
:::
