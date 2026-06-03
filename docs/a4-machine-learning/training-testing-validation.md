# Training, Testing and Validation

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why a machine learning dataset is split into different parts
- define training data, validation data, and testing data
- explain the purpose of each data split
- distinguish training, validation, and testing
- explain why a model should be tested on unseen data
- explain the basic machine learning workflow using data splits
- identify problems caused by testing on training data
- explain overfitting and underfitting at a preview level
- explain generalization
- explain why validation data is used to choose or tune a model
- explain why the test set should be kept separate until final evaluation
- identify common data splitting mistakes
- apply data splitting to classification and regression examples
- connect training/testing/validation to model evaluation, fairness, and real-world use
- answer exam-style questions about training, testing, and validation

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding how datasets are split to train and evaluate machine learning models fairly |
| Connected topics | ML fundamentals, data/features/labels, supervised learning, classification/regression, model evaluation, overfitting/underfitting |
| Practical focus | Explaining why unseen data is needed for reliable evaluation |
| Exam relevance | Definitions, data split purpose, workflow, generalization, overfitting, testing mistakes |

::: tip Learning Focus
Training data is used to teach the model. Validation data is used to tune or choose the model. Testing data is used only at the end to evaluate how well the final model performs on unseen data.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Dataset | 数据集 | Collection of examples used for machine learning |
| Training data | 训练数据 | Data used to train the model |
| Validation data | 验证数据 | Data used to tune settings or choose between models |
| Testing data | 测试数据 | Data used to evaluate the final trained model |
| Data split | 数据划分 | Dividing a dataset into training, validation, and testing parts |
| Model training | 模型训练 | Process where model learns patterns from training data |
| Model evaluation | 模型评估 | Checking how well the model performs |
| Unseen data | 未见过的数据 | Data not used during training |
| Generalization | 泛化能力 | Ability to perform well on new unseen data |
| Overfitting | 过拟合 | Model learns training data too specifically and performs poorly on new data |
| Underfitting | 欠拟合 | Model is too simple and fails to learn useful patterns |
| Hyperparameter | 超参数 | Model setting chosen before/during training, not directly learned from data |
| Tuning | 调参 | Adjusting model settings to improve performance |
| Data leakage | 数据泄露 | Information from testing/future data accidentally influences training |
| Bias | 偏差 / 偏见 | Systematic error or unfairness in data or model output |
| Representative data | 代表性数据 | Data that reflects real-world use cases |
| Holdout set | 留出集 | Data kept aside for validation or testing |
| Cross-validation | 交叉验证 | Method of evaluating models by using different train/test splits |
| Accuracy | 准确率 | Proportion of correct predictions |
| Metric | 评价指标 | Measurement used to evaluate model performance |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

在 machine learning 中，我们不能只把所有 data 都拿去 train model，然后直接说这个 model 很好。  
因为 model 可能只是记住了 training data，而不是真的学会了可以用于 new data 的 pattern。

所以我们通常会把 dataset 分成几部分：

```text
training data
validation data
testing data
```

它们的作用不同：

```text
training data = 用来训练 model
validation data = 用来调整或选择 model
testing data = 用来最后测试 final model
```

最重要的思想是：

```text
test data should be unseen data
```

也就是说，test data 不应该参与 training。  
如果 model 在训练时已经看过 test data，那么测试成绩就不可信。

例如 spam detection：

```text
training data: many labelled emails used to train model
validation data: used to choose best settings
testing data: new labelled emails used to check final performance
```

如果一个 model 在 training data 上表现很好，但在 testing data 上表现差，可能说明：

```text
overfitting
```

也就是它记住了 training examples，但不能很好地 generalize 到 new examples。

简单来说：

```text
train = learn
validate = tune/choose
test = final check
generalization = works well on unseen data
```

</template>

<template #en>

### English Explanation

In machine learning, we should not use all data to train the model and then immediately claim the model is good.  
The model may have only memorized the training data instead of learning patterns that work on new data.

So the dataset is often split into parts:

```text
training data
validation data
testing data
```

They have different purposes:

```text
training data = used to train the model
validation data = used to tune or choose the model
testing data = used at the end to evaluate the final model
```

The key idea is:

```text
test data should be unseen data
```

This means test data should not be used during training.  
If the model has already seen the test data, the test result is not trustworthy.

Example: spam detection:

```text
training data: many labelled emails used to train model
validation data: used to choose best settings
testing data: new labelled emails used to check final performance
```

If a model performs well on training data but poorly on testing data, this may show:

```text
overfitting
```

This means it memorized training examples but does not generalize well to new examples.

In simple terms:

```text
train = learn
validate = tune/choose
test = final check
generalization = works well on unseen data
```

</template>
</LangBlock>

---

## 5. Why Split Data?

A machine learning model should be evaluated on data it has not seen before.

### Without Splitting

If the same data is used for both training and testing:

```text
model may memorize examples
performance may look too high
evaluation may be misleading
real-world performance may be worse
```

### With Splitting

The model can be checked more fairly:

```text
train on one part
tune on another part
test on unseen final part
```

### Main Goal

To estimate whether the model can generalize to new data.

::: tip Exam Phrase
Datasets are split so the model can be trained on one part and evaluated on unseen data, giving a more reliable estimate of how it will perform on new examples.
:::

---

## 6. Training Data

Training data is used to train the model.

### What Happens During Training?

The model learns patterns between:

```text
features
and labels
```

in supervised learning.

### Example: House Price Prediction

Training data contains houses with known prices.

| Size | Bedrooms | LocationScore | Price |
|---:|---:|---:|---:|
| 120 | 3 | 8 | 800000 |
| 80 | 2 | 6 | 520000 |

The model learns how features relate to the label `Price`.

### Key Point

Training data teaches the model.  
It should not be used as the final proof that the model works well.

---

## 7. Validation Data

Validation data is used to tune the model or choose between models.

### Uses

Validation data can help choose:

```text
which model type to use
which settings to use
which features to include
how complex the model should be
when to stop training
```

### Example

A teacher trains three spam detection models.

```text
Model A validation accuracy = 88%
Model B validation accuracy = 91%
Model C validation accuracy = 86%
```

The validation results may help choose Model B.

### Important

Validation data is not the final test.  
It is used during model development.

---

## 8. Testing Data

Testing data is used to evaluate the final model.

### Important Rule

Testing data should be kept separate until the model is finalized.

### Why?

If the test data is used repeatedly to tune the model, the model may indirectly become optimized for the test set.

Then the test result is less reliable.

### Test Data Purpose

Testing data estimates:

```text
how well the final model may perform on new unseen data
```

### Exam Phrase

Testing data is used after training and tuning to evaluate the final model on unseen examples.

---

## 9. Training vs Validation vs Testing

| Data Split | Main Purpose | Used When? | Should Model Learn From It? |
|---|---|---|---|
| Training data | learn patterns | during training | yes |
| Validation data | tune/select model | during development | indirectly |
| Testing data | final evaluation | after model is finalized | no |

### Quick Memory

```text
training = learn
validation = choose/tune
testing = final check
```

---

## 10. Simple Data Split Example

Suppose we have 1000 labelled emails.

A possible split:

```text
700 training examples
150 validation examples
150 testing examples
```

### Process

```text
train model using 700 emails
tune/choose model using 150 validation emails
final test using 150 testing emails
```

### Important

The 150 testing emails should not be used to train or tune the model.

---

## 11. Common Split Ratios

Common examples include:

```text
70% training, 15% validation, 15% testing
80% training, 10% validation, 10% testing
60% training, 20% validation, 20% testing
```

### Important

There is no single perfect split for every task.

The choice depends on:

```text
dataset size
task difficulty
model type
need for reliable testing
amount of labelled data
```

### Exam Advice

Do not memorize one ratio as always correct.  
Focus on the purpose of each split.

---

## 12. Unseen Data

Unseen data is data not used during training.

### Why It Matters

A model may perform well on data it has seen before but fail on new examples.

Unseen data gives a better check of:

```text
generalization
real-world usefulness
overfitting risk
```

### Example

If a student memorizes answers to practice questions, they may do well on the same questions but poorly on a new test.

A model can have the same problem.

---

## 13. Generalization

Generalization is the ability of a model to perform well on new unseen data.

### Good Generalization

```text
model performs well on training data
model also performs well on testing data
```

### Poor Generalization

```text
model performs very well on training data
model performs poorly on testing data
```

Poor generalization often suggests overfitting.

::: tip Exam Phrase
Generalization is the ability of a model to make accurate predictions on new data that was not used during training.
:::

---

## 14. Overfitting Preview

Overfitting happens when a model learns the training data too specifically.

### Symptoms

```text
high training performance
low testing performance
```

### Example

A spam model memorizes exact emails in the training set instead of learning general spam patterns.

### Causes

```text
model too complex
too little training data
too much noise
training for too long
data leakage
irrelevant features
```

### Problem

The model may fail on new data.

---

## 15. Underfitting Preview

Underfitting happens when a model is too simple to learn useful patterns.

### Symptoms

```text
low training performance
low testing performance
```

### Example

A house price model uses only `number of doors` and ignores size, location, and bedrooms.

### Causes

```text
model too simple
not enough useful features
poor training
bad data quality
wrong algorithm
```

### Problem

The model cannot capture the real pattern.

---

## 16. Training and Testing Results Pattern

| Pattern | Likely Meaning |
|---|---|
| high training score, high testing score | good fit / good generalization |
| high training score, low testing score | overfitting |
| low training score, low testing score | underfitting |
| low training score, high testing score | unusual; check data split or metrics |

### Student Use

If exam question gives training and testing accuracy, compare them.

Example:

```text
training accuracy = 99%
testing accuracy = 65%
```

Likely answer:

```text
model is overfitting
```

---

## 17. Data Leakage

Data leakage happens when information from testing data, validation data, or future data accidentally affects training.

### Example

Task:

```text
predict whether a student will pass final exam
```

Bad feature:

```text
FinalExamScore
```

This would not be available before prediction and directly reveals the answer.

### Another Example

Scaling the whole dataset before splitting may sometimes leak information from the test set into training.

### Why It Is Bad

The model may look better during evaluation than it will be in real use.

---

## 18. Keeping Test Data Separate

The test set should be used only after the model is finalized.

### Bad Practice

```text
train model
test on test set
change model based on test result
test again
change again
test again
```

This makes the test set part of the development process.

### Better Practice

```text
train on training set
choose/tune using validation set
final test once on test set
```

### Key Idea

The test set should represent a fair final exam for the model.

---

## 19. Validation and Hyperparameters

A hyperparameter is a model setting chosen before or during training, not learned directly from data.

### Examples

Depending on model type, settings might include:

```text
number of neighbours
tree depth
learning rate
number of training rounds
regularization strength
number of clusters
```

### Validation Use

Validation data helps choose settings that perform better on unseen-like data.

### Student-Level Meaning

Validation data helps adjust model choices before the final test.

---

## 20. Cross-validation Preview

Cross-validation is a method that uses different train/test splits to evaluate a model more reliably.

### Simple Idea

Instead of one split, the dataset is divided into several parts.

The model is trained and evaluated multiple times using different parts.

### Why Useful?

It can give a more stable estimate when data is limited.

### Level Control

You do not need the mathematical details here.  
Understand that cross-validation is another way to check performance using multiple splits.

---

## 21. Stratified Splitting Preview

In classification, each split should ideally keep a similar class distribution.

### Example

If the full dataset has:

```text
90% NotSpam
10% Spam
```

then training, validation, and testing sets should also have roughly similar proportions.

### Why?

If the test set accidentally contains almost no spam examples, it will not properly test spam detection.

### Key Idea

Splits should be representative.

---

## 22. Representative Splits

Training and testing data should reflect the real-world data the model will face.

### Example: Speech Recognition

If the model will be used by people with many accents, the training and testing data should include different accents.

### Bad Split

Training data:

```text
one accent only
```

Testing data:

```text
same accent only
```

Real use:

```text
many accents
```

The model may fail for many users.

### Strong Answer

A model should be trained and tested on data that represents the expected real-world use.

---

## 23. Small Dataset Problems

If the dataset is very small, splitting becomes difficult.

### Problems

```text
not enough training examples
test result may be unreliable
rare classes may be missing from a split
model may overfit
validation set may be too small
```

### Possible Responses

```text
collect more data
use cross-validation
simplify model
use expert review
be careful interpreting results
```

---

## 24. Time-based Splits

Some datasets involve time.

Examples:

```text
stock prices
weather data
website traffic
customer behaviour over months
disease spread
game player activity
```

### Important

For time-based prediction, training should usually use past data and testing should use later data.

### Bad Practice

Training on future data and testing on past data may be unrealistic.

### Example

To predict next month's sales:

```text
train on Jan-Oct
validate on Nov
test on Dec
```

---

## 25. Data Preparation and Splitting

Data preparation should be done carefully to avoid leakage.

### Common Preparation

```text
clean data
handle missing values
encode categories
scale numeric features
remove irrelevant features
split data
```

### Leakage Risk

If preparation uses information from the whole dataset before splitting, it may leak test data information.

### Safer Idea

Learn preparation steps from training data, then apply them to validation and testing data.

---

## 26. Workflow Example: Spam Detection

### Dataset

```text
labelled emails
features: sender, words, links, attachments
label: spam / not spam
```

### Split

```text
training emails
validation emails
testing emails
```

### Process

```text
train model using training emails
choose settings using validation emails
final test using testing emails
```

### Goal

Check whether the spam filter works on new emails, not just emails it already saw.

---

## 27. Workflow Example: House Price Prediction

### Dataset

```text
houses with known sale prices
```

### Features

```text
size
bedrooms
location
age
distance to transport
```

### Label

```text
actual sale price
```

### Split and Use

```text
training data → learn price patterns
validation data → choose model/settings
testing data → estimate final price prediction error
```

### Evaluation

Because this is regression, evaluation may use error measures such as mean absolute error.

---

## 28. Workflow Example: Student Risk Prediction

### Task

Predict whether students are at risk of failing.

### Features

```text
attendance
previous scores
assignment submission
LMS activity
late submissions
```

### Label

```text
at risk / not at risk
```

### Data Split Importance

Testing should use students not used during training, so the school can estimate whether the model works on future students.

### Ethics

Even if test performance is good, predictions should support students rather than unfairly label them.

---

## 29. Workflow Example: Medical Image Model

### Task

Classify scans as showing possible disease signs.

### Split Concerns

The test set should contain images from patients not used in training.

### Why?

If images from the same patient appear in both training and testing, the model may appear better than it really is.

### Human Oversight

A medical model should be evaluated carefully and reviewed by qualified professionals.

---

## 30. Workflow Example: Game Match Outcome Prediction

### Task

Predict match outcome or player skill level.

### Features

```text
rank
win rate
latency
role preference
team composition
recent performance
```

### Label

```text
win/loss
skill rating
balanced/unbalanced match
```

### Split Issue

If old game balance is different from current game balance, old training data may not represent current matches.

### Monitoring

The model may need retraining as game updates change player behaviour.

---

## 31. Why Evaluation Can Be Misleading

Even with splitting, evaluation can be misleading if:

```text
test data is not representative
data leakage occurs
labels are wrong
class distribution is unrealistic
dataset is too small
test set is used repeatedly for tuning
metric is unsuitable
real-world data changes over time
```

### Example

A fraud model may have high accuracy because most transactions are not fraud, but it may miss most fraud cases.

### Key Idea

Good evaluation needs suitable data and suitable metrics.

---

## 32. Training, Validation, Testing and Fairness

A model may perform well overall but poorly for some groups.

### Example

A speech model may have:

```text
overall accuracy = 92%
accuracy for one accent group = 70%
```

### Why Check Groups?

To avoid unfair or unsafe outcomes.

### Good Practice

Evaluate performance across relevant groups when fairness matters.

---

## 33. Monitoring After Deployment

Testing before deployment is not enough.

After the model is used, its performance should be monitored.

### Why?

Real-world data may change.

Examples:

```text
new spam tactics
new shopping trends
new disease patterns
game updates
economic changes
student behaviour changes
```

### Model Drift

Model drift happens when the model becomes less accurate because real-world data changes.

### Response

```text
collect new data
retrain model
re-evaluate model
monitor fairness and errors
```

---

## 34. Scenario Answer Bank

### If Asked: “Why split data?”

Use this structure:

```text
Data is split so the model can be trained on one part and evaluated on unseen data. This gives a more reliable estimate of how well the model will perform on new real-world examples and helps detect overfitting.
```

### If Asked: “Explain training data”

```text
Training data is used to teach the model patterns between features and labels.
```

### If Asked: “Explain validation data”

```text
Validation data is used during development to tune model settings or choose between models.
```

### If Asked: “Explain testing data”

```text
Testing data is kept separate and used after training and tuning to evaluate the final model on unseen examples.
```

### If Asked: “Explain overfitting from scores”

```text
The model performs much better on training data than testing data, suggesting it has learned the training examples too specifically and does not generalize well.
```

---

## 35. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Use all data for training and testing | evaluation becomes unreliable | keep unseen test data |
| Training data is for final evaluation | training data teaches model | test data evaluates final model |
| Validation and testing are exactly the same | validation tunes; testing final checks | different roles |
| Test data can be used repeatedly to improve model | leaks test information | use validation for tuning |
| High training accuracy means model is good | may overfit | compare with test performance |
| Overfitting means model is too simple | overfitting means too specific to training data | underfitting is too simple |
| Underfitting means model memorized data | underfitting fails to learn pattern | overfitting memorizes |
| Random split is always suitable | time data may need time-based split | consider context |
| Bigger training set always solves problems | bad data can still hurt | quality matters |
| Overall accuracy is always enough | may hide class/group problems | use suitable metrics |

---

## 36. Guided Practice

### Practice 1: Identify the Split

Which data split is used to train the model?

<details>
<summary>Suggested Answer</summary>

Training data.

</details>

---

### Practice 2: Final Evaluation

Which data split should be used for final evaluation?

<details>
<summary>Suggested Answer</summary>

Testing data.

</details>

---

### Practice 3: Tuning

Which data split is used to choose model settings?

<details>
<summary>Suggested Answer</summary>

Validation data.

</details>

---

### Practice 4: Overfitting

A model has 99% training accuracy and 62% testing accuracy. What is likely happening?

<details>
<summary>Suggested Answer</summary>

The model is likely overfitting. It performs very well on training data but poorly on unseen testing data.

</details>

---

### Practice 5: Why Unseen Data?

Why should the test data be unseen?

<details>
<summary>Suggested Answer</summary>

Because unseen test data gives a more reliable estimate of how the model will perform on new real-world examples.

</details>

---

## 37. Independent Practice

### Question 1

Define training data.

### Question 2

Define validation data.

### Question 3

Define testing data.

### Question 4

Explain why data is split before training and evaluation.

### Question 5

Explain why testing on training data is a problem.

### Question 6

Explain generalization.

### Question 7

Explain overfitting using training and testing scores.

### Question 8

Explain underfitting using training and testing scores.

### Question 9

Explain data leakage and give one example.

### Question 10

Explain why a model should still be monitored after deployment.

---

## 38. Exam-style Questions

### Question 1 [4 marks]

Explain why a dataset is split into training and testing data.

<details>
<summary>Mark Scheme Style Answer</summary>

The training data is used to train the model and allow it to learn patterns. The testing data is kept separate and used to evaluate the trained model on unseen examples. This gives a more reliable estimate of how well the model may perform on new data and helps detect overfitting.

</details>

---

### Question 2 [5 marks]

Distinguish between training data, validation data, and testing data.

<details>
<summary>Mark Scheme Style Answer</summary>

Training data is used to teach the model patterns from examples. Validation data is used during development to tune settings or choose between models. Testing data is kept separate and used after training and tuning to evaluate the final model on unseen data.

</details>

---

### Question 3 [6 marks]

A model has 98% accuracy on training data but only 64% accuracy on testing data. Explain what this suggests.

<details>
<summary>Mark Scheme Style Answer</summary>

This suggests the model may be overfitting. It performs very well on training data but much worse on unseen testing data, so it may have memorized training examples or learned patterns that are too specific to the training set. This means it does not generalize well to new data.

</details>

---

### Question 4 [6 marks]

Explain why the test set should not be used repeatedly to tune a model.

<details>
<summary>Mark Scheme Style Answer</summary>

The test set should represent unseen data for final evaluation. If it is used repeatedly to tune the model, information from the test set influences model development. This can make the model perform better on the test set than it would on truly new data, so the final evaluation becomes misleading. Validation data should be used for tuning instead.

</details>

---

### Question 5 [6 marks]

A company trains a delivery time prediction model using old delivery data. Explain two reasons why the model may perform poorly in real use even if testing results were good.

<details>
<summary>Mark Scheme Style Answer</summary>

The test data may not be representative of current real-world conditions, for example if traffic patterns, delivery areas, or customer behaviour have changed. The dataset may also contain data leakage or may have been split in a way that does not match real use, such as training on future-like data. The model may also perform poorly if weather, staffing, or route changes are different from the training and testing data. Monitoring and retraining may be needed.

</details>

---

## 39. Practice task
### Activity 1: Human Data Split

Give students 30 labelled example cards.

They split the cards into:

```text
training
validation
testing
```

Then explain what each set is used for.

---

### Activity 2: Diagnose the Model

Give students result pairs:

```text
training 95%, testing 93%
training 99%, testing 60%
training 55%, testing 52%
training 70%, testing 90%
```

Students decide whether the model seems good, overfitting, underfitting, or suspicious.

---

### Activity 3: Leakage Detective

Students identify data leakage in scenarios:

```text
predict final grade using final exam score
predict disease risk using treatment outcome after diagnosis
predict delivery time using actual delivery time
predict fraud using investigation result available only later
```

---

## 40. Independent practice
### Independent practice part A: Concept Explanation

In 6-8 sentences, explain why training, validation, and testing data are separated.

---

### Independent practice part B: Scenario

Choose one ML task:

```text
spam detection
house price prediction
student risk prediction
fraud detection
delivery time prediction
game match prediction
```

Describe:

```text
features
label
training data use
validation data use
testing data use
one possible data leakage risk
```

---

### Independent practice part C: Result Interpretation

Explain what each result suggests:

```text
1. training accuracy 96%, testing accuracy 94%
2. training accuracy 99%, testing accuracy 65%
3. training accuracy 58%, testing accuracy 55%
4. validation accuracy improves but final test accuracy is low
```

---

### Independent practice part D: Misconception Correction

Correct these statements:

```text
Testing data is used to train the model.
Validation data and testing data always mean exactly the same thing.
High training accuracy always proves the model works well.
The test set can be used many times to improve the model.
Data leakage improves the trustworthiness of evaluation.
```

---

## 41. One-page Revision Summary

| Point | Summary |
|---|---|
| Training data | Used to train the model |
| Validation data | Used to tune/select model during development |
| Testing data | Used for final evaluation |
| Data split | Dividing dataset for training/evaluation |
| Unseen data | Data not used during training |
| Generalization | Performance on new unseen data |
| Overfitting | High training performance, low testing performance |
| Underfitting | Low training and low testing performance |
| Data leakage | Test/future information affects training |
| Test set rule | Keep separate until final evaluation |
| Validation role | Adjust model before final testing |
| Representative split | Reflects real-world use |
| Stratified split | Keeps class proportions similar |
| Time-based split | Uses past data to predict future data |
| Cross-validation | Multiple splits for more stable evaluation |
| Monitoring | Check model after deployment |
| Exam phrase | Training data teaches the model, validation data helps tune it, and testing data evaluates the final model on unseen examples |

---

## 42. Quick Self-test

Before moving on, students should be able to answer these:

1. What is training data?
2. What is validation data?
3. What is testing data?
4. Why should test data be unseen?
5. What is generalization?
6. What is overfitting?
7. What is underfitting?
8. What is data leakage?
9. Why should validation data be used for tuning instead of test data?
10. Why might a model need monitoring after deployment?

