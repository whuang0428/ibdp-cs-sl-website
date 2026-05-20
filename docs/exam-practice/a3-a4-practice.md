# A3 and A4 Practice

## 1. Quick Revision

| Topic | Keywords |
|---|---|
| Databases | table, record, field, primary key, foreign key |
| Relationships | one-to-many, many-to-many, link table |
| SQL | SELECT, FROM, WHERE, ORDER BY |
| Normalization | redundancy, anomaly, consistency |
| Machine Learning | feature, label, model, training, testing |
| Evaluation | accuracy, precision, recall, false positive |
| Ethics | bias, privacy, explainability, accountability |

## 2. Database Questions

### Question 1 [2 marks]

State what is meant by a primary key.

<details>
<summary>Answer</summary>

A primary key is a field that uniquely identifies each record in a table.

</details>

### Question 2 [4 marks]

Explain why a foreign key is useful.

<details>
<summary>Answer</summary>

A foreign key is a field in one table that refers to the primary key in another table. It creates a relationship between tables. This allows related data to be linked without repeating all details in multiple tables, reducing redundancy and improving consistency.

</details>

### Question 3 [5 marks]

Write SQL to display `ProductName` and `Price` from `PRODUCT` where `Category` is `'Food'`, ordered by price from low to high.

<details>
<summary>Answer</summary>

```sql
SELECT ProductName, Price
FROM PRODUCT
WHERE Category = 'Food'
ORDER BY Price ASC;
```

</details>

### Question 4 [4 marks]

Explain why normalization is useful.

<details>
<summary>Answer</summary>

Normalization organizes data into related tables to reduce unnecessary repetition. This helps avoid update anomalies, where repeated data must be changed in many places. It also improves consistency because data such as course name can be stored once and linked using keys.

</details>

## 3. Machine Learning Questions

### Question 5 [2 marks]

State what is meant by supervised learning.

<details>
<summary>Answer</summary>

Supervised learning trains a model using labelled data, where each example has input features and a known correct output label.

</details>

### Question 6 [3 marks]

A model predicts house prices. Identify two features and the label.

<details>
<summary>Answer</summary>

Features may include number of bedrooms, location, area, age of house, or distance to city centre. The label is the house price.

</details>

### Question 7 [4 marks]

Explain why testing data should be unseen.

<details>
<summary>Answer</summary>

Testing data should be unseen so it gives a realistic measure of how well the model performs on new data. If the model is tested on training data, it may appear accurate because it memorized examples. Unseen testing data helps evaluate generalization.

</details>

### Question 8 [6 marks]

A school uses ML to predict students at risk of failing. Discuss one benefit and two risks.

<details>
<summary>Answer</summary>

A benefit is that the model may identify at-risk students early, allowing teachers to provide support. One risk is bias if the training data is unrepresentative or reflects past unfair treatment. Another risk is privacy because student grades, attendance, and behaviour data are sensitive. The model should be checked for fairness, protected with access controls, and used with human oversight.

</details>
