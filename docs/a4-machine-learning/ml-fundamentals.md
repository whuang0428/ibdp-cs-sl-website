# Machine Learning Fundamentals

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define **machine learning**
- explain the difference between rule-based programming and machine learning
- describe the basic machine learning workflow
- identify examples of machine learning applications
- explain why data is important in machine learning
- write exam-style explanations using accurate ML vocabulary

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding what machine learning is and why data matters |
| Connected units | B1 Computational Thinking, B2 Programming, A1 Computer Fundamentals, A3 Databases |
| Exam relevance | Definitions, scenario explanation, data interpretation, model evaluation, ethics and limitations |

::: tip Learning Focus
Machine learning questions are usually scenario-based. Students should explain the **data**, the **model**, the **training process**, the **prediction**, and the **risk or limitation**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Machine learning | 机器学习 | A method where a computer system learns patterns from data to make predictions or decisions |
| Model | 模型 | A trained system that makes predictions or classifications |
| Training | 训练 | The process of using data to build or improve a model |
| Prediction | 预测 | An output produced by a model for new data |
| Pattern | 模式 | A relationship or structure found in data |
| Rule-based system | 基于规则的系统 | A system that follows explicit rules written by programmers |
| Dataset | 数据集 | A collection of data used for training or testing |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Machine Learning（机器学习）** 是让计算机系统从数据中学习模式，然后对新数据做 prediction 或 classification 的方法。

传统 rule-based programming 是程序员直接写规则。例如：

```text
IF mark >= 50 THEN output Pass
```

机器学习不是让程序员写出所有规则，而是提供大量数据，让模型从数据中学习规律。例如 spam email classifier 会从很多邮件样本中学习哪些特征可能代表 spam。

基本流程通常是：收集数据、清理数据、选择 features 和 labels、训练模型、测试模型、用模型预测新数据、持续评估和改进。

关键点：机器学习效果高度依赖数据质量。如果数据有 bias、不完整或错误，模型结果也可能不可靠。

</template>

<template #en>

### English Explanation

**Machine learning** is a method where a computer system learns patterns from data and uses those patterns to make predictions or classifications for new data.

Traditional rule-based programming uses rules directly written by programmers. For example:

```text
IF mark >= 50 THEN output Pass
```

Machine learning does not require the programmer to write every rule manually. Instead, the model learns from many examples. For example, a spam email classifier can learn patterns from many email samples.

The basic workflow usually includes collecting data, cleaning data, choosing features and labels, training the model, testing the model, making predictions on new data, and continuing to evaluate and improve the model.

Key idea: machine learning performance strongly depends on data quality. If the data is biased, incomplete, or incorrect, the model may also be unreliable.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Spam Email Detection

| Part | Example |
|---|---|
| Data | many emails marked as spam or not spam |
| Features | sender, keywords, links, message length |
| Label | spam / not spam |
| Model | classifier trained from email examples |
| Prediction | whether a new email is likely spam |

::: info Scenario Link
The model does not truly “understand” the email like a human. It learns patterns in the data and uses them to classify new emails.
:::

---

## 6. Core Pattern

```text
Collect data → Prepare data → Train model → Test model → Evaluate performance → Use model on new data → Monitor and improve
```

---

## 7. Technical Example

### Rule-based vs Machine Learning

| Approach | How it works | Example |
|---|---|---|
| Rule-based | programmer writes explicit rules | if mark >= 50 then Pass |
| Machine learning | model learns patterns from examples | classify email based on training data |

---

## 8. Explanation of the Example

Rule-based systems are easier to understand when rules are simple and clear. Machine learning is useful when patterns are complex or hard to write manually, but it needs enough good-quality data.

---

## 9. Step-by-step Process / Trace

| Step | Action | Example in spam detection |
|---|---|---|
| 1 | Collect data | gather spam and non-spam emails |
| 2 | Prepare data | remove duplicates, extract features |
| 3 | Train model | model learns patterns |
| 4 | Test model | check predictions on unseen emails |
| 5 | Deploy model | filter new emails |
| 6 | Monitor model | check false positives/false negatives |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying ML is the same as AI | ML is a method within AI, not all AI | Use precise definitions |
| Ignoring data quality | Model depends on data | Mention bias, completeness, accuracy |
| Thinking ML is always better | Rule-based systems may be better for simple rules | Choose based on scenario |
| Saying the model understands like a human | Models identify patterns in data | Use 'learns patterns from data' |
| Forgetting evaluation | A trained model may still be inaccurate | Test on unseen data |

---

## 11. Guided Practice

### Practice 1

Give one difference between rule-based programming and machine learning.

<details><summary>Suggested Answer</summary>

Rule-based programming uses explicit rules written by a programmer, while machine learning trains a model using data so it can learn patterns and make predictions.

</details>

### Practice 2

Why is data important in machine learning?

<details><summary>Suggested Answer</summary>

The model learns patterns from the data. Poor-quality or biased data can lead to inaccurate or unfair predictions.

</details>

---

## 12. Independent Practice

1. Explain machine learning using the phrase “learns patterns from data”.
2. Give three real-world ML applications.
3. Explain why a simple pass/fail system may not need ML.
4. Explain one risk of using biased training data.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by machine learning.

<details><summary>Mark Scheme Style Answer</summary>

Machine learning is a method where a computer system learns patterns from data and uses them to make predictions or decisions for new data.

</details>

### Question 2 [4 marks]

Explain how machine learning differs from rule-based programming.

<details><summary>Mark Scheme Style Answer</summary>

In rule-based programming, the programmer writes explicit rules for the system to follow. In machine learning, a model is trained using data and learns patterns from examples. The trained model can then make predictions on new data. Machine learning is useful when rules are complex or difficult to write manually.

</details>

---

## 14. Classroom Activity

### Activity: Rule or ML?

Students classify scenarios as better suited to rule-based programming or machine learning: pass/fail mark check, face recognition, spam detection, traffic light timer, product recommendation.

::: tip Exit Ticket
Write one sentence explaining why machine learning needs data.
:::

---

## 15. Homework

Choose one ML application such as spam detection, recommendation, face recognition, or medical risk prediction. Explain the data, model, prediction, and one limitation.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Machine learning | Learns patterns from data |
| Model | Trained system for prediction |
| Training | Building model from examples |
| Rule-based | Uses explicit programmer-written rules |
| Exam phrase | The model is trained on data and then uses learned patterns to make predictions for new cases. |
