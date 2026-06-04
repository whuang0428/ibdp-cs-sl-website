# Database Security and Privacy

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why databases need security and privacy protection
- distinguish database security and database privacy
- identify common threats to databases
- explain unauthorized access, data breach, SQL injection, insider misuse, malware, accidental deletion, and data loss
- explain common database security controls
- distinguish authentication, authorization, and access control
- explain the importance of user roles and permissions
- explain how encryption can protect database data
- explain the role of backups and recovery
- explain privacy principles such as data minimization, consent, purpose limitation, and retention
- apply database security and privacy ideas to school, hospital, shop, cloud, and website examples
- avoid common misconceptions about database security and privacy
- answer exam-style questions about database security and privacy

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Protecting stored data and controlling how it is accessed, used, shared, and retained |
| Connected topics | Database fundamentals, keys, relationships, SQL, network security, encryption, transactions and recovery |
| Practical focus | Choosing suitable protection methods for sensitive database scenarios |
| Exam relevance | Threats, controls, privacy principles, access control, backup/recovery, scenario justification |

::: tip Learning Focus
Database security protects data from unauthorized access, damage, loss, and misuse. Database privacy focuses on how personal data is collected, used, shared, and kept.
:::

---

## Start here: security vs privacy

Start this page by separating two ideas.

**Database security** focuses on protecting the database from unauthorized access, damage, loss, or attack.

**Data privacy** focuses on how personal data is collected, used, shared, and protected fairly.

Security is often about protection methods. Privacy is often about responsibility, consent, access, and appropriate use of data.

| Idea | Main question | Example |
|---|---|---|
| Security | How do we stop unauthorized access or damage? | passwords, roles, encryption, backups |
| Privacy | How do we use personal data responsibly? | consent, data minimization, access rights |

::: tip Database context
For A3, keep your answer focused on tables, records, user roles, permissions, SQL injection, backups, and personal data stored in a database. A2 network security is related, but this page is mainly about protecting and using stored database data.
:::

---

## Core checklist

After studying this page, you should be able to:

- distinguish database security from data privacy
- explain why access control is needed in a database
- explain the purpose of user roles and permissions
- describe how SQL injection can affect a database
- choose suitable protection methods for a given database scenario
- explain privacy responsibilities when storing personal data

---

## Core exam focus

For most SL exam answers, focus on these core points first:

- **security risk:** unauthorized users may view, change, delete, or steal records
- **database control:** authentication, authorization, roles, permissions, least privilege, backups, encryption, audit logs, input validation, or parameterized queries
- **privacy responsibility:** collect only needed personal data, use it for the stated purpose, limit access, and avoid keeping it longer than needed
- **scenario justification:** link each control to the database in the question, such as student grades, patient records, customer orders, or account details

---

## Scenario answer pattern

Use this structure when a question gives you a database scenario:

1. Identify whether the issue is mainly security, privacy, or both.
2. Explain the risk in the given database scenario.
3. Choose a suitable control or policy.
4. Justify why it protects data or supports responsible data use.

Short example:

```text
A hospital database stores patient records.
This is both a security and privacy issue because medical records are sensitive personal data.
Doctors need access for treatment, but reception staff should not see full medical notes.
Role-based access control and audit logs are suitable because they limit access by job role and record who viewed or changed patient records.
```

---

## Useful extra examples

The school, hospital, online shop, and cloud examples later in this page are useful for practice. You do not need to memorize every detail. Use them to practise choosing controls and explaining why they fit the database scenario.

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Database security | 数据库安全 | Protecting database data from unauthorized access, damage, loss, or misuse |
| Database privacy | 数据库隐私 | Protecting personal data and controlling how it is collected, used, shared, and stored |
| Personal data | 个人数据 | Data that can identify a person directly or indirectly |
| Sensitive data | 敏感数据 | Data that may cause harm if exposed, such as health or financial data |
| Threat | 威胁 | Possible danger to a database |
| Vulnerability | 漏洞 / 弱点 | Weakness that can be exploited |
| Data breach | 数据泄露 | Unauthorized access, disclosure, or loss of data |
| Unauthorized access | 未授权访问 | Access by someone without permission |
| Authentication | 身份验证 | Checking who the user is |
| Authorization | 授权 | Deciding what the user can access or do |
| Access control | 访问控制 | Managing permissions to data and functions |
| Role-based access control | 基于角色的访问控制 | Permissions based on user roles |
| Least privilege | 最小权限原则 | Users only get the access they need |
| Encryption | 加密 | Converts data into unreadable form without a key |
| Backup | 备份 | Copy of data used for recovery |
| Audit log | 审计日志 | Record of database activity |
| SQL injection | SQL 注入 | Attack that inserts malicious SQL through input |
| Input validation | 输入验证 | Checking input before accepting or processing it |
| Data minimization | 数据最小化 | Collect only data that is needed |
| Consent | 同意 | User permission for data collection or use |
| Retention | 保留期限 | How long data is kept |
| Anonymization | 匿名化 | Removing identifying details from data |
| Pseudonymization | 假名化 | Replacing identifying details with codes/pseudonyms |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

数据库经常保存非常重要的数据，例如：

```text
student grades
attendance records
medical records
customer orders
payment details
login accounts
personal addresses
messages
```

所以数据库不能只是“能存数据”就可以。  
它还必须考虑：

```text
who can access the data
what each user is allowed to do
how data is protected
how data can be recovered
whether personal data is collected fairly
whether unnecessary data is stored
how long data should be kept
```

**Database security** 主要关注保护数据不被攻击、破坏、丢失或非法访问。

例如：

```text
authentication
authorization
permissions
encryption
firewalls
input validation
backups
audit logs
software updates
```

**Database privacy** 主要关注 personal data 的使用是否合理。

例如：

```text
only collect necessary data
use data only for stated purpose
get consent where needed
do not keep data longer than necessary
limit who can see personal data
remove or anonymize data when possible
```

简单来说：

```text
security = protect data from threats
privacy = use personal data properly and responsibly
```

</template>

<template #en>

### English Explanation

Databases often store very important data, such as:

```text
student grades
attendance records
medical records
customer orders
payment details
login accounts
personal addresses
messages
```

So a database cannot only be “able to store data”.  
It must also consider:

```text
who can access the data
what each user is allowed to do
how data is protected
how data can be recovered
whether personal data is collected fairly
whether unnecessary data is stored
how long data should be kept
```

**Database security** focuses on protecting data from attack, damage, loss, or unauthorized access.

Examples include:

```text
authentication
authorization
permissions
encryption
firewalls
input validation
backups
audit logs
software updates
```

**Database privacy** focuses on whether personal data is used properly.

Examples include:

```text
only collect necessary data
use data only for stated purpose
get consent where needed
do not keep data longer than necessary
limit who can see personal data
remove or anonymize data when possible
```

In simple terms:

```text
security = protect data from threats
privacy = use personal data properly and responsibly
```

</template>
</LangBlock>

---

## 5. Security vs Privacy

Security and privacy are related, but not the same.

| Concept | Main Question | Example |
|---|---|---|
| Security | How do we protect data from threats? | use authentication and encryption |
| Privacy | How should personal data be collected and used? | collect only necessary data and get consent |

### Example

A school database may be secure if:

```text
only authorized teachers can log in
passwords are protected
database is backed up
access is logged
```

But privacy may still be poor if:

```text
the school collects unnecessary personal data
data is kept forever without reason
student data is shared with unrelated companies
users are not told how data is used
```

### Key Idea

Good systems need both security and privacy.

---

## 6. Why Databases Need Protection

Databases are valuable targets because they may contain large amounts of useful or sensitive data.

### Risks

```text
personal data may be stolen
records may be changed
data may be deleted
services may stop working
confidential business information may leak
legal rules may be broken
trust may be damaged
financial loss may occur
```

### Example: School Database

A school database may contain:

```text
student names
birth dates
addresses
grades
attendance
parent contacts
medical notes
discipline records
login accounts
```

If this data is leaked or changed, students and the school may be harmed.

---

## 7. Common Database Threats

| Threat | Meaning |
|---|---|
| Unauthorized access | someone accesses data without permission |
| Data breach | data is exposed, stolen, or disclosed |
| SQL injection | malicious SQL is inserted through input |
| Insider misuse | authorized user misuses access |
| Weak passwords | attackers guess or steal login credentials |
| Malware/ransomware | database or files are damaged or encrypted |
| Accidental deletion | user or admin deletes data by mistake |
| Hardware failure | storage device/server fails |
| Poor backup | data cannot be recovered |
| Misconfiguration | database is exposed due to wrong settings |
| Unpatched software | known vulnerability is exploited |
| Excessive permissions | users can access more than needed |

---

## 8. Unauthorized Access

Unauthorized access means someone accesses a database, table, record, or function without permission.

### Causes

```text
weak passwords
shared accounts
stolen credentials
poor permissions
unpatched vulnerabilities
default admin accounts
publicly exposed database
lost or stolen device
```

### Impacts

```text
data theft
data modification
privacy breach
identity fraud
incorrect decisions based on changed data
loss of trust
legal consequences
```

### Protection

```text
strong authentication
multi-factor authentication
role-based access control
least privilege
network restrictions
audit logs
account lockout
regular permission review
```

---

## 9. Data Breach

A data breach happens when data is accessed, disclosed, copied, or lost without authorization.

### Examples

```text
student records leaked online
customer database copied by attacker
employee downloads private records
cloud database accidentally made public
backup drive is lost
```

### Effects

```text
privacy harm
financial loss
reputation damage
legal penalties
phishing risk
identity theft
loss of user trust
```

### Protection

```text
access control
encryption
monitoring
secure configuration
staff training
data minimization
incident response plan
```

---

## 10. SQL Injection

SQL injection is an attack where malicious SQL is inserted into user input.

### Example Idea

A login form expects:

```text
username
password
```

An attacker enters input designed to change the SQL query.

### Why It Is Dangerous

SQL injection may allow attackers to:

```text
bypass login
read confidential data
change records
delete tables
create admin accounts
extract full database
```

### Protection

```text
input validation
parameterized queries
prepared statements
least privilege database accounts
do not show detailed error messages
web application firewall
regular security testing
```

::: tip Exam Phrase
SQL injection can occur when user input is included in an SQL query without proper validation or parameterization, allowing an attacker to run unintended SQL commands.
:::

---

## 11. Simple SQL Injection Example

### Unsafe Idea

```sql
SELECT *
FROM Users
WHERE Username = 'inputUsername'
AND Password = 'inputPassword';
```

If user input is inserted directly into the query, malicious input can change the meaning of the query.

### Safer Idea

Use parameterized queries / prepared statements:

```text
SQL structure is fixed
user input is treated as data
input cannot easily become SQL code
```

### Student-Level Understanding

You do not need to write secure backend code here.  
You should understand:

```text
do not directly trust user input
validate input
use parameterized queries
limit database permissions
```

---

## 12. Insider Misuse

An insider is someone who already has legitimate access.

Examples:

```text
staff member views records without reason
employee copies customer data
student uses teacher's logged-in computer
admin exports database for personal use
developer uses production data for testing without permission
```

### Protection

```text
least privilege
role-based permissions
audit logs
separation of duties
regular access reviews
clear policies
staff training
monitor unusual activity
```

### Key Idea

Not all threats come from outside attackers.

---

## 13. Accidental Data Loss

Not all database problems are caused by attackers.

Accidental problems include:

```text
wrong record deleted
incorrect update query
table dropped by mistake
server crash
failed migration
hardware failure
software bug
power failure
```

### Protection

```text
regular backups
transaction controls
confirmation prompts
access permissions
testing changes before production
audit logs
recovery procedures
```

### Example

A staff member accidentally deletes all attendance records for a term.  
A recent backup and transaction log may help restore the data.

---

## 14. Malware and Ransomware

Malware can affect database systems by:

```text
stealing credentials
encrypting database files
damaging server files
installing backdoors
logging keystrokes
disrupting services
```

### Ransomware

Ransomware may encrypt database files or backups and demand payment.

### Protection

```text
anti-malware
patching and updates
least privilege
network segmentation
email filtering
offline/protected backups
monitoring
user training
```

---

## 15. Database Misconfiguration

Misconfiguration means incorrect settings that expose data or weaken protection.

### Examples

```text
database server open to public internet
default admin password not changed
backup folder publicly accessible
test database contains real personal data
all users given admin rights
debug error messages reveal SQL structure
cloud storage set to public
```

### Protection

```text
secure configuration checklist
change default passwords
disable unused accounts/services
restrict network access
review cloud sharing settings
regular audits
least privilege
```

---

## 16. Authentication

Authentication checks user identity.

It answers:

```text
Who are you?
```

### Examples

```text
username and password
multi-factor authentication
smart card
biometric login
single sign-on
```

### Strong Authentication

Good authentication may include:

```text
strong passwords
password hashing
MFA for sensitive access
account lockout after failed attempts
secure password reset process
```

### Important

Authentication alone is not enough.  
After identifying the user, the system still needs authorization.

---

## 17. Authorization

Authorization decides what an authenticated user can access or do.

It answers:

```text
What are you allowed to do?
```

### Example

In a school database:

| User Role | Possible Access |
|---|---|
| Student | view own grades and attendance |
| Teacher | view grades for own classes |
| Head of Department | view department data |
| Admin | manage user accounts and system settings |
| Parent | view own child's records |

### Key Idea

Different users should have different permissions.

::: tip Exam Phrase
Authentication verifies identity, while authorization controls what data or actions the user is permitted to access.
:::

---

## 18. Access Control

Access control manages who can access data and what operations they can perform.

### Common Permissions

```text
read
insert
update
delete
export
administer
backup
restore
```

### Example

A receptionist in a hospital may be allowed to:

```text
create appointments
view contact details
update appointment times
```

but not allowed to:

```text
view full medical notes
delete audit logs
change database schema
```

### Least Privilege

Users should only have the minimum access needed to do their work.

---

## 19. Role-Based Access Control

Role-based access control assigns permissions to roles rather than individual users.

### Example Roles

```text
Student
Teacher
DatabaseAdmin
Receptionist
Doctor
Manager
CustomerSupport
```

### Benefits

```text
easier permission management
more consistent access rules
reduces excessive permissions
simpler onboarding and offboarding
helps enforce least privilege
```

### Example

Instead of giving each teacher permissions one by one, the system gives the `Teacher` role access to relevant class records.

---

## 20. Password Storage

Databases should not store passwords as plain text.

### Bad

```text
Password = myPassword123
```

If the database leaks, attackers can immediately read the passwords.

### Better

Passwords should be stored using:

```text
hashing
salt
strong password algorithms
```

### Student-Level Meaning

The system should store a protected version of the password, not the original password itself.

### Important

Encryption and hashing are different.  
Hashing is one-way and commonly used for password storage.

---

## 21. Encryption

Encryption converts readable data into unreadable form using a key.

### Data in Transit

Data moving across a network should be protected.

Example:

```text
HTTPS/TLS protects data between browser and server
```

### Data at Rest

Stored database data or backups may also be encrypted.

Example:

```text
encrypted database files
encrypted backup storage
encrypted disk
```

### What Encryption Helps Protect

```text
confidentiality
sensitive personal data
backup files
data on stolen devices
data intercepted in transit
```

### Limitation

Encryption does not control who is allowed to access data after they log in.  
Permissions are still needed.

---

## 22. Backup and Recovery

Backups are copies of data used to restore the database after loss or damage.

### Backups Help Against

```text
accidental deletion
hardware failure
ransomware
corruption
failed updates
disaster
```

### Good Backup Practice

```text
regular backups
offsite or cloud backups
offline/protected backups
encrypted backups
tested restore process
multiple versions
documented recovery plan
```

### Key Exam Point

A backup is only useful if it can be restored successfully.

---

## 23. Audit Logs

Audit logs record database activity.

### Logs May Record

```text
who logged in
when they logged in
which records were viewed
which records were changed
failed login attempts
administrator actions
data exports
permission changes
```

### Benefits

```text
detect suspicious activity
investigate data breaches
prove what happened
support accountability
identify misuse
improve future security
```

### Privacy Note

Logs may also contain personal data, so they must be protected.

---

## 24. Input Validation

Input validation checks whether input is acceptable before it is processed or stored.

### Examples

```text
email must contain @
score must be 0 to 100
date must be valid
quantity must be non-negative integer
required fields cannot be blank
username length must be reasonable
```

### Security Benefit

Input validation can reduce:

```text
invalid data
accidental errors
some injection attempts
data integrity problems
```

### Important

Input validation helps, but SQL injection protection should also use parameterized queries.

---

## 25. Software Updates and Patches

Database systems, servers, and applications need updates.

### Why?

Attackers may exploit known vulnerabilities in outdated software.

### Systems to Update

```text
DBMS
operating system
web application
server software
database drivers
plugins
cloud services
backup tools
```

### Good Practice

```text
apply security patches
test updates before major deployment
remove unsupported software
monitor vulnerability announcements
```

---

## 26. Database Security Controls Summary

| Control | Purpose |
|---|---|
| Authentication | verify user identity |
| Authorization | control what users can access |
| Role-based permissions | manage access by user role |
| Least privilege | reduce unnecessary access |
| Encryption | protect data confidentiality |
| Backups | support recovery |
| Audit logs | track activity and misuse |
| Input validation | reduce invalid/malicious input |
| Parameterized queries | prevent SQL injection |
| Updates/patches | fix vulnerabilities |
| Network restrictions | limit where database can be accessed from |
| Monitoring | detect unusual activity |
| User training | reduce phishing and misuse |

---

## 27. Privacy Principles

Database privacy focuses on responsible handling of personal data.

### Common Privacy Principles

| Principle | Meaning |
|---|---|
| Data minimization | collect only what is needed |
| Purpose limitation | use data only for stated purpose |
| Consent | get permission where required |
| Transparency | tell users how data is used |
| Accuracy | keep personal data correct |
| Retention limitation | do not keep data longer than needed |
| Access limitation | only authorized people can access |
| Security | protect personal data |
| User rights | allow access/correction/deletion where required |

---

## 28. Personal Data and Sensitive Data

### Personal Data

Personal data can identify a person.

Examples:

```text
name
student ID
email address
phone number
home address
IP address
photo
account username
```

### Sensitive Data

Sensitive data may cause greater harm if exposed.

Examples:

```text
medical information
financial data
grades
discipline records
passport information
biometric data
password-related data
location history
```

### Key Idea

More sensitive data usually needs stronger protection and stricter access control.

---

## 29. Data Minimization

Data minimization means collecting only the data needed for a clear purpose.

### Example

A school lunch ordering system may need:

```text
student name
class
meal choice
payment status
allergy information if needed
```

It probably does not need:

```text
passport number
full medical history
parent income
unrelated family details
```

### Why It Matters

Collecting less data reduces:

```text
privacy risk
breach impact
storage needs
legal responsibility
misuse risk
```

---

## 30. Purpose Limitation

Purpose limitation means data should only be used for the reason it was collected.

### Example

If a school collects parent phone numbers for emergency contact, it should not use them for unrelated advertising without proper permission.

### Good Practice

```text
state why data is collected
use data only for that purpose
get new consent for new purposes where needed
limit internal access to relevant staff
```

---

## 31. Retention and Deletion

Retention means how long data is kept.

### Good Practice

```text
keep data only as long as needed
delete or anonymize old data
follow legal/school/business requirements
have retention schedules
securely delete data
```

### Example

A shop may not need to keep old customer support chat logs forever.

### Risk

Keeping unnecessary old data increases the damage if a breach happens.

---

## 32. Anonymization and Pseudonymization

### Anonymization

Anonymization removes identifying information so individuals cannot reasonably be identified.

Example:

```text
remove name, ID, email, address
aggregate results by group
```

### Pseudonymization

Pseudonymization replaces identifying details with codes.

Example:

```text
Student 101 → Participant A17
```

### Difference

| Method | Meaning |
|---|---|
| anonymization | identity cannot reasonably be recovered |
| pseudonymization | identity can be recovered if mapping key exists |

### Use

These methods can reduce privacy risk when analyzing or sharing data.

---

## 33. School Database Example

A school database may store:

```text
student profiles
grades
attendance
medical notes
parent contacts
discipline records
LMS login data
```

### Threats

```text
student tries to view teacher grade records
phishing steals staff account
database backup is lost
teacher sees records outside their class
old student data kept too long
```

### Controls

```text
role-based access control
MFA for staff
audit logs
least privilege
encrypted backups
regular backups
data retention policy
student/teacher privacy rules
```

---

## 34. Hospital Database Example

A hospital database may store:

```text
patient records
appointments
diagnoses
treatments
prescriptions
insurance details
doctor notes
```

### Requirements

```text
very strong privacy
accurate data
high availability
audit logs
strict access control
backup and recovery
encryption
```

### Why?

Incorrect or leaked medical data can seriously harm patients.

### Example Access Control

```text
doctor can view patient records for treatment
receptionist can manage appointment times
billing staff can view payment data
not everyone can view all medical notes
```

---

## 35. Online Shop Database Example

An online shop database may store:

```text
customer accounts
addresses
orders
payment status
products
delivery tracking
support messages
```

### Threats

```text
SQL injection steals customer data
weak admin password exposes orders
customer data sold without consent
payment data exposed
backup not encrypted
```

### Controls

```text
parameterized queries
input validation
strong admin authentication
encryption
payment data handled securely
privacy notice
data minimization
audit logs
regular updates
```

---

## 36. Cloud Database Example

A cloud database may be managed by a provider, but the organization still has responsibilities.

### Provider May Handle

```text
physical data centre security
hardware maintenance
some infrastructure availability
some platform security
```

### User/Organization Must Handle

```text
access permissions
MFA
database configuration
data classification
backup settings
sharing rules
encryption settings
monitoring logs
privacy compliance
```

### Common Risk

```text
database or storage bucket accidentally made public
```

### Protection

```text
least privilege
review sharing settings
secure configuration
audit cloud access logs
enable encryption
restrict network access
```

---

## 37. Database Security and SQL

SQL is powerful, so access must be controlled.

### Risky Actions

```sql
DELETE FROM Student;
DROP TABLE Student;
UPDATE Grade SET Score = 100;
SELECT * FROM MedicalRecord;
```

### Protection

```text
ordinary users should not have admin permissions
students should not access grade tables directly
applications should use accounts with limited permissions
dangerous operations should require approval or admin role
```

### Key Idea

Database accounts should only have the SQL permissions they need.

---

## 38. Database Security and Transactions

Transactions can help protect database consistency.

### Example

A bank transfer needs:

```text
subtract money from Account A
add money to Account B
```

Both operations must complete, or neither should be saved.

### Security/Recovery Link

Transactions help with:

```text
consistency
recovery after failure
rollback of incomplete operations
protection against partial updates
```

Transactions and recovery are covered in the next page.

---

## 39. Incident Response

If a database security incident happens, the organization should respond properly.

### Basic Steps

```text
1. Detect the incident.
2. Contain the problem.
3. Investigate what happened.
4. Remove attacker or fix vulnerability.
5. Restore data if needed.
6. Notify affected users or authorities if required.
7. Review and improve controls.
```

### Example

If SQL injection exposed customer data:

```text
take vulnerable feature offline
preserve logs
patch input handling
rotate credentials
check what data was accessed
notify users if required
improve testing
```

---

## 40. Common Misconceptions

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Security and privacy are the same | Related but different | Security protects data; privacy governs data use |
| Passwords alone are enough | Passwords can be stolen | Use MFA, permissions, logs, encryption |
| Admin should access everything all the time | Too risky | Use least privilege and auditing |
| Backups are only for hardware failure | Also needed for deletion, ransomware, corruption | Backup supports recovery |
| Encryption solves all privacy issues | Data can still be misused by authorized users | Need policies and access controls |
| SQL injection is a database design problem only | It often comes from unsafe input handling | Use validation and parameterized queries |
| Audit logs prevent all attacks | Logs help detection/investigation | Prevention controls still needed |
| Cloud database means provider handles everything | Shared responsibility | User must configure access/security |
| Data can be kept forever | Privacy requires retention limits | Delete/anonymize when no longer needed |
| Anonymization and pseudonymization are the same | Pseudonyms may be reversible | Anonymization removes identity more fully |

---

## 41. Guided Practice

### Practice 1: Security or Privacy?

A database uses role-based permissions. Is this mainly security or privacy?

<details>
<summary>Suggested Answer</summary>

Mainly security, because it controls access to data. It also supports privacy by limiting who can view personal data.

</details>

---

### Practice 2: Authentication or Authorization?

A teacher logs in with username and password. Is this authentication or authorization?

<details>
<summary>Suggested Answer</summary>

Authentication, because the system is checking the user's identity.

</details>

---

### Practice 3: Least Privilege

Why should a student account not have permission to edit grade tables?

<details>
<summary>Suggested Answer</summary>

Because of least privilege. Students do not need that access, and giving it would increase the risk of unauthorized changes or data misuse.

</details>

---

### Practice 4: SQL Injection

Name one method to reduce SQL injection risk.

<details>
<summary>Suggested Answer</summary>

Use parameterized queries / prepared statements. Input validation and least privilege database accounts also help.

</details>

---

### Practice 5: Privacy Principle

A website asks for passport number when only creating a newsletter account. Which privacy principle is being violated?

<details>
<summary>Suggested Answer</summary>

Data minimization, because the website is collecting more personal data than necessary.

</details>

---

## 42. Independent Practice

### Question 1

Define database security.

### Question 2

Define database privacy.

### Question 3

Explain the difference between authentication and authorization.

### Question 4

Explain why role-based access control is useful.

### Question 5

Explain SQL injection and name two ways to reduce the risk.

### Question 6

Explain why backups are important for database security.

### Question 7

Explain how audit logs help protect a database.

### Question 8

Explain data minimization using an example.

### Question 9

A school stores student records in a database. Recommend four security or privacy controls and justify each one.

### Question 10

Explain why a cloud database still needs careful configuration by the organization using it.

---

## 43. Exam-style Questions

### Question 1 [4 marks]

Distinguish between database security and database privacy.

<details>
<summary>Mark Scheme Style Answer</summary>

Database security protects data from threats such as unauthorized access, damage, loss, or modification. Database privacy concerns how personal data is collected, used, shared, and retained. Security focuses on protecting data, while privacy focuses on responsible and lawful use of personal data.

</details>

---

### Question 2 [5 marks]

Explain the difference between authentication and authorization in a database system.

<details>
<summary>Mark Scheme Style Answer</summary>

Authentication checks the user's identity, for example by username, password, or MFA. Authorization controls what the authenticated user is allowed to access or do, such as reading, updating, or deleting records. For example, a teacher may authenticate by logging in, but authorization decides whether they can view only their own class records.

</details>

---

### Question 3 [6 marks]

Explain how SQL injection can threaten a database and give two protection methods.

<details>
<summary>Mark Scheme Style Answer</summary>

SQL injection occurs when malicious SQL is inserted through user input and is executed by the database. It can allow an attacker to bypass login, read confidential data, modify records, or delete tables. Protection methods include input validation, parameterized queries or prepared statements, limiting database account permissions, hiding detailed error messages, and security testing.

</details>

---

### Question 4 [6 marks]

A school database stores student grades, attendance, and medical notes. Recommend three controls to protect the database.

<details>
<summary>Mark Scheme Style Answer</summary>

Role-based access control should be used so students, teachers, administrators, and medical staff only access data needed for their role. MFA and strong authentication should protect staff accounts because stolen credentials could expose sensitive records. Encryption can protect data in transit and backups. Audit logs can record who accessed or changed records. Regular backups are needed so data can be recovered after deletion, corruption, or ransomware.

</details>

---

### Question 5 [6 marks]

Explain two privacy principles that should be considered when collecting personal data for an online shop.

<details>
<summary>Mark Scheme Style Answer</summary>

Data minimization should be considered, meaning the shop should only collect data needed for account creation, payment, and delivery, rather than unnecessary personal details. Purpose limitation should also be considered, meaning customer data should only be used for the stated purpose, such as processing orders, unless further consent is obtained. Retention limitation is also important, so data is not kept longer than needed.

</details>

---

## 44. Practice task
### Activity 1: Threat and Control Match

Match threats to controls:

```text
SQL injection
lost backup drive
student accessing grade table
ransomware
staff viewing records without reason
cloud database public by mistake
```

Controls:

```text
parameterized queries
encrypted backups
role-based access control
offline backups
audit logs
secure configuration review
```

---

### Activity 2: Privacy Debate

Scenario:

```text
A school app wants to collect student name, grade, location, passport number, parent income, and lunch choice.
```

Students decide:

```text
which data is necessary
which data is excessive
what purpose each item serves
what privacy risks exist
```

---

### Activity 3: Access Control Design

Groups design roles and permissions for:

```text
school database
hospital database
online shop database
library database
```

They must include:

```text
role
allowed data
allowed actions
blocked actions
reason
```

---

## 45. Independent practice
### Independent practice part A: Concept Explanation

In 6-8 sentences, explain why database security and privacy are important.

---

### Independent practice part B: Threat Table

Create a table for:

```text
unauthorized access
SQL injection
insider misuse
ransomware
accidental deletion
cloud misconfiguration
```

Include:

```text
meaning
possible impact
one protection method
```

---

### Independent practice part C: Scenario Recommendation

A hospital stores patient records in a database.

Recommend five protection measures and explain why each is needed.

---

### Independent practice part D: Misconception Correction

Correct these statements:

```text
Database security and privacy mean exactly the same thing.
If a database has a password, it is fully secure.
SQL injection can only happen if the database is offline.
Backups are not needed if the database uses encryption.
A company can keep personal data forever if storage is cheap.
```

---

## 46. One-page Revision Summary

| Point | Summary |
|---|---|
| Database security | Protects data from unauthorized access, damage, loss, and misuse |
| Database privacy | Responsible collection, use, sharing, and retention of personal data |
| Personal data | Data identifying a person |
| Sensitive data | Higher-risk personal data |
| Data breach | Unauthorized exposure/loss of data |
| SQL injection | Malicious SQL inserted through input |
| Authentication | Checks identity |
| Authorization | Controls access/actions |
| Access control | Manages permissions |
| Least privilege | Minimum access needed |
| Encryption | Protects confidentiality |
| Backup | Supports recovery |
| Audit log | Records activity |
| Input validation | Checks input before use |
| Parameterized query | Helps prevent SQL injection |
| Data minimization | Collect only necessary data |
| Purpose limitation | Use data only for stated purpose |
| Retention | Keep data only as long as needed |
| Exam phrase | Database security protects data from threats, while database privacy ensures personal data is collected, used, shared, and retained responsibly |

---

## 47. Quick Self-test

Before moving on, students should be able to answer these:

1. What is database security?
2. What is database privacy?
3. What is a data breach?
4. What is SQL injection?
5. What is authentication?
6. What is authorization?
7. What does least privilege mean?
8. Why are backups important?
9. What is data minimization?
10. Why should old personal data not be kept forever?

