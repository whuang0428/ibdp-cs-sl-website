# Overfitting and Underfitting

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define overfitting
- define underfitting
- explain generalization problems
- compare training and testing performance
- identify signs of overfitting and underfitting
- suggest simple ways to reduce overfitting

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding model generalization problems |
| Connected units | B1 Computational Thinking, B2 Programming, A1 Computer Fundamentals, A3 Databases |
| Exam relevance | Definitions, scenario explanation, data interpretation, model evaluation, ethics and limitations |

::: tip Learning Focus
Machine learning questions are usually scenario-based. Students should explain the **data**, the **model**, the **training process**, the **prediction**, and the **risk or limitation**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Overfitting | 过拟合 | When a model learns training data too closely and performs poorly on new data |
| Underfitting | 欠拟合 | When a model is too simple to learn useful patterns |
| Generalization | 泛化 | Ability to perform well on new unseen data |
| Training performance | 训练表现 | How well a model performs on training data |
| Testing performance | 测试表现 | How well a model performs on unseen test data |
| Noise | 噪声 | Random or irrelevant variation in data |
| Model complexity | 模型复杂度 | How flexible or detailed a model is |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Overfitting（过拟合）** 是模型在 training data 上表现很好，但在 new/unseen data 上表现差。它可能记住了训练数据中的 noise，而不是学到真正规律。**Underfitting（欠拟合）** 是模型太简单，连 training data 的基本规律都没有学好。理想模型应该能在 training data 和 testing data 上都有较好表现。

</template>

<template #en>

### English Explanation

**Overfitting** occurs when a model performs very well on training data but poorly on new or unseen data. It may have memorized noise in the training data instead of learning real patterns. **Underfitting** occurs when a model is too simple and does not learn the basic patterns in the training data. A good model should perform reasonably well on both training and testing data.

</template>
</LangBlock>

---

## 5. Real-life Example

| Model Situation | Training Accuracy | Testing Accuracy | Interpretation |
|---|---:|---:|---|
| Very complex model | 99% | 65% | likely overfitting |
| Too simple model | 55% | 52% | likely underfitting |
| Balanced model | 85% | 82% | better generalization |

---

## 6. Core Pattern

```text
High training + low testing → overfitting
Low training + low testing → underfitting
Similar good training/testing → better generalization
```

---

## 7. Technical Example

| Method | Idea |
|---|---|
| Use more training data | model sees more variation |
| Reduce model complexity | avoid memorizing noise |
| Use validation data | tune model before testing |
| Remove noisy/irrelevant features | improve data quality |

---

## 8. Explanation of the Example

Overfitting is not simply “high accuracy”. It is high training performance with noticeably worse testing performance. Always compare training and testing results.

---

## 9. Step-by-step Process / Trace

| Step | Evaluation |
|---|---|
| 1 | Train model |
| 2 | Measure training performance |
| 3 | Measure testing performance |
| 4 | Compare the two |
| 5 | Identify overfitting/underfitting |
| 6 | Adjust model or data |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying overfitting means low training accuracy | Overfitting usually has high training accuracy | Compare training and testing |
| Saying underfitting performs well on training | Underfitting performs poorly even on training | Use performance pattern |
| Ignoring test data | Need unseen data for generalization | Use separate test set |
| Thinking more complex is always better | Complex models can overfit | Balance complexity |
| Ignoring noisy features | Noise can harm learning | Clean data and remove irrelevant features |

---

## 11. Guided Practice

### Practice 1

Training accuracy 98%, testing accuracy 60%. What problem is likely?

<details><summary>Suggested Answer</summary>

Overfitting, because the model performs very well on training data but poorly on testing data.

</details>

### Practice 2

Training accuracy 50%, testing accuracy 49%. What problem is likely?

<details><summary>Suggested Answer</summary>

Underfitting, because the model performs poorly on both training and testing data.

</details>

---

## 12. Independent Practice

1. Explain overfitting with an example.
2. Explain underfitting with an example.
3. Suggest two ways to reduce overfitting.
4. Explain why testing data is needed to detect overfitting.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

Explain what is meant by overfitting.

<details><summary>Mark Scheme Style Answer</summary>

Overfitting occurs when a model learns the training data too closely, including noise or specific examples. It performs very well on training data but poorly on new unseen data, meaning it does not generalize well.

</details>

### Question 2 [4 marks]

A model has 99% accuracy on training data and 62% accuracy on test data. Explain what this suggests and one possible improvement.

<details><summary>Mark Scheme Style Answer</summary>

This suggests overfitting because the model performs much better on training data than on unseen test data. The model may have memorized training examples or noise. Improvements include using more training data, reducing model complexity, removing noisy features, or tuning using validation data.

</details>

---

## 14. Classroom Activity

### Activity: Model Doctor

Students diagnose model reports as overfitting, underfitting, or good generalization. They suggest treatment for each case.

---

## 15. Homework

Create three model performance scenarios: overfitting, underfitting, and good fit. Explain the evidence and suggest improvements.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Overfitting | High training, low testing performance |
| Underfitting | Low training and testing performance |
| Generalization | Works on new unseen data |
| Noise | Irrelevant/random variation |
| Exam phrase | The model may have memorized the training data and does not generalize well to unseen data. |
