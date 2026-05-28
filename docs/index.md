---
layout: home

hero:
  name: IBDP Computer Science SL
  text: Student Learning Hub
  tagline: Learn concepts, practise exam skills, and review with interactive tools.
  actions:
    - theme: brand
      text: Start Learning
      link: ./roadmap
    - theme: alt
      text: Interactive Demos
      link: ./interactive-demos/
    - theme: alt
      text: Exam Practice
      link: ./exam-practice/

features:
  - title: Clear SL Content
    details: Study the main IBDP Computer Science SL topics from fundamentals to programming and OOP.
  - title: Exam-focused Revision
    details: Use practice pages, mark-scheme style wording, and common mistakes to prepare for assessment.
  - title: Interactive Learning
    details: Explore static interactive demos for networks, databases, machine learning, algorithms, and OOP.
---

## Choose Your Learning Path

<div class="student-nav-grid">

<a class="student-nav-card primary-card" href="./roadmap">
  <span class="card-tag">Start here</span>
  <h3>I am new to the course</h3>
  <p>Follow the roadmap and learn the SL topics in a sensible order.</p>
</a>

<a class="student-nav-card" href="./interactive-demos/">
  <span class="card-tag">Visual learning</span>
  <h3>I want to understand a process</h3>
  <p>Use demos for packet switching, DNS, SQL, machine learning, searching, sorting, and OOP.</p>
</a>

<a class="student-nav-card" href="./exam-practice/">
  <span class="card-tag">Exam mode</span>
  <h3>I want to practise exam questions</h3>
  <p>Review exam-style questions, model answers, and mark-scheme style phrases.</p>
</a>

<a class="student-nav-card" href="./glossary/">
  <span class="card-tag">Quick lookup</span>
  <h3>I need a definition quickly</h3>
  <p>Check key terms and short explanations before answering questions.</p>
</a>

<a class="student-nav-card" href="./ia-support/">
  <span class="card-tag">Project support</span>
  <h3>I am working on my IA</h3>
  <p>Use IA support pages to plan, check, and improve your project work.</p>
</a>

<a class="student-nav-card" href="./b2-programming/">
  <span class="card-tag">Coding focus</span>
  <h3>I want to improve programming</h3>
  <p>Review algorithms, arrays, searching, sorting, and programming logic.</p>
</a>

</div>

## Core SL Topics

<div class="module-grid">

<a class="module-card" href="./a1-computer-fundamentals/">
  <h3>A1 Computer Fundamentals</h3>
  <p>Computer systems, data representation, logic, hardware, software, and system concepts.</p>
</a>

<a class="module-card" href="./a2-networks/">
  <h3>A2 Networks</h3>
  <p>Network types, packet switching, protocols, DNS, web requests, and network security.</p>
</a>

<a class="module-card" href="./a3-databases/">
  <h3>A3 Databases</h3>
  <p>Tables, keys, relationships, SQL, normalization, and database design.</p>
</a>

<a class="module-card" href="./a4-machine-learning/">
  <h3>A4 Machine Learning</h3>
  <p>Training data, classification, model evaluation, bias, and overfitting.</p>
</a>

<a class="module-card" href="./b1-computational-thinking/">
  <h3>B1 Computational Thinking</h3>
  <p>Problem-solving, algorithms, pseudocode, flowcharts, trace tables, and decomposition.</p>
</a>

<a class="module-card" href="./b2-programming/">
  <h3>B2 Programming</h3>
  <p>Programming constructs, arrays, searching, sorting, counters, accumulators, and logic.</p>
</a>

<a class="module-card" href="./b3-oop/">
  <h3>B3 Object-Oriented Programming</h3>
  <p>Classes, objects, attributes, methods, encapsulation, inheritance, and references.</p>
</a>

</div>

## Recommended Study Order

| Stage | What to study | Why it matters |
|---|---|---|
| 1 | [A1 Computer Fundamentals](./a1-computer-fundamentals/) | Builds the basic language of computer science. |
| 2 | [A2 Networks](./a2-networks/) | Helps explain real-world communication and web systems. |
| 3 | [A3 Databases](./a3-databases/) | Prepares you for SQL, keys, relationships, and data questions. |
| 4 | [A4 Machine Learning](./a4-machine-learning/) | Develops understanding of modern AI concepts and model evaluation. |
| 5 | [B1 Computational Thinking](./b1-computational-thinking/) | Strengthens algorithm tracing and problem-solving. |
| 6 | [B2 Programming](./b2-programming/) | Builds core coding logic and exam algorithm skills. |
| 7 | [B3 OOP](./b3-oop/) | Helps understand class-based programming and object interaction. |
| 8 | [Exam Practice](./exam-practice/) | Converts knowledge into marks. |

## Quick Access

<div class="quick-grid">

<a href="./interactive-demos/">Interactive Demos</a>
<a href="./exam-practice/">Exam Practice</a>
<a href="./glossary/">Glossary</a>
<a href="./ia-support/">IA Support</a>
<a href="./extension-hl-programming/">HL Programming Extension</a>
<a href="./extension-social-engineering/">Social Engineering Extension</a>

</div>

## How to Use This Website

::: tip Suggested routine
Read the topic page first, then use an interactive demo if the topic has a process or algorithm. After that, practise writing a short exam-style answer using correct computer science keywords.
:::

<div class="routine-grid">

<div class="routine-card">
  <strong>1. Learn</strong>
  <p>Start with the topic notes and understand the main idea.</p>
</div>

<div class="routine-card">
  <strong>2. Visualise</strong>
  <p>Use interactive demos for steps, processes, and algorithms.</p>
</div>

<div class="routine-card">
  <strong>3. Practise</strong>
  <p>Try exam-style questions and compare your answer with the model answer.</p>
</div>

<div class="routine-card">
  <strong>4. Review</strong>
  <p>Use glossary pages and common mistakes before tests or exams.</p>
</div>

</div>

<style>
.student-nav-grid,
.module-grid,
.routine-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 16px;
  margin: 20px 0 28px;
}

.student-nav-card,
.module-card,
.routine-card {
  display: block;
  height: 100%;
  border: 1px solid var(--vp-c-divider);
  border-radius: 18px;
  padding: 18px;
  background: var(--vp-c-bg-soft);
  text-decoration: none;
  color: var(--vp-c-text-1);
  transition: 0.18s ease;
}

.student-nav-card:hover,
.module-card:hover {
  border-color: var(--vp-c-brand-1);
  transform: translateY(-2px);
  background: var(--vp-c-brand-soft);
}

.student-nav-card h3,
.module-card h3 {
  margin: 8px 0 8px;
  color: var(--vp-c-text-1);
}

.student-nav-card p,
.module-card p,
.routine-card p {
  margin: 0;
  color: var(--vp-c-text-2);
  line-height: 1.6;
}

.primary-card {
  border-color: var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.card-tag {
  display: inline-block;
  border-radius: 999px;
  padding: 4px 10px;
  background: var(--vp-c-bg);
  color: var(--vp-c-brand-1);
  font-size: 0.78rem;
  font-weight: 800;
}

.quick-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 12px;
  margin: 18px 0 28px;
}

.quick-grid a {
  display: block;
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  padding: 12px 14px;
  background: var(--vp-c-bg-soft);
  font-weight: 800;
  text-decoration: none;
}

.quick-grid a:hover {
  border-color: var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.routine-grid {
  grid-template-columns: repeat(4, minmax(0, 1fr));
}

.routine-card strong {
  color: var(--vp-c-brand-1);
  font-size: 1.05rem;
}

@media (max-width: 960px) {
  .student-nav-grid,
  .module-grid,
  .quick-grid,
  .routine-grid {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}

@media (max-width: 640px) {
  .student-nav-grid,
  .module-grid,
  .quick-grid,
  .routine-grid {
    grid-template-columns: 1fr;
  }
}
</style>
