# IA Support Official Refactor Plan

## 1. Purpose

This plan is an internal planning document for refactoring IA Support so that it follows official IA expectations, the computational solution process, and the five official assessment criteria. It should not be published to the student site.

The refactor should keep IA Support practical and student-facing, but the structure must remain official-file-led. IA guidance pages may use simplified wording and original examples, but they should not invent a competing structure or drift away from Criteria A-E.

## 2. Current IA Support Files

Current folder inspected:

```text
docs/ia-support/
```

| Current file | Current purpose | Keep / Rewrite / Replace / Remove later | Reason |
|---|---|---|---|
| `index.md` | IA Support landing page with a broad overview of the IA workflow, project choice, problem analysis, success criteria, design, development, testing, evaluation, checklists, practice, and activities. | Rewrite | It should become a shorter official A-E landing page. Useful student-friendly examples can be reused, but the current generic workflow should be mapped clearly to official criteria. |
| `ia-overview.md` | General IA overview covering product vs documentation, IA sections, project types, client/user roles, requirements, design, development, testing, evaluation, evidence, timeline, scope, complexity, academic integrity, and common mistakes. | Replace | Much of the content can support `computational-solution-overview.md`, but the final page should be rebuilt around the official computational solution expectation and Criteria A-E. |
| `problem-analysis.md` | Detailed guidance on identifying the client/user, current system, problem evidence, requirements, constraints, scope, data, feasibility, and links to success criteria. | Rewrite | Strong material can be reused for Criterion A, but the page title and structure should become `criterion-a-problem-specification.md` and use the official criterion name throughout. |
| `design-and-success-criteria.md` | Guidance on success criteria, design evidence, UI design, navigation, input/output, data design, algorithms, validation, testing links, and design decisions. | Rewrite | Success criteria content belongs partly in Criterion A, while planning, design, and testing preparation belong mainly in Criterion B. The content should be split and reorganised. |
| `development-and-testing.md` | Guidance on development evidence, code snippets, code explanation, problem solving, validation, error handling, data storage, testing types, test tables, failed tests, and testing coverage. | Rewrite | Development content belongs mainly in Criterion D, while system overview and architecture evidence should be separated into Criterion C. Testing strategy should be linked to the video and evaluation expectations where relevant. |
| `evaluation-and-reflection.md` | Guidance on evaluating against success criteria, client/user feedback, limitations, improvements, final judgement, reflection, and common evaluation mistakes. | Rewrite | Most content can support Criterion E, but it should be rebuilt around the official Evaluation criterion and avoid generic reflection language that is not clearly criterion-linked. |
| `ia-checklist.md` | Final IA checklist covering documentation, evidence, traceability, testing, academic integrity, privacy, final submission checks, practice, and activities. | Replace | Useful checklist ideas can be reused in `submission-checklist.md`, but the new checklist should be organised around official IA deliverables and Criteria A-E. |

Do not remove any existing IA Support files during the planning stage.

## 3. Official Structure to Use

Proposed final structure:

```text
docs/ia-support/
|-- index.md
|-- computational-solution-overview.md
|-- choosing-a-suitable-problem.md
|-- criterion-a-problem-specification.md
|-- criterion-b-planning.md
|-- criterion-c-system-overview.md
|-- criterion-d-development.md
|-- criterion-e-evaluation.md
|-- ethics-and-academic-integrity.md
`-- submission-checklist.md
```

| Page | Role |
|---|---|
| `index.md` | Landing page that explains the official IA structure, the computational solution expectation, the five criteria, and how students should use the IA Support section. |
| `computational-solution-overview.md` | Explains what a computational solution is, what the IA product/report/video need to show, and how the work should demonstrate computational thinking. |
| `choosing-a-suitable-problem.md` | Helps students choose a computer science problem with enough complexity, avoid weak project choices, and connect the problem to realistic users and measurable success criteria. |
| `criterion-a-problem-specification.md` | Student-facing guide to Criterion A: defining the problem, context, stakeholders, current situation, evidence, scope, and measurable success criteria. |
| `criterion-b-planning.md` | Student-facing guide to Criterion B: planning the solution, breaking down work, identifying resources, planning design decisions, and preparing evidence that supports the solution. |
| `criterion-c-system-overview.md` | Student-facing guide to Criterion C: explaining the system structure, components, data flow, interfaces, key algorithms, data model, and how the parts work together. |
| `criterion-d-development.md` | Student-facing guide to Criterion D: showing how the solution was built, explaining important code and design decisions, documenting problem solving, and linking development to criteria and testing. |
| `criterion-e-evaluation.md` | Student-facing guide to Criterion E: evaluating the final solution against success criteria, using evidence, discussing limitations, and making realistic improvements. |
| `ethics-and-academic-integrity.md` | Covers consent, privacy, mock data, ethical purpose, external sources, libraries, citations, AI use, and originality in student-friendly language. |
| `submission-checklist.md` | Final checklist for report, video, appendix/source code, evidence, criteria coverage, citations, academic integrity, and final checks before submission. |

## 4. Mapping Old Pages to New Pages

| Old page | New destination page | What content can be reused | What must be rewritten | Risk level |
|---|---|---|---|---|
| `ia-overview.md` | `computational-solution-overview.md` | Product vs documentation explanation, scope control, complexity guidance, evidence habits, and academic integrity reminders. | The page should be reframed around computational solution, report, video, source code appendix, and Criteria A-E instead of a generic IA overview. | Medium |
| `problem-analysis.md` | `criterion-a-problem-specification.md` | Client/user guidance, current system description, evidence, requirements, scope, feasibility, data analysis, and problem-to-criteria examples. | Rename concepts to Criterion A: Problem specification, remove generic "problem analysis" framing, and make success criteria expectations explicit. | Medium |
| `design-and-success-criteria.md` | `criterion-b-planning.md` and `criterion-a-problem-specification.md` | Good vs weak success criteria, design evidence, UI/data/algorithm planning, validation planning, and success criteria mapping. | Split content carefully: measurable success criteria should support Criterion A; planning/design evidence should support Criterion B. Avoid implying that old "design" is a standalone official criterion. | High |
| `development-and-testing.md` | `criterion-c-system-overview.md` and `criterion-d-development.md` | Development evidence, code explanation, selected snippets, validation, error handling, data storage, test table patterns, and testing coverage. | Separate system overview from development. Make Criterion C about the system structure and Criterion D about implementation evidence. Testing should be connected to product functionality and video strategy. | High |
| `evaluation-and-reflection.md` | `criterion-e-evaluation.md` | Evaluation against success criteria, feedback, limitations, improvements, and final judgement examples. | Rebuild around Criterion E: Evaluation. Reduce generic reflection wording unless it directly supports evaluation evidence. | Medium |
| `ia-checklist.md` | `submission-checklist.md` | Final evidence checklist, traceability checks, privacy checks, source code checks, and academic integrity reminders. | Reorganise checklist around official deliverables: report, video, appendix/source code, Criteria A-E, citations, and originality. | Low |
| `index.md` | New IA Support landing page | Topic index, IA big picture, project suitability examples, evidence chain ideas, and self-check questions. | Replace the long lesson-style page with a concise official A-E overview and navigation hub. Remove folder maintenance notes and generic workflow language. | Medium |

## 5. Must-cover Official Points

- [ ] IA is a computational solution.
- [ ] Students choose a topic within computer science.
- [ ] Students specify a problem of their own choosing.
- [ ] The solution should demonstrate computational thinking.
- [ ] The documentation should cover Criteria A-E.
- [ ] Criterion A is Problem specification.
- [ ] Criterion B is Planning.
- [ ] Criterion C is System overview.
- [ ] Criterion D is Development.
- [ ] Criterion E is Evaluation.
- [ ] The report is up to 2000 words.
- [ ] The video is up to 5 minutes.
- [ ] The video should show product functionality and examples of testing strategy.
- [ ] Full source code should be included in an appendix.
- [ ] Success criteria should be measurable, clear, achievable, and testable.
- [ ] Success criteria should be linked to the identified problem and essential software functionality.
- [ ] Success criteria should not be vague or subjective.
- [ ] Project choice should have sufficient complexity.
- [ ] Weak project choices include simple calculators, template websites, unfinished products, overly complex games, and systems limited to basic add/search/edit/delete only in RAM.
- [ ] Students should acknowledge external sources, libraries, and AI use where applicable.
- [ ] The submitted work must be the student's own.

## 6. Student-facing Style Rules

- Use student-friendly explanations.
- Keep official criteria names visible.
- Use original examples instead of copying official text.
- Use clear tables and checklists.
- Avoid teacher notes.
- Avoid classroom routine sections.
- Avoid Next Step blocks.
- Avoid website maintenance notes.
- Avoid over-promising exact marks unless clearly linked to criteria.
- Avoid copying official IB wording directly.

## 7. Recommended Implementation Order

1. Rewrite IA Support `index.md` as an official A-E overview.
2. Create `computational-solution-overview.md`.
3. Create `choosing-a-suitable-problem.md`.
4. Create `criterion-a-problem-specification.md`.
5. Create `criterion-b-planning.md`.
6. Create `criterion-c-system-overview.md`.
7. Create `criterion-d-development.md`.
8. Create `criterion-e-evaluation.md`.
9. Create `ethics-and-academic-integrity.md`.
10. Create `submission-checklist.md`.
11. Update `docs/.vitepress/config.mts` sidebar.
12. Remove or redirect old IA pages only after all new pages are working.

## 8. Link Safety Plan

- Do not delete old IA files until new pages are created and the sidebar is updated.
- Keep the current IA sidebar links working while the new pages are drafted.
- After the new structure works, decide whether old pages should be removed or rewritten as short redirect-style pages.
- If old pages are removed later, delete only one explicit file path at a time and only after confirming no internal links point to it.
- Always run build and link check after config changes.
- Expect `docs/.vitepress/config.mts` to need a sidebar update because it currently lists the old IA Support page sequence.

## 9. Commands to Run After Each Implementation Stage

```powershell
npm run docs:build
.\tools\check-vitepress-links.ps1
git status
```

## 10. Commit Plan

Suggested commit after this planning document:

```powershell
git add ia-support-official-refactor-plan.md
git commit -m "Add IA support official refactor plan"
git push
```

Later, use separate commits for actual IA page changes.
