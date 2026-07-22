# Model Evaluation

## Page map

- [Lesson goals](#1-lesson-goals)
- [Syllabus mapping](#2-syllabus-mapping)
- [Core checklist](#core-checklist)
- [Key terms and detailed lesson](#3-key-terms)

---

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why machine learning models need evaluation
- define model evaluation
- distinguish evaluation for classification and regression tasks
- explain accuracy at a basic level
- explain why accuracy can sometimes be misleading
- explain confusion matrix, true positive, false positive, true negative, and false negative
- explain precision and recall at a student-friendly level
- explain regression error at a basic level
- explain mean absolute error as an intuitive regression metric
- interpret simple model performance results
- explain why evaluation should use unseen testing data
- explain how evaluation connects to overfitting, underfitting, bias, fairness, and safety
- identify common model evaluation mistakes
- apply evaluation ideas to spam, fraud, medical, student, house price, and delivery examples
- answer exam-style questions about model evaluation

---

## Start here: accuracy is not always enough

Model evaluation checks how well a machine learning model performs.

Accuracy can be useful, but it does not always show the full picture. In some scenarios, false positives or false negatives may be more important than overall accuracy.

Students should choose evaluation measures based on the scenario, not just memorise metric names.

---

## Metric choice table

| Measure | What it helps judge | Useful when... |
|---|---|---|
| Accuracy | overall proportion of correct predictions | classes are balanced and all errors have similar cost |
| Precision | how many positive predictions were actually correct | false positives are costly |
| Recall | how many actual positives were found | false negatives are costly |
| F1 score | balance between precision and recall | both false positives and false negatives matter |
| Confusion matrix | shows types of correct and incorrect predictions | you need to see TP, FP, TN, FN separately |

---

## Core checklist

After studying this page, you should be able to:

- explain why model evaluation is needed
- explain what accuracy measures
- interpret a confusion matrix at a simple level
- distinguish false positives from false negatives
- explain why accuracy may be misleading
- choose a suitable metric for a scenario
- explain why precision or recall may matter in high-risk decisions
- describe how evaluation helps improve or judge a model

---

## Scenario answer pattern

Use this order when answering model evaluation scenario questions:

1. Identify what the model is predicting or classifying.
2. Identify what kind of error would be most serious.
3. Decide whether accuracy alone is enough.
4. Choose a suitable evaluation measure.
5. Explain what that measure shows.
6. Link the measure back to the scenario risk.
7. Mention human review or further testing if the scenario is high-risk.

---

## False positive vs false negative

A **false positive** means the model predicts something is positive, but it is actually negative.

A **false negative** means the model predicts something is negative, but it is actually positive.

| Scenario | False positive | False negative |
|---|---|---|
| Medical test | healthy patient flagged as possible disease | disease case missed |
| Spam filter | normal email marked as spam | spam email allowed into inbox |
| Fraud detection | normal transaction flagged as fraud | fraud transaction missed |

The more serious error depends on the scenario. In medical screening, a false negative may delay treatment. In fraud detection, both missed fraud and wrongly blocked customers can matter.

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Judging whether a trained model performs well enough for its purpose |
| Connected topics | Supervised learning, classification/regression, training/testing/validation, overfitting/underfitting, bias/ethics/privacy |
| Practical focus | Choosing and explaining suitable evaluation ideas for scenario-based ML tasks |
| Exam relevance | Accuracy, misleading accuracy, confusion matrix, precision/recall, regression error, fairness and limitations |

::: tip Learning Focus
Evaluation checks how well a trained model performs. Classification models are often evaluated by comparing predicted classes with actual classes. Regression models are evaluated by measuring how close predicted numbers are to actual numbers.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Model evaluation | 模型评估 | Checking how well a trained model performs |
| Metric | 评价指标 | Measurement used to evaluate model performance |
| Accuracy | 准确率 | Proportion of predictions that are correct |
| Classification | 分类 | Predicting a class/category |
| Regression | 回归 | Predicting a numerical value |
| Confusion matrix | 混淆矩阵 | Table showing correct and incorrect classification predictions |
| True positive | 真阳性 | Model predicts positive and actual value is positive |
| False positive | 假阳性 | Model predicts positive but actual value is negative |
| True negative | 真阴性 | Model predicts negative and actual value is negative |
| False negative | 假阴性 | Model predicts negative but actual value is positive |
| Precision | 精确率 | Of predicted positives, how many are actually positive |
| Recall | 召回率 | Of actual positives, how many are correctly found |
| F1 score | F1 分数 | Combined measure of precision and recall |
| Error | 误差 | Difference between prediction and actual value |
| Mean absolute error | 平均绝对误差 | Average size of numerical prediction errors |
| Mean squared error | 均方误差 | Average squared prediction error |
| Testing data | 测试数据 | Unseen data used to evaluate final model |
| Generalization | 泛化 | Ability to perform well on new unseen data |
| Overfitting | 过拟合 | Model performs well on training data but poorly on new data |
| Underfitting | 欠拟合 | Model is too simple and performs poorly overall |
| Baseline | 基准 | Simple comparison level for model performance |
| Fairness | 公平性 | Whether performance is acceptable across different groups |
| False alarm | 误报 | Usually a false positive in warning systems |
| Missed case | 漏报 | Usually a false negative in detection systems |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

训练完 machine learning model 之后，我们不能直接假设它一定好用。  
我们需要 **model evaluation（模型评估）** 来检查它的表现。

Evaluation 的核心问题是：

```text
model 的 prediction 是否接近真实答案？
model 在 new unseen data 上表现怎么样？
model 的错误类型是否可以接受？
model 对不同人群是否公平？
```

不同任务需要不同 evaluation 方法。

如果是 **classification**，输出是 category：

```text
Spam / NotSpam
Fraud / NotFraud
Pass / Fail
```

常见 evaluation 包括：

```text
accuracy
confusion matrix
precision
recall
F1 score
```

如果是 **regression**，输出是 number：

```text
house price
delivery time
exam score
temperature
```

常见 evaluation 包括：

```text
prediction error
mean absolute error
mean squared error
```

Accuracy 很常见，但不能总是只看 accuracy。  
例如 fraud detection 中，99% 的 transactions 都不是 fraud。  
如果 model 永远预测 NotFraud，它可能有 99% accuracy，但它完全抓不到 fraud。

所以 evaluation 不只是问：

```text
How many are correct?
```

还要问：

```text
What kinds of mistakes are made?
Who is harmed by mistakes?
Is the model good enough for this context?
```

</template>

<template #en>

### English Explanation

After training a machine learning model, we cannot simply assume it works well.  
We need **model evaluation** to check its performance.

Evaluation asks:

```text
Are the model's predictions close to the true answers?
How well does the model perform on new unseen data?
Are the types of errors acceptable?
Is the model fair across different groups?
```

Different tasks need different evaluation methods.

For **classification**, the output is a category:

```text
Spam / NotSpam
Fraud / NotFraud
Pass / Fail
```

Common evaluation ideas include:

```text
accuracy
confusion matrix
precision
recall
F1 score
```

For **regression**, the output is a number:

```text
house price
delivery time
exam score
temperature
```

Common evaluation ideas include:

```text
prediction error
mean absolute error
mean squared error
```

Accuracy is common, but it is not always enough.  
For example, in fraud detection, 99% of transactions may not be fraud.  
If a model always predicts NotFraud, it may get 99% accuracy but catch no fraud.

So evaluation does not only ask:

```text
How many are correct?
```

It also asks:

```text
What kinds of mistakes are made?
Who is harmed by mistakes?
Is the model good enough for this context?
```

</template>
</LangBlock>

---

## 5. What Is Model Evaluation?

Model evaluation is the process of checking how well a trained machine learning model performs.

### It Checks

```text
how accurate predictions are
what errors the model makes
whether the model works on unseen data
whether the model generalizes
whether the model is useful for the real task
whether the model is fair and safe enough
```

### Why It Matters

A model may look good during training but perform badly in real use.

Evaluation helps decide:

```text
whether the model is good enough
whether more data is needed
whether the model is overfitting
whether the model is biased
whether human oversight is needed
```

::: tip Exam Phrase
Model evaluation measures how well a trained model performs, usually using unseen testing data, to estimate how well it may work on new real-world examples.
:::

---

## 6. Why Testing Data Should Be Unseen

A model should be evaluated on data it did not use for training.

### Why?

If the model is tested on data it already saw, it may only be remembering training examples.

### Better Evaluation

```text
training data = used to train model
testing data = used to evaluate final model
```

### Example

A student who memorizes practice questions may do well on those same questions but poorly on a new exam.

A model can have the same issue.

### Key Idea

Unseen testing data gives a better estimate of real-world performance.

---

## 7. Classification Evaluation

Classification predicts categories.

Examples:

```text
Spam / NotSpam
Fraud / NotFraud
Pass / Fail
Disease / NoDisease
Cat / Dog / Car
```

### Evaluation Question

```text
Did the model predict the correct class?
```

### Common Metrics

```text
accuracy
confusion matrix
precision
recall
F1 score
```

### Example

If a model classifies 100 emails and gets 90 correct:

```text
accuracy = 90 / 100 = 90%
```

---

## 8. Accuracy

Accuracy is the proportion of predictions that are correct.

### Accuracy example

### Formula

```text
accuracy = number of correct predictions / total number of predictions
```

### Example

A model predicts 80 out of 100 examples correctly.

```text
accuracy = 80 / 100 = 0.8 = 80%
```

### Good Use

Accuracy is easy to understand and useful when classes are balanced and errors have similar importance.

### Limitation

Accuracy can be misleading when:

```text
classes are unbalanced
some errors are much more serious than others
fairness across groups matters
```

---

## 9. Why Accuracy Can Be Misleading

### Example: Fraud Detection

Suppose 10,000 transactions include:

```text
9,900 not fraud
100 fraud
```

A bad model predicts every transaction as:

```text
NotFraud
```

It gets:

```text
9,900 correct out of 10,000
accuracy = 99%
```

But it catches:

```text
0 fraud cases
```

### Problem

High accuracy does not mean the model is useful.

### Strong Exam Phrase

Accuracy can be misleading for imbalanced datasets because a model can achieve high accuracy by predicting the majority class while performing poorly on the minority class.

---

## 10. Confusion Matrix

A confusion matrix shows correct and incorrect classification predictions.

### Confusion matrix example

### Binary Classification Example

Task:

```text
predict Spam or NotSpam
```

|  | Predicted Spam | Predicted NotSpam |
|---|---:|---:|
| Actual Spam | True Positive | False Negative |
| Actual NotSpam | False Positive | True Negative |

### Why Useful?

It shows:

```text
how many positives were found
how many positives were missed
how many false alarms happened
how many negatives were correctly ignored
```

::: tip Exam Phrase
A confusion matrix shows the counts of correct and incorrect predictions for each class, helping identify the types of errors made by a classification model.
:::

---

## 11. True Positive, False Positive, True Negative, False Negative

For a binary classifier, choose one class as the positive class.

Example:

```text
positive class = Spam
negative class = NotSpam
```

| Term | Meaning | Spam Example |
|---|---|---|
| True positive | predicted positive and actually positive | spam correctly marked as spam |
| False positive | predicted positive but actually negative | normal email wrongly marked as spam |
| True negative | predicted negative and actually negative | normal email correctly left alone |
| False negative | predicted negative but actually positive | spam wrongly allowed through |

### Memory

```text
true = correct
false = incorrect
positive = model says yes
negative = model says no
```

---

## 12. False Positive

A false positive happens when the model predicts positive but the actual class is negative.

### Examples

| Scenario | False Positive |
|---|---|
| spam filter | normal email marked as spam |
| fraud detection | normal transaction flagged as fraud |
| medical screening | healthy patient flagged as possible disease |
| student risk model | student wrongly labelled at risk |

### Impact

False positives may cause:

```text
unnecessary alarm
extra review work
blocked transactions
stress for users
unfair treatment
```

---

## 13. False Negative

A false negative happens when the model predicts negative but the actual class is positive.

### Examples

| Scenario | False Negative |
|---|---|
| spam filter | spam email enters inbox |
| fraud detection | fraud transaction is missed |
| medical screening | disease case is missed |
| security system | attack is not detected |

### Impact

False negatives may cause:

```text
missed danger
financial loss
safety risk
delayed intervention
harm to users
```

### Important

In some contexts, false negatives are more serious than false positives.

---

## 14. Precision

Precision asks:

### Precision example

```text
Of the cases predicted positive, how many were actually positive?
```

### Formula

```text
precision = true positives / (true positives + false positives)
```

### Example

A fraud model flags 100 transactions as fraud.

```text
80 are actually fraud
20 are normal transactions
```

Precision:

```text
80 / 100 = 80%
```

### Meaning

High precision means fewer false alarms among positive predictions.

---

## 15. Recall

Recall asks:

### Recall example

```text
Of all actual positive cases, how many did the model find?
```

### Formula

```text
recall = true positives / (true positives + false negatives)
```

### Example

There are 100 actual fraud transactions.

```text
model finds 70
model misses 30
```

Recall:

```text
70 / 100 = 70%
```

### Meaning

High recall means fewer positive cases are missed.

---

## 16. Precision vs Recall

| Metric | Main Question | Concern |
|---|---|---|
| Precision | When the model says positive, is it usually right? | false positives |
| Recall | Did the model find most actual positives? | false negatives |

### Spam Example

High precision:

```text
emails marked as spam are usually truly spam
```

High recall:

```text
most spam emails are caught
```

### Trade-off

Sometimes increasing recall creates more false positives.  
Sometimes increasing precision misses more positives.

---

## 17. F1 Score Preview

F1 score combines precision and recall into one measure.

### F1 score example

### Why Useful?

It is useful when both false positives and false negatives matter.

### Student-Level Meaning

```text
F1 score balances precision and recall
```

### Level Control

You do not need to calculate F1 unless specifically asked.  
Understand that it is used when accuracy alone is not enough and both precision and recall matter.

---

## 18. Regression Evaluation

Regression predicts numbers.

Examples:

```text
house price
delivery time
temperature
exam score
sales amount
electricity demand
```

### Evaluation Question

```text
How close is the predicted number to the actual number?
```

### Common Metrics

```text
mean absolute error
mean squared error
root mean squared error
```

### Simple Idea

For regression, we measure prediction error.

---

## 19. Prediction Error

Prediction error is the difference between predicted and actual value.

### Example

```text
actual delivery time = 45 minutes
predicted delivery time = 38 minutes
```

Error size:

```text
7 minutes
```

### Another Example

```text
actual house price = 800000
predicted house price = 760000
```

Error size:

```text
40000
```

### Key Idea

Smaller error usually means better regression performance.

---

## 20. Mean Absolute Error

Mean absolute error, or MAE, is the average absolute size of prediction errors.

### Example

| Actual | Predicted | Absolute Error |
|---:|---:|---:|
| 40 | 38 | 2 |
| 50 | 60 | 10 |
| 30 | 27 | 3 |

Mean absolute error:

```text
(2 + 10 + 3) / 3 = 5
```

### Meaning

The model is wrong by about 5 units on average.

### Why Useful?

MAE is easy to interpret because it uses the same unit as the label.

---

## 21. Mean Squared Error Preview

Mean squared error, or MSE, squares each error before averaging.

### Simple Meaning

MSE gives larger penalty to large errors.

### Example

A delivery model with one very large error may get a worse MSE.

### Level Control

For student-friendly answers, MAE is usually easier to explain.  
MSE is useful to mention if the question asks about regression metrics.

---

## 22. Classification vs Regression Evaluation

| Task Type | Output | Evaluation Idea |
|---|---|---|
| Classification | category | compare predicted class with actual class |
| Regression | number | measure size of numerical errors |

### Examples

Classification:

```text
accuracy
confusion matrix
precision
recall
```

Regression:

```text
mean absolute error
mean squared error
root mean squared error
```

### Exam Phrase

Classification evaluation checks whether predicted classes match actual classes, while regression evaluation measures how close predicted numerical values are to actual values.

---

## 23. Baseline Model

A baseline is a simple comparison point.

### Example: Classification

If 90% of emails are NotSpam, a simple baseline may always predict NotSpam.

A model should ideally do better than this baseline, especially on important classes.

### Example: Regression

A simple baseline may always predict the average house price.

A good regression model should have lower error than this simple baseline.

### Why Useful?

A baseline helps judge whether a model is actually useful.

---

## 24. Evaluation and Overfitting

Evaluation helps detect overfitting.

### Pattern

```text
training performance very high
testing performance much lower
```

This suggests:

```text
model learned training data too specifically
model does not generalize well
```

### Example

```text
training accuracy = 99%
testing accuracy = 64%
```

Likely issue:

```text
overfitting
```

---

## 25. Evaluation and Underfitting

Underfitting means the model is too simple or has not learned enough.

### Pattern

```text
training performance low
testing performance low
```

### Example

```text
training accuracy = 58%
testing accuracy = 55%
```

Likely issue:

```text
underfitting
```

### Possible Causes

```text
model too simple
poor features
not enough training
bad data quality
wrong algorithm
```

---

## 26. Evaluation and Fairness

A model may perform well overall but poorly for some groups.

### Example

Speech model:

```text
overall accuracy = 92%
accuracy for group A = 96%
accuracy for group B = 72%
```

### Problem

The model may be unfair or unsafe for group B.

### Good Practice

Evaluate performance across relevant groups, especially when the model affects people.

### Exam Phrase

Overall performance may hide poor performance for specific groups, so models should be evaluated for fairness across relevant groups when decisions affect people.

---

## 27. Evaluation and Safety

Some mistakes are more serious than others.

### Medical Example

False negative:

```text
model says no disease when disease is present
```

This may delay treatment.

False positive:

```text
model says possible disease when none is present
```

This may cause stress and extra tests.

### Key Idea

The best metric depends on the consequences of errors.

High-risk systems need stricter evaluation and human oversight.

---

## 28. Evaluation and Privacy

Evaluation data may contain personal data.

### Privacy Concerns

```text
testing data may contain sensitive records
evaluation reports may expose personal information
model errors may reveal private details
data may be reused beyond original purpose
```

### Controls

```text
anonymization or pseudonymization
access control
encryption
data minimization
retention limits
clear purpose
```

### Connection

Evaluation must be technically useful and privacy-respecting.

---

## 29. Worked Example: Spam Filter

### Task

Classify emails as spam or not spam.

### Good Metrics

```text
accuracy
confusion matrix
precision
recall
```

### False Positive

```text
normal email marked as spam
```

Impact:

```text
important message may be missed
```

### False Negative

```text
spam email allowed into inbox
```

Impact:

```text
user may see scam/phishing email
```

### Evaluation Need

Balance catching spam with avoiding blocking important normal emails.

---

## 30. Worked Example: Fraud Detection

### Task

Classify transactions as fraud or not fraud.

### Why Accuracy Is Not Enough

Fraud is rare, so a model can get high accuracy by predicting NotFraud most of the time.

### Important Metrics

```text
recall = how many actual fraud cases are caught
precision = how many flagged cases are actually fraud
confusion matrix = types of errors
```

### Human Review

Flagged transactions may need human or extra system review because false positives can harm normal customers.

---

## 31. Worked Example: Medical Screening

### Task

Classify whether a scan shows possible disease signs.

### False Negative

```text
disease missed
```

This may be very serious.

### False Positive

```text
healthy patient flagged
```

This may cause stress and extra testing.

### Evaluation Need

The model should be carefully evaluated, tested across patient groups, and reviewed by medical experts.

---

## 32. Worked Example: Student Risk Model

### Task

Predict whether a student is at risk of failing.

### Metrics

```text
accuracy
precision
recall
confusion matrix
fairness across student groups
```

### Risk

False positives may unfairly label students.  
False negatives may miss students who need support.

### Good Use

The model should support teachers and students, not automatically punish students.

---

## 33. Worked Example: House Price Prediction

### Task

Predict house price.

### Regression Metrics

```text
mean absolute error
mean squared error
```

### Example

If MAE is:

```text
50000
```

then predictions are wrong by about 50,000 on average.

### Evaluation Need

Check whether the error is acceptable for the use case.

An error of 50,000 may be too large for some users.

---

## 34. Worked Example: Delivery Time Prediction

### Task

Predict delivery time in minutes.

### Metric

```text
mean absolute error
```

### Example

MAE:

```text
6 minutes
```

Meaning:

```text
prediction is wrong by about 6 minutes on average
```

### Context

A 6-minute error may be acceptable for food delivery, but not for emergency medical delivery.

---

## 35. Scenario Answer Bank

### If Asked: “Why evaluate a model?”

```text
A model is evaluated to check how well it performs on unseen data, what errors it makes, and whether it is reliable enough for real-world use.
```

### If Asked: “Explain accuracy”

```text
Accuracy is the proportion of predictions that are correct. It is calculated as correct predictions divided by total predictions.
```

### If Asked: “Why accuracy can be misleading”

```text
Accuracy can be misleading when classes are imbalanced because a model may get high accuracy by predicting the majority class while failing to detect the minority class.
```

### If Asked: “Explain precision and recall”

```text
Precision measures how many predicted positives are actually positive. Recall measures how many actual positives the model correctly finds.
```

### If Asked: “Regression evaluation”

```text
Regression models are evaluated by measuring how close predicted numerical values are to actual values, for example using mean absolute error.
```

---

## Common mistakes

Watch for these mistakes in model evaluation questions:

- saying high accuracy always means the model is good
- ignoring imbalanced data
- confusing false positives with false negatives
- choosing precision when recall is more important
- choosing recall when precision is more important
- describing a metric without linking it to the scenario
- forgetting that high-risk decisions may need human review
- treating evaluation as the same as training

### Common exam trap

A metric name alone is not enough. Explain why that metric fits the cost of errors in the scenario.

---

## 36. Common Misconceptions

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| High training accuracy proves model is good | model may overfit | test on unseen data |
| Accuracy is always enough | can be misleading with imbalance | use suitable metrics |
| False positive and false negative are the same | they have different meanings and impacts | identify error type |
| Precision and recall are identical | precision focuses predicted positives; recall focuses actual positives | different questions |
| Regression uses accuracy in the same way | regression predicts numbers | use error metrics |
| Low error always means safe model | may still be biased or unsafe | check context/fairness |
| Evaluation data has no privacy risk | may contain personal data | protect evaluation data |
| One metric is always best | metric depends on task and risk | choose based on context |
| Overall accuracy proves fairness | group performance may differ | evaluate across groups |
| A model with high score needs no human oversight | high-risk contexts need review | use oversight where needed |

---

## 37. Guided Practice

### Practice 1: Accuracy

A model makes 100 predictions and 85 are correct. What is the accuracy?

<details>
<summary>Suggested Answer</summary>

85%.

</details>

---

### Practice 2: False Positive

A normal email is marked as spam. What type of error is this if Spam is the positive class?

<details>
<summary>Suggested Answer</summary>

False positive.

</details>

---

### Practice 3: False Negative

A fraud transaction is predicted as not fraud. What type of error is this if Fraud is the positive class?

<details>
<summary>Suggested Answer</summary>

False negative.

</details>

---

### Practice 4: Accuracy Problem

A fraud dataset has 99% not fraud transactions. Why might accuracy be misleading?

<details>
<summary>Suggested Answer</summary>

A model can predict not fraud for almost everything and get high accuracy while missing actual fraud cases.

</details>

---

### Practice 5: Regression Error

Actual delivery time is 50 minutes. Predicted time is 44 minutes. What is the absolute error?

<details>
<summary>Suggested Answer</summary>

6 minutes.

</details>

---

## 38. Independent Practice

### Question 1

Define model evaluation.

### Question 2

Explain why testing data should be unseen.

### Question 3

Define accuracy and give a simple example.

### Question 4

Explain why accuracy may be misleading for imbalanced data.

### Question 5

Define true positive, false positive, true negative, and false negative using a spam filter example.

### Question 6

Explain the difference between precision and recall.

### Question 7

Explain how regression models can be evaluated.

### Question 8

Explain mean absolute error using an example.

### Question 9

Explain how evaluation can reveal overfitting.

### Question 10

Explain why fairness and human oversight may be important even if model accuracy is high.

---

## 39. Exam-style Questions

### Question 1 [4 marks]

Explain why a machine learning model should be evaluated using unseen testing data.

<details>
<summary>Mark Scheme Style Answer</summary>

A model should be evaluated using unseen testing data because this gives a more reliable estimate of how it will perform on new examples. If the model is tested on data used during training, it may have memorized those examples and the evaluation may be misleading. Unseen data helps test generalization and detect overfitting.

</details>

---

### Question 2 [5 marks]

Define accuracy and explain one limitation of using accuracy alone.

<details>
<summary>Mark Scheme Style Answer</summary>

Accuracy is the proportion of predictions that are correct, calculated as correct predictions divided by total predictions. A limitation is that accuracy can be misleading when the classes are imbalanced. For example, if most transactions are not fraud, a model can achieve high accuracy by predicting not fraud for most cases while missing actual fraud cases.

</details>

---

### Question 3 [6 marks]

Explain the difference between false positives and false negatives using a medical screening example.

<details>
<summary>Mark Scheme Style Answer</summary>

If the positive class is disease present, a false positive occurs when the model predicts disease but the patient does not actually have the disease. This may cause stress and unnecessary testing. A false negative occurs when the model predicts no disease but the patient actually has the disease. This may be more serious because treatment may be delayed. Both error types should be considered when evaluating the model.

</details>

---

### Question 4 [6 marks]

A fraud detection model has 99% accuracy, but it catches very few actual fraud cases. Explain why this can happen and name a better evaluation idea.

<details>
<summary>Mark Scheme Style Answer</summary>

This can happen because fraud data is usually imbalanced, with many more not-fraud transactions than fraud transactions. A model can get high accuracy by predicting the majority class, not fraud, most of the time, while missing fraud cases. A better evaluation approach is to use a confusion matrix and consider recall to measure how many actual fraud cases are found, and precision to measure how many flagged cases are truly fraud.

</details>

---

### Question 5 [6 marks]

Explain how regression model performance can be evaluated.

<details>
<summary>Mark Scheme Style Answer</summary>

A regression model predicts numerical values, so its performance is evaluated by measuring the difference between predicted and actual values. For example, mean absolute error calculates the average absolute size of the prediction errors. Smaller error usually means better performance, but whether the error is acceptable depends on the context, such as whether a delivery time prediction is wrong by 2 minutes or 30 minutes on average.

</details>

---

## 40. Practice task
### Activity 1: Confusion Matrix Cards

Students receive prediction cards for a spam filter.

Each card has:

```text
actual class
predicted class
```

Students sort cards into:

```text
true positive
false positive
true negative
false negative
```

---

### Activity 2: Accuracy Trap

Give students this scenario:

```text
1000 transactions
990 are not fraud
10 are fraud
model predicts all transactions as not fraud
```

Students calculate accuracy and discuss why the model is still poor.

---

### Activity 3: Choose the Metric

Groups choose suitable evaluation ideas for:

```text
spam filter
fraud detection
medical screening
house price prediction
delivery time prediction
student risk model
```

They explain why some mistakes are more serious than others.

---

## 41. Independent practice
### Independent practice part A: Concept Explanation

In 6-8 sentences, explain why model evaluation is needed and why unseen testing data matters.

---

### Independent practice part B: Confusion Matrix Practice

For each scenario, identify whether it is false positive or false negative:

```text
1. normal email marked as spam
2. spam email allowed into inbox
3. healthy patient flagged as possible disease
4. disease case marked as no disease
5. normal transaction flagged as fraud
6. fraud transaction not detected
```

---

### Independent practice part C: Accuracy Limitation

Explain why high accuracy may not be enough for:

```text
fraud detection
medical screening
student risk prediction
```

---

### Independent practice part D: Regression Evaluation

Create three examples with:

```text
actual value
predicted value
absolute error
```

Then calculate the mean absolute error.

---

## 42. One-page Revision Summary

| Point | Summary |
|---|---|
| Model evaluation | Checks model performance |
| Testing data | Unseen data for final evaluation |
| Generalization | Performance on new data |
| Accuracy | Correct predictions / total predictions |
| Accuracy limitation | Can mislead with imbalanced classes |
| Confusion matrix | Shows correct and incorrect classification results |
| True positive | Correct positive prediction |
| False positive | Incorrect positive prediction / false alarm |
| True negative | Correct negative prediction |
| False negative | Incorrect negative prediction / missed case |
| Precision | Of predicted positives, how many are truly positive |
| Recall | Of actual positives, how many are found |
| F1 score | Balances precision and recall |
| Regression error | Difference between predicted and actual number |
| MAE | Average absolute error |
| Classification metrics | Accuracy, confusion matrix, precision, recall |
| Regression metrics | MAE, MSE, RMSE |
| Fairness | Check performance across groups |
| Exam phrase | Evaluation should use suitable metrics and unseen data because high overall accuracy alone may not show the model's real usefulness or fairness |

---

## 43. Quick Self-test

Before moving on, students should be able to answer these:

1. What is model evaluation?
2. Why should testing data be unseen?
3. What is accuracy?
4. Why can accuracy be misleading?
5. What is a confusion matrix?
6. What is a false positive?
7. What is a false negative?
8. What is precision?
9. What is recall?
10. How is regression evaluation different from classification evaluation?
