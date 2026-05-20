# Bias, Ethics and Privacy

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define bias in machine learning
- explain how biased data can cause unfair outcomes
- identify ethical risks of ML systems
- explain privacy concerns when collecting data
- discuss transparency, accountability, and explainability
- apply ethical reasoning to ML scenarios

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Evaluating social, ethical, and privacy risks of ML systems |
| Connected units | B1 Computational Thinking, B2 Programming, A1 Computer Fundamentals, A3 Databases |
| Exam relevance | Definitions, scenario explanation, data interpretation, model evaluation, ethics and limitations |

::: tip Learning Focus
Machine learning questions are usually scenario-based. Students should explain the **data**, the **model**, the **training process**, the **prediction**, and the **risk or limitation**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Bias | 偏见 | Systematic unfairness or distortion in data or model output |
| Fairness | 公平性 | Treating different groups appropriately and without unjust disadvantage |
| Privacy | 隐私 | Proper collection, storage, and use of personal data |
| Transparency | 透明度 | Making system use and decisions understandable |
| Explainability | 可解释性 | Ability to explain how or why a model produced an output |
| Accountability | 问责 | Responsibility for system outcomes and decisions |
| Consent | 同意 | Permission for data to be collected or used |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

机器学习系统可能影响真实的人，因此必须考虑 ethics 和 privacy。**Bias（偏见）** 可能来自 training data 不平衡、历史数据本身包含歧视、features 选择不合理、数据收集范围有限。隐私问题包括是否收集了过多个人数据、用户是否同意数据使用、数据是否安全存储、数据是否被用于原本没有说明的目的。

</template>

<template #en>

### English Explanation

Machine learning systems can affect real people, so ethics and privacy must be considered. **Bias** may come from imbalanced training data, historical data that contains discrimination, inappropriate feature selection, or limited data collection. Privacy concerns include whether too much personal data is collected, whether users consented, whether data is stored securely, and whether data is used for purposes not clearly explained.

</template>
</LangBlock>

---

## 5. Real-life Example

| Risk | Explanation |
|---|---|
| Bias | training data may reflect past unfair lending decisions |
| Privacy | financial and personal data is sensitive |
| Explainability | applicants may want to know why they were rejected |
| Accountability | bank must decide who is responsible for wrong decisions |
| Mitigation | audit model, use diverse data, check fairness metrics, human review |

---

## 6. Core Pattern

```text
Identify affected people → identify data used → identify possible harm → explain cause → suggest mitigation → consider accountability
```

---

## 7. Technical Example

| Risk | Possible mitigation |
|---|---|
| Biased training data | use representative data and fairness testing |
| Privacy invasion | collect minimum data and get consent |
| Unclear decision | improve explainability and provide appeals |
| Security breach | encrypt data and restrict access |
| Over-reliance | keep human oversight |

---

## 8. Explanation of the Example

Ethical evaluation should be balanced. Machine learning can improve efficiency and consistency, but it can also amplify unfair patterns or make decisions that are difficult to challenge.

---

## 9. Step-by-step Process / Trace

| Step | Ethical review question |
|---|---|
| 1 | What data is collected? |
| 2 | Who is affected by the model? |
| 3 | Could the data be biased? |
| 4 | Could the decision harm someone? |
| 5 | Can the decision be explained? |
| 6 | Who is responsible if the model is wrong? |
| 7 | What safeguards are in place? |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Only saying bias is wrong | Need cause and consequence | Explain where bias comes from and who is affected |
| Ignoring privacy | ML often uses personal data | Mention consent, minimization, security |
| Assuming model decisions are neutral | Models reflect training data and design choices | Discuss data and features |
| No mitigation | Exam answers need solutions | Suggest audit, diverse data, human review |
| Confusing accuracy and fairness | Accurate overall can still be unfair to groups | Discuss subgroup performance |

---

## 11. Guided Practice

### Practice 1

Give one cause of bias in an ML system.

<details><summary>Suggested Answer</summary>

Training data may be unrepresentative or may reflect historical unfair decisions.

</details>

### Practice 2

Why is explainability important in loan approval?

<details><summary>Suggested Answer</summary>

Applicants may need to understand why they were rejected and have a way to challenge or correct the decision.

</details>

---

## 12. Independent Practice

1. Explain bias in a hiring model.
2. Explain privacy risks in a health prediction model.
3. Suggest three safeguards for an ML system used by a school.
4. Explain why human oversight may be needed.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

A company uses an ML model to shortlist job applicants. Explain one ethical concern and one possible mitigation.

<details><summary>Mark Scheme Style Answer</summary>

One ethical concern is bias if the training data reflects past hiring decisions that favoured certain groups. This may unfairly disadvantage applicants from underrepresented groups. A mitigation is to audit the model's decisions, use more representative training data, test performance across groups, and include human review.

</details>

### Question 2 [4 marks]

Explain two privacy concerns when using ML with student data.

<details><summary>Mark Scheme Style Answer</summary>

Student data may include sensitive personal information, so collecting more data than needed could violate privacy. Students and parents may not have given informed consent for the data to be used for prediction. The data must be stored securely and access should be restricted to authorized users.

</details>

---

## 14. Classroom Activity

### Activity: Ethics Board

Students act as an ethics board reviewing an ML system for school attendance, hiring, or loan approval. They identify risks, affected users, safeguards, and accountability.

---

## 15. Homework

Write an ethical review of one ML application. Include bias, privacy, explainability, accountability, and at least three mitigation strategies.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Bias | Systematic unfairness |
| Privacy | Proper data use and protection |
| Explainability | Ability to explain decision |
| Accountability | Responsibility for outcomes |
| Exam phrase | A model may be biased if the training data is unrepresentative or reflects historical unfairness. |
