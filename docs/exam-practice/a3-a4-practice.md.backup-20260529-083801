# A3 and A4 Practice

## 1. Page Purpose

This page provides exam-style practice for **A3 Databases** and **A4 Machine Learning**.

It focuses on:

```text
database fundamentals
tables, records, fields
primary keys and foreign keys
relationships
ERD basics
normalization
SQL SELECT queries
SQL conditions and sorting
database security and privacy
transactions and recovery
machine learning fundamentals
data, features and labels
supervised and unsupervised learning
training, validation and testing
classification and regression
model evaluation
overfitting and underfitting
bias, ethics and privacy
ML applications and limitations
```

The goal is to help students answer Paper 1-style questions using accurate technical vocabulary, clear scenario links, and mark scheme style answers.

---

## 2. A3 and A4 Practice Targets

By the end of this practice page, students should be able to:

- define database, table, record, field, primary key, foreign key, relationship, normalization, transaction, and SQL
- distinguish primary keys and foreign keys
- identify entities, attributes, and relationships from a scenario
- explain one-to-one, one-to-many, and many-to-many relationships
- explain the purpose of normalization and 1NF/2NF/3NF at a basic level
- write simple SQL `SELECT` queries
- use `WHERE`, comparison operators, `LIKE`, `DISTINCT`, and `ORDER BY`
- explain database security and privacy controls
- explain atomicity, rollback, backup, and recovery
- define machine learning and related key terms
- distinguish features and labels
- distinguish supervised and unsupervised learning
- distinguish classification and regression
- explain training, validation, and testing data
- explain model evaluation using accuracy, precision, recall, F1 score, and confusion matrix ideas
- explain overfitting and underfitting
- discuss bias, ethics, privacy, and limitations of ML systems
- answer scenario-based database and ML questions

---

## 3. Key Mark Scheme Phrases

| Topic | Mark Scheme Style Phrase |
|---|---|
| Database | organized collection of related data |
| Table | structure storing data about one entity in rows and columns |
| Record | one row in a table, representing one instance |
| Field | one column in a table, representing one attribute |
| Primary key | field or combination of fields that uniquely identifies each record |
| Foreign key | field in one table that refers to the primary key in another table |
| Relationship | association between tables/entities |
| Referential integrity | foreign key values must match valid primary key values |
| Normalization | process of organizing data to reduce redundancy and avoid anomalies |
| 1NF | data is atomic and repeating groups are removed |
| 2NF | non-key fields depend on the whole primary key |
| 3NF | non-key fields depend only on the key, not other non-key fields |
| SQL | language used to query and manage relational databases |
| Transaction | sequence of database operations treated as one unit |
| Atomicity | all transaction operations complete or none are applied |
| Rollback | undoing changes after a failed transaction |
| ML | system learns patterns from data and uses a trained model to make predictions |
| Feature | input variable used by a model |
| Label | correct output/target used in supervised learning |
| Model | trained system used to make predictions |
| Training data | data used to teach the model |
| Testing data | unseen data used to evaluate the final model |
| Validation data | data used to tune/select the model |
| Classification | predicts a category/class |
| Regression | predicts a numerical value |
| Accuracy | proportion of correct predictions |
| Precision | of predicted positives, how many are actually positive |
| Recall | of actual positives, how many are found |
| F1 score | measure combining precision and recall |
| Overfitting | high training performance but poor testing performance |
| Underfitting | poor training and testing performance |
| Bias | systematic unfairness or distortion in data/model/outcomes |

---

## 4. Quick Revision Map

```text
A3 and A4 Practice
├── A3 Databases
│   ├── database fundamentals
│   ├── tables / records / fields
│   ├── primary keys / foreign keys
│   ├── relationships
│   ├── ERD basics
│   ├── normalization
│   ├── SQL SELECT
│   ├── SQL conditions / sorting
│   ├── database security / privacy
│   └── transactions / recovery
└── A4 Machine Learning
    ├── ML fundamentals
    ├── data / features / labels
    ├── supervised learning
    ├── unsupervised learning
    ├── training / validation / testing
    ├── classification / regression
    ├── model evaluation
    ├── overfitting / underfitting
    ├── bias / ethics / privacy
    └── applications / limitations
```

---

## 5. Exam Technique for A3 and A4

### For Database Questions

Always identify:

```text
entity
table
record
field
primary key
foreign key
relationship
data duplication or normalization issue
```

Example:

```text
A foreign key links a record in one table to a primary key in another table, allowing related data to be stored in separate tables while maintaining referential integrity.
```

---

### For SQL Questions

Use the query checklist:

```text
SELECT correct fields
FROM correct table
WHERE correct condition
use quotes for text values
use LIKE for partial text matches
use DISTINCT if duplicates should be removed
use ORDER BY if sorting is required
```

---

### For ML Questions

Always identify:

```text
data
features
label/output
learning type
model prediction
evaluation method
limitation/risk
safeguard
```

Example:

```text
In a student risk model, attendance and past scores may be features, while at-risk/not-at-risk is the label. This is supervised classification because the model learns from labelled examples and predicts a category.
```

---

## 6. Practice Set 1: Database Fundamentals

### Question 1 [2 marks]

Define database.

<details>
<summary>Mark Scheme Style Answer</summary>

A database is an organized collection of related data that can be stored, searched, updated, and managed.

</details>

---

### Question 2 [3 marks]

Distinguish between a record and a field.

<details>
<summary>Mark Scheme Style Answer</summary>

A record is one row in a table and represents one instance of an entity, such as one student. A field is one column in a table and represents one attribute, such as student name or date of birth.

</details>

---

### Question 3 [3 marks]

A table `STUDENT` has the fields:

```text
StudentID, Name, DateOfBirth, Class
```

Identify one record and one field.

<details>
<summary>Mark Scheme Style Answer</summary>

A field could be `StudentID`, `Name`, `DateOfBirth`, or `Class`.

A record would be one complete row, for example:

```text
S001, Ali Chen, 2009-04-12, 10A
```

</details>

---

### Question 4 [4 marks]

Explain two advantages of using a database instead of separate files.

<details>
<summary>Mark Scheme Style Answer</summary>

A database can reduce data duplication because related data can be stored once and linked through keys. It can also improve data integrity because validation rules, constraints, and relationships can reduce inconsistent or invalid data. Other valid answers include easier querying, better security/access control, and easier sharing of data.

</details>

---

## 7. Practice Set 2: Primary and Foreign Keys

### Question 1 [2 marks]

Define primary key.

<details>
<summary>Mark Scheme Style Answer</summary>

A primary key is a field or combination of fields that uniquely identifies each record in a table.

</details>

---

### Question 2 [2 marks]

Define foreign key.

<details>
<summary>Mark Scheme Style Answer</summary>

A foreign key is a field in one table that refers to the primary key in another table, creating a relationship between the tables.

</details>

---

### Question 3 [4 marks]

Distinguish between a primary key and a foreign key.

<details>
<summary>Mark Scheme Style Answer</summary>

A primary key uniquely identifies each record in its own table. A foreign key is a field in one table that refers to the primary key in another table, linking related records and supporting referential integrity.

</details>

---

### Question 4 [4 marks]

A database contains these tables:

```text
STUDENT(StudentID, Name, Class)
BORROWING(BorrowID, StudentID, BookID, BorrowDate)
BOOK(BookID, Title, Author)
```

Identify the primary keys and foreign keys.

<details>
<summary>Mark Scheme Style Answer</summary>

Primary keys:

```text
STUDENT.StudentID
BORROWING.BorrowID
BOOK.BookID
```

Foreign keys:

```text
BORROWING.StudentID references STUDENT.StudentID
BORROWING.BookID references BOOK.BookID
```

</details>

---

## 8. Practice Set 3: Relationships and ERD Basics

### Question 1 [3 marks]

Describe a one-to-many relationship.

<details>
<summary>Mark Scheme Style Answer</summary>

A one-to-many relationship means one record in one table can be related to many records in another table. For example, one customer can place many orders, but each order belongs to one customer.

</details>

---

### Question 2 [3 marks]

Describe a many-to-many relationship.

<details>
<summary>Mark Scheme Style Answer</summary>

A many-to-many relationship means many records in one table can be related to many records in another table. For example, one student can take many courses and one course can have many students. This is usually implemented using a junction table.

</details>

---

### Question 3 [5 marks]

A school database tracks students and courses. Each student can take many courses, and each course can contain many students.

Suggest suitable tables to implement this relationship.

<details>
<summary>Mark Scheme Style Answer</summary>

Suitable tables:

```text
STUDENT(StudentID, Name, ...)
COURSE(CourseID, CourseName, ...)
ENROLMENT(StudentID, CourseID, EnrolmentDate, ...)
```

`ENROLMENT` is a junction table. `StudentID` and `CourseID` are foreign keys and may form a composite primary key.

</details>

---

### Question 4 [4 marks]

Explain why an ERD can be useful during database design.

<details>
<summary>Mark Scheme Style Answer</summary>

An ERD shows the entities, attributes, and relationships in a database. It helps designers plan the database structure before implementation and communicate how tables should be linked using keys.

</details>

---

## 9. Practice Set 4: Normalization

### Question 1 [3 marks]

Define normalization.

<details>
<summary>Mark Scheme Style Answer</summary>

Normalization is the process of organizing data in a relational database to reduce redundancy and avoid update, insertion, and deletion anomalies.

</details>

---

### Question 2 [4 marks]

Explain why repeated data can cause problems in a database.

<details>
<summary>Mark Scheme Style Answer</summary>

Repeated data wastes storage and can lead to inconsistency if one copy is updated but another copy is not. It can also create update, insertion, and deletion anomalies, making the database harder to maintain accurately.

</details>

---

### Question 3 [4 marks]

A table stores:

```text
StudentID, StudentName, Course1, Course2, Course3
```

Explain why this may break 1NF.

<details>
<summary>Mark Scheme Style Answer</summary>

This table contains repeating groups because multiple course values are stored in separate columns for the same type of data. 1NF requires data to be atomic and repeating groups to be removed. A better design would store each student-course enrolment as a separate record in an enrolment table.

</details>

---

### Question 4 [6 marks]

Explain the basic purpose of 1NF, 2NF, and 3NF.

<details>
<summary>Mark Scheme Style Answer</summary>

1NF removes repeating groups and ensures field values are atomic. 2NF removes partial dependency so non-key fields depend on the whole primary key. 3NF removes transitive dependency so non-key fields depend only on the key and not on other non-key fields. Together, they reduce redundancy and anomalies.

</details>

---

## 10. Practice Set 5: SQL SELECT Basics

Assume a table:

```text
STUDENT(StudentID, Name, Class, Score)
```

### Question 1 [2 marks]

Write an SQL query to show all student names.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT Name
FROM STUDENT;
```

</details>

---

### Question 2 [2 marks]

Write an SQL query to show all fields for all students.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT *
FROM STUDENT;
```

</details>

---

### Question 3 [3 marks]

Write an SQL query to show `Name` and `Score` for all students.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT Name, Score
FROM STUDENT;
```

</details>

---

### Question 4 [3 marks]

Write an SQL query to show the names of students in class `10A`.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT Name
FROM STUDENT
WHERE Class = '10A';
```

</details>

---

## 11. Practice Set 6: SQL Conditions and Sorting

Assume a table:

```text
PRODUCT(ProductID, ProductName, Category, Price, Quantity)
```

### Question 1 [3 marks]

Write an SQL query to list product names with price greater than 100.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT ProductName
FROM PRODUCT
WHERE Price > 100;
```

</details>

---

### Question 2 [3 marks]

Write an SQL query to list product names in alphabetical order.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT ProductName
FROM PRODUCT
ORDER BY ProductName ASC;
```

</details>

---

### Question 3 [4 marks]

Write an SQL query to list the product name and price for products in the category `Laptop`, sorted by price from highest to lowest.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT ProductName, Price
FROM PRODUCT
WHERE Category = 'Laptop'
ORDER BY Price DESC;
```

</details>

---

### Question 4 [4 marks]

Write an SQL query to list each category once.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT DISTINCT Category
FROM PRODUCT;
```

</details>

---

### Question 5 [4 marks]

Write an SQL query to list products with names containing the word `Pro`.

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT ProductName
FROM PRODUCT
WHERE ProductName LIKE '%Pro%';
```

</details>

---

## 12. Practice Set 7: Database Security and Privacy

### Question 1 [4 marks]

Explain how access control protects a database.

<details>
<summary>Mark Scheme Style Answer</summary>

Access control restricts which users can view or modify data based on their permissions. This protects sensitive data because only authorized users can access the records or operations they need.

</details>

---

### Question 2 [4 marks]

Explain how encryption can protect database data.

<details>
<summary>Mark Scheme Style Answer</summary>

Encryption converts stored or transmitted data into unreadable ciphertext. If attackers access or intercept the data, they cannot understand it without the correct decryption key.

</details>

---

### Question 3 [4 marks]

Explain why audit logs may be used in a database system.

<details>
<summary>Mark Scheme Style Answer</summary>

Audit logs record database activity such as logins, changes, and access to sensitive records. They can help detect misuse, investigate security incidents, and provide accountability.

</details>

---

### Question 4 [6 marks]

A hospital stores patient records in a database. Explain two privacy controls that should be used.

<details>
<summary>Mark Scheme Style Answer</summary>

Access control should be used so only authorized staff can view or change patient records. Encryption should protect patient data if it is stored or transmitted. Other valid controls include audit logs, data minimization, anonymization/pseudonymization, backups, user training, and retention limits.

</details>

---

## 13. Practice Set 8: Transactions and Recovery

### Question 1 [2 marks]

Define transaction.

<details>
<summary>Mark Scheme Style Answer</summary>

A transaction is a sequence of database operations that is treated as one complete unit of work.

</details>

---

### Question 2 [3 marks]

Explain atomicity.

<details>
<summary>Mark Scheme Style Answer</summary>

Atomicity means that all operations in a transaction must complete successfully, or none of the operations are applied. This prevents partial updates from being left in the database.

</details>

---

### Question 3 [4 marks]

Explain why rollback is useful.

<details>
<summary>Mark Scheme Style Answer</summary>

Rollback undoes changes made during a failed transaction. This helps return the database to a consistent state if an error, crash, or failed operation occurs.

</details>

---

### Question 4 [5 marks]

A bank transfer moves money from Account A to Account B. Explain why atomicity is important.

<details>
<summary>Mark Scheme Style Answer</summary>

Atomicity is important because both the debit from Account A and the credit to Account B must be completed together. If one operation succeeds but the other fails, money could disappear or be duplicated. Atomicity ensures the whole transfer completes or is rolled back.

</details>

---

## 14. Practice Set 9: ML Fundamentals

### Question 1 [2 marks]

Define machine learning.

<details>
<summary>Mark Scheme Style Answer</summary>

Machine learning is a technique where a system learns patterns from data and uses a trained model to make predictions or decisions on new data.

</details>

---

### Question 2 [3 marks]

Distinguish between traditional programming and machine learning.

<details>
<summary>Mark Scheme Style Answer</summary>

In traditional programming, humans write explicit rules that process data to produce output. In machine learning, an algorithm uses data to train a model that learns patterns and then uses those patterns to make predictions on new data.

</details>

---

### Question 3 [3 marks]

Define model in machine learning.

<details>
<summary>Mark Scheme Style Answer</summary>

A model is the trained system produced after a machine learning algorithm learns patterns from data. It is used to make predictions or decisions on new examples.

</details>

---

### Question 4 [4 marks]

Explain why data quality is important in machine learning.

<details>
<summary>Mark Scheme Style Answer</summary>

Machine learning models learn patterns from training data. If the data is inaccurate, incomplete, biased, outdated, or unrepresentative, the model may learn incorrect patterns and make inaccurate or unfair predictions.

</details>

---

## 15. Practice Set 10: Data, Features and Labels

### Question 1 [2 marks]

Define feature.

<details>
<summary>Mark Scheme Style Answer</summary>

A feature is an input variable used by a machine learning model to make a prediction.

</details>

---

### Question 2 [2 marks]

Define label.

<details>
<summary>Mark Scheme Style Answer</summary>

A label is the known correct output or target value used to train a supervised learning model.

</details>

---

### Question 3 [4 marks]

A model predicts whether an email is spam.

Identify two possible features and one possible label.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible features:

```text
sender address
number of links
words in subject line
attachments
message length
suspicious phrases
```

Possible label:

```text
spam / not spam
```

</details>

---

### Question 4 [4 marks]

A model predicts house price.

Identify three possible features and the label.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible features:

```text
floor area
number of bedrooms
location
age of house
distance to city
```

Label:

```text
house price
```

</details>

---

## 16. Practice Set 11: Supervised and Unsupervised Learning

### Question 1 [3 marks]

Define supervised learning.

<details>
<summary>Mark Scheme Style Answer</summary>

Supervised learning trains a model using labelled examples, where each example has input features and a known correct output called a label.

</details>

---

### Question 2 [3 marks]

Define unsupervised learning.

<details>
<summary>Mark Scheme Style Answer</summary>

Unsupervised learning uses unlabelled data to find patterns, groups, or anomalies without being given correct output labels.

</details>

---

### Question 3 [4 marks]

Classify each scenario as supervised or unsupervised learning.

```text
A. classify emails as spam or not spam using labelled examples
B. group customers by purchasing behaviour without labels
C. predict house prices using past sales data
D. find unusual transactions without known fraud labels
```

<details>
<summary>Mark Scheme Style Answer</summary>

```text
A = supervised
B = unsupervised
C = supervised
D = unsupervised
```

</details>

---

### Question 4 [4 marks]

Explain one use of clustering.

<details>
<summary>Mark Scheme Style Answer</summary>

Clustering can group similar data items without labels. For example, customers can be grouped based on purchasing behaviour so a business can understand different customer segments.

</details>

---

## 17. Practice Set 12: Classification and Regression

### Question 1 [2 marks]

Define classification.

<details>
<summary>Mark Scheme Style Answer</summary>

Classification is a supervised learning task where the model predicts a category or class.

</details>

---

### Question 2 [2 marks]

Define regression.

<details>
<summary>Mark Scheme Style Answer</summary>

Regression is a supervised learning task where the model predicts a numerical value.

</details>

---

### Question 3 [4 marks]

Identify whether each task is classification or regression.

```text
A. predict pass/fail
B. predict final exam score
C. predict spam/not spam
D. predict delivery time in minutes
```

<details>
<summary>Mark Scheme Style Answer</summary>

```text
A = classification
B = regression
C = classification
D = regression
```

</details>

---

### Question 4 [4 marks]

Explain why predicting whether a patient has a disease is classification.

<details>
<summary>Mark Scheme Style Answer</summary>

It is classification because the model predicts a category, such as disease/no disease or positive/negative, rather than a numerical value.

</details>

---

## 18. Practice Set 13: Training, Validation and Testing

### Question 1 [3 marks]

Distinguish between training data and testing data.

<details>
<summary>Mark Scheme Style Answer</summary>

Training data is used to teach the model by allowing it to learn patterns. Testing data is unseen data used after training to evaluate how well the model performs on new examples.

</details>

---

### Question 2 [3 marks]

Explain why validation data may be used.

<details>
<summary>Mark Scheme Style Answer</summary>

Validation data is used to tune model settings, compare model versions, or select the best model before final testing. It helps improve the model without using the final test data repeatedly.

</details>

---

### Question 3 [4 marks]

Explain why testing data should be separate from training data.

<details>
<summary>Mark Scheme Style Answer</summary>

Testing data should be separate so the model is evaluated on examples it has not seen during training. This gives a more reliable estimate of performance on new data. If the same data is used for training and testing, the model may appear accurate because it memorized the training data.

</details>

---

### Question 4 [4 marks]

Explain data leakage.

<details>
<summary>Mark Scheme Style Answer</summary>

Data leakage happens when information from outside the training process, such as test data or future information, is incorrectly used during training. This can make the model appear to perform well during evaluation but perform poorly on real unseen data.

</details>

---

## 19. Practice Set 14: Model Evaluation

### Question 1 [2 marks]

Define accuracy.

<details>
<summary>Mark Scheme Style Answer</summary>

Accuracy is the proportion of predictions that the model gets correct out of all predictions.

</details>

---

### Question 2 [3 marks]

Explain why accuracy may be misleading in fraud detection.

<details>
<summary>Mark Scheme Style Answer</summary>

Fraud datasets are often imbalanced because most transactions are not fraud. A model could predict not fraud for most transactions and still get high accuracy. However, it may miss actual fraud cases, so recall or a confusion matrix may be more useful.

</details>

---

### Question 3 [4 marks]

Distinguish between precision and recall.

<details>
<summary>Mark Scheme Style Answer</summary>

Precision measures how many predicted positives are actually positive. Recall measures how many actual positives are correctly found by the model.

</details>

---

### Question 4 [4 marks]

Explain why F1 score may be useful.

<details>
<summary>Mark Scheme Style Answer</summary>

F1 score combines precision and recall into one measure. It is useful when both false positives and false negatives matter, especially when classes are imbalanced.

</details>

---

### Question 5 [4 marks]

In a medical screening model, explain the difference between a false positive and a false negative.

<details>
<summary>Mark Scheme Style Answer</summary>

A false positive occurs when the model predicts that a patient has the condition when they do not. A false negative occurs when the model predicts that a patient does not have the condition when they actually do. A false negative may be dangerous because treatment could be delayed.

</details>

---

## 20. Practice Set 15: Overfitting and Underfitting

### Question 1 [3 marks]

Define overfitting.

<details>
<summary>Mark Scheme Style Answer</summary>

Overfitting occurs when a model learns the training data too specifically, including noise or details, so it performs well on training data but poorly on unseen testing data.

</details>

---

### Question 2 [3 marks]

Define underfitting.

<details>
<summary>Mark Scheme Style Answer</summary>

Underfitting occurs when a model is too simple or poorly trained to learn useful patterns, so it performs poorly on both training and testing data.

</details>

---

### Question 3 [4 marks]

A model has 98% training accuracy and 62% testing accuracy. What problem is likely occurring? Explain.

<details>
<summary>Mark Scheme Style Answer</summary>

The model is likely overfitting. It performs very well on training data but much worse on unseen testing data, suggesting it has learned the training examples too specifically and does not generalize well.

</details>

---

### Question 4 [4 marks]

A model has 55% training accuracy and 54% testing accuracy. What problem is likely occurring? Explain.

<details>
<summary>Mark Scheme Style Answer</summary>

The model is likely underfitting. It performs poorly on both training and testing data, suggesting it has not learned useful patterns from the data.

</details>

---

## 21. Practice Set 16: Bias, Ethics and Privacy

### Question 1 [3 marks]

Explain how biased training data can affect an ML model.

<details>
<summary>Mark Scheme Style Answer</summary>

If training data is biased or unrepresentative, the model may learn biased patterns and make unfair or inaccurate predictions for some groups. This can reinforce existing unfairness in decision-making.

</details>

---

### Question 2 [4 marks]

Explain why human oversight is important in high-stakes ML systems.

<details>
<summary>Mark Scheme Style Answer</summary>

Human oversight is important because ML predictions can be wrong, biased, hard to explain, or missing context. In high-stakes systems such as healthcare or education, humans should review decisions to reduce harm and allow appeals or correction.

</details>

---

### Question 3 [4 marks]

Explain two privacy risks of using ML with personal data.

<details>
<summary>Mark Scheme Style Answer</summary>

One privacy risk is collecting more personal data than necessary, which increases harm if the data is misused or breached. Another risk is using data for a purpose the person did not consent to. Other valid answers include re-identification, data retention, unauthorized access, and sensitive data exposure.

</details>

---

### Question 4 [6 marks]

A school uses ML to predict students at risk of failing. Discuss two ethical concerns.

<details>
<summary>Mark Scheme Style Answer</summary>

One ethical concern is unfair labelling if the model wrongly identifies a student as at risk, which could affect teacher expectations or student confidence. Another concern is privacy because the model may use sensitive data such as attendance, grades, behaviour, or learning platform activity. The school should use human oversight, fairness checks, data minimization, and clear communication so predictions are used for support rather than punishment.

</details>

---

## 22. Practice Set 17: ML Applications and Limitations

### Question 1 [4 marks]

Give two applications of machine learning and explain the model output in each.

<details>
<summary>Mark Scheme Style Answer</summary>

One application is spam detection, where the model predicts whether an email is spam or not spam. Another application is house price prediction, where the model predicts a numerical price based on features such as size, location, and number of rooms.

</details>

---

### Question 2 [4 marks]

Explain why ML may not be suitable for a simple rule-based problem.

<details>
<summary>Mark Scheme Style Answer</summary>

ML may not be suitable if the rules are simple, clear, and deterministic. For example, checking whether a score is at least 50 can be done with a simple IF statement, which is easier to understand, cheaper to implement, and more predictable than training a model.

</details>

---

### Question 3 [4 marks]

Explain two limitations of ML systems.

<details>
<summary>Mark Scheme Style Answer</summary>

ML systems depend on data quality, so poor, biased, or outdated data can lead to inaccurate predictions. Some models are also difficult to explain, which can be a problem in high-stakes decisions. Other valid limitations include privacy risks, cost, overfitting, model drift, and security risks.

</details>

---

### Question 4 [6 marks]

A bank uses ML to detect fraud. Discuss one benefit, one risk, and one safeguard.

<details>
<summary>Mark Scheme Style Answer</summary>

One benefit is that ML can analyse many transactions quickly and identify unusual patterns that may indicate fraud. One risk is false positives, where legitimate transactions are incorrectly blocked, causing inconvenience for customers. A safeguard is to use human review or extra verification for flagged transactions, and monitor precision and recall to balance fraud detection with customer experience.

</details>

---

## 23. Practice Set 18: Mixed A3 Exam Questions

### Question 1 [4 marks]

Explain why a database may use primary and foreign keys.

<details>
<summary>Mark Scheme Style Answer</summary>

A primary key uniquely identifies each record in a table. A foreign key refers to the primary key in another table, creating a relationship between related data. Together, they allow data to be stored in separate tables while maintaining referential integrity and reducing duplication.

</details>

---

### Question 2 [5 marks]

A table stores:

```text
OrderID, CustomerName, CustomerAddress, Product1, Product2, Product3
```

Explain two normalization problems with this design.

<details>
<summary>Mark Scheme Style Answer</summary>

The fields `Product1`, `Product2`, and `Product3` are repeating groups, which breaks 1NF because product data should be stored as separate records. Customer details are also repeated for each order, which may cause redundancy and update anomalies if a customer's address changes. A better design would separate customer, order, and order item data into related tables.

</details>

---

### Question 3 [5 marks]

Given:

```text
APPOINTMENT(AppointmentID, PatientID, DoctorID, AppointmentDate, Room)
PATIENT(PatientID, PatientName, DateOfBirth)
DOCTOR(DoctorID, DoctorName, Specialty)
```

Explain the relationships between the tables.

<details>
<summary>Mark Scheme Style Answer</summary>

`APPOINTMENT.PatientID` is a foreign key referencing `PATIENT.PatientID`, so one patient can have many appointments. `APPOINTMENT.DoctorID` is a foreign key referencing `DOCTOR.DoctorID`, so one doctor can have many appointments. The appointment table links patients and doctors for each appointment.

</details>

---

### Question 4 [6 marks]

Write an SQL query to list patient names and dates of birth for patients whose name starts with `A`, sorted by date of birth.

Assume:

```text
PATIENT(PatientID, PatientName, DateOfBirth)
```

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT PatientName, DateOfBirth
FROM PATIENT
WHERE PatientName LIKE 'A%'
ORDER BY DateOfBirth ASC;
```

</details>

---

## 24. Practice Set 19: Mixed A4 Exam Questions

### Question 1 [4 marks]

A model predicts whether a loan application should be approved.

Identify two possible features and the label.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible features:

```text
income
credit score
loan amount
employment status
existing debt
repayment history
```

Label:

```text
approved / rejected
```

</details>

---

### Question 2 [4 marks]

Explain why a loan approval model may be biased.

<details>
<summary>Mark Scheme Style Answer</summary>

The model may be biased if the training data reflects unfair past lending decisions or does not represent all applicant groups fairly. It may also use proxy variables, such as postcode, that indirectly relate to protected characteristics. This could cause unfair approval or rejection decisions.

</details>

---

### Question 3 [5 marks]

Explain why a confusion matrix can be useful for evaluating a classification model.

<details>
<summary>Mark Scheme Style Answer</summary>

A confusion matrix shows correct and incorrect predictions by category, including true positives, false positives, true negatives, and false negatives. This helps identify which types of errors the model makes rather than only showing overall accuracy.

</details>

---

### Question 4 [6 marks]

Discuss the use of ML in medical image screening.

<details>
<summary>Mark Scheme Style Answer</summary>

ML can help process many medical images quickly and may identify patterns that support doctors in detecting disease. It can be useful for prioritizing cases or assisting screening. However, incorrect predictions can harm patients, especially false negatives that miss disease. Medical data is sensitive, and the model may be biased if training data does not represent all patient groups. Human medical review, strong testing, privacy controls, and ongoing monitoring are needed.

</details>

---

## 25. Mini Mock: A3 Databases

### Instructions

Attempt the questions before checking the mark scheme.

Total: 30 marks.

---

### Question 1 [2 marks]

Define foreign key.

<details>
<summary>Mark Scheme Style Answer</summary>

A foreign key is a field in one table that refers to the primary key in another table, creating a relationship between the tables.

</details>

---

### Question 2 [4 marks]

Distinguish between a record and a field.

<details>
<summary>Mark Scheme Style Answer</summary>

A record is one row in a table and represents one instance of an entity. A field is one column in a table and stores one attribute for each record.

</details>

---

### Question 3 [5 marks]

Explain why normalization is useful.

<details>
<summary>Mark Scheme Style Answer</summary>

Normalization reduces repeated data by organizing data into related tables. This reduces storage waste and helps avoid update, insertion, and deletion anomalies. It also improves consistency because each fact is stored in one place where possible.

</details>

---

### Question 4 [5 marks]

Write an SQL query to list the names and scores of students in class `12B` with a score greater than 80.

Assume:

```text
STUDENT(StudentID, Name, Class, Score)
```

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT Name, Score
FROM STUDENT
WHERE Class = '12B' AND Score > 80;
```

</details>

---

### Question 5 [6 marks]

Explain how transactions and rollback protect database consistency.

<details>
<summary>Mark Scheme Style Answer</summary>

A transaction treats a sequence of database operations as one unit of work. Atomicity means that either all operations complete successfully or none are applied. If an error occurs, rollback undoes any changes made during the transaction, returning the database to a consistent state and preventing partial updates.

</details>

---

### Question 6 [8 marks]

A school stores student records, grades, and attendance in a database. Discuss security and privacy controls that should be used.

<details>
<summary>Mark Scheme Style Answer</summary>

Access control should restrict student records to authorized staff only, such as teachers or administrators who need the data. Authentication such as strong passwords or multi-factor authentication can reduce unauthorized access. Encryption can protect stored or transmitted data so it cannot be read if intercepted or stolen. Audit logs can record access and changes, helping investigate misuse. The school should also use data minimization and retention policies so it only stores necessary data for an appropriate time. Overall, these controls help protect sensitive student data and reduce privacy risks.

</details>

---

## 26. Mini Mock: A4 Machine Learning

### Instructions

Attempt the questions before checking the mark scheme.

Total: 30 marks.

---

### Question 1 [2 marks]

Define feature.

<details>
<summary>Mark Scheme Style Answer</summary>

A feature is an input variable used by a machine learning model to make a prediction.

</details>

---

### Question 2 [3 marks]

Distinguish between classification and regression.

<details>
<summary>Mark Scheme Style Answer</summary>

Classification predicts a category or class, such as spam/not spam. Regression predicts a numerical value, such as house price or delivery time.

</details>

---

### Question 3 [4 marks]

A model predicts final exam scores. Identify the learning type, task type, two possible features, and the label.

<details>
<summary>Mark Scheme Style Answer</summary>

Learning type:

```text
supervised learning
```

Task type:

```text
regression
```

Possible features:

```text
attendance, homework completion, previous test scores, study time
```

Label:

```text
final exam score
```

</details>

---

### Question 4 [5 marks]

Explain why testing data should be separate from training data.

<details>
<summary>Mark Scheme Style Answer</summary>

Testing data should be separate so the model is evaluated on examples it has not seen during training. This gives a more realistic estimate of how well the model generalizes to new data. If the same data is used for training and testing, the model may appear accurate because it memorized the training examples.

</details>

---

### Question 5 [6 marks]

A model has high training accuracy but low testing accuracy. Explain the likely problem and one possible solution.

<details>
<summary>Mark Scheme Style Answer</summary>

The model is likely overfitting because it performs well on training data but poorly on unseen testing data. It may have learned the training examples too specifically, including noise. Possible solutions include using a simpler model, collecting more representative data, reducing unnecessary features, regularization, or using validation data to tune the model.

</details>

---

### Question 6 [10 marks]

Evaluate whether a school should use ML to predict students at risk of failing.

<details>
<summary>Mark Scheme Style Answer</summary>

A machine learning system could help identify students who may need support earlier by analysing data such as attendance, previous grades, assignment completion, and learning platform activity. This could allow teachers to provide extra help before the final exam.

However, the system may make incorrect predictions. A false positive could unfairly label a student as at risk, while a false negative could miss a student who needs support. The model may also be biased if the training data does not represent all student groups fairly.

Privacy is another concern because the system processes sensitive student data. The school should use data minimization, access control, fairness testing, transparency, and human oversight.

Overall, the system could be useful as a decision-support tool, but it should not automatically make decisions about students without teacher review and strong privacy safeguards.

</details>

---

## 27. Common A3 and A4 Mistakes

| Mistake | Why It Loses Marks | Fix |
|---|---|---|
| record and field confused | row/column misunderstanding | record = row, field = column |
| primary and foreign key confused | relationship explanation wrong | primary unique, foreign references |
| many-to-many implemented directly | relational design incomplete | use junction table |
| normalization described as sorting | wrong concept | reduce redundancy/anomalies |
| SQL missing FROM | invalid query | always check SELECT + FROM |
| text values not quoted in SQL | syntax issue | use quotes around strings |
| DISTINCT forgotten | duplicates remain | use when question says once/unique |
| LIKE forgotten for partial text | exact match only | use LIKE with `%` |
| transaction described as one query only | incomplete | sequence of operations as one unit |
| feature and label confused | ML task unclear | feature=input, label=target |
| supervised and unsupervised confused | labels misunderstood | supervised uses labelled data |
| classification/regression confused | output type ignored | category vs number |
| testing data used for training | evaluation invalid | keep unseen test data |
| accuracy used alone for imbalanced data | hides errors | use confusion matrix, precision, recall |
| overfitting described as low training accuracy | wrong pattern | high training, low testing |
| bias described only as error | incomplete | unfair/systematic distortion |

---

## 28. A3 and A4 Exam Checklist

Before an A3/A4 test, students should be able to:

- [ ] define database, table, record, field
- [ ] define primary key and foreign key
- [ ] explain relationships and referential integrity
- [ ] identify entities and attributes
- [ ] explain one-to-many and many-to-many relationships
- [ ] explain normalization and redundancy
- [ ] identify simple normalization problems
- [ ] write SQL SELECT queries
- [ ] use WHERE, AND, OR, LIKE, DISTINCT, ORDER BY
- [ ] explain database security and privacy controls
- [ ] explain transactions, atomicity, rollback, and recovery
- [ ] define machine learning
- [ ] distinguish feature and label
- [ ] distinguish supervised and unsupervised learning
- [ ] distinguish classification and regression
- [ ] explain training, validation, and testing data
- [ ] explain accuracy, precision, recall, F1, and confusion matrix
- [ ] identify overfitting and underfitting
- [ ] explain bias, ethics, privacy, and human oversight
- [ ] evaluate ML applications and limitations

---

## 29. One-page A3 and A4 Practice Summary

| Skill | What to Remember |
|---|---|
| Database | organized collection of related data |
| Table | rows and columns for one entity |
| Record | row |
| Field | column |
| Primary key | uniquely identifies record |
| Foreign key | references primary key in another table |
| Relationship | link between entities/tables |
| Normalization | reduce redundancy and anomalies |
| SQL SELECT | choose fields |
| SQL FROM | choose table |
| SQL WHERE | filter records |
| SQL DISTINCT | remove duplicates |
| SQL ORDER BY | sort results |
| Transaction | operations treated as one unit |
| Atomicity | all or nothing |
| ML | learns patterns from data |
| Feature | input variable |
| Label | target/correct output |
| Supervised | labelled data |
| Unsupervised | unlabelled data |
| Classification | category output |
| Regression | numerical output |
| Testing data | unseen final evaluation |
| Overfitting | high training, low testing |
| Bias | unfair/systematic distortion |
| Best exam habit | identify data/tables/features, then explain with scenario link |

::: tip Next Step
After this page, the next Exam Practice page should be **Mini Mock Exam Bank**, using the real file name `mini-mock-exam-bank.md`.
:::
