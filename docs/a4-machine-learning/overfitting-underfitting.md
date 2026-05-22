# Overfitting and Underfitting

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define overfitting
- define underfitting
- explain the difference between overfitting and underfitting
- explain generalization
- identify overfitting and underfitting from training/testing results
- explain why overfitting causes poor performance on unseen data
- explain why underfitting causes poor performance overall
- identify common causes of overfitting
- identify common causes of underfitting
- suggest ways to reduce overfitting and underfitting
- connect overfitting and underfitting to training, testing, validation, model evaluation, data quality, and model complexity
- apply these ideas to classification and regression examples
- answer exam-style questions about overfitting and underfitting

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding why models may fail to generalize to new data |
| Connected topics | ML fundamentals, data/features/labels, supervised learning, training/testing/validation, model evaluation, classification/regression |
| Practical focus | Interpreting training and testing performance patterns |
| Exam relevance | Definitions, training/testing comparison, causes, effects, solutions, scenario explanation |

::: tip Learning Focus
Overfitting means a model learns the training data too specifically and performs poorly on new data. Underfitting means a model is too simple or poorly trained and performs poorly on both training and new data.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Overfitting | 过拟合 | Model learns training data too specifically and performs poorly on unseen data |
| Underfitting | 欠拟合 | Model is too simple or poorly trained and fails to learn useful patterns |
| Generalization | 泛化 | Ability to perform well on new unseen data |
| Training data | 训练数据 | Data used to train the model |
| Testing data | 测试数据 | Unseen data used to evaluate the final model |
| Validation data | 验证数据 | Data used to tune or choose the model |
| Model complexity | 模型复杂度 | How flexible or detailed the model is |
| Noise | 噪声 | Random errors or irrelevant variation in data |
| Pattern | 模式 | Meaningful relationship learned from data |
| Memorization | 记忆化 | Learning specific training examples instead of general patterns |
| Bias | 偏差 | Error from overly simple assumptions |
| Variance | 方差 | Sensitivity to small changes in training data |
| Regularization | 正则化 | Technique used to reduce overfitting by limiting complexity |
| Feature selection | 特征选择 | Choosing useful input variables |
| Data leakage | 数据泄露 | Test/future information accidentally influences training |
| Cross-validation | 交叉验证 | Evaluation using multiple train/test splits |
| Hyperparameter | 超参数 | Model setting chosen before/during training |
| Model evaluation | 模型评估 | Checking model performance using suitable metrics |
| Baseline | 基准 | Simple model used for comparison |
| Model drift | 模型漂移 | Model performance falls because real-world data changes |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Machine learning 的目标不是只在 training data 上表现好。  
真正的目标是：

```text
perform well on new unseen data
```

这叫做 **generalization（泛化能力）**。

如果一个 model 在 training data 上表现非常好，但在 testing data 上表现很差，通常说明它可能 **overfitting（过拟合）**。

Overfitting 就像学生只背熟了练习题答案。  
如果考试题和练习题完全一样，他可能得高分。  
但遇到新题就不会做。

```text
training accuracy high
testing accuracy low
→ likely overfitting
```

如果一个 model 在 training data 和 testing data 上都表现差，通常说明它可能 **underfitting（欠拟合）**。

Underfitting 就像学生连基础知识都没学会。  
练习题做不好，新题也做不好。

```text
training accuracy low
testing accuracy low
→ likely underfitting
```

简单来说：

```text
overfitting = too specific to training data
underfitting = too simple / not enough learning
good fit = learns useful patterns and works on new data
```

</template>

<template #en>

### English Explanation

The goal of machine learning is not only to perform well on training data.  
The real goal is:

```text
perform well on new unseen data
```

This is called **generalization**.

If a model performs very well on training data but poorly on testing data, it may be **overfitting**.

Overfitting is like a student memorizing practice question answers.  
If the exam uses the same questions, the student may score highly.  
But with new questions, the student performs poorly.

```text
training accuracy high
testing accuracy low
→ likely overfitting
```

If a model performs poorly on both training data and testing data, it may be **underfitting**.

Underfitting is like a student who has not learned the basic ideas.  
The student performs poorly on practice questions and new questions.

```text
training accuracy low
testing accuracy low
→ likely underfitting
```

In simple terms:

```text
overfitting = too specific to training data
underfitting = too simple / not enough learning
good fit = learns useful patterns and works on new data
```

</template>
</LangBlock>

---

## 5. Generalization

Generalization means a model can make good predictions on new data that was not used during training.

### Why It Matters

A model is usually used on new real-world examples.

Examples:

```text
new emails
new customers
new houses
new students
new transactions
new images
new game matches
```

### Good Generalization

```text
good performance on training data
good performance on testing data
```

### Poor Generalization

```text
good performance on training data
poor performance on testing data
```

This often suggests overfitting.

::: tip Exam Phrase
Generalization is the ability of a model to perform well on new unseen data, not just the data it was trained on.
:::

---

## 6. What Is Overfitting?

Overfitting happens when a model learns the training data too specifically.

It may learn:

```text
noise
random errors
unimportant details
specific examples
patterns that do not apply to new data
```

### Result

The model performs very well on training data but poorly on testing data.

### Typical Pattern

```text
training performance = high
testing performance = low
```

### Example

A spam model memorizes exact emails from the training set instead of learning general spam patterns.

It performs well on training emails but misses new spam emails.

::: tip Exam Phrase
Overfitting occurs when a model learns the training data too closely, including noise or specific details, so it performs poorly on unseen data.
:::

---

## 7. What Is Underfitting?

Underfitting happens when a model is too simple or poorly trained to learn useful patterns.

### Result

The model performs poorly on both training data and testing data.

### Typical Pattern

```text
training performance = low
testing performance = low
```

### Example

A house price model only uses the number of doors to predict price.

It ignores important features such as:

```text
size
location
number of bedrooms
age
```

The model is too simple to learn the real pattern.

::: tip Exam Phrase
Underfitting occurs when a model is too simple or poorly trained, so it fails to learn useful patterns and performs poorly on both training and unseen data.
:::

---

## 8. Good Fit

A good fit means the model has learned useful patterns and can generalize.

### Typical Pattern

```text
training performance = high enough
testing performance = similar and high enough
```

### Example

```text
training accuracy = 91%
testing accuracy = 88%
```

This may suggest the model generalizes reasonably well.

### Important

A small difference between training and testing performance is normal.

A very large gap may suggest overfitting.

---

## 9. Performance Pattern Table

| Training Performance | Testing Performance | Likely Situation |
|---|---|---|
| High | High | good fit / good generalization |
| High | Low | overfitting |
| Low | Low | underfitting |
| Low | High | unusual; check data split, leakage, or metric |

### Example 1

```text
training accuracy = 99%
testing accuracy = 62%
```

Likely:

```text
overfitting
```

### Example 2

```text
training accuracy = 55%
testing accuracy = 53%
```

Likely:

```text
underfitting
```

---

## 10. Overfitting Analogy

Overfitting is like memorizing answers.

### Student Example

A student memorizes:

```text
Question 1 answer = A
Question 2 answer = C
Question 3 answer = B
```

The student does well if the exam has the same questions.

But the student fails if the exam tests the same ideas in a new way.

### Model Example

A model memorizes training examples instead of learning general patterns.

It performs well on training data but poorly on new data.

---

## 11. Underfitting Analogy

Underfitting is like not learning enough.

### Student Example

A student only learns one simple rule:

```text
always choose answer A
```

This performs poorly on practice questions and new exams.

### Model Example

A model is too simple or uses poor features.

It fails to learn useful patterns and performs badly on training and testing data.

---

## 12. Model Complexity

Model complexity affects fitting.

### Too Complex

A very complex model may learn small details and noise.

Risk:

```text
overfitting
```

### Too Simple

A very simple model may not capture the real pattern.

Risk:

```text
underfitting
```

### Goal

Choose a model complex enough to learn useful patterns, but not so complex that it memorizes noise.

```text
too simple → underfitting
too complex → overfitting
balanced → good generalization
```

---

## 13. Causes of Overfitting

Common causes include:

```text
model too complex
training data too small
too many irrelevant features
noisy data
incorrect labels
training for too long
data leakage
not enough regularization
testing repeatedly on the same test set
```

### Example

A model trained on only 20 examples may memorize those examples instead of learning general patterns.

### Exam Phrase

Overfitting can occur when a model is too complex for the amount or quality of training data available.

---

## 14. Causes of Underfitting

Common causes include:

```text
model too simple
not enough useful features
poor feature selection
not enough training
bad data quality
wrong algorithm
over-regularization
features do not contain enough information
```

### Example

Predicting house price using only `house colour` is likely underfitting because the feature is not useful enough.

### Exam Phrase

Underfitting can occur when the model is too simple or the features are insufficient to capture the real pattern in the data.

---

## 15. Data Noise

Noise means random error or irrelevant variation in data.

### Examples

```text
wrong labels
data entry mistakes
sensor errors
random unusual behaviour
irrelevant features
temporary events
```

### Overfitting Risk

A complex model may learn noise as if it were a real pattern.

### Example

If one training email has a typo and is labelled spam, an overfitted model may treat that typo as an important spam sign.

---

## 16. Data Leakage and Overfitting

Data leakage happens when information from testing data or future data accidentally influences training.

### Example

Task:

```text
predict whether a student will pass
```

Bad feature:

```text
final exam score
```

This feature reveals the answer and would not be available before prediction.

### Result

The model may appear to perform extremely well during evaluation but fail in real use.

### Key Idea

Data leakage can create misleadingly high performance.

---

## 17. Overfitting in Classification

### Example: Spam Detection

A spam classifier memorizes exact training emails.

Training result:

```text
training accuracy = 100%
```

Testing result:

```text
testing accuracy = 65%
```

### Problem

It does not recognize new spam patterns.

### Possible Fix

```text
collect more representative data
remove irrelevant/noisy features
use simpler model
use validation data
use regularization
```

---

## 18. Overfitting in Regression

### Example: House Price Prediction

A house price model fits every training example almost perfectly, including unusual outliers.

Training error:

```text
very low
```

Testing error:

```text
high
```

### Problem

The model learned noise in the training data rather than general price patterns.

### Possible Fix

```text
remove or investigate outliers
use more data
reduce model complexity
choose better features
regularize model
```

---

## 19. Underfitting in Classification

### Example: Student Pass/Fail Prediction

A model predicts pass/fail using only one weak feature:

```text
student ID number
```

Training accuracy:

```text
low
```

Testing accuracy:

```text
low
```

### Problem

The feature does not explain the target well.

### Better Features

```text
attendance
previous scores
assignment completion
study hours
```

---

## 20. Underfitting in Regression

### Example: Delivery Time Prediction

A model predicts delivery time using only:

```text
number of items ordered
```

It ignores:

```text
distance
traffic
weather
time of day
driver availability
```

### Result

The model performs poorly on both training and testing data.

### Possible Fix

Add more relevant features and use a more suitable model.

---

## 21. Bias-Variance Preview

This is a useful idea, but keep it simple.

### High Bias

Model makes overly simple assumptions.

Often connected to:

```text
underfitting
```

### High Variance

Model is too sensitive to training data.

Often connected to:

```text
overfitting
```

### Simple Memory

```text
high bias = too simple
high variance = too sensitive / too complex
```

---

## 22. How to Reduce Overfitting

Possible methods:

```text
use more training data
use more representative data
remove noise and incorrect labels
remove irrelevant features
simplify the model
use regularization
use validation data for model selection
use cross-validation
stop training earlier
avoid data leakage
```

### Student-Level Explanation

To reduce overfitting, make the model less focused on memorizing training examples and more focused on learning general patterns.

---

## 23. How to Reduce Underfitting

Possible methods:

```text
use a more suitable model
increase model complexity
add relevant features
improve feature engineering
train for longer if appropriate
reduce excessive regularization
improve data quality
choose a better algorithm
```

### Student-Level Explanation

To reduce underfitting, help the model learn more useful patterns from the data.

---

## 24. Role of Validation Data

Validation data helps choose model settings and detect fitting problems before final testing.

### Example

Three models:

| Model | Training Accuracy | Validation Accuracy |
|---|---:|---:|
| A | 75% | 73% |
| B | 90% | 88% |
| C | 99% | 65% |

Model C may be overfitting.  
Model B may be a better choice.

### Key Idea

Validation data helps choose a model that generalizes better.

---

## 25. Role of Testing Data

Testing data is used for final evaluation after model choices are finished.

### Why?

It checks whether the final model performs well on unseen examples.

### Bad Practice

Using test data repeatedly to tune the model can make the final evaluation unreliable.

### Good Practice

```text
train on training set
choose/tune with validation set
final check with test set
```

---

## 26. Cross-validation Preview

Cross-validation uses multiple splits of the data to evaluate model performance.

### Why Useful?

It can give a more reliable estimate when the dataset is small.

### Simple Idea

```text
train and test multiple times using different parts of the data
average the results
```

### Level Control

Students do not need detailed calculation here.  
Understand that it helps check whether performance is stable across different splits.

---

## 27. Learning Curve Preview

A learning curve shows how model performance changes as training continues or as data size changes.

### Overfitting Pattern

```text
training performance high
validation/testing performance much lower
```

### Underfitting Pattern

```text
training performance low
validation/testing performance low
```

### Use

Learning curves can help diagnose whether more data, better features, or a different model is needed.

---

## 28. Data Quality and Fitting

Poor data quality can cause fitting problems.

### Data Problems

```text
wrong labels
missing values
duplicates
outliers
unrepresentative data
biased samples
irrelevant features
data leakage
```

### Effects

| Problem | Possible Effect |
|---|---|
| wrong labels | model learns wrong patterns |
| too little data | overfitting risk |
| irrelevant features | noise and poor generalization |
| poor features | underfitting |
| unrepresentative data | poor real-world performance |
| data leakage | misleadingly high evaluation results |

---

## 29. Overfitting and Bias/Fairness

A model may overfit patterns that are not fair or meaningful.

### Example

A student risk model may overfit to a small dataset from one school.

It may not work fairly for:

```text
new students
different backgrounds
different learning contexts
different schools
```

### Key Idea

Good test performance should be checked across relevant groups, not only overall.

---

## 30. Underfitting and Bias/Fairness

An underfitted model may ignore important differences.

### Example

A medical model that is too simple may miss disease patterns in some groups.

### Risk

Poor performance may harm users if the model is used for decisions.

### Key Idea

A simple model is not automatically fair.  
It may still be inaccurate or unfair.

---

## 31. Monitoring After Deployment

Even a well-fitted model can become worse over time.

### Model Drift

Model drift happens when real-world data changes.

Examples:

```text
new spam tactics
new shopping behaviour
new disease patterns
game balance updates
economic changes
student behaviour changes
```

### Response

```text
monitor performance
collect new data
retrain when needed
check fairness and errors
update evaluation
```

---

## 32. Worked Example: Spam Detection

### Situation

```text
training accuracy = 99%
testing accuracy = 70%
```

### Diagnosis

Likely overfitting.

### Explanation

The model performs very well on training emails but poorly on unseen emails, so it may have memorized training examples or learned noise.

### Improvement

```text
use more representative emails
remove noisy features
use validation data
simplify model
monitor new spam tactics
```

---

## 33. Worked Example: House Price Prediction

### Situation

```text
training MAE = 5,000
testing MAE = 80,000
```

### Diagnosis

Likely overfitting.

### Explanation

The model predicts training house prices very closely but has much larger error on unseen houses.

### Improvement

```text
investigate outliers
collect more data
reduce model complexity
improve features
use validation set
```

---

## 34. Worked Example: Student Risk Model

### Situation

```text
training accuracy = 58%
testing accuracy = 56%
```

### Diagnosis

Likely underfitting.

### Explanation

The model performs poorly on both training and testing data, so it has not learned useful patterns.

### Improvement

```text
add relevant features
improve labels
use a more suitable model
check data quality
train properly
```

---

## 35. Worked Example: Delivery Time Prediction

### Situation

A delivery model uses only:

```text
number of items
```

but ignores:

```text
distance
traffic
weather
driver availability
```

### Diagnosis

Likely underfitting.

### Explanation

The model does not have enough relevant information to learn delivery time patterns.

### Improvement

Add relevant features and evaluate again on unseen data.

---

## 36. Worked Example: Medical Image Model

### Situation

A model performs well on images from one hospital but poorly on images from another hospital.

### Possible Diagnosis

The model may have overfitted to patterns specific to the first hospital, such as scanner type or image format.

### Improvement

```text
train on more representative data
test across hospitals
use careful validation
involve medical experts
monitor fairness and safety
```

---

## 37. Scenario Answer Bank

### If Asked: “Define overfitting”

```text
Overfitting occurs when a model learns the training data too specifically, including noise or unimportant details, so it performs well on training data but poorly on unseen data.
```

### If Asked: “Define underfitting”

```text
Underfitting occurs when a model is too simple or poorly trained, so it fails to learn useful patterns and performs poorly on both training and unseen data.
```

### If Asked: “Identify from results”

```text
The model is likely [overfitting/underfitting] because the training performance is [high/low] and the testing performance is [high/low].
```

### If Asked: “Improve overfitting”

```text
Overfitting could be reduced by using more representative training data, simplifying the model, removing noisy or irrelevant features, using regularization, and validating the model on unseen data.
```

### If Asked: “Improve underfitting”

```text
Underfitting could be reduced by using a more suitable or more complex model, adding relevant features, improving feature engineering, improving data quality, or training the model more effectively.
```

---

## 38. Common Misconceptions

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| High training accuracy always means good model | may overfit | check unseen testing data |
| Overfitting means model is too simple | overfitting is too specific/complex | underfitting is too simple |
| Underfitting means model memorized data | underfitting fails to learn useful patterns | overfitting memorizes |
| Testing data can be used repeatedly to improve model | causes leakage | use validation for tuning |
| More complexity always improves model | may overfit | balance complexity |
| Simpler model is always better | may underfit | must learn useful patterns |
| More data always fixes everything | poor data can still harm | quality and relevance matter |
| Overfitting only affects classification | also affects regression | any model can overfit |
| Underfitting only affects regression | also affects classification | any model can underfit |
| Good overall score proves fairness | group performance may differ | evaluate across groups |

---

## 39. Guided Practice

### Practice 1: Identify Overfitting

A model has 98% training accuracy and 61% testing accuracy. What is likely happening?

<details>
<summary>Suggested Answer</summary>

The model is likely overfitting because it performs very well on training data but poorly on unseen testing data.

</details>

---

### Practice 2: Identify Underfitting

A model has 55% training accuracy and 53% testing accuracy. What is likely happening?

<details>
<summary>Suggested Answer</summary>

The model is likely underfitting because it performs poorly on both training and testing data.

</details>

---

### Practice 3: Good Fit

A model has 91% training accuracy and 88% testing accuracy. What does this suggest?

<details>
<summary>Suggested Answer</summary>

This may suggest a reasonable fit because both training and testing performance are fairly high and close to each other.

</details>

---

### Practice 4: Cause of Overfitting

Why can a very complex model trained on a small dataset overfit?

<details>
<summary>Suggested Answer</summary>

It may memorize the small training set and learn noise or specific details instead of general patterns.

</details>

---

### Practice 5: Fix Underfitting

A house price model uses only the number of doors. Suggest one improvement.

<details>
<summary>Suggested Answer</summary>

Add more relevant features such as house size, location, number of bedrooms, and age of property.

</details>

---

## 40. Independent Practice

### Question 1

Define overfitting.

### Question 2

Define underfitting.

### Question 3

Explain generalization.

### Question 4

Explain the difference between overfitting and underfitting.

### Question 5

A model has high training accuracy and low testing accuracy. Explain what this suggests.

### Question 6

A model has low training accuracy and low testing accuracy. Explain what this suggests.

### Question 7

Give three possible causes of overfitting.

### Question 8

Give three possible causes of underfitting.

### Question 9

Suggest two ways to reduce overfitting.

### Question 10

Suggest two ways to reduce underfitting.

---

## 41. Exam-style Questions

### Question 1 [4 marks]

Define overfitting and explain its effect on model performance.

<details>
<summary>Mark Scheme Style Answer</summary>

Overfitting occurs when a model learns the training data too specifically, including noise or unimportant details. It performs well on training data but poorly on unseen testing data because it does not generalize well to new examples.

</details>

---

### Question 2 [4 marks]

Define underfitting and explain its effect on model performance.

<details>
<summary>Mark Scheme Style Answer</summary>

Underfitting occurs when a model is too simple or poorly trained to learn useful patterns in the data. It performs poorly on both training data and unseen testing data because it cannot capture the real relationship between features and labels.

</details>

---

### Question 3 [6 marks]

A model has 99% accuracy on training data but 64% accuracy on testing data. Explain what this suggests and give two ways to improve the model.

<details>
<summary>Mark Scheme Style Answer</summary>

This suggests the model is likely overfitting. It has learned the training data too specifically and does not generalize well to unseen data. Improvements could include using more representative training data, simplifying the model, removing noisy or irrelevant features, using regularization, checking for data leakage, and using validation data to tune the model.

</details>

---

### Question 4 [6 marks]

A model has 56% accuracy on training data and 54% accuracy on testing data. Explain what this suggests and give two ways to improve the model.

<details>
<summary>Mark Scheme Style Answer</summary>

This suggests the model is likely underfitting. It performs poorly on both training and testing data, so it has not learned useful patterns. Improvements could include using a more suitable or more complex model, adding relevant features, improving feature engineering, improving data quality, reducing excessive regularization, or training the model more effectively.

</details>

---

### Question 5 [6 marks]

Explain why testing on unseen data is important when checking for overfitting.

<details>
<summary>Mark Scheme Style Answer</summary>

Testing on unseen data is important because a model may perform well on the data it was trained on simply by memorizing it. Unseen testing data gives a better estimate of how the model will perform on new real-world examples. If training performance is much higher than testing performance, this suggests overfitting and poor generalization.

</details>

---

## 42. Classroom Activity

### Activity 1: Diagnose the Model

Students classify each result:

```text
training 95%, testing 93%
training 99%, testing 60%
training 58%, testing 56%
training 80%, testing 79%
training 100%, testing 50%
```

Options:

```text
good fit
overfitting
underfitting
needs more context
```

---

### Activity 2: Complexity Line

Draw a line on the board:

```text
too simple -------- good fit -------- too complex
underfitting                         overfitting
```

Students place model examples on the line.

---

### Activity 3: Fix the Problem

Give groups scenarios:

```text
small dataset + very complex model
model uses irrelevant features
model ignores important features
model performs badly on all data
model performs well on training but poorly on test
```

Students recommend fixes.

---

## 43. Homework

### Homework Part A: Concept Explanation

In 6-8 sentences, explain the difference between overfitting and underfitting.

---

### Homework Part B: Result Interpretation

For each result, identify the likely problem:

```text
1. training accuracy 98%, testing accuracy 62%
2. training accuracy 60%, testing accuracy 58%
3. training accuracy 90%, testing accuracy 88%
4. training MAE 2,000, testing MAE 70,000
5. training MAE 80,000, testing MAE 85,000
```

---

### Homework Part C: Scenario Fixes

For each scenario, suggest one fix:

```text
1. model is too complex and memorizes training data
2. model uses too few useful features
3. labels contain many mistakes
4. dataset is very small
5. model works on old data but not new data
```

---

### Homework Part D: Misconception Correction

Correct these statements:

```text
A model with high training accuracy must be good.
Overfitting means the model is too simple.
Underfitting means the model memorized the training data.
Testing data should be used to tune the model many times.
A good model only needs to perform well on training data.
```

---

## 44. One-page Revision Summary

| Point | Summary |
|---|---|
| Generalization | Ability to perform well on unseen data |
| Overfitting | Learns training data too specifically |
| Underfitting | Too simple or poorly trained |
| Good fit | Learns useful patterns and generalizes |
| Overfitting pattern | high training performance, low testing performance |
| Underfitting pattern | low training performance, low testing performance |
| Model complexity | Too high may overfit; too low may underfit |
| Noise | Random/irrelevant errors that may be learned |
| Data leakage | Can cause misleadingly high performance |
| Overfitting causes | complex model, small data, noise, irrelevant features |
| Underfitting causes | simple model, poor features, not enough training |
| Reduce overfitting | more data, simpler model, regularization, remove noise |
| Reduce underfitting | better features, more suitable model, train better |
| Validation data | Helps choose/tune model |
| Testing data | Final unseen evaluation |
| Exam phrase | Overfitting performs well on training data but poorly on unseen data, while underfitting performs poorly on both training and unseen data |

---

## 45. Quick Self-test

Before moving on, students should be able to answer these:

1. What is generalization?
2. What is overfitting?
3. What is underfitting?
4. What training/testing pattern suggests overfitting?
5. What training/testing pattern suggests underfitting?
6. Why can a complex model overfit?
7. Why can a simple model underfit?
8. Give two ways to reduce overfitting.
9. Give two ways to reduce underfitting.
10. Why is unseen test data important?
