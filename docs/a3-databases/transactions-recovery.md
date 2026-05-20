# Transactions and Recovery

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define a **transaction**
- explain why transactions must be reliable
- describe commit and rollback
- explain database consistency
- explain how backups and logs support recovery
- apply transaction ideas to banking, booking, and order systems

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Maintaining consistency and recovering data |
| Connected units | Database Security, File Processing, A1 Storage |
| Exam relevance | Scenario explanation, transaction concepts, recovery methods |

::: tip Learning Focus
A transaction should be completed fully or not at all. This prevents partial updates and inconsistent data.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Transaction | 事务 | A sequence of database operations treated as one unit |
| Commit | 提交 | Permanently save transaction changes |
| Rollback | 回滚 | Undo transaction changes after failure |
| Consistency | 一致性 | Database remains valid and reliable |
| Log file | 日志文件 | A record of database operations used for recovery |
| Backup | 备份 | A copy of data that can be restored |
| Recovery | 恢复 | Restoring a database after failure |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Transaction（事务）** 是一组必须作为整体完成的数据库操作。要么全部成功，要么全部撤销。

例如银行转账：

1. 从账户 A 扣钱
2. 给账户 B 加钱

如果只完成第一步，账户 A 钱少了，但账户 B 没收到钱，数据库就不一致了。因此这两个操作应该作为一个 transaction。

如果全部成功，就 **commit**。  
如果中间失败，就 **rollback**。

</template>

<template #en>

### English Explanation

A **transaction** is a group of database operations that must be treated as one unit. Either all operations succeed, or all changes are undone.

Example: bank transfer

1. subtract money from account A
2. add money to account B

If only the first step happens, account A loses money but account B does not receive it. The database becomes inconsistent. Therefore, these operations should be one transaction.

If all steps succeed, the system performs **commit**.  
If a step fails, the system performs **rollback**.

</template>
</LangBlock>

---

## 5. Real-life Example

### Online Seat Booking

Transaction steps:

| Step | Operation |
|---|---|
| 1 | Check seat availability |
| 2 | Mark seat as reserved |
| 3 | Process payment |
| 4 | Confirm booking |
| 5 | Commit transaction |

If payment fails, the seat reservation should be rolled back.

---

## 6. Transaction Pattern

```text
BEGIN TRANSACTION
    perform operation 1
    perform operation 2
    perform operation 3

    IF all operations successful THEN
        COMMIT
    ELSE
        ROLLBACK
    END IF
END TRANSACTION
```

---

## 7. SQL-style Example

```sql
BEGIN TRANSACTION;

UPDATE Account
SET Balance = Balance - 100
WHERE AccountID = 'A001';

UPDATE Account
SET Balance = Balance + 100
WHERE AccountID = 'B001';

COMMIT;
```

If an error happens before `COMMIT`, a rollback can undo the changes.

---

## 8. Explanation of Example

| Operation | Purpose |
|---|---|
| Begin transaction | Start grouped operations |
| Subtract from A001 | First part of transfer |
| Add to B001 | Second part of transfer |
| Commit | Save both changes permanently |
| Rollback | Undo changes if failure occurs |

---

## 9. Step-by-step Failure Scenario

| Step | Action | Result |
|---|---|---|
| 1 | Start transfer | transaction begins |
| 2 | Subtract $100 from A | temporary change |
| 3 | System fails before adding to B | inconsistency risk |
| 4 | Rollback | A's balance restored |
| 5 | Database remains consistent | no partial transfer |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Treating related operations separately | Partial updates may occur | Use transaction |
| Forgetting rollback | Failed operations may leave wrong data | Rollback on failure |
| Confusing backup and transaction log | Different recovery roles | Backup copies data, log records changes |
| Thinking commit can be undone easily | Commit saves permanently | Check before commit |
| Ignoring consistency | Database may become invalid | Explain all-or-nothing principle |

---

## 11. Guided Practice

### Practice 1

Why should bank transfer use a transaction?

<details>
<summary>Suggested Answer</summary>

Because subtracting from one account and adding to another must both happen. If only one happens, the database becomes inconsistent.

</details>

### Practice 2

What should happen if payment fails during seat booking?

<details>
<summary>Suggested Answer</summary>

The transaction should be rolled back so the seat is not left incorrectly reserved.

</details>

---

## 12. Independent Practice

1. Explain a transaction in an online order system.
2. Explain commit and rollback using your own example.
3. Explain how logs support recovery.
4. Give one example where partial update is dangerous.

---

## 13. Exam-style Questions

### Question 1 [2 marks]

State what is meant by a database transaction.

<details>
<summary>Mark Scheme Style Answer</summary>

A database transaction is a sequence of operations treated as one unit, where all operations should be completed or none should be applied.

</details>

### Question 2 [4 marks]

A customer pays for an online order. The database must update payment status and stock quantity. Explain why this should be a transaction.

<details>
<summary>Mark Scheme Style Answer</summary>

The payment update and stock update are related operations. Both should be completed together. If one operation fails, the transaction can be rolled back. This prevents inconsistent data, such as payment recorded but stock not updated.

</details>

### Question 3 [4 marks]

Explain how backups and logs can help database recovery.

<details>
<summary>Mark Scheme Style Answer</summary>

A backup provides a copy of the database that can be restored after data loss or corruption. Logs record database operations, allowing the system to identify changes made before failure and redo or undo operations during recovery.

</details>

---

## 14. Classroom Activity

Students role-play a bank transfer. One student is account A, one is account B, and one is the database manager. The class decides what should happen if the process fails halfway.

---

## 15. Homework

Write a transaction explanation for either bank transfer, cinema booking, or online shopping. Include operations, commit, rollback, and possible failure.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Transaction | Group of operations treated as one unit |
| Commit | Save changes permanently |
| Rollback | Undo changes after failure |
| Consistency | Database stays valid |
| Recovery | Uses backups and logs |
| Exam phrase | "A transaction prevents partial updates by ensuring all related operations complete or are rolled back." |
