# Data, Features and Labels

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define dataset, feature, label, and instance
- identify features and labels in simple datasets
- explain why feature choice affects model performance
- distinguish labelled and unlabelled data
- explain why data cleaning is needed
- prepare simple ML datasets for scenario questions

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding how data is represented for machine learning |
| Connected units | B1 Computational Thinking, B2 Programming, A1 Computer Fundamentals, A3 Databases |
| Exam relevance | Definitions, scenario explanation, data interpretation, model evaluation, ethics and limitations |

::: tip Learning Focus
Machine learning questions are usually scenario-based. Students should explain the **data**, the **model**, the **training process**, the **prediction**, and the **risk or limitation**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Dataset | 数据集 | A collection of data used for training, testing, or validation |
| Instance | 实例 | One row/example in a dataset |
| Feature | 特征 | An input value used by a model |
| Label | 标签 | The target output in supervised learning |
| Labelled data | 有标签数据 | Data where the correct output is known |
| Unlabelled data | 无标签数据 | Data without known target output |
| Data cleaning | 数据清理 | Fixing or removing incorrect, missing, duplicate, or inconsistent data |
| Preprocessing | 预处理 | Preparing data before training |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

机器学习模型不是直接“看懂世界”，而是通过数据中的 **features（特征）** 学习。

一个 dataset 通常由很多 instances 组成。每一行可以是一个 example。每一列可能是 feature 或 label。

例如预测学生是否通过考试：

- features：attendance、homeworkScore、mockExamScore
- label：Pass / Fail

在 supervised learning 中，label 是已知答案，模型通过 features 和 labels 学习输入与输出之间的关系。

数据质量很重要。缺失值、重复数据、错误数据、不一致格式都可能影响模型表现。

</template>

<template #en>

### English Explanation

A machine learning model does not directly “understand the world”. It learns from **features** in data.

A dataset usually contains many instances. Each row can be one example. Each column may be a feature or a label.

Example: predicting whether a student will pass an exam:

- features: attendance, homeworkScore, mockExamScore
- label: Pass / Fail

In supervised learning, the label is the known correct answer. The model learns the relationship between features and labels.

Data quality is important. Missing values, duplicate data, incorrect data, and inconsistent formats can all reduce model performance.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Student Pass Prediction Dataset

| Attendance % | Homework Score | Mock Exam Score | Final Result |
|---:|---:|---:|---|
| 95 | 88 | 84 | Pass |
| 60 | 45 | 50 | Fail |
| 80 | 70 | 75 | Pass |

| Part | Example |
|---|---|
| Instance | one row/student |
| Features | attendance, homework score, mock exam score |
| Label | final result |

---

## 6. Core Pattern

```text
Rows → instances/examples
Input columns → features
Target output column → label
Clean data → train/test model
```

---

## 7. Technical Example

### Labelled vs unlabelled data

| Type | Example | Used for |
|---|---|---|
| Labelled | emails marked spam/not spam | supervised learning |
| Unlabelled | customer purchase records without categories | unsupervised learning |

---

## 8. Explanation of the Example

Feature selection matters. If important features are missing, the model may not learn useful patterns. If irrelevant or biased features are included, predictions may become inaccurate or unfair.

---

## 9. Step-by-step Process / Trace

| Step | Action | Example |
|---|---|---|
| 1 | Collect data | student records |
| 2 | Identify features | attendance, homework score |
| 3 | Identify label | final pass/fail |
| 4 | Clean data | remove duplicates, fix missing scores |
| 5 | Split data | training/testing sets |
| 6 | Train model | learn from features and labels |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Calling every column a feature | Label is target output, not input feature | Separate inputs and target |
| Ignoring data cleaning | Bad data affects model | Mention missing/duplicate/inconsistent values |
| Using irrelevant features | May reduce performance or fairness | Choose features linked to problem |
| Confusing instance and feature | Row and column are different | Instance = row, feature = input column |
| Assuming more data is always better | Poor-quality data can harm model | Quality and relevance matter |

---

## 11. Guided Practice

### Practice 1

In a house price model, identify possible features and label.

<details><summary>Suggested Answer</summary>

Features may include number of bedrooms, area, location, and age of house. The label is house price.

</details>

### Practice 2

Why should duplicate records be removed?

<details><summary>Suggested Answer</summary>

Duplicate records may distort the training process because some examples are counted more than they should be.

</details>

---

## 12. Independent Practice

1. Identify features and label for spam detection.
2. Identify features and label for predicting taxi fare.
3. Explain why missing values are a problem.
4. Give two examples of irrelevant features for medical risk prediction.

---

## 13. Exam-style Questions

### Question 1 [3 marks]

A model predicts whether an email is spam. Identify two features and one label.

<details><summary>Mark Scheme Style Answer</summary>

Features may include sender address, number of links, keywords, attachment presence, or message length. The label is spam or not spam.

</details>

### Question 2 [4 marks]

Explain why data cleaning is important before training a model.

<details><summary>Mark Scheme Style Answer</summary>

Data cleaning removes or fixes missing, duplicate, incorrect, or inconsistent data. This helps the model learn from accurate and reliable examples. Poor-quality data may cause inaccurate predictions or biased results.

</details>

---

## 14. Classroom Activity

### Activity: Feature Detective

Groups receive scenario cards. They identify possible features, label, irrelevant features, and data quality problems.

---

## 15. Homework

Choose one ML scenario and create a dataset table with at least six rows. Mark which columns are features and which column is the label. Identify two possible data cleaning issues.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Feature | Input value used by model |
| Label | Target output |
| Instance | One row/example |
| Labelled data | Known output included |
| Data cleaning | Fix/remove bad data |
| Exam phrase | The model uses features as input and learns to predict the label. |
