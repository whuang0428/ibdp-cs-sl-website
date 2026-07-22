# Paper 1 Case Study Answering Skills

## Page map

- [Start here](#start-here-turn-case-study-details-into-evidence)
- [Four-pass reading workflow](#four-pass-reading-workflow)
- [Evidence grid](#case-study-evidence-grid)
- [Worked original scenario](#worked-original-scenario-greenloop-bike-share)
- [Practice questions](#original-practice-set)
- [Self-marking checklist](#case-study-self-marking-checklist)

## Learning goals

By the end of this page, you should be able to:

- identify organisations, systems, data, stakeholders, problems, and constraints in a case study
- connect case-study evidence to A1, A2, A3, and A4 knowledge
- use precise case-study details instead of writing generic textbook answers
- match answer depth to the command term and mark value
- plan a balanced extended response using benefits, limitations, evidence, and judgement
- review an answer using a repeatable self-marking checklist

::: info Official boundary
The public IB Computer Science subject brief for first assessment 2027 states that Paper 1 includes questions related to the externally provided case study. This page teaches a general answering method using an entirely original practice scenario. Its scenario, questions, instructional mark allocations, and suggested answers are not official IB material. Use the case study and session instructions supplied by your school for the real examination session.
:::

## Start here: turn case-study details into evidence

Knowing the topic is not enough. A case-study answer must connect accurate computer science to the organisation, technology, people, data, problem, or constraint in the given case.

Use this pattern:

```text
technical point -> how it works -> case-study evidence -> relevant effect
```

Generic answer:

```text
Encryption improves security.
```

Case-linked answer:

```text
Encryption makes intercepted account data unreadable without the decryption key. This protects the personal and payment data sent between the bike-share app and GreenLoop's server when a rider unlocks a bicycle.
```

The second answer names the mechanism, uses evidence from the scenario, and explains the effect.

## Four-pass reading workflow

Do not highlight every sentence. Read with a different purpose on each pass.

| Pass | Find | Questions to ask | Suggested annotation |
|---:|---|---|---|
| 1 | Organisation and purpose | What service is provided? What outcome matters? | Box the organisation and its main goal |
| 2 | Systems and data | What hardware, network, database, software, or ML system is used? | Underline technical nouns |
| 3 | Problems and constraints | What can fail? What is slow, unsafe, inaccurate, expensive, or unfair? | Mark risks with `R` and constraints with `C` |
| 4 | Stakeholders and impacts | Who benefits or may be harmed? What trade-offs exist? | Circle people/groups and add `+` or `-` |

After the four passes, write a one-sentence summary:

```text
The organisation uses [systems/data] to achieve [purpose], but must manage [main technical or stakeholder problem].
```

## Case-study evidence grid

Build a compact evidence bank before answering longer questions.

| Category | Evidence to collect | Possible syllabus connection |
|---|---|---|
| Organisation | service, scale, locations, priorities | feasibility, cost, reliability |
| Hardware | sensors, processors, storage, input/output devices | A1 computer fundamentals |
| Network | connection type, devices, protocols, availability, threats | A2 networks |
| Database | entities, fields, keys, relationships, transactions, privacy | A3 databases |
| Machine learning | data, features, labels, output, evaluation, bias | A4 machine learning |
| Stakeholders | users, staff, managers, third parties, public | access, usability, privacy, employment, fairness |
| Constraints | budget, time, old equipment, regulation, connectivity | justified trade-offs |
| Risks | failure, attack, inaccurate data, biased prediction | controls, monitoring, recovery, human review |

Do not force every topic into every answer. Choose only evidence that directly supports the question.

## Command-term answer patterns

| Command term | What the response needs | Useful pattern |
|---|---|---|
| State / identify | One precise fact or term | `The device is ...` |
| Outline | Main feature plus a brief relevant detail | `It ..., which allows ...` |
| Describe | Accurate features or ordered steps | `First ..., then ..., finally ...` |
| Explain | Cause, mechanism, and effect | `Because ..., this means ..., therefore ...` |
| Compare | Matched similarities or differences | `Both ..., whereas ...` |
| Discuss | More than one supported perspective | `One benefit ...; however ...` |
| Evaluate | Criteria, evidence, trade-offs, and justified judgement | `Given ..., the stronger option is ... because ...` |

For a multi-mark answer, avoid repeating the same point in different words. Develop separate relevant points.

## Mark-value planning guide

This is a practical website strategy, not an official rule that every question awards marks in the same way.

| Marks available | Practical response target |
|---:|---|
| 1-2 | one or two precise points; no long introduction |
| 3-4 | developed points with a mechanism or scenario effect |
| 5-6 | several linked points, usually including more than one consideration |
| Longer response | brief plan, balanced analysis, specific evidence, and a justified conclusion |

## Worked original scenario: GreenLoop Bike Share

The following scenario is original and is not taken from an IB case study, examination paper, or markscheme.

> GreenLoop operates 240 shared bicycles at 18 docking stations. A rider uses a mobile app to find a bicycle and scan its QR code. Each dock contains a lock actuator, a bicycle-presence sensor, and a small controller. The docking station sends availability updates to a cloud service through a mobile network connection.
>
> A relational database stores riders, bicycles, docking stations, journeys, and maintenance reports. A journey should start only after the rider account and bicycle have both been validated. Staff currently move bicycles between stations using a fixed timetable. GreenLoop wants to train a machine-learning model to predict demand at each station from time, day, weather, nearby events, and past journeys.
>
> Some stations lose their network connection. GreenLoop is considering a short offline mode that stores unlock events locally and synchronises them later. Riders are concerned about location privacy, while maintenance staff are concerned that incorrect demand predictions could leave unsafe bicycles in service for longer.

### First-pass summary

```text
GreenLoop uses connected docking hardware, a cloud database, and planned demand prediction to provide bicycle sharing, but it must manage unreliable connections, transaction integrity, privacy, and inaccurate predictions.
```

### Evidence grid for GreenLoop

| Area | Scenario evidence | Relevant technical idea |
|---|---|---|
| A1 | presence sensor, controller, lock actuator | input-process-output; control system |
| A2 | mobile network; connection loss; later synchronisation | availability, failover/offline operation, security |
| A3 | riders, bicycles, stations, journeys, maintenance reports | keys, relationships, transaction consistency, privacy |
| A4 | time, weather, events, past journeys -> demand | features, training data, regression, evaluation |
| Stakeholders | riders, maintenance staff, managers | privacy, safety, usability, cost |
| Constraint | 18 stations with occasional disconnection | reliable operation and synchronisation |

## Worked short response

**Question:** Explain how the sensor, controller, and actuator are used when a rider returns a bicycle. **[4 marks — instructional allocation]**

Weak response:

```text
The sensor checks the bike and the actuator locks it.
```

Improved response:

```text
The presence sensor detects that a bicycle has entered the dock and sends input data to the local controller. The controller checks the return state and sends an output signal to the lock actuator. The actuator physically locks the bicycle, after which the system can record the bicycle as available at that station.
```

Why it is stronger:

- the sequence is correct
- each component has a distinct role
- the response uses GreenLoop evidence
- the final effect connects the hardware to the service

## Worked extended-response plan

**Question:** Evaluate whether GreenLoop should use automatic demand predictions to decide where staff move bicycles. **[12 marks — instructional allocation]**

### 1. Define decision criteria

Use criteria that fit the case:

- prediction usefulness
- rider access to bicycles
- operating cost
- staff workload
- safety and maintenance priority
- privacy and fairness

### 2. Build supported benefits

| Point | Case-study development |
|---|---|
| Better allocation | Time, weather, events, and past journeys may reveal demand patterns, helping staff move bicycles before a station becomes empty or full. |
| More efficient work | Staff may make fewer unnecessary trips than with a fixed timetable, reducing time and transport cost. |
| Adaptation | Regular monitoring and retraining could help the model respond when journey patterns change. |

### 3. Build supported limitations

| Point | Case-study development |
|---|---|
| Poor or changing data | Unrecorded offline journeys or unusual events may make predictions inaccurate. |
| Wrong objective | Optimising demand alone could cause staff to delay maintenance work, creating a safety risk. |
| Privacy | Detailed rider location histories may reveal sensitive movement patterns. |
| Over-reliance | Staff may know about road closures or unsafe bicycles that are not represented in the model data. |

### 4. Add safeguards

- use aggregated or minimized location data where possible
- test performance across stations and time periods
- show confidence or uncertainty rather than presenting every output as certain
- keep maintenance and safety rules separate from demand optimisation
- require staff review before major redistribution decisions
- monitor false or poor predictions and retrain when patterns change

### 5. Reach a justified judgement

```text
GreenLoop should use the model as decision support rather than as an automatic controller. It can improve bicycle availability when evaluated on representative station data, but staff should retain authority because safety reports, network gaps, and unusual local events may not be captured by the prediction.
```

The judgement is conditional and uses the scenario's main trade-off.

## Original practice set

The allocations below are for self-practice. They are not reproduced official marks or markscheme wording.

### Question 1: network availability

Explain one benefit and one risk of allowing a docking station to store unlock events locally while its network connection is unavailable. **[4 marks]**

<details>
<summary>Suggested answer points</summary>

- Benefit: riders may still unlock or return a bicycle during a temporary connection failure, improving service availability.
- Risk: the cloud database may temporarily contain outdated availability or account data.
- Concurrent local/cloud updates could create a conflict when the station reconnects.
- Locally stored events need protection because they may include account or journey data.
- A synchronization rule or transaction identifier can help prevent duplicate processing.

</details>

### Question 2: relational database design

GreenLoop stores `Rider`, `Bicycle`, and `Journey` tables. Explain why the `Journey` table should contain foreign keys referring to the rider and bicycle. **[4 marks]**

<details>
<summary>Suggested answer points</summary>

- Each journey can be linked to the rider who made it and the bicycle that was used.
- The foreign keys reference existing primary-key values in the parent tables.
- Rider or bicycle details do not need to be repeated in every journey record.
- Referential-integrity rules can reject a journey referring to a rider or bicycle that does not exist.

</details>

### Question 3: model evaluation

GreenLoop predicts the number of bicycles required at each station. Identify whether this is classification or regression, and explain two ways the prediction could be evaluated responsibly. **[5 marks]**

<details>
<summary>Suggested answer points</summary>

- It is regression because the target output is a numerical demand value.
- Compare predictions with actual unseen journey demand using a suitable numerical error measure.
- Evaluate different stations, weekdays, seasons, and event conditions rather than one average result.
- Check whether offline or missing data makes some stations less reliable.
- Use staff review and monitor real-world effects such as empty stations and unnecessary redistribution trips.

</details>

### Question 4: security and privacy

Discuss whether GreenLoop should keep each rider's full journey history indefinitely. **[6 marks]**

<details>
<summary>Suggested answer structure</summary>

Include both purposes and risks:

- history may support billing disputes, maintenance investigation, or demand analysis
- detailed location histories create privacy and breach risks
- indefinite retention is difficult to justify when older identifiable records are no longer needed
- GreenLoop could define a retention period, restrict access, and aggregate or anonymize older data
- the conclusion should depend on a clear purpose and the minimum data needed for that purpose

</details>

## Case-study self-marking checklist

Before accepting an answer, check:

- [ ] I answered the command term.
- [ ] I used the number of marks to judge answer depth.
- [ ] Every technical term is accurate.
- [ ] I used at least one exact case-study detail when relevant.
- [ ] I explained the mechanism or reason, not only the result.
- [ ] Separate points are genuinely different.
- [ ] A longer answer considers benefits, limitations, and stakeholders.
- [ ] My conclusion follows from the evidence and states any important condition.
- [ ] I did not invent facts that the case study does not provide.

## Common mistakes

| Mistake | Better approach |
|---|---|
| Copying a memorized definition without application | Add the organisation, system, data, stakeholder, or constraint from the case |
| Retelling the case study | Select evidence and use it to support a technical point |
| Inventing missing facts | State a reasonable condition explicitly, for example `if the station stores personal identifiers...` |
| Naming a technology as a complete solution | Explain how it works, what risk it reduces, and what limitation remains |
| Giving only benefits in an evaluation | Use decision criteria, limitations, safeguards, and a justified judgement |
| Writing a long introduction | Start answering the command term immediately |

## Recommended practice cycle

```text
read and annotate
-> build evidence grid
-> answer without notes
-> self-mark
-> rewrite the weakest paragraph
-> repeat with a new scenario
```

Return to [Paper 1 Overview](./paper-1-overview), [Command Terms](./command-terms), or [Mark Scheme Skills](./mark-scheme-skills) when the problem is exam technique rather than topic knowledge.
