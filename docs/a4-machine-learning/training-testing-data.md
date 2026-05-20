# Training and Testing Data

## 1. Learning Objectives

By the end of this page, students should be able to:

- distinguish between training data and testing data
- explain why testing data should be separate
- explain the purpose of model evaluation
- identify problems such as overfitting

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Model training and evaluation |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Training data | Data used to train a model |
| Testing data | Data used to check how well the model works on unseen examples |
| Validation | Checking model performance during development |
| Overfitting | When a model fits training data too closely and performs poorly on new data |
| Generalization | The ability to perform well on new, unseen data |

## 4. Concept Explanation

A machine learning model needs data for training and testing.

Training data is used to teach the model patterns.

Testing data is used to check whether the model can handle new examples.

If the same data is used for both training and testing, the result may be misleading because the model may simply remember the training examples.

## 5. Step-by-step Example

A dataset has 1000 images.

A possible split:

| Data Type | Number of Images | Purpose |
|---|---:|---|
| Training data | 800 | Train the model |
| Testing data | 200 | Evaluate the model |

## 6. Visual Structure

::: info Training and Testing
Dataset → split into training data and testing data → train model → evaluate on unseen testing data.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Testing on the same data used for training | Results may be unrealistically high |
| Ignoring overfitting | The model may fail on real-world data |
| Using too little data | The model may not learn enough patterns |
| Assuming high training accuracy is enough | Testing performance is more important |

## 8. Exam-style Question

A model performs very well on training data but poorly on new data.

**Identify this problem and explain why it is an issue.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the problem is overfitting
- the model has learned the training data too closely
- it does not generalize well to unseen data

## 10. Quick Check

1. What is training data?
2. What is testing data?
3. Why should testing data be unseen?
