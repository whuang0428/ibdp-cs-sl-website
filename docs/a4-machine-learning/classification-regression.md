# Classification and Regression

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define classification
- define regression
- distinguish classification and regression
- identify whether a supervised learning task is classification or regression
- explain binary classification and multi-class classification
- explain numerical prediction in regression
- identify features and labels in classification and regression scenarios
- explain common classification applications
- explain common regression applications
- explain why model outputs may be incorrect
- explain why different evaluation methods are needed for classification and regression
- connect classification and regression to training, testing, validation, overfitting, bias, and privacy
- answer exam-style questions about classification and regression

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Distinguishing two major supervised learning task types |
| Connected topics | ML fundamentals, data/features/labels, supervised learning, training/testing/validation, model evaluation, overfitting/underfitting |
| Practical focus | Identifying output type and choosing classification or regression from a scenario |
| Exam relevance | Definitions, scenario classification, features/labels, applications, limitations, evaluation |

::: tip Learning Focus
Classification predicts a category. Regression predicts a numerical value. Both are supervised learning tasks when trained using labelled examples.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Classification | 分类 | Supervised learning task that predicts a class/category |
| Regression | 回归 | Supervised learning task that predicts a numerical value |
| Class | 类别 | Possible category output in classification |
| Label | 标签 | Correct output used during supervised learning |
| Feature | 特征 | Input variable used by the model |
| Binary classification | 二分类 | Classification with two possible classes |
| Multi-class classification | 多分类 | Classification with more than two possible classes |
| Numerical prediction | 数值预测 | Predicting a number |
| Continuous value | 连续值 | Value that can vary on a scale, such as price or time |
| Discrete category | 离散类别 | Separate class label, such as spam/not spam |
| Model output | 模型输出 | Prediction made by the model |
| Threshold | 阈值 | Cut-off value used to convert score/probability into a class |
| Probability score | 概率分数 | Model confidence-like score for a class |
| Accuracy | 准确率 | Proportion of correct classification predictions |
| Confusion matrix | 混淆矩阵 | Table showing correct and incorrect classification predictions |
| Precision | 精确率 | Of predicted positives, how many are truly positive |
| Recall | 召回率 | Of actual positives, how many were found |
| Mean absolute error | 平均绝对误差 | Average size of regression prediction errors |
| Overfitting | 过拟合 | Model learns training data too specifically |
| Underfitting | 欠拟合 | Model is too simple to learn useful patterns |
| Generalization | 泛化 | Ability to perform well on unseen data |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Classification 和 regression 都属于 supervised learning。  
它们都使用 labelled data 训练 model。

区别在于：

```text
classification = predict a category
regression = predict a number
```

例如 email spam detection：

```text
features = sender, words, number of links
label = Spam / NotSpam
```

这个 label 是 category，所以这是 **classification**。

例如 house price prediction：

```text
features = size, location, number of bedrooms
label = actual price
```

这个 label 是 number，所以这是 **regression**。

最简单的判断方法是看 model output：

```text
如果输出是类别 → classification
如果输出是数字 → regression
```

常见 classification 例子：

```text
spam or not spam
fraud or not fraud
cat / dog / car
pass / fail
low / medium / high risk
```

常见 regression 例子：

```text
house price
delivery time
temperature
exam score
sales amount
```

简单记：

```text
classification = which type?
regression = how much / how many?
```

</template>

<template #en>

### English Explanation

Classification and regression are both supervised learning tasks.  
Both use labelled data to train a model.

The difference is:

```text
classification = predict a category
regression = predict a number
```

Example: email spam detection:

```text
features = sender, words, number of links
label = Spam / NotSpam
```

The label is a category, so this is **classification**.

Example: house price prediction:

```text
features = size, location, number of bedrooms
label = actual price
```

The label is a number, so this is **regression**.

The easiest way to decide is to look at the model output:

```text
if the output is a category → classification
if the output is a number → regression
```

Common classification examples:

```text
spam or not spam
fraud or not fraud
cat / dog / car
pass / fail
low / medium / high risk
```

Common regression examples:

```text
house price
delivery time
temperature
exam score
sales amount
```

Simple memory:

```text
classification = which type?
regression = how much / how many?
```

</template>
</LangBlock>

---

## 5. Classification

Classification is a supervised learning task where the model predicts a category or class.

### Pattern

```text
features → trained model → predicted class
```

### Example

Spam detection:

```text
email features → model → Spam / NotSpam
```

### Output Type

The output is a category:

```text
Spam
NotSpam
Fraud
NotFraud
Cat
Dog
Pass
Fail
Low risk
High risk
```

::: tip Exam Phrase
Classification is a supervised learning task where the model predicts a discrete class or category.
:::

---

## 6. Binary Classification

Binary classification has two possible classes.

### Examples

```text
spam / not spam
fraud / not fraud
pass / fail
disease / no disease
approved / rejected
positive / negative
churn / not churn
```

### Example Dataset

| AttendanceRate | PreviousScore | Label |
|---:|---:|---|
| 95 | 82 | Pass |
| 60 | 45 | Fail |
| 88 | 76 | Pass |

### Key Idea

The label has exactly two possible categories.

---

## 7. Multi-class Classification

Multi-class classification has more than two possible classes.

### Examples

```text
image = cat / dog / car / bird
risk = low / medium / high
support ticket = billing / technical / account / delivery
language = English / Chinese / Spanish / French
game role = tank / healer / damage / support
```

### Example Dataset

| MessageLength | ContainsPaymentWord | ContainsBugWord | TicketType |
|---:|---|---|---|
| 120 | true | false | Billing |
| 80 | false | true | Technical |
| 60 | false | false | Account |

### Key Idea

The model chooses one category from several possible categories.

---

## 8. Regression

Regression is a supervised learning task where the model predicts a numerical value.

### Pattern

```text
features → trained model → predicted number
```

### Examples

```text
house features → house price
weather features → temperature
delivery details → delivery time
student data → exam score
shop history → sales amount
game data → predicted player rating
```

### Output Type

The output is a number:

```text
800000
23.5
42 minutes
87 points
1200 units
```

::: tip Exam Phrase
Regression is a supervised learning task where the model predicts a numerical or continuous value.
:::

---

## 9. Classification vs Regression

| Feature | Classification | Regression |
|---|---|---|
| Output | category/class | number |
| Question answered | Which class? | How much / how many? |
| Example output | Spam | 45 minutes |
| Common task | classify email as spam | predict delivery time |
| Label type | discrete category | numerical value |
| Evaluation examples | accuracy, precision, recall | mean absolute error, mean squared error |

### Quick Memory

```text
classification = category
regression = number
```

---

## 10. How to Identify the Task Type

Ask:

```text
What is the model trying to output?
```

### If the output is a category

Use classification.

Examples:

```text
Will the customer leave? yes/no
Is this transaction fraud? fraud/not fraud
What kind of image is this? cat/dog/car
```

### If the output is a number

Use regression.

Examples:

```text
What will the house price be?
How many minutes will delivery take?
What score will the student get?
```

### Exam Tip

Do not focus only on the input.  
Focus on the output/label.

---

## 11. Classification Dataset Example

Task:

```text
Predict whether a student will pass or fail.
```

| StudyHours | AttendanceRate | PreviousScore | Label |
|---:|---:|---:|---|
| 8 | 95 | 82 | Pass |
| 2 | 60 | 45 | Fail |
| 5 | 80 | 70 | Pass |

Features:

```text
StudyHours
AttendanceRate
PreviousScore
```

Label:

```text
Pass / Fail
```

Task type:

```text
classification
```

because the label is a category.

---

## 12. Regression Dataset Example

Task:

```text
Predict house price.
```

| Size | Bedrooms | LocationScore | Price |
|---:|---:|---:|---:|
| 120 | 3 | 8 | 800000 |
| 80 | 2 | 6 | 520000 |
| 200 | 4 | 9 | 1250000 |

Features:

```text
Size
Bedrooms
LocationScore
```

Label:

```text
Price
```

Task type:

```text
regression
```

because the label is numerical.

---

## 13. Classification Output Scores

Some classification models output a score or probability before choosing a class.

### Example

A spam model may output:

```text
Spam probability = 0.87
```

Then the system applies a threshold:

```text
if probability >= 0.50 → Spam
else → NotSpam
```

### Important

Even if the model uses numbers internally, the final task is classification if the final output is a category.

### Example

```text
0.87 → Spam
```

is still classification.

---

## 14. Thresholds

A threshold is a cut-off value used to decide a class.

### Example: Fraud Detection

```text
if fraud score >= 0.80 → flag as possible fraud
if fraud score < 0.80 → not flagged
```

### Threshold Trade-off

A lower threshold may catch more fraud but also create more false alarms.

A higher threshold may reduce false alarms but miss more fraud.

### Student-Level Idea

Threshold choice affects the type and number of classification mistakes.

---

## 15. Regression Output

Regression predicts a number.

### Example: Delivery Time

Input features:

```text
distance = 5 km
traffic level = high
weather = rain
```

Model output:

```text
estimated delivery time = 38 minutes
```

### Error

If the actual delivery time is 45 minutes:

```text
error = 7 minutes
```

Regression is evaluated by how close predictions are to actual values.

---

## 16. Classification Applications

Classification is used in many real systems.

| Application | Classes |
|---|---|
| spam detection | spam / not spam |
| fraud detection | fraud / not fraud |
| image recognition | cat / dog / car |
| medical support | disease / no disease |
| student risk | at risk / not at risk |
| sentiment analysis | positive / neutral / negative |
| customer churn | churn / not churn |
| document sorting | invoice / receipt / letter |
| game moderation | toxic / not toxic |
| risk scoring | low / medium / high |

---

## 17. Regression Applications

Regression is used when the output is a number.

| Application | Numerical Output |
|---|---|
| house price prediction | price |
| delivery time prediction | minutes |
| weather prediction | temperature |
| sales forecasting | number of units |
| exam score prediction | score |
| energy demand prediction | electricity usage |
| traffic prediction | travel time |
| game skill rating | rating value |
| stock demand | quantity |
| medical measurement estimate | numerical risk/measurement |

---

## 18. Same Scenario, Different Task Type

Some scenarios can be classification or regression depending on the output.

### Student Performance

Classification:

```text
predict Pass / Fail
```

Regression:

```text
predict final exam score
```

### Medical System

Classification:

```text
predict disease / no disease
```

Regression:

```text
predict blood glucose level
```

### Delivery System

Classification:

```text
predict late / not late
```

Regression:

```text
predict delivery time in minutes
```

### Key Idea

The output decides the task type.

---

## 19. Features and Labels

Both classification and regression use features and labels in supervised learning.

### Classification Example

```text
features = sender, links, words
label = Spam / NotSpam
```

### Regression Example

```text
features = house size, location, rooms
label = sale price
```

### Exam Structure

When answering scenario questions:

```text
1. Identify features.
2. Identify label.
3. Look at label type.
4. State classification or regression.
5. Explain why.
```

---

## 20. Data Quality in Classification

Classification models can be damaged by poor data.

### Problems

```text
incorrect class labels
unbalanced classes
missing feature values
biased training data
outdated examples
ambiguous categories
duplicate examples
```

### Example

A fraud dataset may contain very few fraud examples.

The model may predict `not fraud` for most transactions and appear accurate but fail to catch fraud.

### Key Point

Accuracy alone may be misleading for unbalanced classification.

---

## 21. Data Quality in Regression

Regression models can also be damaged by poor data.

### Problems

```text
incorrect numerical labels
outliers
missing values
old data
different measurement units
biased samples
irrelevant features
```

### Example

If house prices are recorded in different currencies without conversion, the model may learn wrong patterns.

### Key Point

Regression depends on reliable numerical labels and meaningful features.

---

## 22. Classification Evaluation Preview

Classification predictions are often evaluated by comparing predicted classes with true classes.

### Simple Metric

```text
accuracy = correct predictions / total predictions
```

### More Detailed Metrics

```text
precision
recall
F1 score
confusion matrix
```

### Why Accuracy May Not Be Enough

In fraud detection, if only 1% of transactions are fraud, predicting `not fraud` all the time gives 99% accuracy but is useless for finding fraud.

---

## 23. Confusion Matrix Preview

A confusion matrix shows correct and incorrect predictions.

### Binary Classification Example

|  | Predicted Spam | Predicted NotSpam |
|---|---:|---:|
| Actual Spam | true positive | false negative |
| Actual NotSpam | false positive | true negative |

### Meaning

It helps show:

```text
which errors happen
how many real spam emails were missed
how many normal emails were wrongly flagged
```

### More Detail

Confusion matrix, precision, and recall are covered in Model Evaluation.

---

## 24. Regression Evaluation Preview

Regression is evaluated by the size of prediction errors.

### Example

| Actual Delivery Time | Predicted Delivery Time | Error |
|---:|---:|---:|
| 40 | 38 | 2 |
| 50 | 60 | 10 |
| 30 | 27 | 3 |

### Common Metrics

```text
mean absolute error
mean squared error
root mean squared error
```

### Student-Level Meaning

For regression, we ask:

```text
How close are the predicted numbers to the real numbers?
```

---

## 25. Overfitting in Classification and Regression

Overfitting can happen in both classification and regression.

### Classification Example

A model memorizes exact training emails and fails on new spam tactics.

### Regression Example

A house price model fits noise in old sale data and predicts poorly for new houses.

### Symptom

```text
high training performance
low testing performance
```

### Fix Ideas

```text
more representative data
simpler model
regularization
better features
proper validation
```

---

## 26. Underfitting in Classification and Regression

Underfitting means the model is too simple or has poor features.

### Classification Example

A spam model only checks email length and ignores words/links.

### Regression Example

A house price model only uses number of doors.

### Symptom

```text
low training performance
low testing performance
```

### Fix Ideas

```text
better features
more suitable model
more training
cleaner data
less overly simple assumptions
```

---

## 27. Bias and Fairness

Classification and regression can both produce unfair results.

### Classification Bias

A hiring classifier may unfairly reject applicants from underrepresented groups.

### Regression Bias

A loan amount prediction model may predict lower suitable loan amounts for certain groups due to biased historical data.

### Causes

```text
biased training data
unrepresentative examples
sensitive/proxy features
historical unfairness
wrong labels
unequal measurement quality
```

### Protection

```text
check data sources
test performance across groups
review features
use human oversight
monitor real-world outcomes
```

---

## 28. Privacy Concerns

Both task types may use personal data.

### Examples

```text
student records
medical scans
purchase history
location data
financial transactions
messages
game behaviour
```

### Privacy Controls

```text
data minimization
consent where needed
anonymization/pseudonymization
access control
encryption
retention limits
clear purpose
```

### Key Point

Do not collect sensitive data just because it might improve performance.

---

## 29. Human Oversight

Human oversight is important when classification or regression affects people.

### Examples

```text
medical risk classification
loan approval classification
student at-risk classification
insurance price prediction
job applicant screening
criminal risk prediction
```

### Why?

Models can be wrong, biased, or hard to explain.

Human review can consider context not captured by the model.

---

## 30. Worked Example: Spam Detection

### Task

Predict whether an email is spam.

### Features

```text
sender known
number of links
urgent words
attachment presence
message length
```

### Label

```text
Spam / NotSpam
```

### Task Type

```text
classification
```

### Reason

The output is a category.

---

## 31. Worked Example: House Price Prediction

### Task

Predict house sale price.

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

### Task Type

```text
regression
```

### Reason

The output is a numerical value.

---

## 32. Worked Example: Student Performance

### Version A

Task:

```text
predict Pass / Fail
```

Type:

```text
classification
```

Reason:

```text
output is a category
```

### Version B

Task:

```text
predict final exam score
```

Type:

```text
regression
```

Reason:

```text
output is a number
```

---

## 33. Worked Example: Delivery System

### Version A

Task:

```text
predict whether delivery will be late
```

Type:

```text
classification
```

Label:

```text
Late / NotLate
```

### Version B

Task:

```text
predict delivery time in minutes
```

Type:

```text
regression
```

Label:

```text
number of minutes
```

---

## 34. Worked Example: Medical Support

### Classification

Task:

```text
predict disease / no disease
```

Output:

```text
category
```

### Regression

Task:

```text
predict blood pressure value
```

Output:

```text
number
```

### Important

Medical predictions require careful evaluation and human expert review.

---

## 35. Worked Example: Game Matchmaking

### Classification Task

```text
predict match outcome = win / loss
```

Type:

```text
classification
```

### Regression Task

```text
predict player skill rating
```

Type:

```text
regression
```

### Possible Features

```text
rank
win rate
latency
role preference
recent performance
team composition
```

---

## 36. Scenario Answer Bank

### If Asked: “Define classification”

```text
Classification is a supervised learning task where the model predicts a discrete class or category.
```

### If Asked: “Define regression”

```text
Regression is a supervised learning task where the model predicts a numerical value.
```

### If Asked: “Classification or regression?”

```text
This is [classification/regression] because the model output is a [category/number].
```

### If Asked: “Identify features and label”

```text
The features are [inputs] because they are used to make the prediction. The label is [output] because it is the correct value the model learns to predict.
```

### If Asked: “Explain evaluation difference”

```text
Classification is evaluated by comparing predicted classes with actual classes, using measures such as accuracy or a confusion matrix. Regression is evaluated by measuring how close predicted numbers are to actual numbers, using error measures such as mean absolute error.
```

---

## 37. Common Misconceptions

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Classification and regression are the same | output types differ | category vs number |
| Regression means the model gets worse | regression means numerical prediction | not negative meaning |
| Classification always has two classes | can be binary or multi-class | more than two classes possible |
| A probability output means regression | final task may still be classification | category chosen by threshold |
| Predicting exam score is classification | score is a number | regression |
| Predicting pass/fail is regression | pass/fail is category | classification |
| Accuracy works for every task | regression needs error metrics | use suitable metrics |
| High accuracy always means useful | may hide class imbalance | check precision/recall etc. |
| Output decides nothing | output decides task type | look at label |
| Classification/regression have no ethical risks | both can affect people | consider bias/privacy/oversight |

---

## 38. Guided Practice

### Practice 1: Classification or Regression?

Predict whether an email is spam or not spam.

<details>
<summary>Suggested Answer</summary>

Classification, because the output is a category.

</details>

---

### Practice 2: Classification or Regression?

Predict the price of a house.

<details>
<summary>Suggested Answer</summary>

Regression, because the output is a numerical value.

</details>

---

### Practice 3: Binary or Multi-class?

Predict whether a transaction is fraud or not fraud.

<details>
<summary>Suggested Answer</summary>

Binary classification, because there are two possible classes.

</details>

---

### Practice 4: Multi-class

Classify an image as cat, dog, car, or bird.

<details>
<summary>Suggested Answer</summary>

Multi-class classification, because there are more than two possible classes.

</details>

---

### Practice 5: Same Scenario

A student model predicts final exam score. Is this classification or regression?

<details>
<summary>Suggested Answer</summary>

Regression, because the output is a number.

</details>

---

## 39. Independent Practice

### Question 1

Define classification.

### Question 2

Define regression.

### Question 3

Explain the difference between classification and regression.

### Question 4

Give three examples of classification tasks.

### Question 5

Give three examples of regression tasks.

### Question 6

For spam detection, identify features, label, and task type.

### Question 7

For delivery time prediction, identify features, label, and task type.

### Question 8

Explain why predicting pass/fail is classification but predicting exam score is regression.

### Question 9

Explain why accuracy may be misleading in an unbalanced classification problem.

### Question 10

Explain one ethical risk of using classification or regression in high-stakes decisions.

---

## 40. Exam-style Questions

### Question 1 [4 marks]

Distinguish between classification and regression.

<details>
<summary>Mark Scheme Style Answer</summary>

Classification is a supervised learning task where the model predicts a category or class, such as spam or not spam. Regression is a supervised learning task where the model predicts a numerical value, such as price or delivery time. The main difference is the type of output.

</details>

---

### Question 2 [5 marks]

A model predicts whether a student will pass or fail based on attendance and previous scores. Identify the features, label, and task type.

<details>
<summary>Mark Scheme Style Answer</summary>

The features are attendance and previous scores because they are input variables used by the model. The label is pass or fail because it is the correct output the model learns to predict. This is classification because the output is a category.

</details>

---

### Question 3 [5 marks]

A model predicts the sale price of a house using size, location, and number of bedrooms. Identify the features, label, and task type.

<details>
<summary>Mark Scheme Style Answer</summary>

The features are size, location, and number of bedrooms because they are input variables. The label is the actual sale price. This is regression because the output is a numerical value.

</details>

---

### Question 4 [6 marks]

Explain why the same general scenario can sometimes be classification or regression.

<details>
<summary>Mark Scheme Style Answer</summary>

The task type depends on the output the model is trying to predict. For student performance, predicting pass or fail is classification because the output is a category. Predicting the final exam score is regression because the output is a number. Therefore, the same scenario can be either classification or regression depending on how the prediction target is defined.

</details>

---

### Question 5 [6 marks]

Explain why model evaluation differs for classification and regression.

<details>
<summary>Mark Scheme Style Answer</summary>

Classification predicts categories, so evaluation compares predicted classes with actual classes. Measures such as accuracy, precision, recall, and confusion matrices may be used. Regression predicts numerical values, so evaluation measures how close the predicted numbers are to the actual numbers. Measures such as mean absolute error or mean squared error may be used. Different output types require different evaluation methods.

</details>

---

## 41. Classroom Activity

### Activity 1: Task Sorting

Students sort scenarios into classification or regression:

```text
predict house price
detect spam email
predict delivery time
classify image as cat/dog
predict exam score
predict pass/fail
detect fraud
predict electricity usage
classify support ticket type
predict player skill rating
```

---

### Activity 2: Same Scenario, Two Outputs

Groups choose one scenario and create:

```text
one classification version
one regression version
```

Example:

```text
delivery late/not late = classification
delivery time in minutes = regression
```

---

### Activity 3: Evaluation Match

Students match task types with suitable evaluation ideas:

```text
classification → accuracy / confusion matrix
regression → prediction error / mean absolute error
```

Then discuss why the metrics differ.

---

## 42. Homework

### Homework Part A: Concept Explanation

In 6-8 sentences, explain the difference between classification and regression using two examples.

---

### Homework Part B: Scenario Table

Complete a table with:

```text
scenario
features
label
classification or regression
reason
possible evaluation method
```

Use at least five scenarios.

---

### Homework Part C: Same Scenario Comparison

For each scenario, create one classification task and one regression task:

```text
student performance
delivery service
medical system
game matchmaking
online shop
```

---

### Homework Part D: Misconception Correction

Correct these statements:

```text
Classification always predicts a number.
Regression means the model is getting worse.
Predicting pass/fail is regression.
A probability score always means the task is regression.
Classification and regression use exactly the same evaluation methods.
```

---

## 43. One-page Revision Summary

| Point | Summary |
|---|---|
| Classification | Predicts category/class |
| Regression | Predicts numerical value |
| Binary classification | Two classes |
| Multi-class classification | More than two classes |
| Feature | Input variable |
| Label | Correct output |
| Class | Possible category |
| Numerical value | Regression output |
| Threshold | Converts score into class |
| Classification examples | spam, fraud, pass/fail, image category |
| Regression examples | price, time, score, temperature, demand |
| Classification evaluation | accuracy, precision, recall, confusion matrix |
| Regression evaluation | error measures such as MAE/MSE |
| Key decision | Look at output/label |
| Same scenario | can be either depending on output |
| Risk | bias, privacy, wrong predictions, over-reliance |
| Exam phrase | Classification predicts a category, while regression predicts a numerical value |

---

## 44. Quick Self-test

Before moving on, students should be able to answer these:

1. What is classification?
2. What is regression?
3. What is binary classification?
4. What is multi-class classification?
5. What output type does classification predict?
6. What output type does regression predict?
7. Is predicting house price classification or regression?
8. Is predicting spam/not spam classification or regression?
9. Why can accuracy be misleading in some classification tasks?
10. Why do classification and regression use different evaluation methods?
