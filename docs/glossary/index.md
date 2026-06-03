# Glossary

## 1. Section Overview

This section collects important vocabulary, command terms, bilingual keywords, and programming reference material for IBDP Computer Science SL.

The goal of this section is to help students:

```text
understand exam command terms
learn core CS vocabulary in English and Chinese
write mark scheme-style answers
connect pseudocode ideas to Java-style programming
review key words quickly before tests and exams
```

::: tip Learning Focus
Computer Science answers often lose marks because students understand the idea but do not use precise wording. This glossary helps students build accurate vocabulary and exam-style phrasing.
:::

---

## 2. Topic Index

| Order | Page | Main Focus | Link |
|---:|---|---|---|
| 1 | Overview | glossary roadmap and revision method | [Open](./) |
| 2 | Command Terms | IB-style command words and answer depth | [Open](./command-terms) |
| 3 | Core Vocabulary CN-EN | important computer science words in Chinese and English | [Open](./core-vocabulary-cn-en) |
| 4 | Pseudocode and Java Cheatsheet | pseudocode logic and Java-style reference | [Open](./pseudocode-java-cheatsheet) |

## 3. Learning Goals

By the end of this section, students should be able to:

- explain common IB command terms
- understand what different command terms require in answers
- translate important CS vocabulary between Chinese and English
- use accurate technical words in written answers
- recognize common mark scheme phrases
- distinguish similar terms such as validation and verification
- connect pseudocode structures to Java-style code
- use vocabulary to write clearer exam explanations
- avoid vague wording such as “thing”, “do it”, or “make it better”
- revise key terms quickly before assessment

---

## 4. Why Vocabulary Matters

In Computer Science exams, students often know the concept but lose marks because their wording is unclear.

### Weak Answer

```text
It checks the thing and makes it safe.
```

### Stronger Answer

```text
Validation checks whether input data is reasonable or follows the required format before it is accepted by the system.
```

The second answer is stronger because it uses:

```text
validation
input data
reasonable
required format
accepted by the system
```

These are more precise and closer to mark scheme language.

---

## 5. Bilingual Explanation

<LangBlock>
<template #cn>

### 中文说明

Glossary 部分不是单纯背单词。它是帮助学生把中文理解转换成英文考试答案。

很多学生其实懂概念，但是写答案时会出现：

```text
词太模糊
中式表达太重
command term 没看懂
答题深度不够
不会用 mark scheme 常见表达
```

比如题目问：

```text
Explain why validation is needed.
```

如果只写：

```text
It makes data correct.
```

这个答案不够准确。因为 validation 不能保证数据真实正确，它只能检查数据是否 reasonable 或 follows rules。

更好的表达是：

```text
Validation is needed to check whether input data is reasonable and follows the required rules before it is stored or processed.
```

所以这个 Glossary 模块主要帮学生解决三个问题：

```text
1. command terms 要我答到什么深度？
2. 重要 CS 词汇英文怎么说？
3. pseudocode 和 Java 常见结构怎么对应？
```

</template>

<template #en>

### English Explanation

The Glossary section is not only for memorizing words. It helps students turn conceptual understanding into accurate English exam answers.

Many students understand the idea but lose marks because:

```text
wording is too vague
English expression is unclear
command terms are misunderstood
answer depth is not enough
mark scheme-style wording is missing
```

For example, if the question asks:

```text
Explain why validation is needed.
```

A weak answer is:

```text
It makes data correct.
```

This is not accurate enough. Validation does not guarantee that data is true. It checks whether data is reasonable or follows rules.

A stronger answer is:

```text
Validation is needed to check whether input data is reasonable and follows the required rules before it is stored or processed.
```

This Glossary module mainly helps students with three questions:

```text
1. What depth does each command term require?
2. How do I say important CS vocabulary in English?
3. How do pseudocode structures connect to Java-style code?
```

</template>
</LangBlock>

---

## 6. Key Study Strategy

Do not revise vocabulary as isolated words only.

Use this pattern:

```text
term → definition → example → exam sentence
```

### Example

| Part | Example |
|---|---|
| Term | Validation |
| Definition | checking input follows rules before acceptance |
| Example | checking a score is between 0 and 100 |
| Exam sentence | Validation reduces input errors by rejecting data that does not match the required format or range. |

This method helps students write better answers than memorizing translations only.

---

## 7. Command Terms Overview

Command terms tell students how to answer.

| Command Term | What It Usually Requires |
|---|---|
| State | give a short answer |
| Identify | name or recognize something |
| Define | give the meaning |
| Describe | give characteristics or steps |
| Explain | give reasons / how / why |
| Compare | give similarities and differences |
| Contrast | give differences |
| Discuss | give balanced points, often with context |
| Evaluate | judge using evidence or criteria |
| Outline | give main points without full detail |
| Suggest | give a suitable idea for the scenario |
| Justify | give reasons supporting a choice |

### Example Difference

```text
State one advantage of encryption.
```

Possible answer:

```text
It protects data confidentiality.
```

```text
Explain one advantage of encryption.
```

Stronger answer:

```text
Encryption protects confidentiality because data is converted into unreadable ciphertext, so an unauthorized person cannot understand it without the correct key.
```

---

## 8. Core Vocabulary Categories

The glossary vocabulary should be revised by topic.

### A1 Computer Fundamentals

```text
hardware
software
CPU
memory
storage
binary
denary
logic gate
operating system
utility software
```

### A2 Networks

```text
network
LAN
WAN
IP address
packet
protocol
router
switch
DNS
encryption
firewall
```

### A3 Databases

```text
database
table
record
field
primary key
foreign key
relationship
query
SQL
normalization
```

### A4 Machine Learning

```text
machine learning
dataset
feature
label
training
testing
validation
classification
regression
bias
overfitting
```

### B1 Computational Thinking

```text
decomposition
abstraction
algorithm
flowchart
pseudocode
trace table
iteration
selection
sequence
```

### B2 Programming

```text
variable
constant
data type
array
list
function
procedure
parameter
return value
exception
```

---

## 9. Common Confusing Pairs

Students should pay special attention to similar terms.

| Pair | Main Difference |
|---|---|
| validation vs verification | validation checks reasonableness/rules; verification checks accuracy against original source |
| RAM vs storage | RAM is volatile working memory; storage is non-volatile long-term storage |
| compiler vs interpreter | compiler translates whole program; interpreter translates/executes line by line |
| authentication vs authorization | authentication checks identity; authorization checks permission |
| encryption vs hashing | encryption is reversible with key; hashing is one-way |
| LAN vs WAN | LAN covers small local area; WAN covers large geographical area |
| primary key vs foreign key | primary key uniquely identifies a record; foreign key links to another table |
| classification vs regression | classification predicts categories; regression predicts numerical values |
| test data vs training data | training builds model; test data checks performance |
| syntax error vs logic error | syntax breaks language rules; logic error runs but gives wrong result |

---

## 10. Mark Scheme-style Answer Formula

A strong CS answer often follows this pattern:

```text
term + specific meaning + scenario link + impact/reason
```

### Example: Firewall

Weak:

```text
A firewall protects the network.
```

Stronger:

```text
A firewall monitors incoming and outgoing network traffic and blocks traffic that does not match security rules, reducing unauthorized access to the school network.
```

### Example: Primary Key

Weak:

```text
A primary key is an ID.
```

Stronger:

```text
A primary key is a field that uniquely identifies each record in a table, so each student record can be referenced without confusion.
```

---

## 11. Pseudocode and Java Connection

The glossary also supports programming revision.

### Common Structures

| Concept | Pseudocode Idea | Java-style Idea |
|---|---|---|
| variable | `score ← 0` | `int score = 0;` |
| selection | `IF condition THEN` | `if (condition) { }` |
| loop | `FOR i ← 1 TO 10` | `for (int i = 1; i <= 10; i++) { }` |
| while loop | `WHILE condition` | `while (condition) { }` |
| array access | `names[0]` | `names[0]` |
| procedure | `PROCEDURE display()` | `void display()` |
| function | `FUNCTION total() RETURNS INTEGER` | `int total()` |

### Important

Students do not need to memorize only syntax. They should understand:

```text
purpose
logic
input
process
output
```

---

## 12. How to Use This Glossary Before Exams

### Step 1: Command Terms

Review what the question is asking.

```text
define = meaning
describe = features/steps
explain = why/how with reason
evaluate = judgement with evidence
```

### Step 2: Topic Vocabulary

Revise key terms by module.

```text
A1 hardware/software
A2 networks/security
A3 databases
A4 machine learning
B1 algorithms
B2 programming
```

### Step 3: Confusing Pairs

Practise explaining differences.

```text
validation vs verification
authentication vs authorization
classification vs regression
```

### Step 4: Exam Sentences

Practise writing one strong sentence per term.

```text
Encryption protects confidentiality by converting plaintext into ciphertext using a key.
```

---

## 13. Mini Vocabulary Practice

### Practice 1

Define validation.

<details>
<summary>Suggested Answer</summary>

Validation checks whether input data is reasonable or follows required rules before it is accepted.

</details>

---

### Practice 2

Distinguish authentication and authorization.

<details>
<summary>Suggested Answer</summary>

Authentication checks a user's identity, while authorization checks what resources or actions the user is allowed to access.

</details>

---

### Practice 3

Explain why a primary key is used.

<details>
<summary>Suggested Answer</summary>

A primary key uniquely identifies each record in a table, so records can be referenced and updated without confusion.

</details>

---

### Practice 4

State one difference between training data and test data.

<details>
<summary>Suggested Answer</summary>

Training data is used to build the machine learning model, while test data is used to check how well the model performs on unseen data.

</details>

---

## 14. Common Vocabulary Mistakes

| Mistake | Why It Is Weak | Better Wording |
|---|---|---|
| “validation makes data correct” | validation cannot prove truth | checks data follows rules |
| “encryption deletes data” | wrong concept | converts readable data into ciphertext |
| “primary key is just a number” | incomplete | uniquely identifies a record |
| “RAM saves files forever” | wrong | RAM is volatile working memory |
| “AI learns by itself magically” | vague | model learns patterns from training data |
| “firewall stops all attacks” | overclaim | blocks traffic based on rules |
| “backup prevents all data loss” | overclaim | allows recovery after data loss |
| “SQL is database” | inaccurate | SQL is a language used to query/manage relational databases |
| “algorithm is code” | incomplete | step-by-step method to solve a problem |
| “testing means program runs” | weak | checks actual result against expected result |

---

## 15. Student Self-check

Before answering a glossary-style question, ask:

```text
Do I know the exact meaning?
Can I give a simple example?
Can I use the term in a full sentence?
Can I link it to the scenario?
Can I avoid overclaiming?
Can I distinguish it from similar terms?
```

---

## 16. Scenario Answer Bank

### If Asked: “Why use command terms?”

```text
Command terms show the required depth and style of the answer, such as giving a definition, explanation, comparison, or judgement.
```

### If Asked: “Why learn vocabulary?”

```text
Accurate vocabulary helps students write precise answers that match the expected computer science meaning.
```

### If Asked: “How should students revise vocabulary?”

```text
Students should revise each term with a definition, example, and exam-style sentence rather than memorizing translation only.
```

### If Asked: “Why are confusing pairs important?”

```text
Similar terms often appear in exams, so students need to explain the difference clearly to avoid losing marks.
```

### If Asked: “Why connect pseudocode and Java?”

```text
Connecting pseudocode and Java helps students understand the underlying logic rather than memorizing syntax only.
```

---

## 17. Independent Practice

### Question 1

Write definitions for:

```text
algorithm
database
encryption
validation
machine learning
```

### Question 2

Distinguish these pairs:

```text
RAM vs storage
validation vs verification
authentication vs authorization
primary key vs foreign key
classification vs regression
```

### Question 3

For each term, write one exam-style sentence:

```text
firewall
DNS
trace table
array
normalization
```

### Question 4

Turn these weak answers into stronger answers:

```text
A router sends things.
A database stores stuff.
A model learns data.
A firewall protects it.
An algorithm is code.
```

### Question 5

Choose five command terms and explain what each one requires.

---

## 18. Practice task
### Activity 1: Term → Definition → Example

Students choose a term and complete:

```text
term:
definition:
example:
exam sentence:
common mistake:
```

---

### Activity 2: Confusing Pair Battle

Students compare two terms:

```text
validation vs verification
authentication vs authorization
LAN vs WAN
compiler vs interpreter
training vs testing data
```

They must give:

```text
one meaning each
one difference
one example each
```

---

### Activity 3: Mark Scheme Sentence Upgrade

Students upgrade weak answers into precise answers.

Example:

```text
Weak: Encryption makes data safe.
Better: Encryption converts plaintext into ciphertext using a key, so unauthorized users cannot understand the data if they intercept it.
```

---

## 20. One-page Glossary Revision Sheet

| Area | Key Reminder |
|---|---|
| Command terms | show answer depth |
| Define | give meaning |
| Describe | give features or steps |
| Explain | give reason / how / why |
| Compare | similarities and differences |
| Evaluate | judgement with evidence |
| Vocabulary revision | term → definition → example → exam sentence |
| Confusing pairs | learn differences clearly |
| Scenario link | connect term to the question context |
| Mark scheme style | precise wording, not vague language |
| Pseudocode | focus on logic and structure |
| Java connection | understand equivalent programming ideas |
| Common risk | knowing concept in Chinese but writing vague English |
| Best phrase | Accurate computer science vocabulary helps turn understanding into marks. |

