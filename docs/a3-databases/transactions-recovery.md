# Transactions and Recovery

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define a database transaction
- explain why transactions are needed
- explain commit and rollback
- explain atomicity as an all-or-nothing rule
- explain how transactions keep data consistent
- describe examples such as bank transfers, online orders, ticket booking, library loans, and grade updates
- explain why database recovery is needed after failure
- describe backup, restore, transaction log, and checkpoint at a basic level
- explain how transaction logs can help undo incomplete transactions and redo committed transactions
- explain basic concurrency issues such as double booking or lost updates
- connect transactions and recovery to integrity, security, and database reliability
- answer exam-style questions about transactions and recovery

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Keeping database data correct during updates and restoring data after failure |
| Connected topics | Database fundamentals, SQL, keys, relationships, normalization, security and privacy |
| Practical focus | Safe multi-step updates and recovery from crashes, deletion, corruption, or ransomware |
| Exam relevance | Transaction definition, commit/rollback, consistency, backup/recovery, transaction logs |

::: tip Learning Focus
A transaction is a group of database operations treated as one unit. Either all operations are saved successfully, or the database rolls back so no partial update remains.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Transaction | 事务 | A group of database operations treated as one unit |
| Operation | 操作 | A database action such as insert, update, or delete |
| Commit | 提交 | Permanently saves a successful transaction |
| Rollback | 回滚 | Undoes changes from a failed or cancelled transaction |
| Atomicity | 原子性 | All operations complete, or none are applied |
| Consistency | 一致性 | Database remains valid before and after a transaction |
| Integrity | 完整性 | Accuracy and reliability of data |
| Recovery | 恢复 | Restoring a database after failure or error |
| Backup | 备份 | Copy of data used for recovery |
| Restore | 还原 | Recovering data from a backup |
| Transaction log | 事务日志 | Record of transaction changes used for recovery |
| Checkpoint | 检查点 | Saved safe point used to speed recovery |
| Crash | 崩溃 | Sudden system/software failure |
| Data corruption | 数据损坏 | Data becomes damaged or unreadable |
| Concurrency | 并发 | Multiple transactions/users working at the same time |
| Locking | 锁定 | Temporarily restricting access to data to avoid conflict |
| Deadlock | 死锁 | Transactions wait for each other and cannot continue |
| ACID | ACID 特性 | Atomicity, Consistency, Isolation, Durability |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

数据库经常要处理多个步骤组成的操作。  
例如 bank transfer：

```text
subtract $100 from Account A
add $100 to Account B
record the transfer
```

这三个步骤必须作为一个整体完成。  
如果只完成第一步，系统突然崩溃，那么 Account A 少了钱，但 Account B 没有收到钱。  
这会破坏数据库的 correctness 和 consistency。

所以数据库使用 **transaction（事务）**。

Transaction 的核心思想是：

```text
all operations succeed → commit
any important operation fails → rollback
```

也就是：

```text
要么全部保存
要么全部取消
不能只完成一半
```

数据库还需要 **recovery（恢复）**。  
当出现 power failure、server crash、accidental deletion、data corruption 或 ransomware 时，系统需要通过 backup、transaction log 和 restore process 来恢复。

简单记：

```text
transaction = safe update
commit = save successful changes
rollback = undo failed changes
recovery = restore after failure
```

</template>

<template #en>

### English Explanation

Databases often handle operations made of several steps.  
For example, a bank transfer:

```text
subtract $100 from Account A
add $100 to Account B
record the transfer
```

These steps must be completed as one unit.  
If only the first step is completed and the system crashes, Account A loses money but Account B does not receive it.  
This damages database correctness and consistency.

So databases use **transactions**.

The core idea is:

```text
all operations succeed → commit
any important operation fails → rollback
```

In other words:

```text
either everything is saved
or everything is cancelled
no half-completed update
```

Databases also need **recovery**.  
When power failure, server crash, accidental deletion, data corruption, or ransomware happens, the system may need backup, transaction log, and restore processes.

Simple memory:

```text
transaction = safe update
commit = save successful changes
rollback = undo failed changes
recovery = restore after failure
```

</template>
</LangBlock>

---

## 5. What Is a Transaction?

A transaction is a sequence of database operations treated as one single unit.

### Basic Pattern

```text
BEGIN TRANSACTION
operation 1
operation 2
operation 3
if all succeed → COMMIT
if something fails → ROLLBACK
```

### Example

An online shop order may need to:

```text
create order
add order items
reduce stock
record payment
```

These steps should be saved together.  
If one important step fails, the transaction should be rolled back.

::: tip Exam Phrase
A transaction is a group of database operations treated as one unit, so either all operations are completed successfully or none are applied.
:::

---

## 6. Why Transactions Are Needed

Transactions are needed because databases often store important data.

Examples:

```text
bank balances
exam grades
customer orders
stock quantities
flight seats
hospital appointments
library loans
game item purchases
```

Without transactions, a database may keep incomplete changes.

### Problems Prevented by Transactions

```text
money removed but not added
payment made but order not created
seat sold to two users
stock quantity becomes incorrect
grade changed but audit log missing
loan created but book still shown as available
```

Transactions protect:

```text
accuracy
consistency
integrity
reliability
trust
```

---

## 7. Commit

`COMMIT` means saving all successful transaction changes permanently.

### Example

```text
subtract money from Account A
add money to Account B
record transfer
COMMIT
```

After commit:

```text
changes are saved
transaction is complete
other users can rely on the updated data
```

### Exam Phrase

A commit permanently saves all changes made by a successful transaction.

---

## 8. Rollback

`ROLLBACK` means undoing transaction changes.

### Example

```text
subtract money from Account A
fail to add money to Account B
ROLLBACK
```

After rollback:

```text
Account A returns to original balance
no partial transfer remains
database returns to a consistent state
```

### When Rollback May Happen

```text
operation fails
validation rule fails
system crashes before commit
payment fails
user cancels
deadlock occurs
```

### Exam Phrase

A rollback reverses changes from a failed or incomplete transaction, returning the database to a previous consistent state.

---

## 9. Atomicity

Atomicity means all-or-nothing.

### Meaning

```text
all transaction operations complete successfully
or none of them are applied
```

### Example

For a bank transfer:

```text
subtract money
add money
record transfer
```

These should not be partially saved.

### Simple Memory

```text
atomic = cannot be left half-done
```

Atomicity is one of the most important transaction ideas for student answers.

---

## 10. ACID Properties Preview

ACID is a common way to describe reliable transactions.

| Property | Meaning |
|---|---|
| Atomicity | all operations complete, or none are applied |
| Consistency | database moves from one valid state to another |
| Isolation | simultaneous transactions do not interfere incorrectly |
| Durability | committed changes survive failure |

### Level Control

For most school exam answers, focus mainly on:

```text
transaction
commit
rollback
atomicity
consistency
recovery
```

ACID helps you understand the bigger idea.

---

## 11. Consistency

Consistency means the database remains valid before and after the transaction.

### Database Rules

Examples of rules:

```text
account balance cannot become invalid
stock quantity should not go below zero
seat cannot be booked twice
student score must be 0 to 100
foreign key must refer to an existing record
```

If a transaction would break these rules, it should not be committed.

### Strong Answer

A transaction should move the database:

```text
from one consistent state
to another consistent state
```

---

## 12. Isolation and Concurrency

Concurrency means multiple users or transactions are working at the same time.

### Example Problem: Last Seat

Two users try to book the last seat.

Without control:

```text
both see seat is available
both book it
seat is double-booked
```

With transaction isolation / locking:

```text
one transaction books or releases the seat first
the other transaction sees the updated result
```

### Simple Explanation

Isolation helps prevent simultaneous transactions from interfering with each other incorrectly.

---

## 13. Locking

Locking temporarily prevents other transactions from changing the same data.

### Example

When a user is booking a seat:

```text
seat is locked
booking transaction completes or rolls back
lock is released
```

### Benefits

Locking can prevent:

```text
double booking
lost updates
incorrect stock quantities
conflicting edits
```

### Limitation

Locking can cause waiting and may reduce performance if many users need the same data.

---

## 14. Deadlock Preview

A deadlock can happen when transactions wait for each other.

### Example

```text
Transaction A locks Record 1 and waits for Record 2.
Transaction B locks Record 2 and waits for Record 1.
```

Neither can continue.

### DBMS Response

The DBMS may:

```text
detect deadlock
cancel one transaction
rollback one transaction
allow the other to continue
```

This is only a preview. The main focus is still commit, rollback, and recovery.

---

## 15. Transaction Log

A transaction log records database changes.

### It May Store

```text
transaction start
old values
new values
operation type
commit record
rollback information
time
user/process
```

### Why It Is Useful

Transaction logs help the DBMS:

```text
undo incomplete transactions
redo committed transactions
recover after crash
investigate what happened
support audit trails
```

::: tip Exam Phrase
A transaction log records database changes so incomplete transactions can be rolled back and committed transactions can be recovered after failure.
:::

---

## 16. Database Recovery

Database recovery means restoring the database to a correct state after failure.

### Failure Examples

```text
power failure
server crash
disk failure
software bug
network failure
accidental deletion
data corruption
malware/ransomware
natural disaster
```

### Recovery Goals

```text
restore lost or damaged data
undo incomplete transactions
redo committed transactions
reduce downtime
return database to a consistent state
```

---

## 17. Backup

A backup is a copy of data used for recovery.

### Good Backup Practice

```text
regular backups
offsite or cloud backups
offline/protected backups
encrypted backups
multiple versions
tested restore process
documented backup schedule
```

### Why Backups Matter

Backups help recover from:

```text
hardware failure
accidental deletion
ransomware
data corruption
failed update
disaster
```

### Key Point

A backup is only useful if it can be restored successfully.

---

## 18. Restore

Restore means using a backup to recover data.

### Example

If a database is corrupted at 2 pm, the organization may restore:

```text
last full backup
plus transaction logs
```

to recover as much recent data as possible.

### Restore Questions

```text
How recent is the backup?
How much data may be lost?
How long will restore take?
Was the backup tested?
Is the backup secure?
```

---

## 19. Backup Types Preview

| Backup Type | Meaning | Strength | Limitation |
|---|---|---|---|
| Full backup | copies all selected data | simple restore | uses more time/storage |
| Incremental backup | copies changes since last backup | fast/small backup | restore may need many backup files |
| Differential backup | copies changes since last full backup | easier restore than incremental | grows larger over time |
| Offsite backup | stored in another location | protects against local disaster | transfer/security planning needed |
| Offline backup | not constantly connected | safer from ransomware | less convenient |

---

## 20. Recovery Using Logs

After a crash, a DBMS can use transaction logs.

### If Transaction Was Not Committed

```text
undo / rollback
```

### If Transaction Was Committed

```text
redo if needed
```

### Simple Recovery Pattern

```text
check log
rollback incomplete transactions
redo committed transactions if necessary
return database to consistent state
```

---

## 21. Checkpoints

A checkpoint is a saved safe point used to support recovery.

### Why Checkpoints Help

Without checkpoints, the DBMS may need to scan a very long transaction log.

With checkpoints:

```text
recovery can start from a more recent safe point
less log needs to be checked
recovery may be faster
```

### Simple Memory

```text
checkpoint = recovery reference point
```

---

## 22. Worked Example: Bank Transfer

### Transaction Steps

```text
BEGIN TRANSACTION
check Account A balance
subtract $100 from Account A
add $100 to Account B
record transfer
COMMIT
```

### If Step Fails

```text
ROLLBACK
```

### Why

The bank must not allow money to disappear from one account without appearing in the other.

---

## 23. Worked Example: Flight Seat Booking

### Transaction Steps

```text
check seat is available
lock seat
create booking
process payment
mark seat as sold
COMMIT
```

### If Payment Fails

```text
ROLLBACK
release seat
```

### Why

This prevents:

```text
double booking
payment without booking
seat sold without payment
```

---

## 24. Worked Example: Library Loan

### Transaction Steps

```text
create Loan record
set Book status to unavailable
update Member loan count
COMMIT
```

### If One Step Fails

```text
ROLLBACK
```

### Why

The system should not show a loan record while the book is still marked as available.

---

## 25. Worked Example: Online Game Purchase

### Transaction Steps

```text
check player currency
subtract currency
add item to inventory
record purchase history
COMMIT
```

### If Item Add Fails

```text
ROLLBACK
```

The player should not lose currency without receiving the item.

---

## 26. Worked Example: School Grade Update

### Transaction Steps

```text
update grade
record teacher ID
record timestamp
create audit log entry
COMMIT
```

### If Audit Log Fails

```text
ROLLBACK
```

Grade changes should be traceable and reliable.

---

## 27. Recovery After Power Failure

### Scenario

Power fails while processing an online order.

### Recovery

When the system restarts, the DBMS checks the transaction log.

```text
committed transaction → redo if needed
uncommitted transaction → rollback
```

### Result

The database should not keep a half-created order.

---

## 28. Recovery After Accidental Deletion

### Scenario

A staff member accidentally deletes records.

### Recovery Options

```text
restore from backup
use transaction log to recover to point before deletion
use audit log to identify what changed
limit future delete permissions
```

### Prevention

```text
least privilege
confirmation prompts
regular backups
training
testing dangerous updates before running them
```

---

## 29. Recovery After Ransomware

### Scenario

Ransomware encrypts database files.

### Recovery Needs

```text
disconnect infected systems
remove malware
restore from clean protected backups
check data integrity
reset compromised credentials
review security controls
```

### Important

Backups must be protected.  
If backups are always connected and writable, ransomware may encrypt the backups too.

---

## 30. Transactions, Integrity and Security

Transactions and recovery help database integrity and security.

### Integrity Links

```text
rollback prevents partial updates
logs support recovery
constraints stop invalid commits
locking avoids conflicting updates
```

### Security Links

```text
audit logs show who changed data
backups recover from ransomware
permissions limit dangerous changes
transaction logs help investigate incidents
```

### Important

Transactions are not enough by themselves.  
Databases still need authentication, authorization, encryption, monitoring, and updates.

---

## 31. Scenario Answer Bank

### If Asked: “What is a transaction?”

```text
A transaction is a group of database operations treated as one unit. It should either be fully completed and committed, or rolled back so that no partial update remains.
```

### If Asked: “Why rollback?”

```text
Rollback is used when a transaction fails or cannot safely complete. It undoes changes made during the transaction and returns the database to a previous consistent state.
```

### If Asked: “Why backup?”

```text
Backups are used to restore data after data loss, corruption, accidental deletion, hardware failure, or ransomware. They should be regular, protected, and tested.
```

### If Asked: “How does recovery use logs?”

```text
After a crash, the DBMS uses transaction logs to identify committed and incomplete transactions. Committed transactions may be redone, while incomplete transactions are rolled back.
```

---

## 32. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Transaction means one SQL command only | It can contain several operations | It is treated as one unit |
| Commit cancels changes | Commit saves changes | Rollback cancels changes |
| Rollback is used after success | Rollback is used after failure/cancel | Commit after success |
| Backups and transactions are the same | Backup is a copy; transaction controls updates | Different purposes |
| Backups do not need testing | Untested backups may fail | Test restore process |
| Recovery only means backup restore | Logs and rollback may also help | Multiple recovery methods |
| Transactions are only for banks | Many systems use them | Orders, seats, grades, games |
| Locking always improves speed | It may cause waiting | It improves consistency |
| Recovery removes need for security | Recovery helps after failure | Security reduces risk |
| Transaction logs are just privacy logs | They record changes for recovery | Audit logs and transaction logs can overlap but are not identical |

---

## 33. Guided Practice

### Practice 1: Commit or Rollback?

A transfer completes every required step successfully. Should the database commit or rollback?

<details>
<summary>Suggested Answer</summary>

Commit, because all required operations succeeded.

</details>

---

### Practice 2: Failed Payment

An order is created, but payment fails. Why might rollback be needed?

<details>
<summary>Suggested Answer</summary>

Rollback may undo the incomplete order so the database does not store an unpaid or invalid order.

</details>

---

### Practice 3: Atomicity

What does atomicity mean?

<details>
<summary>Suggested Answer</summary>

Atomicity means all operations in a transaction are completed, or none are applied. It is an all-or-nothing rule.

</details>

---

### Practice 4: Transaction Log

Why is a transaction log useful after a crash?

<details>
<summary>Suggested Answer</summary>

It can help the DBMS undo incomplete transactions and redo committed transactions, returning the database to a consistent state.

</details>

---

### Practice 5: Backup

Why should backups be tested?

<details>
<summary>Suggested Answer</summary>

Because a backup is only useful if it can be restored successfully.

</details>

---

## 34. Independent Practice

### Question 1

Define transaction.

### Question 2

Explain why transactions are needed.

### Question 3

Explain commit and rollback.

### Question 4

Explain atomicity using a bank transfer example.

### Question 5

Explain how transactions can prevent double booking.

### Question 6

Explain why database recovery is needed.

### Question 7

Explain the role of backups.

### Question 8

Explain how transaction logs help recovery.

### Question 9

A school database crashes during a grade update. Explain how transactions and recovery can protect data.

### Question 10

Explain one benefit and one limitation of locking.

---

## 35. Exam-style Questions

### Question 1 [4 marks]

Define database transaction and explain why it is used.

<details>
<summary>Mark Scheme Style Answer</summary>

A database transaction is a group of database operations treated as a single unit. It is used so that either all operations are completed and saved, or none are applied. This prevents partial updates and helps maintain database consistency and integrity.

</details>

---

### Question 2 [5 marks]

Explain the difference between commit and rollback.

<details>
<summary>Mark Scheme Style Answer</summary>

Commit permanently saves the changes made by a successful transaction. Rollback undoes changes made by a transaction that fails or is cancelled, returning the database to a previous consistent state. Commit is used after success, while rollback is used when the transaction cannot safely complete.

</details>

---

### Question 3 [6 marks]

A bank transfer subtracts money from one account and adds it to another account. Explain why this should be handled as a transaction.

<details>
<summary>Mark Scheme Style Answer</summary>

The subtraction and addition must both happen together. If money is subtracted from the first account but the system fails before adding it to the second account, the database becomes inconsistent and money appears to be lost. Treating the operations as a transaction means all steps are committed only if they succeed. If any step fails, the transaction is rolled back so no partial transfer remains.

</details>

---

### Question 4 [6 marks]

Explain how transaction logs can help database recovery after a system crash.

<details>
<summary>Mark Scheme Style Answer</summary>

A transaction log records changes made by transactions, including whether they were committed. After a crash, the DBMS can use the log to identify incomplete transactions and roll them back. It can also redo committed transactions if their changes were not fully written before the crash. This helps return the database to a consistent state.

</details>

---

### Question 5 [6 marks]

A school database is accidentally damaged. Explain three recovery methods or preparations that could help restore the data.

<details>
<summary>Mark Scheme Style Answer</summary>

Regular backups can be used to restore the database to a previous saved version. Transaction logs can help recover more recent committed changes and undo incomplete transactions. Tested restore procedures are important so staff know that backups can be recovered successfully. Offsite or protected backups can help if the main system is damaged by ransomware, hardware failure, or disaster.

</details>

---

## 36. Classroom Activity

### Activity 1: Transaction Role-play

Students act as:

```text
Account A
Account B
Database
Transaction log
Power failure
DBMS recovery
```

They simulate a successful commit and a failed transfer that needs rollback.

---

### Activity 2: Commit or Rollback Sort

Students classify scenarios:

```text
payment succeeds and order created
stock update fails after payment
seat booking cancelled by user
grade update saved and audit log saved
server crash before commit
```

They decide whether the database should commit or rollback.

---

### Activity 3: Recovery Plan Design

Groups design a recovery plan for:

```text
school database
hospital database
online shop database
game account database
library database
```

They include backup frequency, backup location, who can restore, how restore is tested, and how logs are used.

---

## 37. Homework

### Homework Part A: Concept Explanation

In 6-8 sentences, explain what a transaction is and why commit and rollback are needed.

### Homework Part B: Scenario

Choose one scenario:

```text
bank transfer
online shop order
flight seat booking
library loan
game item purchase
```

Write the transaction steps and explain what should happen if one step fails.

### Homework Part C: Recovery

Explain how backups and transaction logs help recover a database after failure.

### Homework Part D: Misconception Correction

Correct these statements:

```text
A transaction always means only one database operation.
Commit cancels a transaction.
Rollback saves changes permanently.
Backups are unnecessary if transactions are used.
A backup does not need to be tested.
```

---

## 38. One-page Revision Summary

| Point | Summary |
|---|---|
| Transaction | Group of database operations treated as one unit |
| Commit | Saves successful transaction changes |
| Rollback | Undoes failed/incomplete transaction changes |
| Atomicity | All-or-nothing |
| Consistency | Database remains valid |
| Isolation | Transactions do not interfere incorrectly |
| Durability | Committed changes survive failure |
| Transaction log | Records changes for recovery |
| Backup | Copy of data for recovery |
| Restore | Recovering data from backup |
| Checkpoint | Recovery reference point |
| Locking | Prevents conflicting simultaneous changes |
| Deadlock | Transactions wait for each other |
| Recovery | Restores database after failure |
| Exam phrase | Transactions protect database integrity by ensuring related operations are committed together or rolled back if failure occurs |

---

## 39. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a database transaction?
2. What does commit mean?
3. What does rollback mean?
4. What is atomicity?
5. Why is a bank transfer a good transaction example?
6. What is a transaction log?
7. Why are backups needed?
8. What does restore mean?
9. How can recovery handle incomplete transactions?
10. Why can locking be useful?
