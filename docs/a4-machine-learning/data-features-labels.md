# Data, Features and Labels

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why data is central to machine learning
- define dataset, example, feature, label, and target
- distinguish features and labels in supervised learning scenarios
- identify possible features and labels from real-world problems
- explain the difference between structured and unstructured data at a basic level
- explain why data quality affects machine learning performance
- identify common data quality problems such as missing data, incorrect labels, duplicates, outliers, bias, and unbalanced data
- explain why training data should be representative
- explain how data can be prepared before training a model
- distinguish training data, testing data, and validation data at a preview level
- explain privacy and ethical concerns when collecting ML data
- apply features and labels to school, shop, healthcare, spam detection, recommendation, and game examples
- answer exam-style questions about data, features, and labels

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding what data is used by ML systems and how features/labels are chosen |
| Connected topics | ML fundamentals, supervised learning, training/testing/validation, model evaluation, bias/ethics/privacy |
| Practical focus | Identifying features and labels in realistic ML scenarios |
| Exam relevance | Definitions, scenario analysis, data quality, bias, privacy, supervised learning setup |

::: tip Learning Focus
Features are the input variables used by the model. Labels are the correct outputs used during supervised learning. If the data is poor, biased, or unrepresentative, the model may learn poor or unfair patterns.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Data | 数据 | Examples or values used by a machine learning system |
| Dataset | 数据集 | Collection of data examples |
| Example / Instance | 样本 / 实例 | One row/item in a dataset |
| Feature | 特征 | Input variable used by a model |
| Label | 标签 | Correct output/target value in supervised learning |
| Target | 目标值 | Another word for label/output to predict |
| Structured data | 结构化数据 | Data organized in rows and columns |
| Unstructured data | 非结构化数据 | Data not arranged in fixed table form, such as images or text |
| Training data | 训练数据 | Data used to train a model |
| Testing data | 测试数据 | Data used to evaluate a trained model |
| Validation data | 验证数据 | Data used to tune/select a model |
| Data quality | 数据质量 | How accurate, complete, relevant, and reliable data is |
| Missing value | 缺失值 | Data value that is absent |
| Duplicate data | 重复数据 | Same or repeated example stored more than once |
| Outlier | 异常值 | Value very different from most other values |
| Incorrect label | 错误标签 | Wrong target value assigned to an example |
| Bias | 偏差 / 偏见 | Systematic unfairness or distortion in data/model |
| Representative data | 代表性数据 | Data that reflects the real population/use case |
| Data preprocessing | 数据预处理 | Preparing/cleaning data before training |
| Data cleaning | 数据清洗 | Fixing or removing poor quality data |
| Normalization / scaling | 归一化 / 缩放 | Adjusting numeric features to comparable ranges |
| Data minimization | 数据最小化 | Collecting only data that is needed |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Machine learning 的核心是：

```text
model learns from data
```

所以 data 的质量非常重要。  
如果 data 错了、少了、偏了，model 学到的 pattern 也可能错。

在 supervised learning 中，dataset 通常可以理解为一个 table：

| StudyHours | AttendanceRate | PreviousScore | FinalResult |
|---:|---:|---:|---|
| 8 | 95 | 82 | Pass |
| 2 | 60 | 45 | Fail |
| 5 | 80 | 70 | Pass |

这里：

```text
each row = one example / instance
features = StudyHours, AttendanceRate, PreviousScore
label = FinalResult
```

**Features** 是 model 用来做 prediction 的输入。  
**Label** 是正确答案，也就是 model 要学习预测的目标。

例如 house price prediction：

```text
features = size, location, number of rooms, age
label = actual price
```

Spam detection：

```text
features = sender, words, number of links, attachment
label = spam / not spam
```

简单来说：

```text
features = inputs
label = correct output
model learns relationship between features and label
```

</template>

<template #en>

### English Explanation

The core idea of machine learning is:

```text
model learns from data
```

So data quality is extremely important.  
If the data is wrong, missing, or biased, the model may learn poor patterns.

In supervised learning, a dataset can often be understood as a table:

| StudyHours | AttendanceRate | PreviousScore | FinalResult |
|---:|---:|---:|---|
| 8 | 95 | 82 | Pass |
| 2 | 60 | 45 | Fail |
| 5 | 80 | 70 | Pass |

Here:

```text
each row = one example / instance
features = StudyHours, AttendanceRate, PreviousScore
label = FinalResult
```

**Features** are the inputs used by the model to make a prediction.  
The **label** is the correct answer, or the target the model learns to predict.

Example: house price prediction:

```text
features = size, location, number of rooms, age
label = actual price
```

Spam detection:

```text
features = sender, words, number of links, attachment
label = spam / not spam
```

In simple terms:

```text
features = inputs
label = correct output
model learns relationship between features and label
```

</template>
</LangBlock>

---

## 5. Why Data Matters in Machine Learning

Machine learning systems learn patterns from data.

If the data is useful and representative, the model has a better chance of learning useful patterns.

If the data is poor, the model may produce poor results.

### Poor Data Can Cause

```text
wrong predictions
unfair decisions
low accuracy
overfitting
poor performance on new data
privacy problems
misleading evaluation results
```

### Strong Exam Phrase

The quality, relevance, and representativeness of the data strongly affect the performance and fairness of the machine learning model.

---

## 6. Dataset

A dataset is a collection of examples used for machine learning.

### Example Dataset: Email Spam Detection

| SenderKnown | NumberOfLinks | ContainsUrgentWords | Label |
|---|---:|---|---|
| false | 5 | true | Spam |
| true | 0 | false | NotSpam |
| false | 2 | true | Spam |

In this dataset:

```text
each row = one email example
features = SenderKnown, NumberOfLinks, ContainsUrgentWords
label = Spam / NotSpam
```

### Dataset Can Be Used For

```text
training a model
testing a model
validating model choices
monitoring model performance
```

---

## 7. Example / Instance

An example, also called an instance, is one item in the dataset.

### In a Table

One row is one example.

| StudyHours | AttendanceRate | FinalResult |
|---:|---:|---|
| 8 | 95 | Pass |

This row is one student example.

### In Image Data

One image may be one example.

```text
image = one example
label = cat / dog / car
```

### In Text Data

One message may be one example.

```text
message = one example
label = positive / negative
```

---

## 8. Features

Features are input variables used by a model.

### Examples

| Problem | Possible Features |
|---|---|
| spam detection | sender, links, subject words, message length |
| house price prediction | size, location, bedrooms, age |
| student pass/fail prediction | attendance, previous score, study task completion |
| fraud detection | transaction amount, location, time, device |
| game matchmaking | rank, win rate, latency, role preference |
| product recommendation | past purchases, views, ratings, category interest |

### Good Features Should Be

```text
relevant
available when prediction is made
measurable
accurate
not unnecessarily sensitive
not causing unfair discrimination
```

### Example

For predicting house price, `house size` is likely useful.  
For predicting house price, `owner's favourite colour` is probably not useful.

---

## 9. Labels

A label is the correct output or target value in supervised learning.

### Examples

| Problem | Label |
|---|---|
| spam detection | spam / not spam |
| image classification | cat / dog / car |
| house price prediction | actual sale price |
| student result prediction | pass / fail |
| fraud detection | fraud / not fraud |
| sentiment analysis | positive / neutral / negative |

### Labelled Dataset

A labelled dataset contains examples with correct outputs.

| Message | Label |
|---|---|
| "Win money now" | Spam |
| "See you at meeting" | NotSpam |

### Key Idea

Supervised learning needs labels.  
Unsupervised learning does not use labelled correct answers.

---

## 10. Feature vs Label

| Feature | Label |
|---|---|
| input used by model | correct output to predict |
| known before prediction | known during training, unknown for new cases |
| examples: size, score, words | examples: price, pass/fail, spam/not spam |
| used to make prediction | used to train/evaluate prediction |

### Simple Memory

```text
feature = input
label = answer
```

### Example

Problem:

```text
Predict whether a student will pass.
```

Features:

```text
attendance, study hours, previous score
```

Label:

```text
Pass / Fail
```

---

## 11. Target Variable

The target is the value the model is trying to predict.

In supervised learning:

```text
target = label
```

### Example: Regression

```text
target = house price
```

### Example: Classification

```text
target = spam/not spam
```

### Why It Matters

If the target is unclear, the ML problem is unclear.

Bad problem:

```text
make students better
```

Better ML problem:

```text
predict whether a student is at risk of failing
```

Target:

```text
at risk / not at risk
```

---

## 12. Structured Data

Structured data is organized in rows and columns.

### Example

| CustomerAge | PurchaseCount | TotalSpent | Churned |
|---:|---:|---:|---|
| 22 | 5 | 120.50 | No |
| 41 | 1 | 25.00 | Yes |

### Examples of Structured Data

```text
database tables
spreadsheets
CSV files
sales records
student records
transaction tables
```

### Advantage

Structured data is often easier to process because fields are clearly separated.

---

## 13. Unstructured Data

Unstructured data is not organized in fixed rows and columns.

### Examples

```text
images
audio
video
free text
emails
social media posts
PDF documents
medical scans
```

### ML Use

ML can still use unstructured data, but it often needs preprocessing.

Examples:

```text
image resized into pixel data
text converted into tokens or word counts
audio converted into features
```

### Key Idea

Unstructured data may need extra processing before a model can use it.

---

## 14. Raw Data vs Prepared Data

Raw data is data before cleaning or processing.

Prepared data is data after it has been cleaned and transformed for machine learning.

### Raw Data Problems

```text
missing values
incorrect values
different formats
duplicate rows
irrelevant columns
outliers
unbalanced classes
private data that should not be used
```

### Prepared Data May Have

```text
missing values handled
formats standardized
duplicates removed
features selected
labels checked
sensitive data removed or protected
numeric values scaled
```

---

## 15. Data Preprocessing

Data preprocessing means preparing data before training.

### Common Preprocessing Steps

```text
remove duplicates
fix incorrect values
handle missing values
standardize formats
convert categories into numeric form if needed
scale numeric features
split data into training/testing sets
remove unnecessary sensitive data
check class balance
```

### Example

If a dataset uses different date formats:

```text
22/05/2026
2026-05-22
May 22, 2026
```

Preprocessing may convert them to one consistent format.

---

## 16. Missing Data

Missing data means values are absent.

### Example

| StudentID | AttendanceRate | PreviousScore | FinalResult |
|---:|---:|---:|---|
| 101 | 95 | 82 | Pass |
| 102 | 60 |  | Fail |

`PreviousScore` is missing for Student 102.

### Possible Handling

```text
remove the record
fill with mean/median/mode
use a special unknown value
collect the missing data again
use model that can handle missing values
```

### Important

Handling missing data poorly can reduce accuracy or introduce bias.

---

## 17. Incorrect Data and Incorrect Labels

Incorrect data means feature values are wrong.

Incorrect labels mean the correct output is wrong.

### Example

A normal email is labelled as spam.

| Email | Label |
|---|---|
| "Meeting at 3 pm" | Spam |

This is likely an incorrect label.

### Why It Matters

The model may learn wrong patterns.

If many labels are wrong, model performance can become poor.

### Protection

```text
review labels
use trusted sources
check inconsistent examples
clean data before training
monitor model mistakes
```

---

## 18. Duplicate Data

Duplicate data means the same example appears more than once.

### Example

| EmailID | NumberOfLinks | Label |
|---:|---:|---|
| 1 | 5 | Spam |
| 1 | 5 | Spam |

### Why It Matters

Duplicates can:

```text
make some patterns overrepresented
bias training
make evaluation misleading
waste storage
```

### Fix

Remove unnecessary duplicates unless repetition is meaningful.

---

## 19. Outliers

An outlier is a value very different from most other values.

### Example

Most house prices are:

```text
300000 to 900000
```

One record says:

```text
900000000
```

This may be an error or a very unusual property.

### Why Outliers Matter

Outliers may:

```text
distort model training
affect averages
indicate data entry errors
represent rare but important cases
```

### Handling

```text
check whether it is an error
correct if possible
remove if invalid
keep if it is real and important
use robust methods
```

---

## 20. Unbalanced Data

Unbalanced data means one class appears much more often than another.

### Example: Fraud Detection

| Class | Number of Examples |
|---|---:|
| Not Fraud | 99,000 |
| Fraud | 1,000 |

A model might learn to predict `Not Fraud` most of the time.

### Why It Is a Problem

High overall accuracy may be misleading.

Example:

```text
predict every transaction as not fraud
accuracy = 99%
but fraud detection is useless
```

### Solution Ideas

```text
collect more minority class examples
use better evaluation metrics
balance training data
adjust model thresholds
```

---

## 21. Representative Data

Representative data reflects the real-world population or situation where the model will be used.

### Example

A speech recognition model should be trained on speech from many accents, ages, and environments if it will be used by many different people.

### Poor Representative Data

```text
only one age group
only one language/accent
only one type of device
only one geographic area
only clean studio recordings
```

### Why It Matters

If training data is not representative, the model may perform well for some users and poorly for others.

---

## 22. Data Bias

Data bias means data is systematically unbalanced, unfair, or distorted.

### Sources of Bias

```text
historical unfairness
underrepresented groups
measurement errors
biased labels
sampling from only one population
using proxy variables
old data that no longer represents reality
```

### Example

A hiring model trained on past hiring decisions may repeat old unfair hiring patterns.

### Key Exam Phrase

Bias in training data can lead to biased model predictions, which may unfairly disadvantage certain groups.

---

## 23. Feature Selection

Feature selection means choosing which input variables the model should use.

### Good Feature Selection

Use features that are:

```text
relevant to the prediction task
accurate
available at prediction time
not unnecessarily privacy-invasive
not unfairly discriminatory
```

### Poor Feature Selection

Problems may happen if features are:

```text
irrelevant
too noisy
highly biased
sensitive without justification
leaking the answer
not available in real use
```

### Example

For student pass/fail prediction:

Useful features might be:

```text
attendance
previous scores
assignment completion
```

Risky or unfair features might include:

```text
home address
family income
nationality
```

unless there is a strong ethical and legal reason and careful protection.

---

## 24. Data Leakage

Data leakage happens when the training data includes information that would not be available at prediction time, or information that directly reveals the label.

### Example

Predict whether a student will pass final exam.

Bad feature:

```text
FinalExamScore
```

This reveals the answer and would not be available before prediction.

### Why It Is Bad

The model may appear very accurate during testing but fail in real use.

### Prevention

```text
check feature meanings
remove future information
separate training and testing data properly
review dataset before training
```

---

## 25. Training, Validation and Testing Data Preview

Datasets are often split.

| Data Split | Purpose |
|---|---|
| Training data | used to train the model |
| Validation data | used to tune/select model settings |
| Testing data | used to evaluate final model on unseen examples |

### Why Split?

If a model is evaluated only on data it has already seen, performance may look better than it really is.

### More Detail

This is covered in the `Training, Testing and Validation` page.

---

## 26. Feature Engineering Preview

Feature engineering means creating useful features from raw data.

### Example: Date of Birth

Raw feature:

```text
DateOfBirth
```

Engineered feature:

```text
Age
```

### Example: Email Text

Raw text:

```text
"Win money now!!!"
```

Engineered features:

```text
number of exclamation marks
contains money-related words
number of links
```

### Key Idea

Good features can help a model learn better patterns.

---

## 27. Privacy and Data Collection

ML data may contain personal or sensitive data.

### Personal Data Examples

```text
name
email
student ID
location
IP address
purchase history
medical record
face image
voice recording
```

### Privacy Risks

```text
collecting too much data
using data without consent
using data for a different purpose
keeping data too long
data breach
re-identification from anonymized data
using sensitive attributes unfairly
```

### Controls

```text
data minimization
consent where needed
anonymization / pseudonymization
access control
encryption
retention limits
privacy review
```

---

## 28. Data Minimization in ML

Data minimization means only collecting data needed for the ML task.

### Example

A product recommendation system may need:

```text
purchase history
viewed products
ratings
product categories
```

It may not need:

```text
passport number
health records
private messages
unrelated location history
```

### Why It Matters

Collecting less data reduces:

```text
privacy risk
breach impact
legal responsibility
misuse risk
storage and processing cost
```

---

## 29. Worked Example: Spam Detection

### Task

Predict whether an email is spam.

### Possible Features

```text
sender known or unknown
number of links
contains urgent words
contains attachment
message length
subject words
```

### Label

```text
Spam / NotSpam
```

### Data Quality Issues

```text
emails labelled incorrectly
training emails too old
too few examples of new scam types
data from only one language
```

### Privacy Issue

Emails may contain personal or confidential content, so data should be protected.

---

## 30. Worked Example: House Price Prediction

### Task

Predict house price.

### Possible Features

```text
house size
number of bedrooms
location
age of building
distance to city centre
nearby transport
```

### Label

```text
actual sale price
```

### Learning Type

```text
supervised learning
regression
```

### Data Quality Issues

```text
missing prices
outlier prices
old market data
different location formats
unrepresentative data from only one suburb
```

---

## 31. Worked Example: Student Risk Prediction

### Task

Predict whether a student is at risk of failing.

### Possible Features

```text
attendance rate
previous assessment scores
assignment submission rate
LMS activity
late submissions
```

### Label

```text
at risk / not at risk
```

### Ethical Concerns

```text
privacy of student data
unfair labelling
teacher over-reliance on prediction
students being treated differently
need for human review
```

### Important

The model should support teachers, not automatically punish students.

---

## 32. Worked Example: Product Recommendation

### Task

Recommend products to customers.

### Possible Features

```text
past purchases
viewed products
search history
ratings
cart items
similar users' behaviour
```

### Label

Depends on training method. It might be:

```text
purchased / not purchased
rating score
clicked / not clicked
```

### Data Quality Issues

```text
new users have little data
popular products dominate recommendations
biased recommendations
old behaviour no longer accurate
```

---

## 33. Worked Example: Medical Image Classification

### Task

Classify whether a scan shows possible disease signs.

### Features

```text
image pixel patterns
extracted image features
patient age if appropriate
scan type
```

### Label

```text
disease / no disease
```

or:

```text
risk category
```

### Data Quality and Ethics

```text
labels should come from qualified experts
dataset should represent different patient groups
privacy must be protected
human medical review is needed
```

---

## 34. Worked Example: Game Matchmaking

### Task

Predict fair match groups or player skill level.

### Possible Features

```text
player rank
recent win rate
role preference
latency
party size
past performance
match history
```

### Label

Depending on task:

```text
match outcome
skill rating
balanced / unbalanced match
```

### Data Issues

```text
smurf accounts distort data
new players have little data
players may change skill quickly
team role effects are complex
```

---

## 35. Scenario Answer Bank

### If Asked: “Identify features and label”

Use this structure:

```text
The features are [input variables] because they are used by the model to make a prediction. The label is [target value] because it is the correct output the model learns to predict.
```

### If Asked: “Explain why data quality matters”

Use this structure:

```text
Machine learning models learn patterns from data. If the data is incomplete, incorrect, biased, outdated, or unrepresentative, the model may learn poor patterns and make inaccurate or unfair predictions.
```

### If Asked: “Explain representative data”

Use this structure:

```text
Representative data reflects the real users or situations where the model will be used. If some groups or cases are missing, the model may perform poorly for them.
```

### If Asked: “Explain privacy concern”

Use this structure:

```text
The dataset may contain personal or sensitive data. The organization should collect only necessary data, protect it with access controls/encryption, and use it only for the stated purpose.
```

---

## 36. Common Misconceptions

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Features and labels are the same | Features are inputs; labels are outputs | Different roles |
| Labels are needed for all ML | Unsupervised learning uses unlabelled data | Labels are mainly supervised learning |
| More data is always better | poor/bias data can harm model | quality matters |
| A dataset is the same as a model | dataset trains/evaluates model | model is learned system |
| Missing data can be ignored safely | it may bias results | handle carefully |
| High accuracy means data is good | accuracy may be misleading | check fairness and errors |
| Duplicates always help | they may overweight examples | remove unnecessary duplicates |
| Outliers are always wrong | some are real rare cases | investigate first |
| Sensitive data always improves model | may create privacy/fairness risk | justify and protect data |
| Representative data means large data | size alone is not enough | must reflect real use |

---

## 37. Guided Practice

### Practice 1: Feature or Label?

In a model predicting house price, is `number of bedrooms` a feature or label?

<details>
<summary>Suggested Answer</summary>

Feature, because it is an input used to predict the price.

</details>

---

### Practice 2: Label

In spam detection, what is the label?

<details>
<summary>Suggested Answer</summary>

The label is `Spam` or `NotSpam`.

</details>

---

### Practice 3: Data Quality

A dataset has many wrong labels. Why is this a problem?

<details>
<summary>Suggested Answer</summary>

The model may learn wrong patterns and make inaccurate predictions because the training examples contain incorrect answers.

</details>

---

### Practice 4: Representative Data

Why is it bad if a speech recognition model is trained only on one accent?

<details>
<summary>Suggested Answer</summary>

The data is not representative of all users, so the model may perform poorly for people with different accents.

</details>

---

### Practice 5: Privacy

A recommendation system collects passport numbers even though it only recommends movies. What principle may be violated?

<details>
<summary>Suggested Answer</summary>

Data minimization, because the system is collecting data that is not needed for the task.

</details>

---

## 38. Independent Practice

### Question 1

Define dataset.

### Question 2

Define feature and label.

### Question 3

Explain the difference between feature and label using a spam detection example.

### Question 4

For house price prediction, identify four possible features and the label.

### Question 5

For student pass/fail prediction, identify three possible features and one label.

### Question 6

Explain why data quality affects model performance.

### Question 7

Give three examples of poor data quality.

### Question 8

Explain why representative data is important.

### Question 9

Explain one privacy risk when collecting data for machine learning.

### Question 10

Explain why data leakage can make a model seem better than it really is.

---

## 39. Exam-style Questions

### Question 1 [4 marks]

Define feature and label in machine learning.

<details>
<summary>Mark Scheme Style Answer</summary>

A feature is an input variable used by a machine learning model to make a prediction. A label is the correct output or target value used during supervised learning, which the model learns to predict.

</details>

---

### Question 2 [5 marks]

A model predicts whether an email is spam. Possible data includes sender address, number of links, words in the subject, and whether the email is spam. Identify the features and label.

<details>
<summary>Mark Scheme Style Answer</summary>

The features are sender address, number of links, and words in the subject because they are input variables used by the model. The label is whether the email is spam or not spam because this is the correct output the model learns to predict.

</details>

---

### Question 3 [6 marks]

Explain why data quality is important when training a machine learning model.

<details>
<summary>Mark Scheme Style Answer</summary>

A machine learning model learns patterns from training data, so poor data can lead to poor predictions. Missing values, incorrect labels, duplicates, outliers, biased data, or unrepresentative examples can cause the model to learn wrong or unfair patterns. High-quality, relevant, and representative data improves the chance that the model performs well on new data.

</details>

---

### Question 4 [6 marks]

A house price model uses size, location, and number of rooms to predict sale price. Identify the learning type, features, label, and prediction type.

<details>
<summary>Mark Scheme Style Answer</summary>

This is supervised learning because the model is trained using labelled examples with known sale prices. The features are size, location, and number of rooms. The label is the actual sale price. The prediction type is regression because the model predicts a numerical value.

</details>

---

### Question 5 [6 marks]

Explain two privacy or ethical concerns when collecting data for a machine learning system.

<details>
<summary>Mark Scheme Style Answer</summary>

One concern is collecting more personal data than necessary, which violates data minimization and increases harm if the data is leaked. Another concern is using data without consent or for a purpose different from the one originally stated. There may also be fairness concerns if sensitive attributes or biased data lead to unfair predictions for some groups.

</details>

---

## 40. Practice task
### Activity 1: Feature or Label Sort

Students sort cards into features and labels for scenarios:

```text
spam detection
house price prediction
student pass/fail prediction
fraud detection
game matchmaking
```

---

### Activity 2: Data Quality Detective

Give students a dataset with:

```text
missing values
duplicate rows
incorrect labels
outliers
unbalanced classes
```

Students identify each problem and suggest a fix.

---

### Activity 3: Privacy Review

Scenario:

```text
A school ML system predicts student exam risk using attendance, grades, home address, nationality, parent income, and browsing history.
```

Students discuss:

```text
which features may be useful
which features are sensitive or risky
which features may be unfair
what privacy controls are needed
```

---

## 41. Independent practice
### Independent practice part A: Concept Explanation

In 6-8 sentences, explain what features and labels are and why they matter in supervised learning.

---

### Independent practice part B: Scenario Table

Choose three ML scenarios and complete:

```text
scenario
possible features
possible label
classification or regression
one data quality issue
one privacy/ethical issue
```

---

### Independent practice part C: Data Quality

Explain these data quality problems with examples:

```text
missing values
incorrect labels
duplicate data
outliers
unbalanced data
biased data
```

---

### Independent practice part D: Misconception Correction

Correct these statements:

```text
Features are the answers the model predicts.
Labels are always available in unsupervised learning.
More data is always better even if it is biased.
Outliers should always be deleted without checking.
A model can safely collect any data if it improves accuracy.
```

---

## 42. One-page Revision Summary

| Point | Summary |
|---|---|
| Data | Examples used by ML systems |
| Dataset | Collection of examples |
| Example / instance | One item or row in dataset |
| Feature | Input variable used by model |
| Label | Correct output/target in supervised learning |
| Target | Value the model tries to predict |
| Structured data | Rows and columns |
| Unstructured data | Images, text, audio, video |
| Raw data | Data before cleaning |
| Prepared data | Data after preprocessing |
| Missing value | Absent value |
| Incorrect label | Wrong correct answer |
| Duplicate data | Repeated example |
| Outlier | Unusual value |
| Unbalanced data | One class much more common |
| Representative data | Reflects real use population |
| Data bias | Systematic distortion/unfairness |
| Feature selection | Choosing useful input variables |
| Data leakage | Including information not available in real prediction |
| Privacy risk | Personal/sensitive data may be misused or exposed |
| Exam phrase | Features are input variables, labels are correct outputs, and data quality strongly affects model performance and fairness |

---

## 43. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a dataset?
2. What is one example/instance?
3. What is a feature?
4. What is a label?
5. What is the difference between feature and label?
6. What is structured data?
7. What is unstructured data?
8. Name three data quality problems.
9. Why is representative data important?
10. Why can collecting too much data create privacy risk?

