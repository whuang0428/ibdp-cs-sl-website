# Database Security and Privacy

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why database security is important
- explain why database privacy is important
- distinguish security and privacy
- identify common threats to database systems
- describe access control and user permissions
- explain authentication and authorization
- describe the purpose of encryption
- explain the role of backups in protecting data
- describe audit logs and monitoring at a basic level
- explain ethical and legal responsibilities when storing personal data
- answer exam-style questions about database security, privacy, and protection methods

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Protecting database data from unauthorized access, loss, misuse, and privacy harm |
| Connected topics | DBMS, transactions, backup, recovery, data integrity, networks, cybersecurity |
| Practical focus | Explaining risks and suitable protection methods in realistic scenarios |
| Exam relevance | Written explanation, scenario analysis, security controls, privacy issues |

::: tip Learning Focus
Security protects data from unauthorized access, damage, or loss. Privacy focuses on how personal data is collected, used, shared, and protected.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Database security | 数据库安全 | Protecting data from unauthorized access, damage, theft, or loss |
| Privacy | 隐私 | Controlling how personal data is collected, used, stored, and shared |
| Personal data | 个人数据 | Data that can identify a person directly or indirectly |
| Sensitive data | 敏感数据 | Data that can cause harm if exposed, such as health or financial data |
| Authentication | 身份验证 | Checking that a user is who they claim to be |
| Authorization | 授权 | Deciding what an authenticated user is allowed to access or do |
| Access control | 访问控制 | Limiting access to data and operations |
| Permission | 权限 | A rule that allows or denies an action |
| Encryption | 加密 | Converting data into unreadable form without a key |
| Backup | 备份 | Copy of data used for recovery after loss or damage |
| Audit log | 审计日志 | Record of user actions and system events |
| Data breach | 数据泄露 | Unauthorized access or exposure of data |
| Data minimization | 数据最小化 | Collecting only the data that is needed |
| Anonymization | 匿名化 | Removing identifying details from data |
| Integrity | 完整性 | Data remains accurate and unaltered without permission |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

数据库通常保存大量重要数据，例如：

```text
学生成绩
医疗记录
银行账户
订单信息
用户密码
住址和联系方式
```

如果这些数据被未授权访问、修改、删除或泄露，就会造成严重问题。

**Database security（数据库安全）** 关注的是：

```text
防止数据被偷走
防止数据被非法修改
防止数据丢失
防止没有权限的人访问数据
```

常见安全措施包括：

```text
authentication
authorization
access control
encryption
backup
audit logs
firewalls
secure passwords
```

**Privacy（隐私）** 更关注个人数据如何被使用。  
即使数据没有被黑客偷走，如果机构收集了太多数据，或者没有告知用户就分享数据，也会造成 privacy 问题。

简单区分：

```text
security = protect data from attack or unauthorized access
privacy = use personal data fairly, legally, and responsibly
```

</template>

<template #en>

### English Explanation

Databases often store large amounts of important data, such as:

```text
student grades
medical records
bank accounts
order information
user passwords
addresses and contact details
```

If this data is accessed, changed, deleted, or exposed without authorization, serious problems can happen.

**Database security** focuses on:

```text
preventing data theft
preventing unauthorized changes
preventing data loss
preventing access by people without permission
```

Common security measures include:

```text
authentication
authorization
access control
encryption
backup
audit logs
firewalls
secure passwords
```

**Privacy** focuses more on how personal data is used.  
Even if hackers do not steal the data, privacy problems can still happen if an organization collects too much data or shares it without informing users.

Simple distinction:

```text
security = protect data from attack or unauthorized access
privacy = use personal data fairly, legally, and responsibly
```

</template>
</LangBlock>

---

## 5. Security vs Privacy

| Area | Main Question | Example |
|---|---|---|
| Security | Is the data protected from unauthorized access or damage? | Preventing hackers from accessing student records |
| Privacy | Is personal data collected, used, and shared responsibly? | Not sharing student medical information without permission |

### Example

A school database is hacked and student grades are stolen.

This is mainly a:

```text
security problem
```

A school collects students' personal information and shares it with advertisers without consent.

This is mainly a:

```text
privacy problem
```

Sometimes, the same event can involve both.  
A data breach exposes personal data, so it is both a security failure and a privacy harm.

---

## 6. Why Database Security Matters

Database security is important because data may be:

```text
confidential
valuable
legally protected
needed for daily operations
used to make decisions
```

If a database is not secure, possible consequences include:

| Consequence | Example |
|---|---|
| Identity theft | Personal details stolen |
| Financial loss | Bank or payment data misused |
| Reputation damage | Users lose trust |
| Legal penalties | Organization breaks data protection laws |
| Incorrect decisions | Data is changed without permission |
| Service disruption | Data is deleted or locked |
| Safety risk | Medical data or emergency data becomes unavailable |

---

## 7. Common Database Threats

| Threat | Explanation |
|---|---|
| Unauthorized access | Someone accesses data without permission |
| Weak passwords | Easy passwords allow attackers to log in |
| Phishing | Users are tricked into revealing login details |
| SQL injection | Malicious input changes or runs SQL commands |
| Malware | Software damages or steals database data |
| Insider misuse | Authorized user misuses access |
| Data breach | Data is exposed or stolen |
| Ransomware | Data is encrypted by attackers for payment |
| Accidental deletion | User mistakenly deletes records |
| Hardware failure | Storage device fails |
| Poor backup practice | Data cannot be restored after loss |

---

## 8. Authentication

**Authentication** checks that a user is who they claim to be.

Examples:

```text
username and password
multi-factor authentication
biometric login
security token
single sign-on
```

### Example

A teacher enters:

```text
username: smith
password: ********
```

The system checks whether these credentials are valid.

### Important

Authentication answers:

```text
Who are you?
```

It does not by itself decide what the user can access.  
That is authorization.

---

## 9. Authorization

**Authorization** decides what an authenticated user is allowed to do.

Examples:

| User Role | Possible Permissions |
|---|---|
| Student | view own marks |
| Teacher | view and edit marks for own classes |
| Head of Department | view department data |
| Database administrator | manage users, backups, and system settings |

Authorization answers:

```text
What are you allowed to do?
```

### Example

A student may log in successfully, but should not be allowed to edit their own grade.

---

## 10. Access Control

Access control limits who can access data and what actions they can perform.

Common permissions:

```text
read
insert
update
delete
admin
```

### Example Permission Table

| Role | Read Grades | Edit Grades | Delete Records | Manage Users |
|---|---|---|---|---|
| Student | own only | no | no | no |
| Teacher | own classes | own classes | no | no |
| Administrator | all | all | limited | yes |

### Principle of Least Privilege

Users should only have the minimum permissions needed to do their job.

This reduces damage if an account is misused.

::: tip Exam Phrase
Access control improves security by restricting users to only the data and actions they are authorized to access.
:::

---

## 11. Encryption

**Encryption** converts readable data into unreadable form using a key.

### Plain Data

```text
Alice scored 85
```

### Encrypted Data

```text
X7aQ9pLm3...
```

Without the correct key, the encrypted data should be difficult to read.

### Where Encryption Helps

| Situation | Purpose |
|---|---|
| Data in transit | Protect data sent over a network |
| Data at rest | Protect stored database files |
| Backup files | Protect copies of data |
| Password storage | Passwords should not be stored as plain text |

::: warning Password Note
In real systems, passwords should usually be hashed and salted, not simply encrypted as readable values.
:::

---

## 12. Backup and Recovery for Security

Backups help protect against data loss.

They are useful after:

```text
hardware failure
accidental deletion
ransomware attack
database corruption
natural disaster
```

### Good Backup Practice

A good backup plan may include:

```text
regular backups
off-site or cloud backups
encrypted backups
tested restore process
multiple backup versions
limited access to backup files
```

### Important

A backup is only useful if it can actually be restored.

Organizations should test recovery, not just create backup files.

---

## 13. Audit Logs and Monitoring

An **audit log** records important actions in a system.

It may record:

```text
who logged in
when they logged in
what records were viewed
what records were changed
failed login attempts
permission changes
deleted records
```

### Why Audit Logs Help

| Benefit | Explanation |
|---|---|
| Detect misuse | Suspicious access can be noticed |
| Investigate incidents | Logs show what happened |
| Accountability | Users know actions can be traced |
| Compliance | Some laws or policies require records |
| Recovery support | Logs may help identify damaged records |

### Example

If a student's grade changes unexpectedly, an audit log can show:

```text
which user changed it
when it was changed
what value was changed
```

---

## 14. Data Privacy

Privacy focuses on responsible handling of personal data.

Personal data includes:

```text
name
student ID
email address
phone number
home address
date of birth
medical information
financial information
location data
```

Organizations should consider:

```text
why the data is collected
whether users know it is collected
how long it is kept
who can access it
whether it is shared
how it is protected
whether it can be deleted
```

---

## 15. Data Minimization

**Data minimization** means collecting only the data that is necessary.

### Example

A school lunch ordering system may need:

```text
studentId
meal choice
payment status
allergy information
```

It probably does not need:

```text
passport number
full home address
parent income
unrelated medical history
```

### Why It Matters

Less data collected means:

```text
less data to protect
less harm if a breach occurs
less privacy risk
```

---

## 16. Anonymization and Pseudonymization

### Anonymization

Anonymization removes identifying information so individuals cannot reasonably be identified.

Example:

```text
Student names removed from a survey dataset.
```

### Pseudonymization

Pseudonymization replaces direct identifiers with codes.

Example:

| studentCode | averageMark |
|---|---:|
| X001 | 85 |
| X002 | 72 |

The person may still be re-identified if the code mapping is available.

### Difference

| Method | Can identity be recovered? |
|---|---|
| Anonymization | Should not be reasonably recoverable |
| Pseudonymization | Can be recovered if mapping exists |

---

## 17. SQL Injection Preview

SQL injection is an attack where malicious input changes the meaning of an SQL query.

### Unsafe Idea

A login system builds SQL like this:

```text
SELECT *
FROM User
WHERE username = 'inputName' AND password = 'inputPassword';
```

If user input is not handled safely, an attacker may enter text that changes the query.

### Protection Ideas

```text
parameterized queries
input validation
least privilege database accounts
not showing detailed error messages
```

::: warning Level Control
Students only need a basic understanding here unless cybersecurity is taught in deeper detail.
:::

---

## 18. Database Security Controls Summary

| Control | What It Protects Against |
|---|---|
| Strong passwords | unauthorized login |
| Multi-factor authentication | stolen password risk |
| Role-based access control | excessive permissions |
| Encryption | data exposure |
| Backups | data loss |
| Audit logs | misuse and investigation |
| Input validation | malicious or invalid input |
| Parameterized queries | SQL injection |
| Firewalls | unauthorized network access |
| Software updates | known vulnerabilities |
| Staff training | phishing and human error |

---

## 19. Worked Example: School Database

A school database stores:

```text
student profiles
grades
attendance
medical notes
parent contact details
```

### Possible Risks

| Risk | Example |
|---|---|
| Unauthorized access | Student views another student's grades |
| Excessive permissions | All teachers can edit all grades |
| Privacy harm | Medical notes shared too widely |
| Data loss | Server failure deletes attendance records |
| Data breach | Parent contact details stolen |
| Inaccurate data | Unauthorized grade change |

### Suitable Protection

| Protection | Why Useful |
|---|---|
| Authentication | Only valid users can log in |
| Role-based access | Students, teachers, admins have different permissions |
| Encryption | Protects sensitive data |
| Audit logs | Tracks grade changes |
| Backups | Restores data after failure |
| Data minimization | Avoids collecting unnecessary personal data |

---

## 20. Worked Example: Online Shop Database

An online shop stores:

```text
customer accounts
orders
payment status
delivery addresses
product stock
```

### Security and Privacy Needs

| Need | Explanation |
|---|---|
| Protect customer accounts | Prevent account takeover |
| Protect payment data | Financial data is sensitive |
| Secure order history | Reveals buying behaviour |
| Control staff access | Staff should only see needed information |
| Backup orders | Orders must not be lost |
| Audit changes | Track refunds and stock changes |

### Possible Controls

```text
MFA for staff accounts
encrypted connections
role-based permissions
transaction logs
regular backups
monitoring unusual access
```

---

## 21. Privacy Principles

Common privacy principles include:

| Principle | Explanation |
|---|---|
| Lawful and fair use | Data should be collected and used properly |
| Transparency | Users should know what data is collected and why |
| Purpose limitation | Data should be used for stated purposes |
| Data minimization | Only collect what is needed |
| Accuracy | Keep data correct and updated |
| Storage limitation | Do not keep data longer than needed |
| Security | Protect data from unauthorized access |
| Accountability | Organization should be able to show responsible handling |

::: info Exam Use
You do not need to name a specific country's law unless the question asks. Focus on general responsible data handling.
:::

---

## 22. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Thinking security and privacy are the same | They overlap but are different | Security protects; privacy governs use |
| Giving all users admin access | Too much risk | Use least privilege |
| Storing passwords as plain text | Passwords can be exposed | Use secure hashing practices |
| Making backups but never testing restore | Backup may fail when needed | Test recovery |
| Encrypting data but sharing key carelessly | Encryption becomes useless | Protect keys |
| Collecting all possible data | Increases privacy risk | Collect only needed data |
| Ignoring insider misuse | Threats can come from inside | Use logs and permissions |
| Believing audit logs prevent all attacks | Logs help detection and investigation | Combine controls |
| Using weak passwords only | Easy to guess or steal | Use strong passwords and MFA |
| Keeping data forever | Increases privacy and breach risk | Use retention rules |

---

## 23. Guided Practice

### Practice 1: Security or Privacy?

A hacker steals customer addresses from a shop database. Security or privacy issue?

<details>
<summary>Suggested Answer</summary>

Both. It is a security issue because unauthorized access occurred. It is also a privacy issue because personal data was exposed.

</details>

---

### Practice 2: Authentication or Authorization?

A user enters username and password. Is this authentication or authorization?

<details>
<summary>Suggested Answer</summary>

Authentication. The system is checking who the user is.

</details>

---

### Practice 3: Permission Decision

Should a student be allowed to edit their own grade in a school database?

<details>
<summary>Suggested Answer</summary>

No. A student may be allowed to view their own grade, but editing grades should be restricted to authorized staff.

</details>

---

### Practice 4: Data Minimization

A school library app asks for passport number. Is this likely necessary?

<details>
<summary>Suggested Answer</summary>

Probably not. A library app usually does not need passport numbers. Collecting unnecessary data increases privacy risk.

</details>

---

### Practice 5: Backup

Why should backups be encrypted?

<details>
<summary>Suggested Answer</summary>

Backups may contain the same sensitive data as the main database. Encryption protects the data if the backup file is stolen or accessed without permission.

</details>

---

## 24. Independent Practice

### Question 1

Define database security.

### Question 2

Define privacy in the context of databases.

### Question 3

Explain the difference between authentication and authorization.

### Question 4

Give three possible threats to a school database.

### Question 5

Suggest three security controls for protecting a hospital database.

### Question 6

Explain the principle of least privilege using a database example.

### Question 7

Explain why audit logs are useful.

### Question 8

Explain why collecting too much personal data can be risky.

### Question 9

Explain how encryption can protect data in transit and data at rest.

### Question 10

Explain why backup and recovery are part of database protection.

---

## 25. Exam-style Questions

### Question 1 [4 marks]

Distinguish between database security and privacy.

<details>
<summary>Mark Scheme Style Answer</summary>

Database security is about protecting data from unauthorized access, damage, theft, or loss. Privacy is about how personal data is collected, used, stored, and shared responsibly. Security focuses on protection, while privacy focuses on responsible and fair use of personal data.

</details>

---

### Question 2 [4 marks]

Explain the difference between authentication and authorization.

<details>
<summary>Mark Scheme Style Answer</summary>

Authentication checks that a user is who they claim to be, such as by using a username and password. Authorization decides what that authenticated user is allowed to access or do, such as whether they can view or edit certain records.

</details>

---

### Question 3 [6 marks]

A school stores student grades and medical notes in a database. Explain two security measures that should be used.

<details>
<summary>Mark Scheme Style Answer</summary>

The school should use role-based access control so that only authorized staff can view or edit sensitive records. This prevents students or unrelated staff from accessing data they do not need. The school should also use encryption to protect sensitive data if it is intercepted or if storage is compromised. Other valid measures include strong authentication, audit logs, backups, and regular monitoring.

</details>

---

### Question 4 [6 marks]

Explain why data minimization is important for privacy.

<details>
<summary>Mark Scheme Style Answer</summary>

Data minimization means collecting only the data that is needed for a specific purpose. It is important because unnecessary personal data increases privacy risk. If a data breach occurs, more information may be exposed. Collecting less data also makes it easier to manage, protect, and justify the data being stored.

</details>

---

### Question 5 [6 marks]

An online shop database has been accessed by an employee who viewed customer records without a business reason. Explain how this could be detected and reduced in the future.

<details>
<summary>Mark Scheme Style Answer</summary>

This misuse could be detected using audit logs that record which user accessed which records and when. Monitoring can identify unusual access patterns. To reduce this risk, the shop should use role-based access control and the principle of least privilege so employees can only access the data needed for their job. Staff training and disciplinary policies can also reduce insider misuse.

</details>

---

## 26. Classroom Activity

### Activity 1: Role Permission Design

Students design permissions for:

```text
Student
Teacher
Head of Department
Database Administrator
Parent
```

They decide who can:

```text
view grades
edit grades
view medical notes
delete records
manage users
```

---

### Activity 2: Security Control Matching

Match each risk to a protection:

```text
weak password
lost database server
unauthorized grade change
data sent over public Wi-Fi
student viewing another student's record
```

Protections:

```text
MFA
backup
audit log
encryption
access control
```

---

### Activity 3: Privacy Debate

Prompt:

```text
Should a school learning app collect students' location data?
```

Students discuss:

```text
purpose
necessity
risk
consent
data minimization
```

---

## 27. Homework

### Homework Part A: Concept Explanation

In 5-6 sentences, explain the difference between database security and privacy using a school database example.

---

### Homework Part B: Scenario Analysis

A hospital database stores patient records.

Answer:

1. What personal or sensitive data may be stored?
2. What could go wrong if unauthorized users access it?
3. Suggest three security controls.
4. Explain one privacy principle that should be followed.

---

### Homework Part C: Permission Table

Create a permission table for a school database with these roles:

```text
Student
Teacher
Administrator
Parent
```

Include permissions for:

```text
view own grades
view all grades
edit grades
view medical notes
delete records
```

---

### Homework Part D: Written Answer

Explain why backups, encryption, and audit logs are all useful but solve different problems.

---

## 28. One-page Revision Summary

| Point | Summary |
|---|---|
| Database security | Protects data from unauthorized access, damage, theft, or loss |
| Privacy | Responsible use of personal data |
| Authentication | Checks user identity |
| Authorization | Checks what user can do |
| Access control | Limits data/actions by role or permission |
| Least privilege | Give only necessary permissions |
| Encryption | Makes data unreadable without a key |
| Backup | Copy used for recovery |
| Audit log | Records actions and events |
| Data breach | Unauthorized data exposure |
| Data minimization | Collect only needed data |
| Anonymization | Remove identifying information |
| SQL injection | Attack using malicious SQL input |
| Exam phrase | Database security protects data, while privacy ensures personal data is collected and used responsibly |

---

## 29. Quick Self-test

Before moving on, students should be able to answer these:

1. What is database security?
2. What is privacy?
3. What is personal data?
4. What is authentication?
5. What is authorization?
6. What is access control?
7. What is the principle of least privilege?
8. Why is encryption useful?
9. Why are audit logs useful?
10. Why can collecting unnecessary data be a privacy risk?
