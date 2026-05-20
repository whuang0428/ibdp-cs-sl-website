# Unsupervised Learning

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define unsupervised learning
- explain the use of unlabelled data
- describe clustering at a simple level
- identify unsupervised learning scenarios
- compare supervised and unsupervised learning
- explain limitations of pattern discovery

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Finding patterns in unlabelled data |
| Connected units | B1 Computational Thinking, B2 Programming, A1 Computer Fundamentals, A3 Databases |
| Exam relevance | Definitions, scenario explanation, data interpretation, model evaluation, ethics and limitations |

::: tip Learning Focus
Machine learning questions are usually scenario-based. Students should explain the **data**, the **model**, the **training process**, the **prediction**, and the **risk or limitation**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Unsupervised learning | 无监督学习 | Machine learning using unlabelled data to find patterns or groups |
| Unlabelled data | 无标签数据 | Data without known target output |
| Clustering | 聚类 | Grouping similar data points together |
| Pattern discovery | 模式发现 | Finding structure or relationships in data |
| Similarity | 相似性 | How close or alike data points are |
| Segment | 分组/细分 | A group found in data, such as customer segment |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Unsupervised learning（无监督学习）** 使用没有 labels 的数据。模型不会被告知正确答案，而是尝试发现数据中的 patterns 或 groups。最常见例子是 clustering：把相似的数据分到同一组。

</template>

<template #en>

### English Explanation

**Unsupervised learning** uses data without labels. The model is not given correct answers. Instead, it tries to find patterns or groups in the data. A common example is clustering, where similar data points are grouped together.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Customer Segmentation

| Customer | Monthly spend | Visits per month | Group found by model |
|---|---:|---:|---|
| A | 500 | 12 | high-value frequent |
| B | 40 | 2 | low-value occasional |
| C | 450 | 10 | high-value frequent |

---

## 6. Core Pattern

```text
Unlabelled data → model searches for patterns/similarity → groups or structures found → humans interpret the result
```

---

## 7. Technical Example

| Feature | Supervised | Unsupervised |
|---|---|---|
| Data | labelled | unlabelled |
| Output | prediction of known target | discovered pattern/group |
| Example | spam classifier | customer clustering |

---

## 8. Explanation of the Example

Unsupervised learning can reveal useful structure, but the groups may not always have clear real-world meaning. Human interpretation is often needed.

---

## 9. Step-by-step Process / Trace

| Step | Action | Example |
|---|---|---|
| 1 | Collect unlabelled data | customer purchases |
| 2 | Choose features | spend, visit frequency |
| 3 | Model groups similar records | clusters found |
| 4 | Human interprets clusters | high-value group, occasional group |
| 5 | Business acts on result | targeted marketing |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying unsupervised has labels | It uses unlabelled data | State no known target output |
| Assuming clusters are always meaningful | Groups need interpretation | Evaluate usefulness |
| Confusing clustering with classification | Classification predicts known categories | Clustering discovers groups |
| Ignoring feature choice | Features affect similarity | Choose relevant features |
| Thinking unsupervised gives correct answer automatically | No ground truth label may exist | Human interpretation needed |

---

## 11. Guided Practice

### Practice 1

Does customer clustering use labelled or unlabelled data?

<details><summary>Suggested Answer</summary>

Usually unlabelled data, because the model discovers groups rather than learning from known categories.

</details>

---

## 12. Independent Practice

1. Compare supervised and unsupervised learning.
2. Explain clustering using a school library example.
3. Identify features for grouping customers.
4. Explain why human interpretation is needed.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by unsupervised learning.

<details><summary>Mark Scheme Style Answer</summary>

Unsupervised learning uses unlabelled data to find patterns, structures, or groups without being given known target labels.

</details>

### Question 2 [4 marks]

A shop wants to group customers by buying behaviour. Explain how unsupervised learning could be used.

<details><summary>Mark Scheme Style Answer</summary>

The shop can use unlabelled customer data such as spending amount, product categories, and visit frequency. A clustering algorithm can group customers with similar behaviour. The shop can then interpret the groups and use them for marketing, but the groups should be checked because they may not always have clear meaning.

</details>

---

## 14. Classroom Activity

### Activity: Human Clustering

Students are given fictional customer cards and group them based on similarity. Then they discuss how feature choice changes the clusters.

---

## 15. Homework

Create an unsupervised learning scenario. Include the unlabelled data, possible features, likely groups, and one limitation.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Unsupervised learning | Uses unlabelled data |
| Clustering | Groups similar data |
| No label | No known target output |
| Human interpretation | Needed to understand groups |
| Exam phrase | The model finds patterns or groups in unlabelled data. |
