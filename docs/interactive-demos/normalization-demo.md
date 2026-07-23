---
aside: false
---

<script setup>
import NormalizationDemo from '../.vitepress/components/demos/NormalizationDemo.vue'
</script>

# Normalization Demo

## Learning Goals

By the end of this demo, students should be able to:

- explain why one large table can cause redundancy
- identify repeated data in an unnormalised table
- explain how normalization splits data into related tables
- understand the role of primary keys and foreign keys
- explain how normalization reduces inconsistency and update anomalies
- write an exam-style explanation of normalization

## Key Idea

Normalization is the process of organizing data into related tables to reduce repeated data and improve consistency.

A poorly designed table may store repeated facts, such as:

```text
customer name
customer email
product name
product price
```

After normalization, separate tables can store separate entities:

```text
Customers
Orders
Products
OrderItems
```

Primary keys uniquely identify records. Foreign keys link related records between tables.

## Interactive Demo

<NormalizationDemo />

## Exam-style Explanation

Normalization reduces data redundancy by splitting data into related tables. Each table stores data about one main entity, and primary and foreign keys are used to link the tables. This improves consistency because repeated facts are stored once instead of many times. It also reduces update anomalies because a change only needs to be made in one place.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking normalization deletes data | data is reorganized, not lost | related tables still preserve the information |
| thinking one big table is always better | one table can repeat data | repeated data may cause inconsistency |
| forgetting foreign keys | tables must still be linked | foreign keys show relationships |
| using a non-unique primary key | primary keys must identify one record | choose stable unique fields |
| only focusing on storage space | consistency is also important | normalization reduces update anomalies |

## Quick Practice

### Question 1

Explain one reason why repeated customer email addresses can be a problem.

<details>
<summary>Answer</summary>

If the customer's email address changes, it must be updated in every row where it appears. If only some rows are updated, the database may contain inconsistent email addresses for the same customer.

</details>

### Question 2

State the purpose of a foreign key.

<details>
<summary>Answer</summary>

A foreign key links a record in one table to a primary key in another table, creating a relationship between the tables.

</details>

### Question 3

Explain how normalization reduces redundancy.

<details>
<summary>Answer</summary>

Normalization moves repeated data into separate related tables. Each fact is stored once where possible, and other tables refer to it using keys instead of repeating the same data many times.

</details>

