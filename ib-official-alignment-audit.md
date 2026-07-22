# IB Official Alignment Audit

## Purpose

This document is an internal planning checklist for aligning the website with the new IBDP Computer Science syllabus direction and IA expectations. It should not be published to the student site.

The goal is to identify improvement areas before editing student-facing pages, so later changes can be made in a controlled, evidence-based way.

## Current Review Baseline

- Review date: **22 July 2026**
- Public official source: [IB Computer Science subject brief — first assessment 2027](https://www.ibo.org/globalassets/new-structure/university-admission/pdfs/dp_comp_sci_subjectbrief_en.pdf)
- Public official source: [IB Computer Science curriculum update](https://www.ibo.org/university-admission/latest-curriculum-updates/computer-science-updates/)
- Scope of public-source verification: course themes, topic groups, recommended hours, assessment time/weighting, Paper 1 case study, Paper 2 Java/Python choice, IA course-level purpose, and collaborative sciences project
- Source boundary: the public subject brief does not publish every detailed IA criterion, word/video limit, appendix, permitted-tool, or upload instruction. Those details must be checked against the latest official guidance available through the school.

The status labels in this audit mean:

- **Covered**: a visible student page and a relevant learning/practice route exist.
- **Covered with school check**: the site gives useful guidance, but final session or submission details must be confirmed through the school.
- **Deferred detailed audit**: the broad topic exists, but statement-level checking against the complete guide belongs to a later content-alignment stage.
- **Optional backlog**: useful enhancement, not required for Stage 1 completion.

## Important Source Principles

- Do not copy official IB papers, markschemes, screenshots, or large extracts into the public website.
- Use official materials only to identify syllabus expectations, assessment structure, skills, and topic emphasis.
- Public website content should be original explanations, original examples, and original practice questions.
- Keep the website student-facing and focused on learning.

## IA Support Official-file Priority Rule

For IA Support, official IB materials must have the highest priority. The IA Support section should be treated differently from general learning pages.

Use this source hierarchy for IA-related pages:

1. Official IB Computer Science IA guide / new syllabus IA guidance
2. Official IB Teacher Support Material
3. Official IB-style IA introduction slides provided by the school or teacher
4. Course textbook or teacher-created explanation
5. Our own student-friendly examples and templates

- IA page structure should follow the official computational solution process and the five assessment criteria.
- The five criteria should be clearly represented:
  - Criterion A: Problem specification
  - Criterion B: Planning
  - Criterion C: System overview
  - Criterion D: Development
  - Criterion E: Evaluation
- Student-facing IA pages may use simplified explanations, but the underlying structure must not drift away from official criteria.
- The website should avoid inventing alternative IA structures that compete with the official one.
- Old pages based on generic "analysis/design/development/evaluation" wording should be rewritten or clearly mapped to the official A-E criteria.
- IA pages should be practical and student-friendly, but official requirements have priority over convenience or style.
- Public pages must not reproduce official IB text directly. Use original wording and paraphrased guidance.

## IA Alignment Must-cover Points

All points below are covered in the current IA Support pages. The first four course-level points are supported by the public 2027 subject brief. Detailed limits, criteria, appendix, authenticity, and packaging guidance remain subject to the official school-access source boundary stated above.

- [x] IA is a computational solution.
- [x] Students choose a topic within computer science.
- [x] Students specify a problem of their own choosing.
- [x] The solution should demonstrate computational thinking.
- [x] The report is up to 2000 words under the current detailed guidance recorded for this site.
- [x] The video is up to 5 minutes and should show product functionality and examples of testing strategy under the current detailed guidance recorded for this site.
- [x] The documentation should cover Criteria A-E under the current detailed guidance recorded for this site.
- [x] Full source code should be included in an appendix under the current detailed guidance recorded for this site.
- [x] Success criteria should be measurable, clear, achievable, and testable.
- [x] Success criteria should be linked to the identified problem and essential software functionality.
- [x] Success criteria should not be vague or subjective.
- [x] Project choice should have sufficient complexity.
- [x] Weak projects include simple calculators, template websites, unfinished products, and systems limited to basic add/search/edit/delete only in RAM.
- [x] Students should acknowledge external sources, libraries, and AI use where applicable.
- [x] The submitted work must be the student's own.

## 2027 SL Coverage Matrix

| Official course or assessment area | Student learning page | Practice / application route | Status | Review note |
|---|---|---|---|---|
| Course structure: Theme A and Theme B | `docs/course-overview/index.md`, `docs/index.md`, `docs/roadmap.md` | Topic landing pages and Exam Practice | Covered | Official structure is separated from the website's recommended learning path. |
| A1 Computer fundamentals | `docs/a1-computer-fundamentals/` | `docs/exam-practice/a1-a2-practice.md` | Covered | Statement-level guide audit is deferred. |
| A2 Networks | `docs/a2-networks/` | `docs/exam-practice/a1-a2-practice.md` | Covered | Stage 2 structural and granular concept audit is complete; full guide statement-level comparison remains deferred. |
| A3 Databases | `docs/a3-databases/` | `docs/exam-practice/a3-a4-practice.md` | Covered | Stage 2 structural and granular concept audit is complete; full guide statement-level comparison remains deferred. |
| A4 Machine learning | `docs/a4-machine-learning/` | `docs/exam-practice/a3-a4-practice.md` | Covered | Stage 2 structural and granular concept audit is complete; full guide statement-level comparison remains deferred. |
| B1 Computational thinking | `docs/b1-computational-thinking/` | `docs/exam-practice/b1-practice.md` | Covered | Includes decomposition, abstraction, algorithms, flowcharts, and tracing. |
| B2 Programming | `docs/b2-programming/` | `docs/exam-practice/b2-b3-practice.md` | Covered | Programming-language balance is a later practice-depth task. |
| B3 Object-oriented programming | `docs/b3-oop/` | `docs/exam-practice/b2-b3-practice.md` | Covered | HL multiple-class material remains marked as extension. |
| Paper 1 | `docs/assessment/index.md`, `docs/exam-practice/paper-1-overview.md` | Theme A practice pages, `case-study-answering-skills.md`, and `mark-scheme-skills.md` | Covered | 75 minutes, 35%, Theme A, and case-study focus are visible. |
| Paper 1 case study | `docs/exam-practice/case-study-answering-skills.md` | Original GreenLoop scenario, evidence grid, worked responses, practice set, and self-marking | Covered | Stage 3 dedicated skills route is linked from the sidebar, Exam Practice, Assessment, and Paper 1 Overview. |
| Paper 2 | `docs/assessment/index.md`, `docs/exam-practice/paper-2-theme-b-skills.md` | `paper-2-integrated-practice.md`, B1, and B2/B3 practice pages | Covered | 75 minutes, 35%, Theme B, Java/Python choice, and integrated applied practice are visible. |
| Java / Python course language choice | `docs/course-overview/index.md`, `docs/assessment/index.md`, `docs/exam-practice/paper-2-theme-b-skills.md` | Language-matched class and specimen practice | Covered | Website examples may remain language-specific when clearly explained. |
| IA computational solution | `docs/ia-support/index.md`, `docs/ia-support/computational-solution-overview.md`, Criteria A-E pages | Suitable-problem guide, `worked-evidence-example.md`, ethics guidance, and submission checklist | Covered with school check | Public brief verifies 35 hours, 30%, real-world problem, and computational-thinking focus. Detailed packaging follows the source boundary. |
| Collaborative sciences project | `docs/course-overview/index.md`, `docs/assessment/index.md`, `docs/roadmap.md` | School-organised collaborative practical work | Covered with school check | 10 hours; separate from the individual IA and not a separate SL assessment component. |
| SL / HL / extension boundary | Homepage, Roadmap, extension landing pages, and `docs/b3-oop/hl-multiple-classes.md` | Optional enrichment after SL core | Covered | Extension routes are visibly separated from the SL core route. |

## Stage 2 Content Quality Acceptance

Stage 2 was completed on **22 July 2026** using a reproducible structural audit of the current Markdown corpus.

### Audit scope and rules

- Core-page corpus: **62 SL subpages** inside A1-A4 and B1-B3.
- Exclusions: topic `index.md` landing pages and `docs/b3-oop/hl-multiple-classes.md`, which is explicitly extension content.
- A worked example is accepted when a page contains a clearly headed original example, worked scenario, or trace example.
- An exam question is accepted when a page contains a clearly headed exam-style question or practice section.
- Long-page threshold: more than **5000 whitespace-separated words** in the current file.
- Long-page navigation is accepted when a top-level `Page map` contains internal anchor links that resolve to headings in the same file.

### Structural acceptance results

| Requirement | Acceptance standard | Result |
|---|---|---|
| Student entry point | 62/62 core pages contain `Start here` | Passed: 62/62 |
| Minimum outcomes | 62/62 core pages contain `Core checklist` | Passed: 62/62 |
| Applied learning | 62/62 core pages contain at least one clearly headed original example | Passed: 62/62 |
| Exam application | 62/62 core pages contain at least one exam-style question/practice section | Passed: 62/62 |
| Error prevention | 62/62 core pages contain a clearly headed common-mistakes section | Passed: 62/62 |
| Long-page navigation | Every page over 5000 words contains a top `Page map` with valid local anchors | Passed: 38/38 |
| Student-facing language | No forbidden teacher/internal-maintenance headings in `docs/` | Passed: 0 matches |

The long-page total increased from the initial 37-page baseline to 38 because `algorithms.md` crossed the threshold after its Stage 2 common-mistakes content was added. It was therefore included rather than relying on the older count.

### A2-A4 granular coverage matrix

This matrix records the focused gaps checked during Stage 2. It does **not** claim a complete statement-by-statement match to the non-public detailed subject guide.

| Area | Granular concept | Student-facing evidence | Stage 2 status |
|---|---|---|---|
| A2 | URL, domain, IP address, DNS, and HTTP roles | `docs/a2-networks/dns-web-access.md` | Covered |
| A2 | TCP vs UDP, encapsulation, and packet journey | `docs/a2-networks/tcp-ip-model.md`, `docs/a2-networks/packet-switching.md` | Covered |
| A2 | Encryption, VPN, NAT, firewall, and scenario answer order | `docs/a2-networks/encryption-vpn-nat.md`, `docs/a2-networks/network-security.md` | Covered |
| A2 | Failover and availability | `docs/a2-networks/network-fundamentals.md` | Covered at SL preview level |
| A3 | Table, record, field, DBMS, keys, relationships, redundancy, consistency, and integrity | `docs/a3-databases/database-fundamentals.md` and linked core pages | Covered |
| A3 | Transactions, ACID, backup, logs, checkpoints, and recovery | `docs/a3-databases/transactions-recovery.md` | Covered |
| A3 | Normalization through 3NF | `docs/a3-databases/normalization.md` | Covered |
| A3 | Distributed and spatial database contexts | `docs/a3-databases/database-fundamentals.md` | Covered at SL preview level |
| A4 | Dataset, feature, label, model, and data splitting | `docs/a4-machine-learning/ml-fundamentals.md`, `docs/a4-machine-learning/data-features-labels.md`, `docs/a4-machine-learning/training-testing-validation.md` | Covered |
| A4 | Classification, regression, supervised/unsupervised learning, overfitting, and underfitting | A4 task-type and fitting core pages | Covered |
| A4 | Accuracy limits, false positives/negatives, precision, recall, and human review | `docs/a4-machine-learning/model-evaluation.md` | Covered |
| A4 | Data cleaning, bias, privacy, and safeguards | `docs/a4-machine-learning/bias-ethics-privacy.md` | Covered |
| A4 | CNN and reinforcement-learning application contexts | `docs/a4-machine-learning/ml-applications-limitations.md` | Covered at SL preview level |

### Remaining source-boundary task

A complete official statement-level audit of A2, A3, and A4 still requires the latest detailed subject guide available through the school. Until that source is available, the site should describe these results as structural and granular coverage, not as proof that every official syllabus statement has been independently verified.

## Stage 3 Exam Practice Acceptance

Stage 3 focuses on **exam-practice depth and discoverability**. It converts the previous optional Paper 1 case-study enhancement into a dedicated learning route and adds one connected Paper 2 Theme B practice route.

### Deliverables

| Deliverable | Required evidence | Result |
|---|---|---|
| Dedicated Paper 1 case-study route | Separate student page with reading workflow, evidence grid, command-term support, worked answer, original practice, and self-marking | Implemented in `docs/exam-practice/case-study-answering-skills.md` |
| Original Paper 1 scenario breadth | One original scenario connecting A1, A2, A3, A4, stakeholders, constraints, and risks | Implemented through the GreenLoop Bike Share scenario |
| Paper 1 applied practice | At least one worked short response, one extended-response plan, and four original practice questions | Implemented |
| Integrated Paper 2 route | One original Theme B scenario connecting decomposition, abstraction, tracing, algorithm design, OOP, testing, and debugging | Implemented in `docs/exam-practice/paper-2-integrated-practice.md` |
| Language equivalence | The same algorithmic logic represented in pseudocode, Java, and Python | Implemented through the overdue-loan counting example |
| Paper 2 applied practice | At least five original questions covering decomposition, tracing, algorithm design, OOP, and testing | Implemented |
| Discoverability | Both pages linked from the Exam Practice sidebar and overview; contextual links from Assessment and the relevant Paper overview/skills page | Implemented |
| Source boundary | Public official facts separated from original website strategies, mark allocations, questions, and suggested answers | Implemented through explicit boundary blocks |
| Build, links, and navigation | VitePress build succeeds; internal links and Page-map anchors have zero failures | Passed: build succeeded; 391/391 internal links valid; 0 Page-map anchor errors |

### Original-content rule

The GreenLoop Bike Share and Northbridge Equipment Loans scenarios, all instructional mark allocations, code fragments, questions, answer points, and self-marking structures are website-authored material. They must not be presented as official IB questions or markschemes.

## Stage 4 IA Evidence Acceptance

Stage 4 focuses on **IA evidence depth and traceability**. The existing Criteria A-E pages already explain the structure; Stage 4 adds one coherent original project that demonstrates how evidence should remain connected across the full process.

### Deliverables

| Deliverable | Required evidence | Result |
|---|---|---|
| Original A-E worked project | One student-facing scenario that is not copied from an official exemplar | Implemented through the PantryTrack food-pantry stock and collection system |
| Problem-to-evidence chain | Real problem, computational suitability, scope boundary, and measurable success criteria | Implemented with six criteria, SC1-SC6 |
| Planning depth | Tasks include outputs, dependencies, SC links, resources, time, risks, and a justified change record | Implemented |
| System overview depth | Components, data relationships, key algorithm, and planned functional/structural tests | Implemented with static system/data models and allocation pseudocode |
| Development evidence | Selected code, technical explanation, development problem, fix, and actual test results | Implemented, including failed T10a and passing regression T10b |
| Evaluation evidence | Every success criterion judged using named evidence; limitations and improvements remain visible | Implemented through the SC1-SC6 evaluation table and overall judgement |
| Full traceability | A-E matrix connects target, plan, design, implementation/test, video, and evaluation | Implemented |
| Video evidence | Storyboard stays inside the site's current recorded limit and demonstrates functionality plus testing | Implemented with an explicit school-verification boundary |
| Sources/libraries/AI | Working source log and acknowledgement pattern distinguish source, purpose, location, student action, and retained evidence | Implemented with explicit school-permission boundary |
| Discoverability | Page linked from IA sidebar, IA landing page, Criteria A-E, Ethics, and Submission Checklist | Implemented |
| Build, links, diagrams, and anchors | VitePress build succeeds; routes, internal links, rendered static diagrams, and Page-map anchors have zero failures | Passed: build succeeded; 407/407 internal links valid; rendered page checks passed; 0 Page-map anchor errors |

### Original-content and authenticity rule

PantryTrack is a model of evidence structure, not a report template. Its scenario, success criteria, plan, diagrams, algorithm, code, test results, video storyboard, evaluation, and acknowledgement log are original website-authored material. Students must replace every part with truthful evidence from their own project and follow the latest official instructions provided through their school.

## High Priority Changes

| Priority | Website Area | Current Issue | Suggested Change | Evidence / Reason | Status |
|---|---|---|---|---|---|
| Priority 1 | IA Support | IA pages needed stronger alignment and a coherent evidence model. | Maintain Criteria A-E plus the Stage 4 PantryTrack worked evidence chain. | The IA requires a computational solution and a clear computational-thinking process. | Covered with school check; evidence depth added in Stage 4 |
| Priority 2 | IA Project Choice | Students may choose projects that are too simple, too broad, or not computational enough. | Add a Choosing a Suitable Problem page with suitable vs weak project examples. | Students should specify a problem and create a computational solution that demonstrates computational thinking and programming skill. | Covered |
| Priority 3 | IA Ethics and Academic Integrity | Ethics and academic integrity need a clearer student-facing page. | Add an Ethics and Academic Integrity page covering consent, data privacy, mock data, ethical purpose, external libraries, citations, AI use, and originality. | IA work must be the student's own work, and data / consent / external sources must be handled responsibly. | Covered with school check |
| Priority 4 | Exam Practice | The site may mix 2025 practice papers and 2027 specimen structure without enough explanation. | Separate 2027 syllabus exam overview from legacy / practice paper material. | Students need to understand current assessment expectations and avoid confusion between different paper structures. | Covered |
| High | Case Study / Scenario Answering | Case-study support inside the long Paper 1 overview needed a more discoverable practice route. | Maintain the dedicated Case Study Answering Skills page and its original practice scenario. | Paper 1 includes questions related to the case study. | Covered in Stage 3 |
| High | Roadmap / Homepage | Official structure and recommended learning order must not compete. | Show Theme A / Theme B as the official structure and use one shared website learning path. | The course is organised into Theme A and Theme B. | Covered |
| High | HL / SL Boundary | Some extension material may look like SL core content. | Add clear warning blocks to HL-only or extension pages. | The website is mainly for SL students, so HL and extension content should be clearly labelled. | Covered |
| High | A3 Databases | Detailed content coverage requires checking against the complete guide. | Audit A3 at statement level before adding or removing content. | The public subject brief confirms A3 but not every subtopic. | Deferred detailed audit |
| High | A4 Machine Learning | Detailed content coverage requires checking against the complete guide. | Audit A4 at statement level before adding or removing content. | The public subject brief confirms A4 but not every subtopic. | Deferred detailed audit |
| High | A2 Networks | Detailed content coverage requires checking against the complete guide. | Audit A2 at statement level before adding or removing content. | The public subject brief confirms A2 but not every subtopic. | Deferred detailed audit |
| High | Software Engineering | The extension should remain practical and beginner-friendly. | Optionally add Code Review and Refactoring later. | This is enrichment rather than SL core. | Optional backlog |

## Suggested Work Order

1. IA Support alignment
2. Exam Practice alignment
3. Homepage / Roadmap official structure
4. HL / SL boundary labels
5. A3 database strengthening
6. A4 machine learning strengthening
7. A2 networks strengthening
8. Software Engineering small enhancement

## Working Rules for Future Edits

- One change area per commit.
- Build and link check after each stage.
- Do not add official IB PDFs, screenshots, or copied questions to the public site.
- Do not put internal audit files inside docs/.
- Keep all pages student-facing.
- Avoid teacher maintenance notes in docs/.
- Avoid backup files.

## Command Checklist

```powershell
npm run docs:build
.\tools\check-vitepress-links.ps1
git status
```

This audit is a planning document. It should guide future updates but should not be published as a student page.
