# ML Applications and Limitations

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- identify common ML applications
- explain why ML is useful in some scenarios
- explain limitations of ML systems
- distinguish suitable and unsuitable uses of ML
- discuss reliability, cost, data quality, and explainability
- write balanced exam-style evaluations

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Applying ML concepts to real scenarios and judging suitability |
| Connected units | B1 Computational Thinking, B2 Programming, A1 Computer Fundamentals, A3 Databases |
| Exam relevance | Definitions, scenario explanation, data interpretation, model evaluation, ethics and limitations |

::: tip Learning Focus
Machine learning questions are usually scenario-based. Students should explain the **data**, the **model**, the **training process**, the **prediction**, and the **risk or limitation**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Application | 应用 | A real-world use of machine learning |
| Recommendation system | 推荐系统 | A system that suggests items based on data patterns |
| Image recognition | 图像识别 | Identifying objects or patterns in images |
| Natural language processing | 自然语言处理 | Processing and analysing human language |
| Anomaly detection | 异常检测 | Finding unusual patterns in data |
| Limitation | 限制 | A weakness or constraint of a system |
| Reliability | 可靠性 | How consistently a system performs correctly |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

机器学习应用很多，例如 spam filtering、product recommendation、image recognition、speech recognition、fraud detection、medical risk prediction、traffic prediction、translation。但 ML 并不适合所有问题。如果规则很简单、数据不足、错误后果严重、解释要求很高，普通 rule-based system 或 human decision 可能更合适。好的考试答案应该 balanced：说明 benefit，也说明 limitation。

</template>

<template #en>

### English Explanation

Machine learning has many applications, such as spam filtering, product recommendation, image recognition, speech recognition, fraud detection, medical risk prediction, traffic prediction, and translation. However, ML is not suitable for every problem. If rules are simple, data is limited, errors are high-risk, or explanations are required, a rule-based system or human decision may be more suitable. Good exam answers should be balanced: explain benefits and limitations.

</template>
</LangBlock>

---

## 5. Real-life Example

| Benefit | Limitation |
|---|---|
| suggests relevant products | may create filter bubbles |
| personalizes shopping experience | needs user data and raises privacy concerns |
| can increase sales | may recommend unfairly based on biased data |
| learns from behaviour | may perform poorly for new users with little data |

---

## 6. Core Pattern

```text
Is the pattern complex? Is enough quality data available? Are errors acceptable? Is explanation needed? Is there bias/privacy risk? → decide if ML is suitable
```

---

## 7. Technical Example

| Application | ML Task Type | Possible Risk |
|---|---|---|
| spam filter | classification | false positive hides important email |
| house price prediction | regression | inaccurate estimate |
| product recommendation | pattern prediction | privacy/filter bubble |
| fraud detection | anomaly/classification | false accusation or missed fraud |

---

## 8. Explanation of the Example

ML is useful when patterns are complex and data is available. It is less suitable when rules are clear and simple, such as checking if age is at least 18.

---

## 9. Step-by-step Process / Trace

| Step | Evaluation question |
|---|---|
| 1 | What problem is being solved? |
| 2 | What data is available? |
| 3 | What output is needed? |
| 4 | How serious are errors? |
| 5 | Can the decision be explained? |
| 6 | Is there privacy or bias risk? |
| 7 | Is ML better than a rule-based approach? |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying ML is always best | Rule-based may be simpler and safer | Judge suitability |
| Ignoring errors | Models can be wrong | Discuss false positives/negatives |
| Ignoring data availability | ML needs data | Mention quantity and quality |
| Only listing applications | Evaluation needs benefits and limitations | Write balanced answer |
| Ignoring explainability | Some scenarios require reasons | Mention explainability and human oversight |

---

## 11. Guided Practice

### Practice 1

Is ML needed to check if a user is over 18?

<details><summary>Suggested Answer</summary>

Probably not. This is a simple rule-based problem: if age >= 18, allow; otherwise reject.

</details>

### Practice 2

Give one limitation of medical ML diagnosis.

<details><summary>Suggested Answer</summary>

The model may make false negatives or false positives, and its decision may be hard to explain. Biased or incomplete training data may also reduce fairness or accuracy.

</details>

---

## 12. Independent Practice

1. Evaluate ML for spam filtering.
2. Evaluate ML for school behaviour prediction.
3. Give three cases where ML is useful.
4. Give three cases where rule-based programming is better.

---

## 13. Exam-style Questions

### Question 1 [6 marks]

A hospital wants to use ML to predict patient risk. Evaluate this idea.

<details><summary>Mark Scheme Style Answer</summary>

ML could be useful because it can learn patterns from large patient datasets, including test results, symptoms, and medical history. It may help identify high-risk patients earlier. However, the model needs high-quality and representative data. Bias could lead to unfair or unsafe predictions for some groups. False negatives may be dangerous if high-risk patients are missed. Privacy is also important because health data is sensitive. Human oversight and regular evaluation should be used.

</details>

### Question 2 [4 marks]

Explain why ML may not be suitable for a simple age-checking system.

<details><summary>Mark Scheme Style Answer</summary>

The rule is simple and explicit: check whether age is above a threshold. A rule-based program is easier to implement, easier to explain, and does not require training data. Machine learning would add unnecessary complexity.

</details>

---

## 14. Classroom Activity

### Activity: ML Suitability Court

Groups argue whether ML should be used for different systems: homework marking, medical diagnosis, fraud detection, age checking, product recommendations. They must present benefits, risks, and alternatives.

---

## 15. Homework

Choose three ML applications and write a balanced evaluation for each. Include data needed, benefit, limitation, ethical concern, and whether ML is suitable.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Applications | Spam, recommendation, image recognition, fraud detection |
| Limitation | Data quality, bias, explainability, errors |
| Suitability | Depends on scenario and risk |
| Rule-based alternative | Better for simple explicit rules |
| Exam phrase | ML is suitable when patterns are complex and enough high-quality data is available, but risks such as bias, privacy, and errors must be managed. |
