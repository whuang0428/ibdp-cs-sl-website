# Model Evaluation

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why model evaluation is needed
- define accuracy, precision, recall, and F1 score at a simple level
- interpret a confusion matrix
- distinguish false positives and false negatives
- apply evaluation metrics to scenarios
- explain why accuracy alone may be misleading

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Evaluating model performance using classification metrics |
| Connected units | B1 Computational Thinking, B2 Programming, A1 Computer Fundamentals, A3 Databases |
| Exam relevance | Definitions, scenario explanation, data interpretation, model evaluation, ethics and limitations |

::: tip Learning Focus
Machine learning questions are usually scenario-based. Students should explain the **data**, the **model**, the **training process**, the **prediction**, and the **risk or limitation**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Evaluation | 评估 | Measuring how well a model performs |
| Accuracy | 准确率 | Proportion of total predictions that are correct |
| Precision | 精确率 | Of predicted positives, how many were actually positive |
| Recall | 召回率 | Of actual positives, how many were correctly found |
| F1 score | F1分数 | A combined measure of precision and recall |
| Confusion matrix | 混淆矩阵 | A table comparing predicted and actual classes |
| False positive | 假阳性 | Predicted positive when actually negative |
| False negative | 假阴性 | Predicted negative when actually positive |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

模型训练后必须进行 **evaluation（评估）**，否则我们不知道它是否可靠。对于 classification，常见工具是 confusion matrix，它比较 predicted class 和 actual class。常见指标包括 accuracy、precision、recall 和 F1 score。Accuracy 有时会误导，尤其当数据类别不平衡时。

</template>

<template #en>

### English Explanation

After a model is trained, it must be evaluated so we know whether it is reliable. For classification, a common tool is a confusion matrix, which compares predicted classes with actual classes. Common metrics include accuracy, precision, recall, and F1 score. Accuracy can be misleading, especially when classes are imbalanced.

</template>
</LangBlock>

---

## 5. Real-life Example

|  | Predicted Positive | Predicted Negative |
|---|---:|---:|
| Actual Positive | 80 | 20 |
| Actual Negative | 10 | 90 |

| Term | Value |
|---|---:|
| True Positive | 80 |
| False Negative | 20 |
| False Positive | 10 |
| True Negative | 90 |

::: warning Scenario Link
In medical diagnosis, false negatives may be very serious because a sick patient may be told they are not sick.
:::

---

## 6. Core Pattern

```text
Compare predictions with actual labels → build confusion matrix → calculate metrics → interpret based on scenario risk
```

---

## 7. Technical Example

```text
Accuracy = (TP + TN) / total
Precision = TP / (TP + FP)
Recall = TP / (TP + FN)
F1 score combines precision and recall
```

---

## 8. Explanation of the Example

Precision and recall matter differently depending on the scenario. For spam filtering, false positives may hide important emails. For disease screening, false negatives may be more dangerous.

---

## 9. Step-by-step Process / Trace

| Step | Action |
|---|---|
| 1 | Use testing data with known labels |
| 2 | Model makes predictions |
| 3 | Compare predictions to actual labels |
| 4 | Count TP, TN, FP, FN |
| 5 | Calculate metrics |
| 6 | Interpret results in context |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Only using accuracy | Accuracy may hide class imbalance | Use precision/recall when relevant |
| Confusing false positive and false negative | Scenario interpretation becomes wrong | Define predicted vs actual carefully |
| Ignoring context | Metric importance depends on use | Discuss risk of error type |
| Evaluating on training data | May overestimate performance | Use test data |
| Thinking high accuracy means no problem | Bias or unequal errors may still exist | Check fairness and error distribution |

---

## 11. Guided Practice

### Practice 1

In disease detection, which may be more dangerous: false negative or false positive?

<details><summary>Suggested Answer</summary>

False negative may be more dangerous because a sick patient may be told they are healthy and may not receive treatment.

</details>

### Practice 2

What does accuracy measure?

<details><summary>Suggested Answer</summary>

Accuracy measures the proportion of all predictions that are correct.

</details>

---

## 12. Independent Practice

1. Create a confusion matrix for 20 predictions.
2. Identify TP, TN, FP, and FN.
3. Explain why accuracy can be misleading.
4. Explain when recall is more important than precision.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

Explain the difference between a false positive and a false negative.

<details><summary>Mark Scheme Style Answer</summary>

A false positive occurs when the model predicts positive but the actual class is negative. A false negative occurs when the model predicts negative but the actual class is positive.

</details>

### Question 2 [5 marks]

A disease detection model has high accuracy. Explain why accuracy alone may not be enough to judge the model.

<details><summary>Mark Scheme Style Answer</summary>

Accuracy shows the proportion of all predictions that are correct, but it may hide the type of errors being made. In disease detection, false negatives may be dangerous because sick patients may be missed. If the dataset is imbalanced, a model can have high accuracy by predicting the majority class. Precision, recall, and a confusion matrix provide more detail.

</details>

---

## 14. Classroom Activity

### Activity: Confusion Matrix Clinic

Students receive prediction cards and actual labels. They build a confusion matrix, then discuss which error type is most serious in the scenario.

---

## 15. Homework

Create a confusion matrix for a spam filter or medical screening model. Calculate accuracy and explain whether precision or recall is more important.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Accuracy | Overall correct proportion |
| Precision | Correct among predicted positives |
| Recall | Actual positives found |
| False positive | Predicted positive but actually negative |
| False negative | Predicted negative but actually positive |
| Exam phrase | Accuracy alone may be misleading because it does not show the types of errors made. |
