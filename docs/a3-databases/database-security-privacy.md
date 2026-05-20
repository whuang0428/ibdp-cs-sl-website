# Database Security and Privacy

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why database security is important
- distinguish security and privacy
- identify common database threats
- explain authentication and authorization
- explain encryption, backups, and audit logs
- apply protection methods to real-world database scenarios

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A3 Databases |
| Label | SL Core |
| Main skill | Protecting stored data |
| Connected units | A2 Networks, A1 Storage, A4 Ethics, IA project |
| Exam relevance | Scenario-based security and privacy explanation |

::: tip Learning Focus
Security protects data from unauthorized access, damage, or loss. Privacy concerns how personal data is collected, used, and shared.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Security | 安全 | Protecting data from unauthorized access, damage, or loss |
| Privacy | 隐私 | Proper collection, use, and sharing of personal data |
| Authentication | 身份验证 | Checking who the user is |
| Authorization | 授权 | Controlling what the user is allowed to do |
| Encryption | 加密 | Encoding data so it cannot be read without a key |
| Backup | 备份 | A copy of data for recovery |
| Audit log | 审计日志 | A record of database activity |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

数据库经常保存敏感数据，例如：

- 学生成绩
- 病人病历
- 银行账户
- 客户地址
- 用户密码哈希

因此数据库必须保护数据安全和用户隐私。

常见保护方法包括：

- authentication：确认用户身份
- authorization：限制用户权限
- encryption：保护数据内容
- backup：防止数据丢失
- audit log：记录谁访问或修改了数据
- validation：防止错误数据进入数据库

</template>

<template #en>

### English Explanation

Databases often store sensitive data such as:

- student grades
- patient records
- bank accounts
- customer addresses
- password hashes

Therefore, databases must protect security and privacy.

Common protection methods include:

- authentication: checking user identity
- authorization: limiting user permissions
- encryption: protecting data content
- backup: preventing permanent data loss
- audit log: recording who accessed or changed data
- validation: preventing incorrect data from entering the database

</template>
</LangBlock>

---

## 5. Real-life Example

### Hospital Database

| User Type | Suitable Access |
|---|---|
| Doctor | View and update assigned patient records |
| Receptionist | View appointments, not full medical history |
| Database administrator | Manage database structure and permissions |
| Patient | View own records only |

::: info Principle
Users should only have access to the data they need for their role.
:::

---

## 6. Security Pattern

```text
User requests access
→ authenticate identity
→ check authorization
→ allow permitted action only
→ record action in audit log
→ backup data regularly
```

---

## 7. SQL / Access Example

Unsafe idea:

```text
Every user can access every table.
```

Better idea:

```text
Doctors can access patient treatment records.
Receptionists can access appointment records.
Students cannot access grade tables of other students.
```

---

## 8. Explanation of Protection Methods

| Method | How it protects data |
|---|---|
| Authentication | Stops unknown users from logging in |
| Authorization | Limits what valid users can access |
| Encryption | Makes stolen data unreadable without a key |
| Backup | Allows recovery after loss or corruption |
| Audit logs | Help investigate suspicious actions |

---

## 9. Step-by-step Scenario Response

Scenario: A school database stores student grades.

| Threat | Protection |
|---|---|
| Student tries to access another student's grade | Authentication and access rights |
| Laptop with database copy is stolen | Encryption |
| Accidental deletion | Backups |
| Suspicious grade change | Audit log |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying password is enough | Security needs layers | Mention multiple methods |
| Confusing authentication and authorization | They are different | Authentication = who, authorization = what allowed |
| Ignoring privacy | Legal/ethical issues may appear | Discuss data use and consent |
| Forgetting backups | Data loss may be permanent | Include recovery |
| Giving everyone admin access | Too much risk | Least privilege principle |

---

## 11. Guided Practice

### Practice 1

Explain authentication vs authorization.

<details>
<summary>Suggested Answer</summary>

Authentication checks who the user is, such as by username and password. Authorization checks what that user is allowed to access or change.

</details>

### Practice 2

Suggest two protections for a school grade database.

<details>
<summary>Suggested Answer</summary>

Access rights can restrict grades to authorized teachers and students. Backups can allow recovery if grade data is accidentally deleted.

</details>

---

## 12. Independent Practice

1. Explain two threats to a hospital database.
2. Suggest three protection methods.
3. Explain why audit logs are useful.
4. Explain one privacy concern in a school database.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

A school database stores student grades and personal details. Explain two methods used to protect this data.

<details>
<summary>Mark Scheme Style Answer</summary>

Authentication can ensure only valid users log in. Authorization can limit users to data they are allowed to access, such as teachers viewing their own classes only. Encryption can protect data if it is stolen, and backups can allow recovery after loss.

</details>

### Question 2 [3 marks]

Explain the difference between security and privacy.

<details>
<summary>Mark Scheme Style Answer</summary>

Security is about protecting data from unauthorized access, damage, or loss. Privacy is about how personal data is collected, used, shared, and controlled. A system can be secure but still misuse personal data.

</details>

---

## 14. Classroom Activity

Students design role-based access for a school database. They decide what data admin staff, teachers, students, and parents should access.

---

## 15. Homework

Write a security plan for a hospital, school, or online shop database. Include at least five protection methods and explain each.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Security | Protect from unauthorized access/loss |
| Privacy | Proper use of personal data |
| Authentication | Checks identity |
| Authorization | Controls permissions |
| Backup | Enables recovery |
| Exam phrase | "Access rights should restrict users to only the data needed for their role." |
