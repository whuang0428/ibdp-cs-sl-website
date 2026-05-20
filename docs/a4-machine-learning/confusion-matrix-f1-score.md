# Confusion Matrix and F1 Score

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why model evaluation is needed
- identify true positives, false positives, true negatives, and false negatives
- understand precision, recall, and F1 score at a high level
- apply evaluation ideas to classification scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Evaluating model performance |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Confusion matrix | A table comparing predicted classes and actual classes |
| True positive | Model correctly predicts the positive class |
| False positive | Model incorrectly predicts the positive class |
| True negative | Model correctly predicts the negative class |
| False negative | Model incorrectly predicts the negative class |
| Precision | How many positive predictions were actually correct |
| Recall | How many actual positives were correctly found |
| F1 score | A combined measure using precision and recall |

## 4. Concept Explanation

A model may make correct and incorrect predictions.

A confusion matrix helps show what type of mistakes the model makes.

For example, in disease detection:

| Result Type | Meaning |
|---|---|
| True positive | Patient has disease and model predicts disease |
| False positive | Patient does not have disease but model predicts disease |
| True negative | Patient does not have disease and model predicts no disease |
| False negative | Patient has disease but model predicts no disease |

## 5. Step-by-step Example

A medical model is tested on patient data.

Important question:

- Does the model correctly find patients who are at risk?
- Does it incorrectly label healthy patients as at risk?
- Does it miss patients who actually need help?

## 6. Visual Structure

::: info Evaluation Process
Actual result + model prediction → compare outcomes → count correct and incorrect predictions → calculate evaluation metrics.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Only looking at accuracy | Accuracy may be misleading in unbalanced datasets |
| Confusing false positive and false negative | The consequences can be very different |
| Ignoring context | In medicine, a false negative may be more serious |
| Thinking F1 score explains everything | It is useful but not the only metric |

## 8. Exam-style Question

A disease detection model has a high number of false negatives.

**Explain why this may be a serious problem.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- a false negative means the model predicts no disease when the patient has the disease
- patients may not receive treatment or further testing
- this can create health risks and reduce trust in the system

## 10. Quick Check

1. What is a false positive?
2. What is a false negative?
3. Why might F1 score be useful?
