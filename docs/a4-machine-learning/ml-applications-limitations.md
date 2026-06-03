# ML Applications and Limitations

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- identify common applications of machine learning
- explain how ML is used in recommendation, classification, prediction, detection, and automation systems
- distinguish suitable and unsuitable uses of machine learning
- explain the benefits of ML in real-world systems
- explain limitations of machine learning systems
- explain why ML predictions may be inaccurate or unfair
- explain why ML depends on data quality and representative training data
- explain why ML systems need evaluation, monitoring, and human oversight
- discuss ethical, privacy, security, and social concerns in ML applications
- apply ML application and limitation ideas to school, healthcare, finance, shopping, transport, security, games, and media examples
- answer exam-style questions about ML applications and limitations

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | SL Core |
| Main skill | Understanding where ML can be used and what its practical limits are |
| Connected topics | ML fundamentals, supervised learning, unsupervised learning, training/testing/validation, model evaluation, overfitting/underfitting, bias/ethics/privacy |
| Practical focus | Evaluating whether ML is suitable for a scenario |
| Exam relevance | Applications, benefits, limitations, risks, suitable safeguards, scenario-based evaluation |

::: tip Learning Focus
Machine learning can be useful when patterns are hard to write as rules and enough suitable data is available. However, ML is not magic: it can be wrong, biased, hard to explain, privacy-invasive, expensive, or unsuitable for the problem.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Application | 应用 | A real-world use of machine learning |
| Limitation | 局限 | A weakness or constraint of machine learning |
| Recommendation system | 推荐系统 | ML system that suggests items or content |
| Prediction | 预测 | Output about a future or unknown value |
| Classification | 分类 | Predicting a category |
| Regression | 回归 | Predicting a number |
| Detection | 检测 | Identifying a condition, event, or pattern |
| Automation | 自动化 | Using systems to perform tasks with less human work |
| Decision support | 决策支持 | ML provides information to help humans decide |
| Human oversight | 人工监督 | Human review of model outputs |
| Data quality | 数据质量 | Accuracy, completeness, relevance, and reliability of data |
| Representative data | 代表性数据 | Data that reflects the real users or cases |
| Bias | 偏差 / 偏见 | Systematic unfairness or distortion |
| Explainability | 可解释性 | Ability to understand why a model gave an output |
| Model drift | 模型漂移 | Model performance drops because real-world data changes |
| False positive | 假阳性 | Model flags something incorrectly |
| False negative | 假阴性 | Model misses something important |
| Privacy | 隐私 | Responsible use and protection of personal data |
| Security | 安全 | Protecting systems and data from threats |
| Reliability | 可靠性 | Ability to work correctly and consistently |
| Scalability | 可扩展性 | Ability to handle larger amounts of data/users |
| Cost | 成本 | Resources needed to build, train, run, and maintain a system |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Machine learning 可以应用在很多真实系统中。  
例如：

```text
recommend movies
detect spam emails
predict house prices
recognize images
find fraud transactions
support medical image analysis
predict delivery time
group customers
detect abnormal network traffic
match players in games
```

ML 特别适合一些 rules 很难手写的问题。  
例如识别猫和狗的图片，如果用传统 programming 写规则会非常困难。  
但是 ML 可以从大量 labelled images 中学习 patterns。

不过 ML 也有很多 limitations。  
它不是万能的，也不是一定公平或正确。

常见问题包括：

```text
needs large and good-quality data
can learn bias from data
may be wrong on new situations
may overfit or underfit
can be hard to explain
may create privacy risks
needs monitoring after deployment
may be expensive to train and maintain
can be misused
```

所以分析一个 ML application 时，不能只写“ML 很方便”。  
更好的 exam answer 应该包括：

```text
what task ML performs
what data it uses
what output it gives
why ML is suitable
what risks or limitations exist
what safeguards are needed
```

简单来说：

```text
ML is useful when data contains patterns
but ML must be evaluated, monitored, and used responsibly
```

</template>

<template #en>

### English Explanation

Machine learning can be used in many real systems.  
For example:

```text
recommend movies
detect spam emails
predict house prices
recognize images
find fraud transactions
support medical image analysis
predict delivery time
group customers
detect abnormal network traffic
match players in games
```

ML is especially useful when rules are difficult to write manually.  
For example, recognizing cats and dogs in images is very hard to program with simple rules.  
But ML can learn patterns from many labelled images.

However, ML also has many limitations.  
It is not magic, and it is not always fair or correct.

Common problems include:

```text
needs large and good-quality data
can learn bias from data
may be wrong on new situations
may overfit or underfit
can be hard to explain
may create privacy risks
needs monitoring after deployment
may be expensive to train and maintain
can be misused
```

So when analysing an ML application, do not only write “ML is convenient”.  
A stronger exam answer should include:

```text
what task ML performs
what data it uses
what output it gives
why ML is suitable
what risks or limitations exist
what safeguards are needed
```

In simple terms:

```text
ML is useful when data contains patterns
but ML must be evaluated, monitored, and used responsibly
```

</template>
</LangBlock>

---

## 5. When Machine Learning Is Useful

Machine learning is useful when:

```text
there is enough suitable data
patterns exist in the data
rules are hard to write manually
prediction or classification is needed
the system can improve from examples
human decisions need support
large-scale data processing is needed
```

### Good ML Fit Examples

```text
spam detection
image classification
recommendation systems
fraud detection
speech recognition
traffic prediction
medical image support
customer segmentation
```

### Why?

These problems often involve complex patterns that are difficult to express as simple fixed rules.

---

## 6. When Machine Learning May Not Be Suitable

Machine learning is not always the best choice.

It may be unsuitable when:

```text
rules are simple and clear
there is not enough data
data quality is poor
the task requires exact logical correctness
the cost is too high
errors would be unacceptable
decisions must be fully explainable
privacy risk is too high
the system may be used unfairly
```

### Example

A simple pass/fail rule:

```text
if score >= 50 then pass
```

does not need ML.  
Traditional programming is clearer, cheaper, and easier to explain.

### Key Exam Phrase

ML should be used when it is appropriate for the problem, not simply because it is available.

---

## 7. Common ML Application Types

| Application Type | What ML Does | Example |
|---|---|---|
| Classification | predicts category | spam/not spam |
| Regression | predicts number | house price |
| Recommendation | suggests items/content | movie recommendation |
| Clustering | groups similar data | customer segmentation |
| Anomaly detection | finds unusual behaviour | fraud or network attack |
| Pattern recognition | identifies patterns in media/data | image recognition |
| Natural language processing | works with human language | translation/chatbots |
| Decision support | helps humans make choices | medical support |
| Forecasting | predicts future values | sales demand |
| Personalization | adapts content/service | learning app recommendations |

---

## 8. Recommendation Systems

Recommendation systems suggest items to users.

### Examples

```text
movies
music
videos
products
news articles
courses
games
friends/accounts to follow
```

### Possible Data

```text
past purchases
watch history
ratings
clicks
search history
similar users' behaviour
item categories
time spent
```

### Benefits

```text
helps users find relevant content
increases engagement
supports sales
personalizes experience
handles large item collections
```

### Limitations and Risks

```text
filter bubbles
privacy concerns from tracking
reinforcing harmful content
manipulation
cold-start problem for new users/items
over-personalization
```

---

## 9. Spam Detection

Spam detection classifies messages as spam or not spam.

### Possible Features

```text
sender address
number of links
subject words
message length
attachments
urgent or suspicious phrases
```

### Benefits

```text
reduces unwanted emails
protects users from phishing
saves time
can adapt to new spam patterns
```

### Limitations

```text
false positives may block important emails
false negatives may allow scams
spammers change tactics
training data may become outdated
privacy concerns if email content is processed
```

---

## 10. Fraud Detection

Fraud detection identifies suspicious transactions or behaviour.

### Possible Data

```text
transaction amount
location
time
merchant type
device
login pattern
previous user behaviour
```

### Benefits

```text
detects suspicious activity quickly
handles large numbers of transactions
reduces financial loss
supports human fraud teams
```

### Limitations

```text
fraud is rare and data is imbalanced
false positives may block legitimate users
false negatives may miss fraud
fraud patterns change
financial data is sensitive
```

### Important

Fraud detection often needs human review or extra verification.

---

## 11. Medical Applications

ML can support healthcare tasks.

### Examples

```text
medical image analysis
disease risk prediction
patient triage support
drug discovery
hospital resource prediction
personalized treatment support
```

### Benefits

```text
can process large medical datasets
may help detect patterns
can support doctors
may speed up screening
can help prioritize cases
```

### Limitations and Risks

```text
wrong predictions can harm patients
medical data is highly sensitive
training data may not represent all patient groups
model may be hard to explain
requires expert validation
false negatives may delay treatment
false positives may cause stress
```

### Key Idea

Medical ML should support qualified professionals, not replace careful clinical judgement.

---

## 12. Education Applications

ML can support education.

### Examples

```text
student risk prediction
personalized learning paths
automated feedback
plagiarism detection
learning analytics
recommendation of practice tasks
```

### Possible Data

```text
attendance
quiz scores
assignment submissions
LMS activity
time on tasks
past performance
```

### Benefits

```text
early support for students
personalized practice
teacher decision support
large-scale learning pattern analysis
```

### Limitations and Risks

```text
student privacy
unfair labelling
over-reliance by teachers
biased data
stress or stigma
incorrect predictions
data collected beyond purpose
```

### Good Use

Use predictions to provide support, not punishment.

---

## 13. Finance Applications

ML is used in finance for:

```text
fraud detection
credit risk assessment
loan approval support
market forecasting
customer support chatbots
personalized financial advice
anti-money laundering monitoring
```

### Benefits

```text
quick processing
large-scale pattern detection
risk identification
cost reduction
decision support
```

### Limitations and Risks

```text
biased loan decisions
lack of explainability
privacy risk
false fraud flags
financial loss from wrong predictions
regulatory concerns
data drift when markets change
```

---

## 14. Transport Applications

ML can support transport systems.

### Examples

```text
traffic prediction
route planning
delivery time estimation
public transport demand prediction
autonomous vehicle perception
predictive maintenance
```

### Benefits

```text
reduces delay
improves planning
optimizes routes
supports safety monitoring
predicts maintenance needs
```

### Limitations and Risks

```text
weather or accidents may change patterns suddenly
sensor data may be wrong
model may fail in rare situations
autonomous systems need very high safety
privacy concerns from location tracking
```

---

## 15. Security Applications

ML can help detect threats.

### Examples

```text
network anomaly detection
malware detection
phishing detection
intrusion detection
login behaviour analysis
bot detection
```

### Benefits

```text
detects patterns at scale
finds unusual behaviour
supports security teams
can adapt to new threats
```

### Limitations and Risks

```text
attackers adapt
false alarms can overwhelm staff
missed attacks can be serious
training data may be outdated
systems can be attacked or fooled
logs may contain sensitive data
```

---

## 16. Media and Language Applications

ML is used for language and media tasks.

### Examples

```text
translation
speech recognition
text summarization
chatbots
sentiment analysis
content moderation
image generation
voice assistants
```

### Benefits

```text
makes information more accessible
automates repetitive language tasks
supports communication
processes large text/audio/image datasets
```

### Limitations and Risks

```text
misinformation
hallucinated or incorrect outputs
bias in language
copyright concerns
privacy issues
harmful content generation
difficulty explaining outputs
```

---

## 17. Game Applications

ML can be used in games.

### Examples

```text
matchmaking
NPC behaviour
cheat detection
player behaviour analysis
difficulty adjustment
content recommendation
player churn prediction
```

### Benefits

```text
fairer matches
personalized experience
better game balance
detects toxic or cheating behaviour
improves retention
```

### Limitations and Risks

```text
smurf accounts distort data
players may change behaviour
false cheat detection harms users
privacy concerns from behaviour tracking
unfair matchmaking if model is poor
```

---

## 18. Business and Customer Service Applications

ML can support business tasks.

### Examples

```text
customer support chatbots
sales forecasting
inventory prediction
customer segmentation
churn prediction
document processing
sentiment analysis
```

### Benefits

```text
faster service
reduced workload
better planning
personalized marketing
large-scale analysis
```

### Limitations and Risks

```text
poor chatbot answers frustrate users
biased customer segmentation
privacy risks from tracking
wrong demand forecasts
over-automation
lack of human support
```

---

## 19. Scientific Research Applications

ML can help research by finding patterns in large datasets.

### Examples

```text
climate data analysis
genomics
astronomy image analysis
drug discovery
materials discovery
environmental monitoring
```

### Benefits

```text
processes large and complex data
finds hidden patterns
supports prediction and simulation
speeds up analysis
```

### Limitations

```text
results require expert interpretation
training data may be limited
correlation is not causation
models may be hard to explain
errors may mislead research
```

---

## 20. Benefits of Machine Learning

Machine learning can provide many benefits.

| Benefit | Explanation |
|---|---|
| Handles large data | can process more examples than humans manually |
| Finds complex patterns | useful when rules are hard to write |
| Supports prediction | can estimate unknown/future outcomes |
| Automates repetitive tasks | reduces manual workload |
| Personalizes services | adapts recommendations or learning |
| Improves speed | can make fast predictions |
| Supports decision-making | helps humans identify risks/options |
| Can improve with data | better data may improve performance |
| Detects anomalies | finds unusual behaviour |
| Scales well | can support many users/events |

---

## 21. Core Limitations of Machine Learning

ML has important limitations.

| Limitation | Explanation |
|---|---|
| Data dependency | needs suitable data |
| Data quality problems | wrong/missing/bias data harms model |
| Bias and unfairness | model may reproduce unfair patterns |
| Limited generalization | may fail on new situations |
| Overfitting | performs well on training data but poorly on unseen data |
| Underfitting | fails to learn useful patterns |
| Explainability | decisions may be hard to explain |
| Privacy risks | personal data may be collected or exposed |
| Security risks | models/data can be attacked |
| Cost | training and maintenance can be expensive |
| Model drift | performance may drop over time |
| Human over-reliance | users may trust model too much |

---

## 22. Data Quality Limitations

ML systems depend heavily on data.

### Poor Data Includes

```text
missing values
incorrect labels
unrepresentative samples
outdated data
biased data
duplicate data
outliers
noisy data
small dataset
unbalanced classes
```

### Effect

Poor data may cause:

```text
wrong predictions
unfair outcomes
low accuracy
poor generalization
misleading evaluation
```

### Exam Phrase

A machine learning model is only as good as the data and assumptions used to train and evaluate it.

---

## 23. Bias and Fairness Limitations

ML can learn bias from data or design.

### Bias Sources

```text
historical unfairness
sampling bias
label bias
proxy variables
unequal data quality
different group performance
poor evaluation
```

### Example

A hiring model trained on biased past hiring data may unfairly reject some applicants.

### Safeguards

```text
representative data
fairness testing
review of features and labels
human oversight
appeal process
monitoring after deployment
```

---

## 24. Explainability Limitations

Some ML models are difficult to explain.

### Problem

Users may not know why the model made a decision.

This matters for:

```text
medical support
loan decisions
student risk labels
job screening
insurance pricing
legal decisions
```

### Why It Matters

Lack of explainability can make it hard to:

```text
challenge decisions
debug errors
detect bias
build trust
meet legal or ethical requirements
```

### Safeguard

Use explainable methods where possible and provide meaningful reasons or human review.

---

## 25. Privacy Limitations

ML often requires large datasets, which may include personal data.

### Privacy Risks

```text
collecting too much data
using data without consent
using data for a different purpose
keeping data too long
data breach
re-identification
model outputs exposing private information
```

### Safeguards

```text
data minimization
consent
purpose limitation
anonymization or pseudonymization
access control
encryption
retention limits
privacy review
```

---

## 26. Security Limitations

ML systems can be attacked or misused.

### Possible Risks

```text
training data poisoning
adversarial examples
model theft
data breach
prompt injection in AI systems
false input to sensors
abuse of generated content
```

### Example

A small change to an image may cause an image classifier to make a wrong prediction.

### Safeguards

```text
secure data pipeline
access control
monitoring
testing against attacks
human review
regular updates
incident response plan
```

---

## 27. Model Drift

Model drift happens when real-world data changes and the model becomes less accurate.

### Examples

```text
new spam tactics
new fraud methods
new shopping behaviour
new game balance update
economic changes
new student learning patterns
new disease variants
```

### Why It Matters

A model that worked well last year may not work well now.

### Safeguards

```text
monitor performance
collect new data
retrain model
re-evaluate fairness and accuracy
update features
```

---

## 28. Over-reliance on ML

People may trust ML outputs too much.

### Risk

Humans may:

```text
ignore context
stop questioning results
accept unfair predictions
miss model errors
treat probability as certainty
```

### Example

A teacher may accept a student risk label without considering personal circumstances.

### Safeguards

```text
human oversight
training users about limitations
show confidence/uncertainty where appropriate
provide explanations
allow appeals
```

---

## 29. Cost and Resource Limitations

ML can be expensive.

### Costs

```text
data collection
data cleaning
labelling
computing resources
specialist staff
model training
testing and validation
monitoring
security and privacy controls
maintenance
```

### Key Idea

A simple rule-based system may be better if the task is simple and the cost of ML is not justified.

---

## 30. Application Suitability Checklist

Before using ML, ask:

```text
What problem is being solved?
Is there enough suitable data?
Are labels available if supervised learning is needed?
Is ML better than simple rules?
What are the consequences of errors?
Can the model be evaluated properly?
Could bias harm users?
What personal data is collected?
Is human oversight needed?
How will the model be monitored over time?
```

### Strong Exam Approach

Do not only list benefits.  
Always balance:

```text
benefit
limitation/risk
safeguard
```

---

## 31. Worked Example: Recommendation System

### Application

A streaming platform recommends videos.

### ML Use

```text
predict which videos a user may watch or like
```

### Data

```text
watch history
ratings
searches
similar users' behaviour
video categories
```

### Benefits

```text
personalized content
easier discovery
increased engagement
```

### Limitations

```text
filter bubbles
privacy tracking
biased recommendations
cold-start problem
harmful content amplification
```

### Safeguards

```text
user controls
privacy protection
recommendation diversity
monitor harmful outcomes
```

---

## 32. Worked Example: Fraud Detection

### Application

A bank flags suspicious transactions.

### ML Use

```text
detect unusual or risky transaction patterns
```

### Benefits

```text
fast detection
large-scale monitoring
reduced financial loss
```

### Limitations

```text
false positives block normal customers
false negatives miss fraud
data imbalance
privacy risks
fraud patterns change
```

### Safeguards

```text
precision/recall evaluation
human or extra verification
monitoring
privacy protection
model updates
```

---

## 33. Worked Example: Medical Image Support

### Application

A model helps detect possible disease signs in scans.

### Benefits

```text
supports doctors
can process many images
may identify subtle patterns
prioritizes cases
```

### Limitations

```text
false negatives can delay treatment
false positives can cause stress
medical data is sensitive
model may not represent all patient groups
needs expert validation
```

### Safeguards

```text
human medical review
strong testing across groups
privacy/security controls
clear limitations
ongoing monitoring
```

---

## 34. Worked Example: Student Risk Prediction

### Application

A school predicts which students may need support.

### Benefits

```text
early intervention
personalized support
teacher decision support
resource planning
```

### Limitations

```text
privacy concerns
unfair labelling
bias against some groups
teacher over-reliance
incorrect predictions
student stress
```

### Safeguards

```text
data minimization
human review
use for support not punishment
fairness checks
clear explanation
appeal/correction process
```

---

## 35. Worked Example: Delivery Time Prediction

### Application

A delivery app predicts arrival time.

### Benefits

```text
better customer information
route planning
resource allocation
service optimization
```

### Limitations

```text
traffic/weather changes
unexpected delays
old data may not represent current conditions
location privacy
model drift
```

### Safeguards

```text
real-time updates
monitor prediction error
protect location data
retrain with new data
communicate uncertainty
```

---

## 36. Worked Example: Game Matchmaking

### Application

A game uses ML to create fair matches.

### Benefits

```text
better player experience
fairer skill matching
reduced waiting time
personalized difficulty
```

### Limitations

```text
smurf accounts distort data
player skill changes quickly
false cheat labels
privacy from behaviour tracking
unfair matches if model is poor
```

### Safeguards

```text
monitor match quality
detect suspicious accounts carefully
allow appeals for penalties
protect player data
update model after balance patches
```

---

## 37. Scenario Answer Bank

### If Asked: “Give an ML application”

```text
One application of ML is [application]. The model uses [data/features] to predict or identify [output]. This is useful because [benefit].
```

### If Asked: “Explain an ML limitation”

```text
One limitation is that ML depends on training data. If the data is biased, incomplete, outdated, or unrepresentative, the model may make inaccurate or unfair predictions.
```

### If Asked: “Evaluate whether ML is suitable”

```text
ML may be suitable because [reason: complex pattern / large data / prediction needed]. However, it may be limited by [data quality / privacy / bias / explainability / cost]. Suitable safeguards include [evaluation, human oversight, privacy controls, monitoring].
```

### If Asked: “Why human oversight is needed”

```text
Human oversight is needed because ML predictions can be wrong, biased, hard to explain, or missing context. Humans can review important decisions and reduce harm.
```

### If Asked: “Why monitoring is needed”

```text
Monitoring is needed because real-world data can change over time, causing model drift and reducing model performance.
```

---

## 38. Common Misconceptions

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| ML is always better than rules | simple rules may be clearer | choose based on task |
| ML is always objective | data can be biased | evaluate fairness |
| More data always improves model | poor data can harm | quality matters |
| High accuracy means safe | may hide serious errors | check error types and context |
| ML does not need monitoring | data changes over time | monitor drift |
| ML decisions are always explainable | some models are hard to explain | explainability matters |
| Personal data can always be used | privacy principles apply | minimize and protect data |
| Human oversight is unnecessary | high-risk errors can harm people | review important decisions |
| A model trained once works forever | real-world conditions change | retrain/update when needed |
| ML can solve any problem | not all tasks have learnable patterns | assess suitability |

---

## 39. Guided Practice

### Practice 1: Suitable or Not?

A program only needs to check whether `score >= 50`. Is ML necessary?

<details>
<summary>Suggested Answer</summary>

Probably not. A simple rule-based program is clearer and more suitable.

</details>

---

### Practice 2: Application Type

A system predicts delivery time in minutes. Is this classification or regression?

<details>
<summary>Suggested Answer</summary>

Regression, because the output is a number.

</details>

---

### Practice 3: Limitation

Why might an old spam detection model become less effective?

<details>
<summary>Suggested Answer</summary>

Spam tactics may change over time, causing model drift. The model may need monitoring and retraining.

</details>

---

### Practice 4: Privacy Risk

A recommendation system tracks every user click, location, and private message. What is one privacy concern?

<details>
<summary>Suggested Answer</summary>

It may collect more personal data than necessary, creating privacy risk and violating data minimization.

</details>

---

### Practice 5: Human Oversight

Why should medical ML not be used without expert review?

<details>
<summary>Suggested Answer</summary>

Because wrong predictions can harm patients, and medical experts are needed to interpret results and consider context.

</details>

---

## 40. Independent Practice

### Question 1

Give three real-world applications of machine learning.

### Question 2

Explain one benefit and one limitation of recommendation systems.

### Question 3

Explain why ML is useful for spam detection.

### Question 4

Explain why fraud detection accuracy alone may be misleading.

### Question 5

Explain two risks of using ML in education.

### Question 6

Explain why healthcare ML needs strong evaluation and human oversight.

### Question 7

Explain model drift using an example.

### Question 8

Explain why ML may be unsuitable for simple rule-based tasks.

### Question 9

Give three privacy safeguards for an ML system.

### Question 10

Evaluate whether ML should be used in a high-stakes decision system.

---

## 41. Exam-style Questions

### Question 1 [4 marks]

Give two applications of machine learning and explain what the model predicts or detects in each.

<details>
<summary>Mark Scheme Style Answer</summary>

One application is spam detection, where the model classifies emails as spam or not spam using features such as sender, links, and message content. Another application is house price prediction, where the model predicts a numerical sale price using features such as size, location, and number of bedrooms.

</details>

---

### Question 2 [5 marks]

Explain two benefits of using machine learning in real-world systems.

<details>
<summary>Mark Scheme Style Answer</summary>

Machine learning can process large amounts of data and find patterns that would be difficult for humans to detect manually. It can also make fast predictions or classifications, such as detecting fraud or recommending products. ML can support decision-making, personalize services, and automate repetitive tasks when suitable data is available.

</details>

---

### Question 3 [6 marks]

Explain two limitations of machine learning.

<details>
<summary>Mark Scheme Style Answer</summary>

One limitation is that machine learning depends on training data. If the data is biased, incomplete, outdated, or unrepresentative, the model may make inaccurate or unfair predictions. Another limitation is that some models are difficult to explain, which can be a problem in high-stakes decisions. ML systems may also overfit, require ongoing monitoring, create privacy risks, or be expensive to build and maintain.

</details>

---

### Question 4 [6 marks]

A school wants to use ML to predict students who may fail. Discuss one benefit, one risk, and one safeguard.

<details>
<summary>Mark Scheme Style Answer</summary>

One benefit is that the model may help identify students who need support early, allowing teachers to intervene. One risk is that students may be unfairly labelled or treated differently if the model is biased or incorrect. A safeguard is to use human oversight, so teachers review predictions and use them to provide support rather than punishment. The school should also minimize personal data, protect student records, and check fairness across groups.

</details>

---

### Question 5 [6 marks]

Explain why a machine learning system may need monitoring after deployment.

<details>
<summary>Mark Scheme Style Answer</summary>

A machine learning system may need monitoring because real-world data can change over time. This is called model drift. For example, spam tactics, customer behaviour, game balance, or disease patterns may change, causing the model to become less accurate. Monitoring helps detect falling performance, bias, or new error patterns so the model can be updated, retrained, or replaced.

</details>

---

## 42. Practice task
### Activity 1: Application Match

Students match applications to ML task types:

```text
spam detection
house price prediction
customer segmentation
fraud anomaly detection
movie recommendation
delivery time prediction
medical scan classification
game matchmaking
```

Task types:

```text
classification
regression
clustering
anomaly detection
recommendation
```

---

### Activity 2: Benefit-Risk-Safeguard

For each scenario, students write:

```text
one benefit
one limitation/risk
one safeguard
```

Scenarios:

```text
student risk prediction
medical image support
fraud detection
recommendation system
facial recognition
delivery time prediction
```

---

### Activity 3: Should We Use ML?

Groups decide whether ML is suitable for:

```text
checking if a score is above 50
recognizing handwriting
predicting traffic congestion
approving loans automatically
detecting network attacks
choosing students for punishment
```

They must justify their decision.

---

## 43. Independent practice
### Independent practice part A: Concept Explanation

In 6-8 sentences, explain when machine learning is useful and when it may not be suitable.

---

### Independent practice part B: Application Table

Complete a table for five ML applications:

```text
application
data/features used
model output
benefit
limitation/risk
safeguard
```

---

### Independent practice part C: Limitation Explanation

Explain these limitations with examples:

```text
data quality
bias
privacy risk
explainability
model drift
cost
over-reliance
```

---

### Independent practice part D: Misconception Correction

Correct these statements:

```text
ML is always better than rule-based programming.
High accuracy means the model is always safe.
A model trained once will work forever.
More data is always better, even if it is biased.
Human oversight is unnecessary if the model is advanced.
```

---

## 44. One-page Revision Summary

| Point | Summary |
|---|---|
| ML application | Real-world use of machine learning |
| Classification | Predicts category |
| Regression | Predicts number |
| Recommendation | Suggests items/content |
| Clustering | Groups similar data |
| Anomaly detection | Finds unusual behaviour |
| Benefits | speed, scale, prediction, personalization, pattern detection |
| Data dependency | ML needs suitable data |
| Data quality limitation | poor data gives poor predictions |
| Bias limitation | unfair data can create unfair outputs |
| Explainability limitation | some outputs are hard to explain |
| Privacy limitation | personal data may be collected/misused |
| Security limitation | ML systems/data can be attacked |
| Model drift | performance drops as real-world data changes |
| Human oversight | needed for high-risk decisions |
| Suitability | ML should be used only when appropriate |
| Exam phrase | ML can find complex patterns and support prediction, but it depends on data quality and needs evaluation, monitoring, privacy protection, fairness checks, and human oversight |

---

## 45. Quick Self-test

Before moving on, students should be able to answer these:

1. Name three applications of ML.
2. Why is ML useful for complex pattern recognition?
3. When might rule-based programming be better than ML?
4. What is one benefit of recommendation systems?
5. What is one risk of recommendation systems?
6. Why is data quality a limitation?
7. What is model drift?
8. Why can explainability matter?
9. Why can ML create privacy risks?
10. Why is human oversight important in high-stakes systems?

