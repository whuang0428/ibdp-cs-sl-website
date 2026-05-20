# Data, Features and Labels

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the role of data in machine learning
- define feature and label
- identify features and labels in simple datasets
- explain why data quality matters

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding ML data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Dataset | A collection of data used by a machine learning system |
| Feature | An input variable used by a model |
| Label | The target output used in supervised learning |
| Record | One row or example in a dataset |
| Data quality | How accurate, complete, and suitable the data is |

## 4. Concept Explanation

Machine learning depends on data.

Features are the input values the model uses to learn patterns.

Labels are the correct answers used during supervised learning.

Example: Predicting whether a student passes a course

| Feature | Example |
|---|---|
| Attendance | 92% |
| Homework completion | 85% |
| Mock exam mark | 68 |

| Label | Example |
|---|---|
| Final result | Pass |

## 5. Step-by-step Example

Dataset for house price prediction:

| Feature | Example |
|---|---|
| Number of bedrooms | 3 |
| Area | 120 square metres |
| Distance to city centre | 5 km |

Label:

| Label | Example |
|---|---|
| House price | 800000 |

## 6. Visual Structure

::: info Data in ML
Dataset → records → features as input values → label as target output → model learns patterns.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Confusing features and labels | Inputs and target outputs have different roles |
| Using irrelevant features | The model may learn weak or misleading patterns |
| Ignoring missing data | Training may become less reliable |
| Assuming more data is always better | Data quality also matters |

## 8. Exam-style Question

A model predicts whether a patient may develop a disease.

**Identify two possible features and one possible label for this model.** [3]

## 9. Mark Scheme Style Answer

Possible answers:

- feature: age
- feature: blood pressure
- feature: medical history
- label: disease risk / disease present or not present

## 10. Quick Check

1. What is a feature?
2. What is a label?
3. Why is data quality important?
