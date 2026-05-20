# Classification and Regression

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define classification
- define regression
- distinguish categorical and numerical prediction
- identify classification and regression tasks from scenarios
- choose suitable output types
- explain how supervised learning can support both tasks

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Distinguishing category prediction and numerical prediction |
| Connected units | B1 Computational Thinking, B2 Programming, A1 Computer Fundamentals, A3 Databases |
| Exam relevance | Definitions, scenario explanation, data interpretation, model evaluation, ethics and limitations |

::: tip Learning Focus
Machine learning questions are usually scenario-based. Students should explain the **data**, the **model**, the **training process**, the **prediction**, and the **risk or limitation**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Classification | 分类 | Predicting a category or class |
| Regression | 回归 | Predicting a numerical value |
| Class | 类别 | A possible category output |
| Numerical output | 数值输出 | A number predicted by a model |
| Binary classification | 二分类 | Classification with two classes |
| Multi-class classification | 多分类 | Classification with more than two classes |
| Prediction target | 预测目标 | The output the model tries to predict |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在 supervised learning 中，常见任务有两类：**Classification（分类）** 预测类别，例如 spam/not spam、pass/fail、low/medium/high risk。**Regression（回归）** 预测数值，例如房价、温度、出租车费用或学生最终分数。判断方法很简单：如果输出是 category，就是 classification；如果输出是 number，就是 regression。

</template>

<template #en>

### English Explanation

In supervised learning, two common task types are **classification** and **regression**. Classification predicts a category, such as spam/not spam, pass/fail, or low/medium/high risk. Regression predicts a numerical value, such as house price, temperature, taxi fare, or final score. If the output is a category, it is classification. If the output is a number, it is regression.

</template>
</LangBlock>

---

## 5. Real-life Example

| Scenario | Output | Task Type |
|---|---|---|
| Predict whether email is spam | spam/not spam | classification |
| Predict house price | price number | regression |
| Predict disease risk category | low/medium/high | classification |
| Predict delivery time | minutes | regression |

---

## 6. Core Pattern

```text
Look at model output:
Category → classification
Number → regression
```

---

## 7. Technical Example

| Type | Example |
|---|---|
| Binary classification | spam or not spam |
| Multi-class classification | cat, dog, bird, fish |
| Regression | predicted taxi fare = 23.50 |

---

## 8. Explanation of the Example

The input features may be similar for both task types. The difference is the target output. A model predicting final grade letter is classification, while predicting final percentage mark is regression.

---

## 9. Step-by-step Process / Trace

| Step | Scenario | Decision |
|---|---|---|
| 1 | Identify output | house price |
| 2 | Check output type | number |
| 3 | Task type | regression |
| 4 | Choose evaluation | numerical error metrics |

| Step | Scenario | Decision |
|---|---|---|
| 1 | Identify output | spam/not spam |
| 2 | Check output type | category |
| 3 | Task type | classification |
| 4 | Choose evaluation | confusion matrix/accuracy |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Thinking all predictions are classification | Some predictions are numerical | Check output type |
| Calling risk score and risk category the same | Score may be regression; category is classification | Read output carefully |
| Ignoring labels | Supervised tasks need target outputs | Identify label/target |
| Using classification metrics for regression | Evaluation differs | Match metric to task type |
| Confusing features and output | Features are inputs; target is output | Separate input columns and label |

---

## 11. Guided Practice

### Practice 1

Predicting tomorrow's temperature: classification or regression?

<details><summary>Suggested Answer</summary>

Regression, because the output is a numerical value.

</details>

### Practice 2

Predicting whether a student passes or fails: classification or regression?

<details><summary>Suggested Answer</summary>

Classification, because the output is a category.

</details>

---

## 12. Independent Practice

1. Classify 10 ML scenarios as classification or regression.
2. Give two binary classification examples.
3. Give two regression examples.
4. Explain why predicted grade letter and predicted percentage are different task types.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

For each scenario, identify classification or regression: spam detection, house price prediction, disease/no disease prediction, delivery time prediction.

<details><summary>Mark Scheme Style Answer</summary>

Spam detection: classification. House price prediction: regression. Disease/no disease prediction: classification. Delivery time prediction: regression.

</details>

### Question 2 [3 marks]

Explain the difference between classification and regression.

<details><summary>Mark Scheme Style Answer</summary>

Classification predicts a category or class, such as spam/not spam. Regression predicts a numerical value, such as price or temperature.

</details>

---

## 14. Classroom Activity

### Activity: Output Type Sort

Students sort scenario cards by output type. Then they rewrite some scenarios to change classification into regression or regression into classification.

---

## 15. Homework

Create a table of 12 ML examples. For each, identify features, target output, and whether the task is classification or regression.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Classification | Predicts category |
| Regression | Predicts number |
| Binary classification | Two classes |
| Multi-class classification | More than two classes |
| Exam phrase | This is classification because the model predicts a category rather than a numerical value. |
