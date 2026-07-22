# Paper 2 Theme B Skills Guide

## Page Purpose

Paper 2 preparation should focus on **Theme B: Computational thinking and problem-solving**. This page helps you prepare for algorithmic thinking, programming logic, pseudocode / code tracing, and scenario-based problem solving.

This page replaces the old option-paper style route. Do not use it as an option overview. Always follow the latest instructions from your teacher and school for session-specific arrangements and specimen-paper practice.

::: warning New syllabus focus
The current learning route on this website treats Paper 2 as Theme B applied problem-solving. Do not prepare it as an old option-based paper.
:::

## Official SL Format

| Item | Detail |
|---|---|
| Duration | 1 hour 15 minutes |
| Weighting | 35% of the final SL grade |
| Main focus | B1 Computational thinking, B2 Programming, and B3 Object-oriented programming |
| Programming language | Equivalent Java and Python versions are provided for questions that require programming |

These details were checked on **22 July 2026** against the [IB Computer Science subject brief for first assessment 2027](https://www.ibo.org/globalassets/new-structure/university-admission/pdfs/dp_comp_sci_subjectbrief_en.pdf).

## What Paper 2 Skills Usually Need

Paper 2-style preparation should help you:

- decompose a problem into inputs, processes, outputs, and decisions
- design algorithms using sequence, selection, iteration, and subprograms
- trace variables, arrays, loops, and object state carefully
- read and write pseudocode or program fragments
- explain why an algorithm or data structure fits a scenario
- test logic with normal, boundary, and invalid cases
- justify programming decisions using precise vocabulary
- connect answers to the scenario instead of writing generic definitions

## Main Theme B Study Route

| Stage | Study area | What to practise | Website pages |
|---|---|---|---|
| 1 | B1 Computational Thinking | decomposition, abstraction, algorithms, flowcharts, trace tables | [B1 Overview](../b1-computational-thinking/) and [B1 Practice](./b1-practice) |
| 2 | B2 Programming | variables, data types, selection, loops, arrays, file processing, testing | [B2 Overview](../b2-programming/) and [B2/B3 Practice](./b2-b3-practice) |
| 3 | Searching and sorting | trace algorithms, compare methods, justify choices | [Searching](../b2-programming/searching), [Sorting](../b2-programming/sorting) |
| 4 | B3 OOP | classes, objects, attributes, methods, constructors, encapsulation, UML | [B3 Overview](../b3-oop/) and [B2/B3 Practice](./b2-b3-practice) |
| 5 | Integrated scenario | combine tracing, algorithm design, Java/Python logic, OOP, testing, and justification | [Paper 2 Integrated Practice](./paper-2-integrated-practice) |
| 6 | Mixed practice | combine topics under time pressure | [Mini Mock Exam Bank](./mini-mock-exam-bank) |

## Core Answer Pattern

For applied Theme B questions, use:

```text
Scenario detail -> computational thinking idea -> technical action -> effect
```

Weak answer:

```text
A loop is useful because it repeats things.
```

Stronger answer:

```text
A loop is useful because the program must check every item in the list. This avoids writing the same comparison many times and allows the algorithm to work for different list sizes.
```

The stronger answer links the programming idea to the problem.

## Common Question Types

| Question type | What to do | Common mistake |
|---|---|---|
| Trace code or pseudocode | Follow each statement in order and update variables carefully | Skipping loop iterations |
| Complete an algorithm | Use the given variable names and match the required output | Inventing a different solution |
| Explain an algorithm | Describe the steps and why they solve the problem | Only naming the algorithm |
| Compare approaches | Give clear advantage / disadvantage pairs | Saying "faster" without explaining why |
| Choose a data structure | Link the structure to storage, access, update, or order needs | Choosing a structure because it sounds advanced |
| Test a program | Include normal, boundary, invalid, and edge cases where suitable | Testing only perfect input |
| Explain OOP design | Use class, object, attribute, method, constructor, encapsulation vocabulary | Mixing up class and object |

## Tracing Checklist

Before tracing, identify:

- [ ] all variables and their starting values
- [ ] loop condition
- [ ] selection condition
- [ ] array indexes or list positions
- [ ] input values
- [ ] output statements
- [ ] when the algorithm stops

During tracing:

- update one line at a time
- write changed values immediately
- count loop iterations
- check indexes carefully
- do not assume what the algorithm "probably means"

## Pseudocode / Programming Checklist

When writing or completing an algorithm:

- [ ] use meaningful variable names if names are not given
- [ ] initialise counters, totals, flags, maximums, and minimums
- [ ] use selection for decisions
- [ ] use loops for repeated processing
- [ ] validate input where the scenario requires it
- [ ] produce the required output only
- [ ] keep the algorithm at the level requested by the question

## Java / Python Reminder

The 2027 course allows students to study Java or Python. For Paper 2 questions that require programming, equivalent versions are provided in both languages. This website includes many Java-style examples, but the important Paper 2 skills are broader than syntax:

| Skill | What matters |
|---|---|
| tracing | Can you follow variable changes? |
| algorithm design | Can you create a correct sequence of steps? |
| testing | Can you choose useful test data? |
| explanation | Can you justify how the logic solves the problem? |
| OOP | Can you explain class, object, state, and method behaviour? |

Use the language studied by your class and practise with the matching version of programming questions.

## Common Mistakes

| Mistake | Better habit |
|---|---|
| Memorising syntax only | Practise tracing and explaining logic |
| Writing generic answers | Link every answer to the scenario |
| Ignoring boundary cases | Test first item, last item, empty input, invalid input, and repeated values where relevant |
| Mixing up assignment and comparison | Track whether a line changes a value or checks a condition |
| Confusing class and object | Class is the blueprint; object is an instance with state |
| Forgetting to initialise variables | Set counters, totals, flags, and accumulators before use |
| Not explaining why | Add the effect of each programming decision |

## Practice Plan

Use this weekly routine when preparing Paper 2 skills:

| Day | Focus | Suggested task |
|---|---|---|
| 1 | B1 algorithms | Trace one flowchart and one pseudocode algorithm |
| 2 | B2 programming | Complete one loop / array / selection problem |
| 3 | Testing | Write normal, boundary, invalid, and edge test data for a program |
| 4 | B3 OOP | Explain object state changes from a short class example |
| 5 | Mixed scenario | Answer one longer scenario question using technical vocabulary |

Then complete [Paper 2 Integrated Practice](./paper-2-integrated-practice) without opening its suggested answers. Use the completion checklist to identify whether tracing, algorithm design, language logic, OOP, or testing needs more revision.

## Quick Self-test

<details>
<summary>1. Why is Paper 2 not prepared in the same way as Paper 1?</summary>

Paper 2 is more focused on applied computational thinking and problem-solving, so students must practise algorithm design, tracing, programming logic, testing, and scenario interpretation.

</details>

<details>
<summary>2. What should you do before tracing an algorithm?</summary>

Identify variables, starting values, input values, loop conditions, selection conditions, array indexes, output statements, and the stopping point.

</details>

<details>
<summary>3. Why is "use a loop because it repeats" a weak answer?</summary>

It is too generic. A stronger answer explains what is repeated in the scenario and why repetition helps the algorithm handle different amounts of data.

</details>

<details>
<summary>4. What makes a good test set?</summary>

A good test set includes normal cases, boundary cases, invalid cases, and edge cases that check whether the algorithm behaves correctly in realistic and difficult situations.

</details>
