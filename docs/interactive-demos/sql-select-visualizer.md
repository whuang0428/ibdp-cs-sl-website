---
aside: false
---

<script setup>
import SQLSelectVisualizer from '../.vitepress/components/demos/SQLSelectVisualizer.vue'
</script>

# SQL SELECT Visualizer

## Learning Goals

By the end of this demo, students should be able to:

- explain the purpose of `SELECT`
- explain the purpose of `FROM`
- use a simple `WHERE` condition to filter records
- use `ORDER BY` to sort query results
- understand that SQL queries return only the records and fields that match the query
- write exam-style explanations of simple SQL queries

## Key Idea

A simple SQL query often follows this structure:

```sql
SELECT field1, field2
FROM tableName
WHERE condition
ORDER BY field ASC;
```

The clauses have different roles:

| Clause | Purpose |
|---|---|
| `SELECT` | chooses which fields are displayed |
| `FROM` | chooses which table is queried |
| `WHERE` | filters records using a condition |
| `ORDER BY` | sorts the output |

## Interactive Demo

<SQLSelectVisualizer />

## Exam-style Explanation

The `SELECT` clause specifies which fields should be displayed in the query result. The `FROM` clause specifies the table that the data is taken from. The `WHERE` clause filters records so only records matching the condition are returned. `ORDER BY` sorts the result in ascending or descending order.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| forgetting `FROM` | SQL must know which table to query | include the table name |
| using field names that do not exist | query cannot find the field | use exact field names |
| using `WHERE` to choose columns | `WHERE` filters records, not fields | use `SELECT` for fields |
| forgetting quotes for text values | text conditions need quotes | use `WHERE Club = 'Robotics'` |
| confusing ASC and DESC | ASC means low to high / A to Z | DESC means high to low / Z to A |

## Quick Practice

### Question 1

Write an SQL query to show the `Name` and `Score` of students with a score greater than or equal to 80.

<details>
<summary>Answer</summary>

```sql
SELECT Name, Score
FROM Students
WHERE Score >= 80;
```

</details>

### Question 2

Write an SQL query to show all fields for students in the Robotics club.

<details>
<summary>Answer</summary>

```sql
SELECT *
FROM Students
WHERE Club = 'Robotics';
```

</details>

### Question 3

Explain what this query does:

```sql
SELECT Name, Score
FROM Students
WHERE YearGroup = 12
ORDER BY Score DESC;
```

<details>
<summary>Answer</summary>

The query displays the `Name` and `Score` fields from the `Students` table. It only includes records where `YearGroup` is 12. The results are sorted by `Score` from highest to lowest.

</details>

