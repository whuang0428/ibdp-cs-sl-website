# IA Evidence Chain: Worked Original Example

## Page map

- [Start here](#start-here-follow-one-feature-across-a-e)
- [Original project scenario](#original-project-scenario-pantrytrack)
- [Criterion A evidence](#criterion-a-problem-specification-evidence)
- [Criterion B evidence](#criterion-b-planning-evidence)
- [Criterion C evidence](#criterion-c-system-overview-evidence)
- [Criterion D evidence](#criterion-d-development-evidence)
- [Criterion E evidence](#criterion-e-evaluation-evidence)
- [Traceability matrix](#complete-a-e-traceability-matrix)
- [Video storyboard](#video-evidence-storyboard)
- [Sources and AI acknowledgement](#sources-libraries-and-ai-acknowledgement)

## Purpose

This page shows how evidence can remain connected from Criterion A to Criterion E. It uses one original project so you can see how a problem becomes success criteria, planned work, system design, development evidence, testing evidence, video evidence, and evaluation.

::: warning Model, not an official exemplar
PantryTrack, its evidence, code, tables, screenshots described in text, and evaluation are entirely original website material. This is not an official IB exemplar or markscheme and it is not a report template to copy. Your evidence must describe your own problem, decisions, implementation, tests, and results. Confirm current IA instructions and permitted AI/tool use with your school.
:::

## Start here: follow one feature across A-E

Strong IA evidence forms a chain:

```text
real problem
-> measurable success criterion
-> planned task and resource
-> system component and algorithm
-> implementation evidence
-> actual test and video evidence
-> evaluation judgement
```

If one link is missing, later claims become difficult to prove. For example, an evaluation cannot convincingly say a feature succeeded when there was no measurable target or actual test result.

Use this page together with the five criterion guides:

- [Criterion A: Problem Specification](./criterion-a-problem-specification)
- [Criterion B: Planning](./criterion-b-planning)
- [Criterion C: System Overview](./criterion-c-system-overview)
- [Criterion D: Development](./criterion-d-development)
- [Criterion E: Evaluation](./criterion-e-evaluation)

## Original project scenario: PantryTrack

A neighbourhood food pantry receives packaged food in batches with different expiry dates. Volunteers currently record stock on paper and in separate spreadsheets. Quantities are sometimes inconsistent, and newer stock may be distributed before older stock. This increases waste and makes it difficult for the coordinator to know whether a collection request can be fulfilled.

The proposed **PantryTrack** application will:

- store item batches with quantities and expiry dates
- record household collection requests using reference IDs rather than unnecessary personal details
- allocate stock from the earliest suitable expiry date first
- prevent a request from making stock negative
- record completed collections
- show low-stock and soon-to-expire reports
- save data so it remains available after restart

### Scope boundary

PantryTrack will not decide whether a household is eligible for support, store medical information, process payments, or predict future need. Those features are outside the stated problem and would add ethical and technical risk without being necessary for the first working solution.

## Criterion A: Problem Specification evidence

### Weak problem statement

```text
The pantry needs a better system because spreadsheets are bad. I will make an easy-to-use stock app.
```

Why it is weak:

- the current problem is vague
- the affected user and workflow are unclear
- `better` and `easy-to-use` are not measurable
- there is no computational reason for the proposed features

### Stronger problem-specification snippet

```text
The pantry coordinator currently combines paper delivery notes with separate stock spreadsheets. Volunteers cannot reliably see which batch expires first, and stock counts may be changed in one record but not another. This can cause avoidable waste and requests being accepted when insufficient stock is available.

A computational solution is suitable because it can store related batch and request records, validate quantities, apply the same earliest-expiry allocation algorithm to every request, and update stock consistently when a collection is confirmed.
```

This snippet names the current system, users, observable problems, and computational processing needed.

### Measurable success criteria

| ID | Success criterion | Planned evidence |
|---|---|---|
| SC1 | An authorized volunteer can add a batch with item name, positive whole-number quantity, received date, and expiry date; invalid or missing values are rejected with a specific message. | validation tests T1-T4 and video segment V1 |
| SC2 | The system lists usable batches for an item in ascending expiry-date order and identifies batches expiring within the next seven days. | algorithm tests T5-T7, screenshot S2, video V2 |
| SC3 | A collection request is approved only when total usable stock is sufficient; successful allocation reduces stock without any batch becoming negative. | functional/structural tests T8-T12 and video V3 |
| SC4 | If a request cannot be fully supplied, no batch quantity is changed and the user receives an insufficient-stock message. | failed-then-fixed test T10, database evidence D3, video V3 |
| SC5 | Confirmed collections remain stored after the application closes and reopens, including request reference, allocated batches, quantities, and collection status. | persistence tests T13-T14 and screenshot S4 |
| SC6 | The coordinator can generate low-stock and soon-to-expire reports using a chosen threshold/date and export the visible results to a file. | report tests T15-T17 and video V4 |

### Why these criteria are testable

Each criterion names:

- the user action or system behaviour
- the data or condition involved
- the expected observable result
- evidence that can later prove the result

Avoid adding a criterion such as `The interface will look professional`. If appearance matters to the user, define observable evidence such as successful completion of named tasks by representative users and record how feedback will be collected.

## Criterion B: Planning evidence

Criterion B should show a realistic development route, not a diary written after the product is finished.

### Weak plan entry

| Week | Task |
|---|---|
| 2 | Work on database |

It does not identify the output, dependency, success criterion, resource, risk, or evidence.

### Stronger plan entries

| Stage | Task and output | Depends on | SC link | Resource | Time | Risk and response |
|---|---|---|---|---|---:|---|
| Data design | Define `ItemBatch`, `Request`, `Allocation`, and `Collection` fields, keys, and relationships; produce ERD/data dictionary | confirmed scope | SC1, SC3, SC5 | database documentation | 2 h | duplicate batch IDs -> use generated primary key and uniqueness test |
| Algorithm prototype | Implement and dry-run earliest-expiry allocation using in-memory sample batches | data model | SC2-SC4 | pseudocode and trace table | 3 h | partial deductions on failure -> calculate total usable stock before applying changes |
| Persistence | Save request, allocation, and batch updates as one transaction | database and algorithm | SC3-SC5 | transaction documentation | 3 h | incomplete update -> rollback and integration test |
| Reporting | Add low-stock and expiry filters plus export | stable stock queries | SC6 | file/export documentation | 2 h | export differs from display -> compare row count and values in test |
| Evidence | Run planned tests, capture actual results, record video timestamps, and map evidence to criteria | working release candidate | SC1-SC6 | test plan and storyboard | 3 h | sensitive data in evidence -> use synthetic household references |

### Planning change record

A plan can change when evidence supports the change. Record the decision rather than rewriting history.

| Planned approach | Evidence causing change | Revised approach | Effect on plan |
|---|---|---|---|
| Deduct quantities while searching batches | T10 showed that an unsuccessful request left earlier batches reduced | First calculate total usable stock, then prepare allocation changes, then commit them together | Added algorithm refactor and regression test before report work |

## Criterion C: System Overview evidence

### System component model

```text
Volunteer interface
        |
        v
Validation and request service
        |--------------------------|
        v                          v
Earliest-expiry             Reporting service
allocation service                 |
        |                           |
        |---------------------------|
                    v
          Database transaction layer
                    |
                    v
Batch, request, allocation, and collection data
```

### Component responsibility table

| Component | Responsibility | Input | Output | SC link |
|---|---|---|---|---|
| Batch form | collect and validate batch data | item, quantity, dates | valid batch or error message | SC1 |
| Allocation service | check total stock and select earliest-expiry batches | item and requested quantity | allocation list or failure | SC2-SC4 |
| Transaction layer | save related changes together | request, allocations, batch updates | committed records or rollback | SC3-SC5 |
| Report service | filter and export stock information | threshold and date | visible/exported report rows | SC6 |

### Data relationship overview

```text
ITEM          1 -------- many ITEM_BATCH
REQUEST       1 -------- many REQUEST_LINE
REQUEST_LINE  1 -------- many ALLOCATION
ITEM_BATCH    1 -------- many ALLOCATION
REQUEST       1 -------- zero or one COLLECTION
```

The diagram should be supported by a data dictionary in the student's own project. For example, `ITEM_BATCH.quantityAvailable` should be a non-negative integer, while `REQUEST.requestRef` should uniquely identify a request without exposing unnecessary household information.

### Key algorithm design

```text
FUNCTION planAllocation(batches, itemId, requestedQuantity, today)
    usable = batches matching itemId
             with quantityAvailable > 0
             and expiryDate >= today

    SORT usable BY expiryDate ASCENDING

    IF SUM of quantityAvailable in usable < requestedQuantity THEN
        RETURN FAILURE with no changes
    ENDIF

    remaining = requestedQuantity
    allocationPlan = empty list

    FOR EACH batch IN usable
        take = MIN(batch.quantityAvailable, remaining)
        APPEND (batch.batchId, take) TO allocationPlan
        remaining = remaining - take

        IF remaining = 0 THEN
            RETURN allocationPlan
        ENDIF
    ENDFOR
ENDFUNCTION
```

The pre-check supports SC4 because the algorithm returns failure before any stored quantity is changed.

### Planned testing strategy

**Functional testing** checks whether the finished workflow meets success criteria, such as saving a valid batch or exporting the selected report. **Structural testing** follows important logic paths and boundaries inside the solution, such as exact stock, insufficient stock, multiple-batch allocation, and the seven-day expiry boundary.

| Test group | What it checks | Example data | Criteria |
|---|---|---|---|
| Validation | field rules and error messages | quantity `1`, `0`, `-1`, `2.5`, blank | SC1 |
| Ordering | expiry sorting and seven-day boundary | dates today, +7 days, +8 days | SC2 |
| Allocation structure | single/multiple batches, exact stock, insufficient stock | request below/equal/above total | SC3, SC4 |
| Persistence | restart and reload | completed request with two allocations | SC5 |
| Reporting/export | filters and exported values | threshold at, below, and above stock | SC6 |

## Criterion D: Development evidence

Criterion D should show selected implementation evidence and explain why it matters. A large unexplained screenshot of code is weak evidence.

### Weak development snippet

```text
I coded the allocation feature. It was difficult but it works now.
```

It does not show the technique, decision, problem, test, or result.

### Selected code excerpt

This Python-style excerpt is original and demonstrates the core algorithm. A student should use code from their own product and explain it in the context of their own design.

```python
def plan_allocation(batches, item_id, requested_quantity, today):
    usable = [
        batch for batch in batches
        if batch.item_id == item_id
        and batch.quantity_available > 0
        and batch.expiry_date >= today
    ]
    usable.sort(key=lambda batch: batch.expiry_date)

    if sum(batch.quantity_available for batch in usable) < requested_quantity:
        return None

    remaining = requested_quantity
    plan = []

    for batch in usable:
        take = min(batch.quantity_available, remaining)
        plan.append((batch.batch_id, take))
        remaining -= take
        if remaining == 0:
            break

    return plan
```

### Explanation of the excerpt

- The list comprehension performs selection: it keeps only matching, unexpired batches with stock.
- Sorting by `expiry_date` applies the earliest-expiry-first requirement from SC2.
- The `sum` pre-check prevents a failed request from producing a partial allocation, supporting SC4.
- `min` allows one request to use all of a small batch and only the required amount from the next batch.
- The function returns a plan rather than directly changing stored records. The transaction layer can validate and commit the plan with the request record as one operation.

### Development problem and justified fix

Initial logic reduced each batch while searching. During T10, a request for 12 units found only 9 units. The function returned failure, but the first two batches had already been reduced. This contradicted SC4.

The algorithm was changed to:

1. filter and sort usable batches
2. check total usable stock
3. build an allocation plan without changing stored data
4. apply the plan inside the same database transaction as the request

This fix addresses the cause rather than manually restoring quantities after an error.

### Actual testing evidence

| ID | Type | Input / precondition | Expected | Actual result | Status | Evidence |
|---|---|---|---|---|---|---|
| T1 | normal validation | quantity `24`; valid dates | batch saved | batch `B104` stored with quantity 24 | Pass | screenshot S1 and record query D1 |
| T3 | invalid validation | quantity `-1` | rejected; specific message | `Quantity must be a positive whole number` shown; no record added | Pass | screenshot S1b |
| T6 | boundary | expiry exactly seven days after chosen date | included in expiry report | batch appeared as final row | Pass | report capture R1 |
| T8 | normal allocation | batches 5 and 8; request 7 | allocate 5 from earlier batch and 2 from later batch | allocation rows `(B201,5)` and `(B202,2)`; remaining quantities 0 and 6 | Pass | trace A1 and database query D2 |
| T10a | insufficient stock before fix | batches total 9; request 12 | failure and no quantity change | failure shown, but quantities changed from 4/5 to 0/0 | **Fail** | before-fix query D3a |
| T10b | regression after fix | same data as T10a | failure and no quantity change | insufficient-stock message; quantities remained 4/5 | Pass | after-fix query D3b and video V3 |
| T14 | persistence | close/reopen after completed request | request and allocations reload | request `R031` and both allocation rows displayed after restart | Pass | screenshot S4 |
| T17 | report export | low-stock threshold 5 | exported rows match visible report | 4 visible rows and 4 matching CSV rows | Pass | export file E1 |

The failed result is valuable evidence because it shows how testing led to a specific code and transaction change.

## Criterion E: Evaluation evidence

Evaluation should use the actual evidence above, not repeat the intended feature.

### Weak evaluation statement

```text
SC4 was successful because the program gives an error when there is not enough stock.
```

It ignores the failed test, stored data, and limitation.

### Stronger success-criterion evaluation

| SC | Evidence | Judgement | Evidence-based explanation |
|---|---|---|---|
| SC1 | T1, T3, S1, D1 | Fully met | Valid batch data was stored and the tested negative quantity was rejected without adding a record. More invalid date combinations should still be tested before deployment. |
| SC2 | T5-T7, S2, V2 | Fully met | Results were ordered by expiry date and the tested seven-day boundary was included correctly. |
| SC3 | T8-T9, A1, D2, V3 | Fully met | Normal and exact-stock requests allocated across batches without negative quantities. |
| SC4 | T10a, T10b, D3a, D3b, V3 | Fully met after correction | T10a exposed partial deductions. After the pre-check and transaction change, T10b returned failure while both quantities remained unchanged. |
| SC5 | T13-T14, S4 | Fully met for tested cases | Completed request and allocation data reloaded after restart. Recovery from a database-write interruption was not simulated. |
| SC6 | T15-T17, R1, E1, V4 | Partly met | Low-stock and expiry filters worked and the tested CSV matched the screen, but the export does not yet include the selected filter values in its heading. |

### Overall judgement snippet

```text
PantryTrack substantially addresses the coordinator's stock-consistency problem because SC1-SC5 were met in the recorded tests and the allocation regression test showed that insufficient requests no longer change batch quantities. SC6 was only partly met because exported reports do not state the applied filters. The most important remaining improvement is to include filter metadata and rerun export tests, while a later reliability test should simulate interruption during a database transaction.
```

This conclusion distinguishes proven behaviour, untested behaviour, and a realistic next improvement.

## Complete A-E traceability matrix

| SC | Criterion A target | Criterion B task | Criterion C design | Criterion D evidence | Video | Criterion E judgement |
|---|---|---|---|---|---|---|
| SC1 | validated batch entry | build batch form and validation | batch form + validation service | T1-T4, S1, D1 | V1 | fully met in tested cases |
| SC2 | expiry ordering/reporting | prototype ordering and date boundary | allocation/report sorting rules | T5-T7, S2, R1 | V2 | fully met |
| SC3 | safe successful allocation | implement allocation + transaction | allocation service + transaction layer | T8-T9, A1, D2 | V3 | fully met |
| SC4 | no change on insufficient stock | refactor after T10a | pre-check + atomic transaction | T10a/T10b, D3a/D3b | V3 | fully met after correction |
| SC5 | persistent collection data | implement/retest reload | database relationships | T13-T14, S4 | V3 | met; interruption not tested |
| SC6 | filtered and exported reports | develop report/export task | report service | T15-T17, R1, E1 | V4 | partly met |

The identifiers should be consistent across the student's own plan, evidence folder, captions, and evaluation. They do not need to use these exact labels.

## Video evidence storyboard

This storyboard follows the current 5-minute maximum guidance recorded by the site. Confirm the current limit and required content with your school before recording.

| Time | Demonstration | Evidence purpose |
|---:|---|---|
| 0:00-0:20 | State the problem and show the main dashboard using synthetic data | establishes context without exposing real household data |
| 0:20-1:05 | Add a valid batch, then reject quantity `-1` | SC1, T1, T3, V1 |
| 1:05-1:40 | Show expiry ordering and the seven-day filter | SC2, T6, V2 |
| 1:40-2:45 | Approve a request across two batches and inspect changed quantities | SC3, T8, V3 |
| 2:45-3:30 | Attempt an insufficient request and show that quantities remain unchanged | SC4, T10b, V3 |
| 3:30-4:05 | Reopen the application and display the stored collection | SC5, T14 |
| 4:05-4:40 | Generate and export the low-stock report | SC6, T17, V4 |
| 4:40-5:00 | State the report-export limitation and identify the evidence location | honest link to Criterion E |

### Video evidence rules

- demonstrate behaviour and testing, not only screen appearance
- use data prepared specifically for evidence
- keep IDs and timestamps consistent with written test records
- show expected and actual behaviour where it can be understood visually
- do not reveal personal data, credentials, private file paths, or unrelated browser content
- do not use editing to hide a failed result that is relevant to the evaluation

## Sources, libraries, and AI acknowledgement

Maintain a working source log while developing. Follow the citation format and AI rules required by your school.

### Example working log

| ID | Source/tool type | What was used | Where it affected the project | Student action / acknowledgement |
|---|---|---|---|---|
| SRC1 | official language/database documentation | transaction and rollback syntax | persistence service | cited in technical references; implementation adapted to project schema |
| LIB1 | external export library | CSV-writing API | report export | library name/version recorded; reason for use and relevant call explained |
| DATA1 | synthetic dataset created by student | batches, requests, dates | tests and video | recorded as synthetic; no real household records used |
| AI1 | permitted AI assistance, if allowed | suggestions for boundary test cases | testing plan | prompts/outputs handled according to school guidance; student checked, selected, and rewrote tests |

### Weak acknowledgement

```text
I used websites and AI to help with the code.
```

### Stronger acknowledgement pattern

```text
Tool/source: [name and version or full reference]
Purpose: [specific question, library feature, or task]
Where used: [component, code section, design decision, or test IDs]
Student contribution: [how the output was checked, adapted, implemented, and explained]
Evidence retained: [citation, source log, prompt record, or school-required acknowledgement]
```

Do not claim that a tool was permitted merely because it is listed here. The student's school guidance controls whether and how AI or external assistance may be used.

## Strong vs weak evidence summary

| Criterion | Weak evidence | Stronger evidence |
|---|---|---|
| A | vague need and subjective goals | observed problem, suitable computational reason, measurable criteria |
| B | broad weekly labels | dependencies, outputs, SC links, resources, time, risks, and recorded changes |
| C | one unexplained diagram | connected components, data, algorithms, interfaces, and planned tests |
| D | large code screenshots or a diary | selected code, technical explanation, actual tests, problem and justified fix |
| E | personal opinion or feature list | criterion-by-criterion judgement using actual evidence and limitations |

## Student adaptation checklist

- [ ] My problem and users are real to my project, not copied from PantryTrack.
- [ ] My success criteria describe observable behaviour and planned evidence.
- [ ] My plan links tasks, dependencies, resources, risks, and criteria.
- [ ] My system overview matches what I actually intend to build.
- [ ] My development evidence uses selected code from my own solution.
- [ ] My testing table records actual results, including relevant failed tests.
- [ ] My video plan uses safe data and demonstrates testing as well as functionality.
- [ ] My evaluation refers to consistent evidence IDs and admits untested limitations.
- [ ] My sources, libraries, data, and any permitted AI use are acknowledged according to school guidance.

Continue with [Ethics and Academic Integrity](./ethics-and-academic-integrity) and the [Submission Checklist](./submission-checklist) before finalizing evidence.
