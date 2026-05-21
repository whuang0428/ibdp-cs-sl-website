# Transactions and Recovery

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what a database transaction is
- explain why transactions are needed
- describe the ACID properties at a suitable introductory level
- distinguish commit and rollback
- explain what can go wrong during a transaction
- explain why concurrent access can cause problems
- describe simple transaction failure scenarios
- explain the purpose of database recovery
- describe backup and recovery methods at a high level
- explain how transaction logs can support recovery
- answer exam-style questions about transactions, rollback, backup, and recovery

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Understanding safe database updates and recovery after failure |
| Connected topics | DBMS, data integrity, validation, security, backup, SQL updates |
| Practical focus | Explaining transaction safety using real-world scenarios |
| Exam relevance | Written explanation, scenario analysis, data integrity, recovery methods |

::: tip Learning Focus
A transaction is not just one random database action. It is a group of operations that should be completed fully or not completed at all.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Transaction | 事务 | A logical unit of database work that should be completed as a whole |
| Commit | 提交 | Make the transaction's changes permanent |
| Rollback | 回滚 | Undo changes made by an incomplete or failed transaction |
| ACID | ACID 属性 | Properties that help transactions remain reliable |
| Atomicity | 原子性 | A transaction is all-or-nothing |
| Consistency | 一致性 | A transaction moves the database from one valid state to another |
| Isolation | 隔离性 | Concurrent transactions should not interfere incorrectly |
| Durability | 持久性 | Committed changes should survive system failure |
| Concurrency | 并发 | Multiple users or transactions accessing data at the same time |
| Transaction log | 事务日志 | A record of database changes used for recovery |
| Backup | 备份 | A copy of data that can be used after loss or damage |
| Recovery | 恢复 | Restoring the database to a correct state after failure |
| Data integrity | 数据完整性 | Accuracy, consistency, and reliability of data |
| System failure | 系统故障 | Hardware, software, or power problem that interrupts processing |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Transaction（事务）** 是数据库中的一组操作，这组操作应该作为一个整体完成。

最经典的例子是银行转账：

```text
从 Amy 的账户扣除 100
给 Ben 的账户增加 100
```

这两个操作必须一起成功。  
如果只完成第一步，Amy 的钱被扣了，但是 Ben 没收到钱，数据库就出错了。

所以 transaction 的核心思想是：

```text
all or nothing
要么全部成功
要么全部取消
```

如果 transaction 成功，数据库会执行：

```text
COMMIT
```

表示正式保存更改。

如果 transaction 失败，数据库会执行：

```text
ROLLBACK
```

表示撤销已经做过的更改，让数据库回到之前的安全状态。

数据库还需要 recovery 机制，例如：

```text
backup
transaction log
rollback
restore
```

这些机制可以帮助数据库在断电、系统崩溃、硬盘损坏或人为错误后恢复数据。

</template>

<template #en>

### English Explanation

A **transaction** is a group of database operations that should be completed as one whole unit.

The classic example is a bank transfer:

```text
subtract 100 from Amy's account
add 100 to Ben's account
```

These two operations must succeed together.  
If only the first step happens, Amy loses money but Ben does not receive it, so the database becomes incorrect.

The core idea of a transaction is:

```text
all or nothing
either everything succeeds
or everything is cancelled
```

If a transaction succeeds, the database performs:

```text
COMMIT
```

This makes the changes permanent.

If a transaction fails, the database performs:

```text
ROLLBACK
```

This undoes changes already made and returns the database to a safe previous state.

Databases also need recovery mechanisms, such as:

```text
backup
transaction log
rollback
restore
```

These mechanisms help the database recover after power failure, system crash, disk damage, or human error.

</template>
</LangBlock>

---

## 5. Why Transactions Are Needed

Databases often store important data.

Examples:

```text
bank balances
online orders
flight bookings
school grades
hospital records
game purchases
```

If an update is interrupted, the data may become inconsistent.

### Example: Online Order

A customer buys one keyboard.

The database may need to:

```text
1. create an order record
2. reduce stock by 1
3. create a payment record
4. create a delivery record
```

These operations should be treated as one transaction.

If payment succeeds but stock is not reduced, the database is wrong.  
If stock is reduced but payment fails, the database is also wrong.

---

## 6. Transaction Example: Bank Transfer

### Account Table Before

| accountId | owner | balance |
|---|---|---:|
| A001 | Amy | 500 |
| A002 | Ben | 300 |

Amy transfers 100 to Ben.

### Required Operations

```text
1. Amy balance = Amy balance - 100
2. Ben balance = Ben balance + 100
```

### Account Table After Successful Transaction

| accountId | owner | balance |
|---|---|---:|
| A001 | Amy | 400 |
| A002 | Ben | 400 |

The total money before:

```text
500 + 300 = 800
```

The total money after:

```text
400 + 400 = 800
```

The database remains consistent.

---

## 7. What If a Transaction Fails?

Suppose the system crashes after Amy's account is updated but before Ben's account is updated.

### Incorrect Intermediate State

| accountId | owner | balance |
|---|---|---:|
| A001 | Amy | 400 |
| A002 | Ben | 300 |

Total money:

```text
400 + 300 = 700
```

100 has disappeared.

This is not acceptable.

### Correct Action

The DBMS should rollback the transaction:

```text
undo Amy's deduction
return database to previous valid state
```

After rollback:

| accountId | owner | balance |
|---|---|---:|
| A001 | Amy | 500 |
| A002 | Ben | 300 |

---

## 8. Commit

A **commit** makes transaction changes permanent.

### Example

```sql
START TRANSACTION;

UPDATE Account
SET balance = balance - 100
WHERE accountId = 'A001';

UPDATE Account
SET balance = balance + 100
WHERE accountId = 'A002';

COMMIT;
```

### Meaning

The transaction has finished successfully, so the DBMS saves the changes permanently.

### Exam-friendly phrase

A commit confirms a successful transaction and makes its changes permanent in the database.

---

## 9. Rollback

A **rollback** cancels an incomplete or failed transaction.

### Example

```sql
START TRANSACTION;

UPDATE Account
SET balance = balance - 100
WHERE accountId = 'A001';

-- system error happens here

ROLLBACK;
```

### Meaning

The DBMS undoes changes made during the transaction.

### Exam-friendly phrase

A rollback restores the database to its previous consistent state after a transaction fails.

---

## 10. Commit vs Rollback

| Commit | Rollback |
|---|---|
| Used after successful transaction | Used after failed or cancelled transaction |
| Saves changes permanently | Undoes transaction changes |
| Database moves to new valid state | Database returns to previous valid state |
| Example: completed payment | Example: failed payment |

### Simple Memory

```text
COMMIT = keep changes
ROLLBACK = undo changes
```

---

## 11. ACID Properties

ACID describes important transaction properties.

| Letter | Property | Simple Meaning |
|---|---|---|
| A | Atomicity | All-or-nothing |
| C | Consistency | Database remains valid |
| I | Isolation | Transactions do not interfere incorrectly |
| D | Durability | Committed changes survive failure |

::: warning Level Control
Students do not need extremely advanced database theory here. They should be able to explain each ACID property using a simple scenario.
:::

---

## 12. Atomicity

**Atomicity** means a transaction is treated as one complete unit.

It must be:

```text
fully completed
or fully undone
```

### Bank Example

A transfer has two updates:

```text
subtract from sender
add to receiver
```

Atomicity ensures that the database does not do only one of them.

### Exam-friendly phrase

Atomicity means that all parts of a transaction are completed successfully, or none of them are applied.

---

## 13. Consistency

**Consistency** means a transaction should move the database from one valid state to another valid state.

### Example

Before transfer:

```text
total money = 800
```

After transfer:

```text
total money = 800
```

The total should not become 700 or 900 because money should not disappear or be created.

### Other Examples

A database should not allow:

```text
negative stock if not permitted
enrollment referencing a non-existing student
order item referencing a non-existing product
```

Consistency depends on transaction rules and constraints.

---

## 14. Isolation

**Isolation** means concurrent transactions should not interfere with each other incorrectly.

### Example: Two Customers Buy Last Ticket

There is 1 ticket left.

Two customers try to buy it at the same time.

Without isolation, both transactions may read:

```text
ticketsLeft = 1
```

Then both complete, selling the same ticket twice.

### Correct Behaviour

The DBMS should manage concurrent access so that only one transaction succeeds.

### Exam-friendly phrase

Isolation ensures that transactions running at the same time do not produce incorrect results by interfering with each other.

---

## 15. Durability

**Durability** means once a transaction is committed, the change should not be lost, even if the system fails shortly after.

### Example

A payment is committed.

Then the power fails.

After recovery, the payment should still exist in the database.

### How DBMS Supports Durability

The DBMS may use:

```text
transaction logs
disk storage
backup systems
recovery mechanisms
```

---

## 16. Concurrency Problems

Concurrency means multiple users or transactions access the database at the same time.

### Example: Stock Update

Product table:

| productId | productName | stock |
|---|---|---:|
| P001 | Keyboard | 1 |

Two users buy the keyboard at the same time.

Possible problem:

```text
both users see stock = 1
both orders are accepted
stock becomes incorrect
```

### DBMS Protection

The DBMS can use:

```text
locks
isolation levels
transaction control
```

For this course, students mainly need the idea that DBMS controls concurrent access to protect consistency.

---

## 17. Transaction Log

A **transaction log** records changes made by transactions.

It can store information such as:

```text
transaction start
data before change
data after change
commit record
rollback record
time of operation
```

### Why It Is Useful

If a crash happens, the DBMS can use the log to decide:

```text
which committed changes should be redone
which incomplete changes should be undone
```

### Exam-friendly phrase

A transaction log records database changes so the DBMS can recover the database to a consistent state after failure.

---

## 18. Backup

A **backup** is a copy of database data stored separately.

Backups protect against:

```text
hardware failure
accidental deletion
corruption
ransomware or attack
natural disaster
```

### Types of Backup

| Type | Meaning |
|---|---|
| Full backup | Copies the whole database |
| Incremental backup | Copies changes since the last backup |
| Differential backup | Copies changes since the last full backup |

::: info Note
Students usually need to understand the purpose and basic differences, not enterprise-level backup implementation.
:::

---

## 19. Recovery

**Recovery** means restoring the database after failure.

Recovery may use:

```text
backup
transaction log
rollback
redo committed transactions
undo incomplete transactions
```

### Example Recovery Process

After a crash:

```text
1. restore latest backup if needed
2. read transaction log
3. redo committed transactions not fully written
4. rollback incomplete transactions
5. return database to consistent state
```

### Important

Recovery should aim to restore a correct and consistent database state, not just any old copy.

---

## 20. Failure Scenarios

| Scenario | Possible Recovery Method |
|---|---|
| Power failure during transaction | Rollback incomplete transaction using log |
| Disk failure | Restore from backup |
| User accidentally deletes records | Restore backup or use point-in-time recovery |
| System crashes after commit | Redo committed transaction from log |
| Transaction violates constraint | Rollback transaction |
| Ransomware encrypts database | Restore clean backup if available |

---

## 21. Worked Example: Online Shop Purchase

### Product Table Before

| productId | productName | stock |
|---|---|---:|
| P001 | Keyboard | 5 |

### Order Table Before

| orderId | customerId | productId | status |
|---|---|---|---|

### Transaction Steps

```text
1. create order record
2. reduce product stock
3. record payment status
4. commit transaction
```

### If Successful

Product stock becomes:

```text
4
```

Order record is saved.

### If Payment Fails

The transaction should rollback:

```text
order record is not kept as completed
stock returns to 5
payment is not recorded as successful
```

This prevents inconsistent order data.

---

## 22. Worked Example: Flight Booking

### Seat Table Before

| seatId | flightId | status |
|---|---|---|
| 12A | F001 | available |

Two users try to book seat 12A.

### Problem Without Isolation

Both users may see:

```text
status = available
```

Both may be allowed to book the same seat.

### Correct Transaction Behaviour

The DBMS should prevent this by controlling concurrent access.

Possible result:

```text
first transaction commits
second transaction sees seat no longer available and fails
```

This protects data integrity.

---

## 23. Transactions and Data Integrity

Transactions support data integrity because they help ensure:

```text
updates are complete
invalid partial updates are undone
related changes stay consistent
concurrent access is controlled
committed changes are protected
```

### Example

A transaction should not leave the database with:

```text
order created but stock not reduced
money deducted but not received
seat booked by two users
enrollment created for non-existing student
```

---

## 24. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Thinking transaction means any single query | A transaction can include multiple operations | Treat transaction as a logical unit |
| Thinking commit and rollback are the same | They are opposite actions | Commit saves, rollback undoes |
| Saying backup and transaction log are identical | They serve different purposes | Backup is copy; log records changes |
| Thinking rollback restores last backup | Rollback undoes current transaction changes | Restore uses backup |
| Ignoring partial failure | Partial updates can corrupt data | Use atomic transactions |
| Thinking SELECT usually needs rollback | SELECT reads data and normally does not change it | Rollback matters for updates |
| Confusing consistency with backup | Consistency means valid database state | Backup is a recovery copy |
| Thinking durability means no backup needed | Durability helps committed changes survive, but backup is still needed | Use both logs and backups |
| Ignoring concurrency | Simultaneous users can cause conflicts | DBMS controls isolation |
| Saying recovery always means go back to yesterday | Recovery should restore correct state, possibly using logs after backup | Use point-in-time idea |

---

## 25. Guided Practice

### Practice 1: Commit or Rollback?

A bank transfer finishes successfully. Should the DBMS commit or rollback?

<details>
<summary>Suggested Answer</summary>

It should commit, because the transaction completed successfully and the changes should become permanent.

</details>

---

### Practice 2: Failed Payment

An online order reduces stock, but payment fails. What should happen?

<details>
<summary>Suggested Answer</summary>

The transaction should rollback. The stock should return to its previous value, and the order should not be stored as successfully paid.

</details>

---

### Practice 3: ACID Property

Which ACID property means “all-or-nothing”?

<details>
<summary>Suggested Answer</summary>

Atomicity.

</details>

---

### Practice 4: Concurrency

Two users try to buy the last ticket at the same time. Which ACID property is most related to preventing interference?

<details>
<summary>Suggested Answer</summary>

Isolation, because it prevents concurrent transactions from interfering incorrectly.

</details>

---

### Practice 5: Transaction Log

Why is a transaction log useful after a crash?

<details>
<summary>Suggested Answer</summary>

It records transaction changes, so the DBMS can redo committed transactions and undo incomplete transactions to restore a consistent database state.

</details>

---

## 26. Independent Practice

### Question 1

Define transaction.

### Question 2

Explain the difference between commit and rollback.

### Question 3

Use a bank transfer example to explain atomicity.

### Question 4

Use an online shop example to explain why transactions are needed.

### Question 5

Explain what could happen if a system crashes halfway through a transaction.

### Question 6

Explain one concurrency problem using a ticket booking or stock example.

### Question 7

Define transaction log and explain one use.

### Question 8

Explain the difference between backup and recovery.

### Question 9

Describe how a database could recover after a power failure during a transaction.

### Question 10

Explain why durability is important after a transaction commits.

---

## 27. Exam-style Questions

### Question 1 [4 marks]

Define transaction and explain why transactions are needed.

<details>
<summary>Mark Scheme Style Answer</summary>

A transaction is a logical unit of database work made up of one or more operations that should be completed as a whole. Transactions are needed to ensure that related database changes are completed fully or not applied at all, preventing partial updates and helping maintain data consistency.

</details>

---

### Question 2 [4 marks]

Distinguish between commit and rollback.

<details>
<summary>Mark Scheme Style Answer</summary>

A commit makes the changes from a successful transaction permanent in the database. A rollback undoes the changes made by an incomplete, failed, or cancelled transaction and returns the database to a previous consistent state.

</details>

---

### Question 3 [6 marks]

A customer buys the last item in stock from an online shop. Explain one transaction problem that could occur if two customers buy at the same time.

<details>
<summary>Mark Scheme Style Answer</summary>

If two customers attempt to buy the last item at the same time, both transactions may read the stock value as 1 before either update is completed. Without proper isolation, both purchases may be accepted, causing the item to be oversold or the stock value to become incorrect. The DBMS should control concurrent transactions so that only one purchase can complete successfully.

</details>

---

### Question 4 [6 marks]

Explain how a transaction log can help with database recovery after a system crash.

<details>
<summary>Mark Scheme Style Answer</summary>

A transaction log records the changes made by transactions, including whether a transaction was committed. After a crash, the DBMS can examine the log to identify committed transactions that need to be redone and incomplete transactions that need to be undone. This helps restore the database to a consistent state.

</details>

---

### Question 5 [6 marks]

Explain the ACID properties using brief descriptions.

<details>
<summary>Mark Scheme Style Answer</summary>

Atomicity means a transaction is all-or-nothing. Consistency means a transaction should move the database from one valid state to another. Isolation means concurrent transactions should not interfere incorrectly with each other. Durability means that once a transaction has been committed, its changes should survive system failure.

</details>

---

## 28. Classroom Activity

### Activity 1: Bank Transfer Role-play

Three students act as:

```text
Amy account
Ben account
DBMS
```

The class performs:

```text
deduct from Amy
add to Ben
commit
```

Then repeat with a crash in the middle and show rollback.

---

### Activity 2: Last Ticket Simulation

Two groups try to buy the same last ticket.  
Students explain why isolation is needed and what could go wrong without it.

---

### Activity 3: Recovery Matching

Students match failure scenarios to recovery methods:

```text
power failure
disk failure
accidental deletion
incomplete transaction
committed transaction not fully written
```

with:

```text
rollback
restore backup
redo from log
point-in-time recovery
```

---

## 29. Homework

### Homework Part A: Concept Explanation

In 5-6 sentences, explain transactions using a bank transfer or online shopping example.

---

### Homework Part B: ACID Examples

For each ACID property, give one simple example:

```text
Atomicity
Consistency
Isolation
Durability
```

---

### Homework Part C: Scenario Analysis

A school system is updating a student's grade. The system crashes after the old grade is deleted but before the new grade is saved.

Answer:

1. What problem has occurred?
2. Should the transaction commit or rollback?
3. How can a transaction log help?
4. Why is data integrity important here?

---

### Homework Part D: Recovery Plan

Explain how backups and transaction logs can work together to recover a database after failure.

---

## 30. One-page Revision Summary

| Point | Summary |
|---|---|
| Transaction | Logical unit of database work |
| Commit | Save transaction changes permanently |
| Rollback | Undo failed or incomplete transaction changes |
| Atomicity | All-or-nothing |
| Consistency | Database remains valid |
| Isolation | Concurrent transactions do not interfere incorrectly |
| Durability | Committed changes survive failure |
| Concurrency | Multiple users/transactions at same time |
| Transaction log | Records changes for recovery |
| Backup | Copy of data for restore |
| Recovery | Restore database to correct state after failure |
| Common scenario | Bank transfer or online order |
| Exam phrase | Transactions help maintain database integrity by ensuring related operations are completed fully or undone if failure occurs |

---

## 31. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a transaction?
2. Why are transactions needed?
3. What does commit mean?
4. What does rollback mean?
5. What does atomicity mean?
6. What does consistency mean?
7. What does isolation mean?
8. What does durability mean?
9. Why is a transaction log useful?
10. What is the difference between backup and rollback?
