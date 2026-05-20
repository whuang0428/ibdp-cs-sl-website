# Transactions and Recovery

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what a database transaction is
- understand why transactions must be reliable
- describe the purpose of commit and rollback
- explain how backups and logs support recovery

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Maintaining database consistency |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Transaction | A sequence of database operations treated as one unit |
| Commit | Save the changes of a transaction permanently |
| Rollback | Undo changes if a transaction fails |
| Consistency | Keeping database data valid and reliable |
| Log file | A record of database operations used for recovery |
| Recovery | Restoring the database after failure |

## 4. Concept Explanation

A transaction is a group of database operations that should be completed as one unit.

Example:

When money is transferred from one bank account to another:

1. subtract money from account A
2. add money to account B

Both steps must happen. If only one step happens, the database becomes inconsistent.

## 5. Step-by-step Example

Scenario: Booking a seat.

Transaction steps:

1. Check if the seat is available.
2. Mark the seat as booked.
3. Store payment confirmation.
4. Commit the transaction.

If payment fails, the system should rollback the booking.

## 6. Visual Structure

::: info Transaction Process
Start transaction → perform database operations → if all operations succeed, commit → if an operation fails, rollback → database remains consistent.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Treating each operation separately | Partial updates may corrupt data |
| Forgetting rollback | Failed transactions may leave wrong data |
| Ignoring logs | Recovery becomes difficult |
| Thinking backup and log are the same | Backups copy data; logs record operations |

## 8. Exam-style Question

A customer pays for an online order. The database must update the payment record and the stock quantity.

**Explain why this should be treated as a transaction.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the payment update and stock update are related operations
- both operations should be completed together
- if one operation fails, the transaction can be rolled back
- this prevents inconsistent data such as payment recorded but stock not updated

## 10. Quick Check

1. What is a transaction?
2. What does commit mean?
3. What does rollback mean?
