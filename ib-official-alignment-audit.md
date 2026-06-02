# IB Official Alignment Audit

## Purpose

This document is an internal planning checklist for aligning the website with the new IBDP Computer Science syllabus direction and IA expectations. It should not be published to the student site.

The goal is to identify improvement areas before editing student-facing pages, so later changes can be made in a controlled, evidence-based way.

## Important Source Principles

- Do not copy official IB papers, markschemes, screenshots, or large extracts into the public website.
- Use official materials only to identify syllabus expectations, assessment structure, skills, and topic emphasis.
- Public website content should be original explanations, original examples, and original practice questions.
- Keep the website student-facing and focused on learning.

## High Priority Changes

| Priority | Website Area | Current Issue | Suggested Change | Evidence / Reason | Status |
|---|---|---|---|---|---|
| High | IA Support | IA pages need stronger alignment with the new computational solution structure. | Reorganise IA Support around Criterion A Problem Specification, Criterion B Planning, Criterion C System Overview, Criterion D Development, and Criterion E Evaluation. | The IA requires a computational solution, a report of up to 2000 words, and a video of up to 5 minutes showing functionality and testing strategy. | Planned |
| High | IA Project Choice | Students may choose projects that are too simple, too broad, or not computational enough. | Add a Choosing a Suitable Problem page with suitable vs weak project examples. | Students should specify a problem and create a computational solution that demonstrates computational thinking and programming skill. | Planned |
| High | IA Ethics and Academic Integrity | Ethics and academic integrity need a clearer student-facing page. | Add an Ethics and Academic Integrity page covering consent, data privacy, mock data, ethical purpose, external libraries, citations, AI use, and originality. | IA work must be the student's own work, and data / consent / external sources must be handled responsibly. | Planned |
| High | Exam Practice | The site may mix 2025 practice papers and 2027 specimen structure without enough explanation. | Separate 2027 syllabus exam overview from legacy / practice paper material. | Students need to understand current assessment expectations and avoid confusion between different paper structures. | Planned |
| High | Case Study / Scenario Answering | Students need more support linking answers to scenarios. | Add a Case Study Answering Skills page under Exam Practice. | The new assessment style places importance on reading a scenario and applying technical knowledge to context. | Planned |
| High | Roadmap / Homepage | The site's recommended learning order may not clearly show the official Theme A / Theme B structure. | Add an official structure section showing Theme A Concepts of Computer Science and Theme B Computational Thinking and Problem-solving, then separately show the website's suggested learning route. | The course is organised into Theme A and Theme B. | Planned |
| High | HL / SL Boundary | Some extension material may look like SL core content. | Add clear warning blocks to HL-only or extension pages. | The website is mainly for SL students, so HL and extension content should be clearly labelled. | Planned |
| High | A3 Databases | Database content may need stronger coverage of transactions, ACID, log recovery, distributed databases, spatial databases, and 3NF. | Audit A3 pages and add missing exam-style explanations and original practice. | Recent/specimen materials show database questions involving SQL, 3NF, transactions, distributed systems, recovery, and spatial databases. | Planned |
| High | A4 Machine Learning | Machine learning pages may need stronger focus on evaluation, data cleaning, CNN basics, F1 score, reinforcement learning, and ethics. | Audit A4 pages and add original explanations/practice for those topics. | Recent/specimen materials include ML evaluation, data cleaning, GPU, CNN, F1 score, RL, and ethics-style discussion. | Planned |
| High | A2 Networks | Network pages may need stronger NAT, firewall, switch routing, TCP/IP layers, fibre optic, VPN, and failover coverage. | Audit A2 pages and add original explanations/practice for these scenario-based topics. | Recent/specimen materials include network devices, TCP/IP layers, switch packet routing, NAT/firewall, VPN, and failover-style concepts. | Planned |
| High | Software Engineering | The new Software Engineering section is useful, but should remain practical and not become university-level. | Keep it as a practical beginner course. Optionally add Code Review and Refactoring later. | Students benefit from project structure, modular design, validation, testing, version control, documentation, and maintainability. | Planned |

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
