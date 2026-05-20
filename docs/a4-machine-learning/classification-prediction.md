# Classification and Prediction

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain classification
- explain prediction
- distinguish category outputs and numerical outputs
- apply classification and prediction to real-world examples

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding model outputs |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Classification | Assigning input data to a category |
| Prediction | Producing an expected output for new data |
| Class | A category used in classification |
| Binary classification | Classification with two possible classes |
| Multi-class classification | Classification with more than two possible classes |

## 4. Concept Explanation

Machine learning models often produce predictions.

In classification, the prediction is a category.

Examples:

| Task | Output |
|---|---|
| Spam detection | Spam or not spam |
| Medical image classification | Disease or no disease |
| Handwritten digit recognition | 0 to 9 |
| Sentiment analysis | Positive, neutral, or negative |

## 5. Step-by-step Example

Email classification:

1. The model receives a new email.
2. It reads features such as sender, links, and words.
3. It predicts a class.
4. The output may be "spam" or "not spam".

## 6. Visual Structure

::: info Classification Process
New input → model analyses features → model chooses a class → output category.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking all predictions are numerical | Some predictions are categories |
| Confusing class and feature | A class is an output category |
| Ignoring uncertainty | Models may be wrong |
| Assuming binary classification always applies | Some tasks have many classes |

## 8. Exam-style Question

A model predicts whether a review is positive, neutral, or negative.

**Identify whether this is binary or multi-class classification and justify your answer.** [2]

## 9. Mark Scheme Style Answer

Award marks for:

- it is multi-class classification
- there are three possible output categories

## 10. Quick Check

1. What is classification?
2. What is binary classification?
3. Give one example of multi-class classification.
