$basePath = "docs\a4-machine-learning"
New-Item -ItemType Directory -Force $basePath | Out-Null

$pages = @{
"index.md" = @'
# A4 Machine Learning

## Unit Overview

This unit introduces the basic ideas of machine learning and its ethical impact.

Students will learn what machine learning is, how models use data, how training and testing data are used, how simple learning approaches work, and how model performance can be evaluated.

For this first framework version, each page gives a short learning structure. Later, each page can be expanded into a full teaching page with diagrams, datasets, simple coding examples, exam-style questions, and teacher notes.

## Topics

| Topic | Main Focus | Label |
|---|---|---|
| Machine Learning Fundamentals | Understand what machine learning is and why it is used | SL Core |
| Data, Features and Labels | Understand the data used by ML models | SL Core |
| Training and Testing Data | Understand how models are trained and checked | SL Core |
| Supervised Learning | Learn from labelled examples | SL Core |
| Unsupervised Learning | Find patterns in unlabelled data | School Extension |
| Reinforcement Learning | Learn through rewards and penalties | School Extension |
| Classification and Prediction | Use models to categorize or predict outcomes | SL Core |
| Confusion Matrix and F1 Score | Evaluate model performance | SL Core |
| Ethics and Bias | Evaluate social and ethical impacts of ML | SL Core |
| Neural Networks and CNNs | Understand high-level neural network ideas | School Extension |

## How to Study This Unit

1. Learn the vocabulary first.
2. Understand how data is prepared and used.
3. Distinguish between training and testing.
4. Practise interpreting evaluation results.
5. Discuss ethical issues using real-world scenarios.

::: tip SL Core
For SL, focus on core machine learning concepts, evaluation ideas, and ethical considerations. Some advanced approaches are included as school extension content.
:::
'@

"machine-learning-fundamentals.md" = @'
# Machine Learning Fundamentals

## 1. Learning Objectives

By the end of this page, students should be able to:

- define machine learning
- explain how machine learning differs from traditional programming
- identify examples of machine learning systems
- explain why data is important in machine learning

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding ML purpose |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Machine learning | A method where a system learns patterns from data to make predictions or decisions |
| Model | A system trained to make predictions or classifications |
| Training | The process of learning from data |
| Prediction | An output produced by a model |
| Algorithm | A procedure used to learn patterns or solve a problem |

## 4. Concept Explanation

Machine learning allows a computer system to learn from data.

In traditional programming, the programmer writes explicit rules.

In machine learning, the system uses data to learn patterns. The trained model can then make predictions or decisions on new data.

Examples include:

- spam email detection
- image recognition
- recommendation systems
- medical diagnosis support
- speech recognition

## 5. Step-by-step Example

Example: Spam email detection

| Stage | Example |
|---|---|
| Data | Many emails marked as spam or not spam |
| Training | The model learns patterns in spam emails |
| Input | A new email |
| Output | Spam or not spam |

## 6. Visual Structure

::: info Machine Learning Idea
Data → training algorithm → trained model → new input → prediction or classification
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking ML is magic | ML depends on data, patterns, and algorithms |
| Ignoring training data | Poor data can produce poor models |
| Saying ML always gives perfect answers | Models can make errors |
| Confusing model and dataset | A model is trained using data |

## 8. Exam-style Question

A company uses machine learning to recommend videos to users.

**Explain how machine learning could be used in this system.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- user behaviour data can be collected
- a model can be trained to identify patterns in user preferences
- the model can predict videos a user may like
- recommendations can be updated as more data is collected

## 10. Quick Check

1. What is machine learning?
2. What is a model?
3. Give one example of a machine learning system.
'@

"data-features-labels.md" = @'
# Data, Features and Labels

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the role of data in machine learning
- define feature and label
- identify features and labels in simple datasets
- explain why data quality matters

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding ML data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Dataset | A collection of data used by a machine learning system |
| Feature | An input variable used by a model |
| Label | The target output used in supervised learning |
| Record | One row or example in a dataset |
| Data quality | How accurate, complete, and suitable the data is |

## 4. Concept Explanation

Machine learning depends on data.

Features are the input values the model uses to learn patterns.

Labels are the correct answers used during supervised learning.

Example: Predicting whether a student passes a course

| Feature | Example |
|---|---|
| Attendance | 92% |
| Homework completion | 85% |
| Mock exam mark | 68 |

| Label | Example |
|---|---|
| Final result | Pass |

## 5. Step-by-step Example

Dataset for house price prediction:

| Feature | Example |
|---|---|
| Number of bedrooms | 3 |
| Area | 120 square metres |
| Distance to city centre | 5 km |

Label:

| Label | Example |
|---|---|
| House price | 800000 |

## 6. Visual Structure

::: info Data in ML
Dataset → records → features as input values → label as target output → model learns patterns.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Confusing features and labels | Inputs and target outputs have different roles |
| Using irrelevant features | The model may learn weak or misleading patterns |
| Ignoring missing data | Training may become less reliable |
| Assuming more data is always better | Data quality also matters |

## 8. Exam-style Question

A model predicts whether a patient may develop a disease.

**Identify two possible features and one possible label for this model.** [3]

## 9. Mark Scheme Style Answer

Possible answers:

- feature: age
- feature: blood pressure
- feature: medical history
- label: disease risk / disease present or not present

## 10. Quick Check

1. What is a feature?
2. What is a label?
3. Why is data quality important?
'@

"training-testing-data.md" = @'
# Training and Testing Data

## 1. Learning Objectives

By the end of this page, students should be able to:

- distinguish between training data and testing data
- explain why testing data should be separate
- explain the purpose of model evaluation
- identify problems such as overfitting

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Model training and evaluation |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Training data | Data used to train a model |
| Testing data | Data used to check how well the model works on unseen examples |
| Validation | Checking model performance during development |
| Overfitting | When a model fits training data too closely and performs poorly on new data |
| Generalization | The ability to perform well on new, unseen data |

## 4. Concept Explanation

A machine learning model needs data for training and testing.

Training data is used to teach the model patterns.

Testing data is used to check whether the model can handle new examples.

If the same data is used for both training and testing, the result may be misleading because the model may simply remember the training examples.

## 5. Step-by-step Example

A dataset has 1000 images.

A possible split:

| Data Type | Number of Images | Purpose |
|---|---:|---|
| Training data | 800 | Train the model |
| Testing data | 200 | Evaluate the model |

## 6. Visual Structure

::: info Training and Testing
Dataset → split into training data and testing data → train model → evaluate on unseen testing data.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Testing on the same data used for training | Results may be unrealistically high |
| Ignoring overfitting | The model may fail on real-world data |
| Using too little data | The model may not learn enough patterns |
| Assuming high training accuracy is enough | Testing performance is more important |

## 8. Exam-style Question

A model performs very well on training data but poorly on new data.

**Identify this problem and explain why it is an issue.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the problem is overfitting
- the model has learned the training data too closely
- it does not generalize well to unseen data

## 10. Quick Check

1. What is training data?
2. What is testing data?
3. Why should testing data be unseen?
'@

"supervised-learning.md" = @'
# Supervised Learning

## 1. Learning Objectives

By the end of this page, students should be able to:

- define supervised learning
- explain the role of labelled data
- identify classification and regression examples
- apply supervised learning to simple scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Learning from labelled examples |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Supervised learning | Learning from examples that include correct labels |
| Labelled data | Data where each example has a known correct output |
| Classification | Predicting a category |
| Regression | Predicting a numerical value |
| Target output | The value the model is trying to predict |

## 4. Concept Explanation

In supervised learning, the model learns from labelled examples.

Each training example includes input features and a correct output label.

Examples:

| Task | Type |
|---|---|
| Predict whether an email is spam | Classification |
| Predict house price | Regression |
| Identify whether an image shows a cat or dog | Classification |
| Predict tomorrow's temperature | Regression |

## 5. Step-by-step Example

Spam detection:

| Feature Examples | Label |
|---|---|
| contains suspicious link, unknown sender | Spam |
| known sender, normal content | Not spam |

The model learns patterns that help classify future emails.

## 6. Visual Structure

::: info Supervised Learning
Labelled examples → train model → new input → predicted label or value.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Forgetting labels | Supervised learning needs correct outputs during training |
| Confusing classification and regression | Categories and numerical values are different |
| Thinking all ML is supervised | There are other approaches |
| Ignoring bad labels | Incorrect labels can train a poor model |

## 8. Exam-style Question

A hospital trains a model using X-ray images labelled as "pneumonia" or "no pneumonia".

**Identify the type of machine learning and justify your answer.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- this is supervised learning
- the training data is labelled
- the model learns to classify new X-rays into categories

## 10. Quick Check

1. What is supervised learning?
2. What is labelled data?
3. Is predicting house price classification or regression?
'@

"unsupervised-learning.md" = @'
# Unsupervised Learning

## 1. Learning Objectives

By the end of this page, students should be able to:

- define unsupervised learning
- explain the idea of finding patterns without labels
- identify clustering examples
- distinguish supervised and unsupervised learning

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | School Extension |
| Main skill | Finding patterns in unlabelled data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Unsupervised learning | Learning patterns from data without correct labels |
| Unlabelled data | Data without known target outputs |
| Clustering | Grouping similar data points together |
| Pattern | A repeated or meaningful structure in data |
| Similarity | How close or alike data examples are |

## 4. Concept Explanation

Unsupervised learning uses data that does not have labels.

The model looks for patterns or groups in the data.

Examples:

- grouping customers by shopping behaviour
- grouping similar documents
- finding unusual patterns in network traffic
- discovering clusters in survey responses

## 5. Step-by-step Example

A shop has customer purchase data but no predefined customer types.

Unsupervised learning may group customers into clusters such as:

| Cluster | Possible Meaning |
|---|---|
| Cluster 1 | Frequent small purchases |
| Cluster 2 | Rare high-value purchases |
| Cluster 3 | Seasonal shoppers |

## 6. Visual Structure

::: info Unsupervised Learning
Unlabelled data → model searches for patterns → groups or structures are discovered.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying labels are required | Unsupervised learning uses unlabelled data |
| Assuming clusters always have obvious meaning | Humans often interpret the groups |
| Confusing clustering with classification | Classification uses known categories |
| Thinking results are always correct | Patterns may not be useful or meaningful |

## 8. Exam-style Question

An online shop groups customers based on their buying behaviour, without using predefined customer categories.

**Identify the learning approach and explain why.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- this is unsupervised learning
- the data does not use predefined labels
- the system finds groups or clusters based on patterns in customer behaviour

## 10. Quick Check

1. What is unsupervised learning?
2. What is clustering?
3. How is it different from supervised learning?
'@

"reinforcement-learning.md" = @'
# Reinforcement Learning

## 1. Learning Objectives

By the end of this page, students should be able to:

- define reinforcement learning
- explain reward and penalty
- identify examples of reinforcement learning
- distinguish reinforcement learning from supervised learning

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | School Extension |
| Main skill | Learning through feedback |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Reinforcement learning | Learning by taking actions and receiving rewards or penalties |
| Agent | The system that makes decisions |
| Environment | The situation or world the agent acts in |
| Reward | Positive feedback for a good action |
| Penalty | Negative feedback for a poor action |
| Policy | A strategy for choosing actions |

## 4. Concept Explanation

In reinforcement learning, an agent learns by interacting with an environment.

It tries actions, receives rewards or penalties, and adjusts its behaviour over time.

Examples:

- game-playing AI
- robot movement
- self-learning control systems
- route optimization

## 5. Step-by-step Example

A game AI learns to reach a goal.

| Action | Feedback |
|---|---|
| Moves closer to goal | Reward |
| Hits obstacle | Penalty |
| Reaches goal | Large reward |

Over time, the agent learns actions that produce higher rewards.

## 6. Visual Structure

::: info Reinforcement Learning
Agent chooses action → environment responds → reward or penalty is given → agent updates strategy.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying the model learns from labelled examples | That describes supervised learning |
| Ignoring rewards and penalties | They are central to reinforcement learning |
| Thinking it always learns quickly | Many attempts may be needed |
| Forgetting the environment | The agent learns through interaction with it |

## 8. Exam-style Question

A robot cleaner improves its movement by receiving positive feedback for cleaning more area and negative feedback for hitting obstacles.

**Identify the machine learning approach and explain why.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- this is reinforcement learning
- the robot acts in an environment
- it learns from rewards and penalties

## 10. Quick Check

1. What is an agent?
2. What is a reward?
3. Give one example of reinforcement learning.
'@

"classification-prediction.md" = @'
# Classification and Prediction

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain classification
- explain prediction
- distinguish category outputs and numerical outputs
- apply classification and prediction to real-world examples

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding model outputs |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Classification | Assigning input data to a category |
| Prediction | Producing an expected output for new data |
| Class | A category used in classification |
| Binary classification | Classification with two possible classes |
| Multi-class classification | Classification with more than two possible classes |

## 4. Concept Explanation

Machine learning models often produce predictions.

In classification, the prediction is a category.

Examples:

| Task | Output |
|---|---|
| Spam detection | Spam or not spam |
| Medical image classification | Disease or no disease |
| Handwritten digit recognition | 0 to 9 |
| Sentiment analysis | Positive, neutral, or negative |

## 5. Step-by-step Example

Email classification:

1. The model receives a new email.
2. It reads features such as sender, links, and words.
3. It predicts a class.
4. The output may be "spam" or "not spam".

## 6. Visual Structure

::: info Classification Process
New input → model analyses features → model chooses a class → output category.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking all predictions are numerical | Some predictions are categories |
| Confusing class and feature | A class is an output category |
| Ignoring uncertainty | Models may be wrong |
| Assuming binary classification always applies | Some tasks have many classes |

## 8. Exam-style Question

A model predicts whether a review is positive, neutral, or negative.

**Identify whether this is binary or multi-class classification and justify your answer.** [2]

## 9. Mark Scheme Style Answer

Award marks for:

- it is multi-class classification
- there are three possible output categories

## 10. Quick Check

1. What is classification?
2. What is binary classification?
3. Give one example of multi-class classification.
'@

"confusion-matrix-f1-score.md" = @'
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
'@

"ethics-bias.md" = @'
# Ethics and Bias

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify ethical issues in machine learning
- explain how bias can enter ML systems
- discuss privacy and accountability concerns
- evaluate ML systems in real-world contexts

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Ethical evaluation |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Bias | Systematic unfairness or distortion in data or model behaviour |
| Privacy | Protection of personal data |
| Transparency | How understandable the model or decision process is |
| Accountability | Responsibility for decisions and consequences |
| Fairness | Treating different groups appropriately and without unjust discrimination |

## 4. Concept Explanation

Machine learning systems can affect real people.

Ethical issues include:

- biased training data
- unfair outcomes
- privacy risks
- lack of transparency
- unclear responsibility when errors occur
- over-reliance on automated decisions

Bias can appear if the training data does not represent all groups fairly.

## 5. Step-by-step Example

A hiring model is trained using old company hiring data.

If the past data reflects unfair hiring patterns, the model may learn and repeat those patterns.

This could disadvantage some applicants.

## 6. Visual Structure

::: info Ethical Evaluation
Check data quality → check fairness → protect privacy → explain decisions where possible → assign responsibility for errors.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying technology is always neutral | Data and design choices can create bias |
| Ignoring affected users | ML decisions can have real consequences |
| Only discussing accuracy | Ethical systems also need fairness and accountability |
| Forgetting privacy | ML often uses large amounts of personal data |

## 8. Exam-style Question

A facial recognition system performs less accurately for some groups of people.

**Discuss one ethical concern raised by this system.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the system may be biased against some groups
- inaccurate results may lead to unfair treatment or false identification
- this can reduce trust and create discrimination
- developers or organizations should test the system on representative data and be accountable

## 10. Quick Check

1. What is bias in machine learning?
2. Why is privacy important?
3. What does accountability mean?
'@

"neural-networks-cnns.md" = @'
# Neural Networks and CNNs

## 1. Learning Objectives

By the end of this page, students should be able to:

- describe a neural network at a high level
- identify that CNNs are often used for image-related tasks
- explain why GPUs can be useful for training large models
- understand this topic as school extension content

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | School Extension |
| Main skill | High-level understanding of neural models |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Neural network | A model inspired by connected layers of nodes |
| Layer | A group of nodes in a neural network |
| CNN | Convolutional Neural Network |
| Training | Adjusting model parameters using data |
| GPU | Graphics Processing Unit, useful for parallel processing |

## 4. Concept Explanation

A neural network is a type of machine learning model made from layers.

A CNN is often used for image analysis tasks because it can learn patterns from image data.

Examples:

- detecting objects in images
- classifying medical X-rays
- recognizing handwritten digits
- identifying defects in products

Training large neural networks can require many calculations. GPUs are useful because they can process many operations in parallel.

## 5. Step-by-step Example

Image classification:

1. Input an image.
2. The model processes visual patterns.
3. The model predicts a class.
4. The prediction is compared with the correct label during training.
5. The model updates itself to improve future predictions.

## 6. Visual Structure

::: info CNN High-Level Flow
Image input → layers process visual features → model outputs a class prediction → prediction is evaluated.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking CNN means any machine learning model | CNNs are a specific type of neural network |
| Going too deep into university-level maths | IBDP focus is conceptual understanding |
| Saying GPUs make models intelligent | GPUs speed up computation; they do not replace training logic |
| Ignoring evaluation | A model still needs to be tested |

## 8. Exam-style Question

A hospital trains a CNN to classify chest X-rays.

**Outline one reason why a GPU may be useful during training.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- training a CNN involves many repeated calculations
- a GPU can perform many operations in parallel
- this can reduce training time for large image datasets

## 10. Quick Check

1. What is a CNN often used for?
2. Why can GPUs help with training?
3. Why must a CNN still be evaluated?
'@
}

foreach ($file in $pages.Keys) {
    $fullPath = Join-Path $basePath $file
    Set-Content -Path $fullPath -Value $pages[$file] -Encoding UTF8
}
Write-Host "A4 Machine Learning framework pages created successfully."
