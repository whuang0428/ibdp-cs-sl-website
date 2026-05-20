# Training, Testing and Validation

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define training data, testing data, and validation data
- explain why data is split
- explain generalization
- distinguish testing and training performance
- describe model tuning at a simple level
- explain why unseen data is important

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Splitting data and checking model generalization |
| Connected units | B1 Computational Thinking, B2 Programming, A1 Computer Fundamentals, A3 Databases |
| Exam relevance | Definitions, scenario explanation, data interpretation, model evaluation, ethics and limitations |

::: tip Learning Focus
Machine learning questions are usually scenario-based. Students should explain the **data**, the **model**, the **training process**, the **prediction**, and the **risk or limitation**.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Training data | 训练数据 | Data used to train the model |
| Testing data | 测试数据 | Unseen data used to evaluate the final model |
| Validation data | 验证数据 | Data used to tune or choose model settings |
| Generalization | 泛化 | Ability to perform well on new unseen data |
| Data split | 数据划分 | Dividing a dataset into training, validation, and testing sets |
| Unseen data | 未见数据 | Data not used during training |
| Model tuning | 模型调参 | Adjusting model settings to improve performance |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

训练模型时，不能只看它在 training data 上表现好不好。模型可能只是记住了训练样本，而没有真正学到可以泛化到新数据的模式。数据通常会被分成 training data、validation data 和 testing data。Training data 用于训练；validation data 用于调整模型或选择模型；testing data 用于最终评估模型在 unseen data 上的表现。**Generalization（泛化）** 是模型在新数据上也能表现良好的能力。

</template>

<template #en>

### English Explanation

When training a model, it is not enough to check performance on the training data. The model may simply memorize training examples instead of learning patterns that work for new data. Data is often split into training data, validation data, and testing data. Training data trains the model; validation data tunes or chooses the model; testing data evaluates the final model on unseen data. **Generalization** is the ability to perform well on new data.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Image Classifier

| Set | Purpose |
|---|---|
| Training set | train model patterns |
| Validation set | tune settings and choose model |
| Testing set | evaluate final model on unseen data |

::: warning Important
The testing set should not be used to train the model. Otherwise the evaluation is not fair.
:::

---

## 6. Core Pattern

```text
Full dataset → training set + validation set + testing set
Training → learn patterns
Validation → tune model
Testing → final unseen evaluation
```

---

## 7. Technical Example

| Dataset part | Percentage example | Purpose |
|---|---:|---|
| Training | 70% | train model |
| Validation | 15% | tune model |
| Testing | 15% | final evaluation |

---

## 8. Explanation of the Example

Exact percentages can vary. The key idea is that testing data must be separate from training data so the performance estimate is more realistic.

---

## 9. Step-by-step Process / Trace

| Step | Action |
|---|---|
| 1 | Collect labelled dataset |
| 2 | Clean and preprocess data |
| 3 | Split data into training/validation/testing |
| 4 | Train model on training data |
| 5 | Adjust model using validation data |
| 6 | Evaluate final model using testing data |
| 7 | Report performance |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Testing on training data only | Performance may be overly optimistic | Use unseen test data |
| Mixing test data into training | Final evaluation becomes unfair | Keep test set separate |
| Thinking validation and testing are the same | They have different purposes | Validation tunes, testing evaluates |
| Ignoring generalization | Model must work on new data | Mention unseen data |
| Assuming one split percentage is mandatory | Splits vary | Focus on purpose |

---

## 11. Guided Practice

### Practice 1

Why should testing data be unseen?

<details><summary>Suggested Answer</summary>

It gives a more realistic measure of how the model performs on new data rather than memorized training examples.

</details>

### Practice 2

What is validation data used for?

<details><summary>Suggested Answer</summary>

It is used to tune model settings or choose between models before final testing.

</details>

---

## 12. Independent Practice

1. Explain training, validation, and testing data.
2. Explain why data should be split.
3. Explain generalization using a spam detection example.
4. Describe a problem caused by testing on training data.

---

## 13. Exam-style Questions

### Question 1 [3 marks]

Explain the difference between training data and testing data.

<details><summary>Mark Scheme Style Answer</summary>

Training data is used to train the model and allow it to learn patterns. Testing data is kept separate and used after training to evaluate how well the model performs on unseen data.

</details>

### Question 2 [4 marks]

Explain why a model should be tested using unseen data.

<details><summary>Mark Scheme Style Answer</summary>

Unseen data gives a more realistic measure of whether the model can generalize to new cases. If the model is tested only on training data, it may appear accurate because it has memorized examples. Separate testing data helps identify whether the model works beyond the training set.

</details>

---

## 14. Classroom Activity

### Activity: Split the Dataset

Students receive fictional records and divide them into training, validation, and testing sets. They explain why test records must not be used during training.

---

## 15. Homework

Write a short plan for training a student performance prediction model. Include data collection, cleaning, splitting, training, validation, testing, and reporting.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Training data | Used to train model |
| Validation data | Used to tune model |
| Testing data | Final unseen evaluation |
| Generalization | Works on new data |
| Exam phrase | Testing data should be unseen so the model's ability to generalize can be evaluated. |
