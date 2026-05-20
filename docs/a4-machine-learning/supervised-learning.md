# Supervised Learning

## 1. Learning Objectives

By the end of this page, students should be able to:

- define supervised learning
- explain the role of labelled data
- identify classification and regression examples
- apply supervised learning to simple scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Learning from labelled examples |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Supervised learning | Learning from examples that include correct labels |
| Labelled data | Data where each example has a known correct output |
| Classification | Predicting a category |
| Regression | Predicting a numerical value |
| Target output | The value the model is trying to predict |

## 4. Concept Explanation

In supervised learning, the model learns from labelled examples.

Each training example includes input features and a correct output label.

Examples:

| Task | Type |
|---|---|
| Predict whether an email is spam | Classification |
| Predict house price | Regression |
| Identify whether an image shows a cat or dog | Classification |
| Predict tomorrow's temperature | Regression |

## 5. Step-by-step Example

Spam detection:

| Feature Examples | Label |
|---|---|
| contains suspicious link, unknown sender | Spam |
| known sender, normal content | Not spam |

The model learns patterns that help classify future emails.

## 6. Visual Structure

::: info Supervised Learning
Labelled examples → train model → new input → predicted label or value.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Forgetting labels | Supervised learning needs correct outputs during training |
| Confusing classification and regression | Categories and numerical values are different |
| Thinking all ML is supervised | There are other approaches |
| Ignoring bad labels | Incorrect labels can train a poor model |

## 8. Exam-style Question

A hospital trains a model using X-ray images labelled as "pneumonia" or "no pneumonia".

**Identify the type of machine learning and justify your answer.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- this is supervised learning
- the training data is labelled
- the model learns to classify new X-rays into categories

## 10. Quick Check

1. What is supervised learning?
2. What is labelled data?
3. Is predicting house price classification or regression?
