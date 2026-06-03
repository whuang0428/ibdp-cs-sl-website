# A4 Machine Learning

::: info Syllabus area
Theme A: Concepts of computer science. A4 Machine learning helps you understand how data can be used to train, evaluate, and question predictive systems.
:::

## Assessment connection

- Paper 1: tests ML concepts, data, model evaluation, overfitting, bias, ethics, privacy, and scenario judgement.
- Paper 2: may support applied option questions where data-driven systems or model limitations are relevant.
- IA: helps you discuss data quality, evaluation, bias, privacy, and whether ML is suitable for a proposed solution.

## 1. Module Overview

A4 Machine Learning introduces how computer systems can use data to learn patterns, make predictions, group data, evaluate performance, and support decision-making.

In this module, students learn how machine learning systems:

```text
learn from data
use features and labels
train models
make predictions
use supervised and unsupervised learning
perform classification and regression
split data into training, validation, and testing sets
evaluate model performance
avoid overfitting and underfitting
consider bias, ethics, and privacy
apply ML in real-world systems
understand ML limitations
```

Machine learning is now used in many areas:

```text
spam detection
fraud detection
recommendation systems
medical support
student risk prediction
delivery time prediction
image recognition
speech recognition
customer segmentation
game matchmaking
network anomaly detection
content moderation
```

The main goal of A4 is not to become a machine learning engineer.  
The goal is to understand the **concepts, workflow, risks, and exam-style explanations** behind ML systems.

---

## 2. Learning Goals

By the end of A4 Machine Learning, students should be able to:

- define artificial intelligence and machine learning
- explain how machine learning differs from traditional programming
- define data, dataset, feature, label, model, algorithm, training, and prediction
- distinguish features and labels in supervised learning examples
- explain supervised learning and unsupervised learning
- distinguish classification and regression
- explain training, validation, and testing data
- explain why unseen testing data is important
- explain generalization
- identify overfitting and underfitting from training/testing results
- explain model evaluation at a basic level
- explain accuracy, confusion matrix, precision, recall, and regression error
- explain why accuracy can be misleading
- explain bias, ethics, privacy, fairness, transparency, explainability, and human oversight
- identify common ML applications and limitations
- evaluate whether ML is suitable for a scenario
- recommend safeguards for ML systems
- answer exam-style questions using correct ML vocabulary

---

## 3. A4 Learning Path

Recommended teaching order:

```text
Overview
→ Machine Learning Fundamentals
→ Data, Features and Labels
→ Supervised Learning
→ Unsupervised Learning
→ Training, Testing and Validation
→ Classification and Regression
→ Model Evaluation
→ Overfitting and Underfitting
→ Bias, Ethics and Privacy
→ ML Applications and Limitations
```

This order is intentional.

Students first learn the basic idea of ML.  
Then they learn what data, features, and labels mean.  
After that, they study supervised and unsupervised learning.  
Then they learn the model development workflow: training, validation, testing, evaluation, and fitting problems.  
Finally, they connect ML to real-world applications, bias, ethics, privacy, and limitations.

---

## 4. Topic Index

| Order | Topic | Main Focus | Link |
|---:|---|---|---|
| 1 | Overview | whole A4 module map, patterns, revision route | [Open](./) |
| 2 | Machine Learning Fundamentals | AI vs ML, traditional programming vs ML, basic workflow | [Open](./ml-fundamentals) |
| 3 | Data, Features and Labels | dataset, examples, features, labels, data quality, privacy | [Open](./data-features-labels) |
| 4 | Supervised Learning | labelled data, features/labels, training and prediction | [Open](./supervised-learning) |
| 5 | Unsupervised Learning | unlabelled data, clustering, anomaly detection | [Open](./unsupervised-learning) |
| 6 | Training, Testing and Validation | data splits, unseen data, generalization, data leakage | [Open](./training-testing-validation) |
| 7 | Classification and Regression | category prediction vs numerical prediction | [Open](./classification-regression) |
| 8 | Model Evaluation | accuracy, confusion matrix, precision, recall, regression error | [Open](./model-evaluation) |
| 9 | Overfitting and Underfitting | good fit, overfitting, underfitting, training/testing patterns | [Open](./overfitting-underfitting) |
| 10 | Bias, Ethics and Privacy | bias, fairness, explainability, accountability, data protection | [Open](./bias-ethics-privacy) |
| 11 | ML Applications and Limitations | real-world uses, benefits, limitations, safeguards | [Open](./ml-applications-limitations) |

## 5. Concept Map

```text
A4 Machine Learning
├── Foundations
│   ├── Artificial Intelligence
│   ├── Machine Learning
│   ├── Traditional Programming vs ML
│   ├── Algorithm
│   ├── Model
│   └── Prediction
├── Data
│   ├── Dataset
│   ├── Example / Instance
│   ├── Feature
│   ├── Label
│   ├── Target
│   ├── Structured Data
│   ├── Unstructured Data
│   └── Data Quality
├── Learning Types
│   ├── Supervised Learning
│   │   ├── Labelled Data
│   │   ├── Classification
│   │   └── Regression
│   └── Unsupervised Learning
│       ├── Unlabelled Data
│       ├── Clustering
│       └── Anomaly Detection
├── Model Workflow
│   ├── Training Data
│   ├── Validation Data
│   ├── Testing Data
│   ├── Generalization
│   ├── Data Leakage
│   └── Monitoring
├── Evaluation
│   ├── Accuracy
│   ├── Confusion Matrix
│   ├── Precision
│   ├── Recall
│   ├── Regression Error
│   └── Mean Absolute Error
├── Fitting Problems
│   ├── Good Fit
│   ├── Overfitting
│   └── Underfitting
├── Responsible ML
│   ├── Bias
│   ├── Fairness
│   ├── Ethics
│   ├── Privacy
│   ├── Explainability
│   └── Human Oversight
└── Applications and Limits
    ├── Recommendation
    ├── Spam/Fraud Detection
    ├── Healthcare
    ├── Education
    ├── Transport
    ├── Security
    ├── Games
    └── Limitations
```

---

## 6. Bilingual Module Explanation

<LangBlock>
<template #cn>

### 中文说明

A4 Machine Learning 的核心可以理解为：

```text
data → train model → model learns patterns → model makes prediction
```

传统 programming 通常是：

```text
rules + data → output
```

Machine learning 更像是：

```text
data + labels + algorithm → trained model
trained model + new data → prediction
```

例如 spam detection：

```text
features = sender, number of links, suspicious words
label = Spam / NotSpam
model output = Spam or NotSpam
```

如果 label 是 category，这就是 classification。  
如果 label 是 number，这就是 regression。

A4 最容易混淆的点包括：

```text
AI 和 ML
algorithm 和 model
feature 和 label
training 和 prediction
supervised 和 unsupervised learning
classification 和 regression
training / validation / testing data
accuracy 和 precision / recall
overfitting 和 underfitting
bias 和 error
security 和 privacy
application 和 limitation
```

学习时要重点掌握 exam answer 的结构：

```text
what data is used
what features are used
what label/output is predicted
what type of learning it is
how model is evaluated
what limitations/risks exist
what safeguards are needed
```

</template>

<template #en>

### English Explanation

The core idea of A4 Machine Learning can be understood as:

```text
data → train model → model learns patterns → model makes prediction
```

Traditional programming is usually:

```text
rules + data → output
```

Machine learning is more like:

```text
data + labels + algorithm → trained model
trained model + new data → prediction
```

Example: spam detection:

```text
features = sender, number of links, suspicious words
label = Spam / NotSpam
model output = Spam or NotSpam
```

If the label is a category, the task is classification.  
If the label is a number, the task is regression.

The most common A4 confusions include:

```text
AI and ML
algorithm and model
feature and label
training and prediction
supervised and unsupervised learning
classification and regression
training / validation / testing data
accuracy and precision / recall
overfitting and underfitting
bias and error
security and privacy
application and limitation
```

When answering exam questions, students should focus on this structure:

```text
what data is used
what features are used
what label/output is predicted
what type of learning it is
how model is evaluated
what limitations/risks exist
what safeguards are needed
```

</template>
</LangBlock>

---

## 7. Whole ML Workflow Pattern

A useful big-picture ML pattern is:

```text
define problem
→ collect data
→ prepare data
→ choose features and labels
→ split data
→ train model
→ validate/tune model
→ test final model
→ deploy/use model
→ monitor and improve
```

### Example: Spam Filter

```text
problem = classify emails as spam or not spam
data = past labelled emails
features = sender, words, links, attachments
label = spam/not spam
split = training, validation, testing
model = trained classifier
evaluation = accuracy, precision, recall, confusion matrix
deployment = classify new emails
monitoring = check false positives and new spam tactics
```

---

## 8. Machine Learning Fundamentals Pattern

| Concept | Meaning |
|---|---|
| AI | broader field of intelligent systems |
| ML | part of AI that learns from data |
| Traditional programming | rules written by humans |
| Machine learning | model learns patterns from examples |
| Algorithm | method used to train/use model |
| Model | trained system used for prediction |
| Prediction | output from trained model |

### Exam Phrase

Machine learning is a technique where a system learns patterns from data and uses a trained model to make predictions or decisions on new data.

---

## 9. Data, Features and Labels Pattern

| Concept | Meaning | Example |
|---|---|---|
| Dataset | collection of examples | email dataset |
| Example / instance | one item/row | one email |
| Feature | input variable | number of links |
| Label | correct output | spam/not spam |
| Target | value to predict | house price |
| Structured data | rows and columns | spreadsheet |
| Unstructured data | images, text, audio | scan image |

### Quick Memory

```text
feature = input
label = answer
```

---

## 10. Supervised Learning Pattern

Supervised learning uses labelled data.

```text
features + labels → train model
new features → prediction
```

### Examples

| Scenario | Features | Label | Type |
|---|---|---|---|
| spam detection | links, words, sender | spam/not spam | classification |
| house price | size, rooms, location | price | regression |
| student risk | attendance, previous score | at risk/not at risk | classification |
| delivery time | distance, traffic, weather | minutes | regression |

### Exam Phrase

Supervised learning trains a model using labelled examples, where each example has input features and a known correct output called a label.

---

## 11. Unsupervised Learning Pattern

Unsupervised learning uses unlabelled data.

```text
unlabelled data → find patterns/groups/anomalies
```

### Common Tasks

| Task | Meaning | Example |
|---|---|---|
| Clustering | group similar examples | customer segments |
| Anomaly detection | find unusual examples | suspicious transactions |
| Association | find related items | bread and butter purchases |
| Dimensionality reduction | reduce feature count | simplify high-dimensional data |

### Exam Phrase

Unsupervised learning uses unlabelled data to discover patterns, groups, or structures without being given correct output labels.

---

## 12. Classification and Regression Pattern

| Task | Output Type | Example |
|---|---|---|
| Classification | category/class | spam/not spam |
| Regression | numerical value | house price |

### Quick Decision Method

Ask:

```text
What is the model output?
```

If the output is a category:

```text
classification
```

If the output is a number:

```text
regression
```

### Same Scenario Can Be Both

Student performance:

```text
Pass / Fail = classification
Final score = regression
```

Delivery system:

```text
Late / NotLate = classification
Delivery time in minutes = regression
```

---

## 13. Training, Validation and Testing Pattern

| Data Split | Purpose |
|---|---|
| Training data | teaches the model |
| Validation data | tunes/selects model |
| Testing data | final evaluation on unseen data |

### Quick Memory

```text
training = learn
validation = tune
testing = final check
```

### Exam Phrase

Datasets are split so the model can be trained on one part and evaluated on unseen data, giving a more reliable estimate of how it will perform on new examples.

---

## 14. Model Evaluation Pattern

### Classification Evaluation

```text
accuracy
confusion matrix
precision
recall
F1 score
```

### Regression Evaluation

```text
prediction error
mean absolute error
mean squared error
root mean squared error
```

### Accuracy Warning

Accuracy can be misleading when classes are imbalanced.

Example:

```text
99% not fraud
1% fraud
model predicts all transactions as not fraud
accuracy = 99%
but catches no fraud
```

### Exam Phrase

Classification evaluation checks whether predicted classes match actual classes, while regression evaluation measures how close predicted numerical values are to actual values.

---

## 15. Confusion Matrix Pattern

For a binary classifier:

|  | Predicted Positive | Predicted Negative |
|---|---:|---:|
| Actual Positive | True Positive | False Negative |
| Actual Negative | False Positive | True Negative |

### Memory

```text
true = correct
false = incorrect
positive = model says yes
negative = model says no
```

### Precision vs Recall

```text
precision = of predicted positives, how many were actually positive
recall = of actual positives, how many were found
```

---

## 16. Overfitting and Underfitting Pattern

| Training Performance | Testing Performance | Likely Situation |
|---|---|---|
| high | high | good fit |
| high | low | overfitting |
| low | low | underfitting |
| low | high | suspicious; check split/leakage |

### Definitions

```text
overfitting = learns training data too specifically
underfitting = too simple or poorly trained
generalization = performs well on unseen data
```

### Exam Phrase

Overfitting performs well on training data but poorly on unseen data, while underfitting performs poorly on both training and unseen data.

---

## 17. Bias, Ethics and Privacy Pattern

### Bias

```text
biased data → biased model → unfair prediction
```

Bias can come from:

```text
unrepresentative data
historical unfairness
incorrect labels
proxy variables
unequal model performance across groups
```

### Ethics

Ethics asks:

```text
Should this system be used?
Who may be harmed?
Who is responsible?
Can users challenge decisions?
Is human oversight needed?
```

### Privacy

Privacy asks:

```text
What personal data is collected?
Is it necessary?
Is there consent or clear purpose?
Is it protected?
How long is it kept?
```

### Safeguards

```text
representative data
fairness testing
data minimization
access control
encryption
anonymization/pseudonymization
human oversight
transparency
appeal process
monitoring
```

---

## 18. ML Applications Pattern

| Application | ML Task | Output |
|---|---|---|
| spam detection | classification | spam/not spam |
| fraud detection | classification/anomaly detection | fraud flag |
| recommendation | prediction/ranking | suggested item |
| house price | regression | price |
| delivery time | regression | minutes |
| customer segmentation | clustering | customer groups |
| medical screening | classification | possible disease |
| game matchmaking | classification/regression | match outcome/skill rating |
| network security | anomaly detection | suspicious activity |

---

## 19. ML Limitations Pattern

| Limitation | Meaning |
|---|---|
| data dependency | ML needs suitable data |
| poor data quality | bad data leads to bad model |
| bias | unfair patterns may be learned |
| poor generalization | model fails on new data |
| overfitting | memorizes training data |
| underfitting | fails to learn useful patterns |
| explainability | decision may be hard to explain |
| privacy risk | personal data may be misused/exposed |
| security risk | model/data may be attacked |
| model drift | real-world data changes |
| cost | data, training, staff, compute, maintenance |
| human over-reliance | people trust model too much |

### Exam Phrase

ML can find complex patterns and support prediction, but it depends on data quality and needs evaluation, monitoring, privacy protection, fairness checks, and human oversight.

---

## 22. Student Revision Routine

For any A4 scenario question, students should ask:

```text
What problem is the ML system solving?
What data is used?
What features are used?
Is there a label?
What is the model output?
Is it supervised or unsupervised?
If supervised, is it classification or regression?
How is the model trained/tested?
How should it be evaluated?
What errors can happen?
What bias/privacy/ethical risks exist?
What safeguards are suitable?
```

### Scenario Answer Pattern

```text
1. Identify task and output.
2. Identify data/features/labels.
3. State learning type.
4. Explain why ML is suitable or not.
5. Explain evaluation method.
6. Explain limitations/risks.
7. Recommend safeguards.
```

---

## 23. Common A4 Mistakes Overview

| Mistake | Topic | Fix |
|---|---|---|
| AI and ML are identical | Fundamentals | ML is part of AI |
| Model and algorithm are identical | Fundamentals | algorithm trains/uses model; model is trained system |
| Feature means answer | Data | feature is input |
| Label means input | Data | label is correct output |
| Supervised learning has no labels | Supervised | supervised uses labelled data |
| Unsupervised learning has correct answers | Unsupervised | it uses unlabelled data |
| Classification predicts numbers | Classification | classification predicts categories |
| Regression means model is bad | Regression | regression predicts numbers |
| Training data is final evaluation | Data split | testing data evaluates final model |
| Test data can tune model repeatedly | Data split | use validation for tuning |
| Accuracy is always enough | Evaluation | may be misleading |
| False positive and false negative are same | Evaluation | different error types |
| Overfitting means too simple | Fitting | overfitting is too specific |
| Underfitting means memorizing | Fitting | underfitting fails to learn |
| High accuracy means fair | Bias | check groups and error types |
| Removing sensitive features removes all bias | Bias | proxy variables may remain |
| ML is always better than rules | Applications | simple rules may be better |
| Model works forever after training | Applications | model drift may occur |

---

## 24. Assessment Focus

A4 questions may ask students to:

- define machine learning
- compare AI and ML
- compare traditional programming and ML
- identify data, features, labels, model, and prediction
- distinguish supervised and unsupervised learning
- explain labelled and unlabelled data
- identify classification and regression tasks
- explain training, validation, and testing data
- explain why unseen data is used
- identify overfitting and underfitting from performance values
- explain model evaluation and suitable metrics
- explain why accuracy can be misleading
- interpret false positives and false negatives
- explain bias and unfair outcomes
- explain privacy risks and controls
- discuss human oversight and explainability
- identify ML applications and limitations
- evaluate whether ML is suitable for a scenario

---

## 25. Common Exam-style Command Words

| Command | What Students Should Do |
|---|---|
| State | Give a short direct answer |
| Identify | Name the correct item |
| Define | Give precise meaning |
| Describe | Give features or steps |
| Explain | Give reason and effect |
| Distinguish | Show clear difference |
| Compare | Give similarities and differences |
| Discuss | Give balanced points with context |
| Recommend | Choose suitable method and justify |
| Justify | Give reasons for choice |
| Evaluate | Give strengths, weaknesses, and judgement |
| Suggest | Provide a suitable idea |
| Apply | Use concept in given scenario |

---

## 26. Mini Diagnostic Check

### Question 1

What is machine learning?

<details>
<summary>Answer</summary>

Machine learning is a technique where a system learns patterns from data and uses a trained model to make predictions or decisions on new data.

</details>

---

### Question 2

What is the difference between a feature and a label?

<details>
<summary>Answer</summary>

A feature is an input variable used by the model.  
A label is the correct output or target value used in supervised learning.

</details>

---

### Question 3

What is supervised learning?

<details>
<summary>Answer</summary>

Supervised learning trains a model using labelled data, where each example includes input features and a known correct label.

</details>

---

### Question 4

What is unsupervised learning?

<details>
<summary>Answer</summary>

Unsupervised learning uses unlabelled data to find patterns, groups, or anomalies without being given correct output labels.

</details>

---

### Question 5

What is the difference between classification and regression?

<details>
<summary>Answer</summary>

Classification predicts a category or class.  
Regression predicts a numerical value.

</details>

---

### Question 6

Why is testing data kept separate?

<details>
<summary>Answer</summary>

Testing data is kept separate so the final model can be evaluated on unseen examples, giving a better estimate of real-world performance.

</details>

---

### Question 7

What does high training accuracy but low testing accuracy suggest?

<details>
<summary>Answer</summary>

It suggests overfitting.

</details>

---

### Question 8

Why can accuracy be misleading?

<details>
<summary>Answer</summary>

Accuracy can be misleading when classes are imbalanced because a model may predict the majority class and still get high accuracy while failing on the important minority class.

</details>

---

### Question 9

What is bias in ML?

<details>
<summary>Answer</summary>

Bias is systematic unfairness or distortion in data, model behaviour, or outcomes that can produce inaccurate or unfair results for some people or groups.

</details>

---

### Question 10

Why is human oversight important?

<details>
<summary>Answer</summary>

Human oversight is important because ML predictions can be wrong, biased, hard to explain, or missing context, especially in high-stakes decisions.

</details>

---

## 27. End-of-module Practice Plan

After finishing A4, students should complete:

| Practice Type | Purpose |
|---|---|
| 10 vocabulary questions | strengthen core ML definitions |
| 8 feature/label identification questions | fix feature-label confusion |
| 8 supervised vs unsupervised scenarios | identify learning type |
| 8 classification vs regression scenarios | identify output type |
| 6 data split questions | training/validation/testing |
| 6 overfitting/underfitting result questions | interpret performance patterns |
| 6 model evaluation questions | accuracy, confusion matrix, precision/recall |
| 5 bias/ethics/privacy scenarios | explain risks and safeguards |
| 5 applications/limitations scenarios | benefit-risk-safeguard structure |
| 3 extended scenario answers | full ML reasoning |

---

## 28. Suggested Mini Project

### ML Case Study

Choose one system:

```text
spam filter
movie recommendation system
student risk prediction system
fraud detection system
medical image support system
delivery time prediction system
game matchmaking system
network anomaly detection system
customer segmentation system
```

Students should produce:

```text
1. system overview
2. problem being solved
3. data used
4. possible features
5. label if supervised
6. learning type
7. classification/regression/clustering/anomaly detection
8. training, validation, and testing plan
9. evaluation method
10. possible overfitting/underfitting issue
11. bias or fairness risk
12. privacy risk
13. limitation
14. safeguard
15. one exam-style question with mark scheme answer
```

### Example: Student Risk Prediction

Students could identify:

```text
data = attendance, grades, assignments, LMS activity
label = at risk / not at risk
type = supervised classification
evaluation = accuracy, precision, recall, confusion matrix
risk = unfair labelling, privacy, over-reliance
safeguard = human review, data minimization, fairness checks
```

---

## 29. A4 Completion Checklist

Before moving to the next module, students should be able to:

- [ ] define artificial intelligence
- [ ] define machine learning
- [ ] distinguish AI and ML
- [ ] explain traditional programming vs ML
- [ ] define dataset
- [ ] define feature
- [ ] define label
- [ ] define model
- [ ] define training
- [ ] define prediction
- [ ] identify features and labels in a scenario
- [ ] explain supervised learning
- [ ] explain unsupervised learning
- [ ] distinguish labelled and unlabelled data
- [ ] define classification
- [ ] define regression
- [ ] distinguish classification and regression from output type
- [ ] explain training data
- [ ] explain validation data
- [ ] explain testing data
- [ ] explain unseen data and generalization
- [ ] identify overfitting
- [ ] identify underfitting
- [ ] explain accuracy
- [ ] explain why accuracy can be misleading
- [ ] explain confusion matrix terms
- [ ] explain precision and recall
- [ ] explain regression error / MAE
- [ ] explain bias in ML
- [ ] explain privacy risks in ML
- [ ] explain fairness and human oversight
- [ ] identify ML applications
- [ ] explain ML limitations
- [ ] recommend safeguards for an ML system

---

## 30. One-page Module Summary

| Area | Key Idea |
|---|---|
| AI | Broad field of intelligent systems |
| ML | System learns patterns from data |
| Traditional programming | Human writes rules |
| Feature | Input variable |
| Label | Correct output |
| Model | Trained system |
| Training | Learning from examples |
| Prediction | Model output for new data |
| Supervised learning | Uses labelled data |
| Unsupervised learning | Uses unlabelled data |
| Classification | Predicts category |
| Regression | Predicts number |
| Training data | Teaches the model |
| Validation data | Tunes/selects model |
| Testing data | Final unseen evaluation |
| Generalization | Performs well on new data |
| Accuracy | Correct predictions / total |
| Precision | Predicted positives that are truly positive |
| Recall | Actual positives found |
| Overfitting | High training, low testing |
| Underfitting | Low training, low testing |
| Bias | Systematic unfairness or distortion |
| Privacy | Responsible use of personal data |
| Human oversight | Human review of important outputs |
| Limitation | ML can be wrong, biased, costly, hard to explain, or privacy-risky |

