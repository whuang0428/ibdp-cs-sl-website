<script setup>
import OverfittingUnderfittingVisualizer from '../.vitepress/components/demos/OverfittingUnderfittingVisualizer.vue'
</script>

# Overfitting vs Underfitting Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain underfitting
- explain overfitting
- compare training error and test error
- explain why a model should generalize to unseen data
- understand why model complexity matters
- write exam-style explanations about overfitting and underfitting

## Key Idea

A machine learning model should learn the general pattern in the data.

If the model is too simple, it may underfit.

If the model is too complex, it may overfit.

```text
underfitting = poor performance on training data and test data
good fit = good performance on training data and test data
overfitting = very good performance on training data but poor performance on test data
```

## Interactive Demo

<OverfittingUnderfittingVisualizer />

## Exam-style Explanation

Underfitting happens when a model is too simple to learn the pattern in the data, so it performs poorly on both training and test data. Overfitting happens when a model learns the training data too closely, including noise, so it performs well on training data but poorly on unseen test data. A good model should generalize well, meaning it performs well on new data as well as training data.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking low training error always means good model | low training error may be caused by memorising data | check test error too |
| thinking complex model is always better | too much complexity may overfit | choose suitable complexity |
| confusing overfitting and underfitting | they are opposite problems | compare training and test performance |
| ignoring test data | test data checks generalization | use unseen data to evaluate the model |
| thinking overfitting means no errors | overfitted model can still fail on new data | it memorises training data but generalizes poorly |

## Quick Practice

### Question 1

A model has high training error and high test error. Is this more likely underfitting or overfitting?

<details>
<summary>Answer</summary>

This is more likely underfitting because the model performs poorly on both training data and test data.

</details>

### Question 2

A model has very low training error but high test error. Explain the problem.

<details>
<summary>Answer</summary>

The model is likely overfitting. It has learned the training data too closely, including noise, so it does not generalize well to unseen test data.

</details>

### Question 3

Why is test data important?

<details>
<summary>Answer</summary>

Test data is important because it checks how well the model performs on unseen data. This helps show whether the model generalizes or only memorises the training data.

</details>

