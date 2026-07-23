---
aside: false
---

<script setup>
import ConfusionMatrixVisualizer from '../.vitepress/components/demos/ConfusionMatrixVisualizer.vue'
</script>

# Confusion Matrix Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- identify true positives, false positives, false negatives, and true negatives
- calculate accuracy, precision, and recall
- explain why accuracy alone can be misleading
- interpret model performance in a scenario
- write exam-style explanations for model evaluation

## Key Idea

A confusion matrix compares the model's predictions with the actual results.

In this demo, the model predicts whether an email is phishing.

```text
positive = phishing
negative = safe
```

| Term | Meaning in this scenario |
|---|---|
| True Positive | phishing email correctly predicted as phishing |
| False Positive | safe email incorrectly predicted as phishing |
| False Negative | phishing email incorrectly predicted as safe |
| True Negative | safe email correctly predicted as safe |

## Interactive Demo

<ConfusionMatrixVisualizer />

## Exam-style Explanation

A confusion matrix shows how many predictions were correct and incorrect for each class. Accuracy measures the proportion of all predictions that were correct. Precision measures how many predicted positives were actually positive. Recall measures how many actual positives were correctly identified. Accuracy alone can be misleading if one class is much more common than the other.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking accuracy is always enough | high accuracy can hide poor recall | check precision and recall too |
| confusing FP and FN | they describe different error types | FP is false alarm; FN is missed positive |
| ignoring the scenario | positive depends on what is being detected | define the positive class first |
| saying precision and recall are the same | they answer different questions | precision checks predicted positives; recall checks actual positives |
| forgetting class imbalance | one class may be much larger | accuracy may look high even when model misses rare cases |

## Quick Practice

### Question 1

In a phishing detection model, what is a false negative?

<details>
<summary>Answer</summary>

A false negative is a phishing email that is incorrectly predicted as safe.

</details>

### Question 2

Why can high accuracy be misleading?

<details>
<summary>Answer</summary>

High accuracy can be misleading when one class is much more common than another. A model may correctly predict many common cases but still perform poorly on the important rare class.

</details>

### Question 3

A model has TP = 40 and FP = 10. Calculate precision.

<details>
<summary>Answer</summary>

```text
Precision = TP / (TP + FP)
Precision = 40 / (40 + 10)
Precision = 40 / 50
Precision = 0.8 = 80%
```

</details>

