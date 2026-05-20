# Database Security and Privacy

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why database security is important
- identify methods used to protect database data
- distinguish between security and privacy
- apply security ideas to real-world database scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Protecting stored data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Security | Protecting data from unauthorized access, damage, or loss |
| Privacy | Controlling how personal data is collected, used, and shared |
| Authentication | Checking a user's identity |
| Authorization | Controlling what an authenticated user is allowed to do |
| Encryption | Encoding data so it cannot be read without a key |
| Backup | A copy of data used for recovery |

## 4. Concept Explanation

Databases often store sensitive data.

Common protection methods include:

| Method | Purpose |
|---|---|
| Authentication | Stop unknown users from logging in |
| Access rights | Limit what users can view or change |
| Encryption | Protect data if it is intercepted or stolen |
| Backups | Recover data after loss or damage |
| Audit logs | Record who accessed or changed data |

## 5. Step-by-step Example

A hospital database should not allow every employee to view every patient record.

| User Type | Access |
|---|---|
| Doctor | View and update assigned patient records |
| Receptionist | View appointment information |
| Database administrator | Manage database structure and permissions |

## 6. Visual Structure

::: info Security Layers
Authenticate user → check access rights → allow only permitted actions → record activity in logs → back up data regularly.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Giving all users full access | Sensitive data may be exposed |
| Ignoring backups | Data may be lost permanently |
| Thinking passwords alone are enough | Other protections are also needed |
| Confusing privacy with security | Privacy is about proper use of personal data |

## 8. Exam-style Question

A school database stores student grades and personal details.

**Explain two methods that can be used to protect this data.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- authentication can ensure only valid users log in
- authorization/access rights can limit users to appropriate data
- encryption can protect data if accessed without permission
- backups can allow recovery if data is lost or damaged
- audit logs can help identify suspicious access

## 10. Quick Check

1. What is authentication?
2. What is authorization?
3. Why are backups important?
