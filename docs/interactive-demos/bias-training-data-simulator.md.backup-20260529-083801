<script setup>
import BiasTrainingDataSimulator from '../.vitepress/components/demos/BiasTrainingDataSimulator.vue'
</script>

# Bias in Training Data Simulator

## Learning Goals

By the end of this demo, students should be able to:

- explain what bias in training data means
- understand why unrepresentative data can cause unreliable predictions
- explain why overall accuracy can hide poor performance for under-represented conditions
- describe ways to reduce bias in machine learning systems
- write exam-style explanations about biased training data

## Key Idea

A machine learning model learns from its training data. If the training data does not represent the real situations the model will face, the model may perform better for some cases than others.

This can happen when:

```text
one group or condition has many examples
another group or condition has too few examples
the data lacks variety
some labels are incorrect
```

## Interactive Demo

<BiasTrainingDataSimulator />

## Exam-style Explanation

Bias in training data occurs when the training data is not representative of the real data the model will process. If one condition is under-represented, the model may perform poorly for that condition even if its overall accuracy looks acceptable. This can produce unreliable or unfair predictions. Bias can be reduced by collecting more representative data, improving data quality, and evaluating performance separately for different groups or conditions.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking more data always solves bias | more of the same biased data may not help | data must be representative |
| only checking overall accuracy | overall accuracy can hide weak performance for one group | check performance by group/condition |
| assuming model output is neutral | model output depends on training data | biased data can produce biased predictions |
| ignoring label quality | wrong labels teach wrong patterns | data quality matters |
| thinking bias only comes from code | bias can come from data collection | review the dataset |

## Quick Practice

### Question 1

Explain why a model trained mostly on bright-light images may perform poorly on dim-light images.

<details>
<summary>Answer</summary>

The model has seen many bright-light examples but few dim-light examples, so the training data is not representative of dim-light conditions. The model may not learn features that are reliable in dim lighting.

</details>

### Question 2

Why can overall accuracy be misleading?

<details>
<summary>Answer</summary>

Overall accuracy can be high if the model performs well on the majority condition, even if it performs poorly on an under-represented condition.

</details>

### Question 3

State two ways to reduce bias in training data.

<details>
<summary>Answer</summary>

Possible answers include:

```text
collect more examples from under-represented conditions
improve variety in the dataset
check and correct labels
evaluate performance separately for different groups or conditions
```

</details>
