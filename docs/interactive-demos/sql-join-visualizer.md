<script setup>
import SQLJoinVisualizer from '../.vitepress/components/demos/SQLJoinVisualizer.vue'
</script>

# SQL JOIN Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain why related database tables need to be joined
- identify a primary key and a foreign key in related tables
- explain how an `INNER JOIN` matches records
- understand that unmatched records are not shown in an `INNER JOIN`
- write an exam-style explanation of a simple SQL join

## Key Idea

A relational database often stores data in separate tables. This reduces repetition, but sometimes a query needs information from more than one table.

A `JOIN` combines related records using a matching field.

Example:

```sql
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;
```

In this example:

```text
Customers.CustomerID = primary key
Orders.CustomerID = foreign key
```

## Interactive Demo

<SQLJoinVisualizer />

## Exam-style Explanation

A JOIN combines records from related tables using a matching field. A primary key uniquely identifies records in one table, while a foreign key in another table refers to that primary key. In an INNER JOIN, only records with matching values in both tables are included in the result.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| joining tables without a matching field | the database needs a relationship | use primary key and foreign key |
| thinking foreign key must be unique | many orders can use the same CustomerID | foreign keys can repeat |
| expecting unmatched rows in INNER JOIN | INNER JOIN only shows matching records | unmatched records are excluded |
| confusing SELECT and JOIN | SELECT chooses fields; JOIN combines tables | they have different roles |
| forgetting table names | fields may exist in multiple tables | use table names to avoid ambiguity |

## Quick Practice

### Question 1

Explain why `Orders.CustomerID` is a foreign key.

<details>
<summary>Answer</summary>

`Orders.CustomerID` is a foreign key because it refers to `CustomerID` in the `Customers` table and links each order to the customer who made it.

</details>

### Question 2

What does an INNER JOIN return?

<details>
<summary>Answer</summary>

An INNER JOIN returns only records where the join condition matches in both tables.

</details>

### Question 3

Explain why a database may store Customers and Orders in separate tables.

<details>
<summary>Answer</summary>

Storing Customers and Orders separately reduces repeated customer data. Orders can link to customers using a foreign key, so customer details do not need to be repeated in every order record.

</details>

