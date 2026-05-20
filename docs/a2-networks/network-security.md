# Network Security

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- identify common network threats
- explain malware, phishing, unauthorized access, and DoS attacks
- describe protection methods such as firewalls, access control, updates, and monitoring
- distinguish authentication and authorization
- apply layered security to scenarios
- write exam-style security recommendations

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Protecting networks from threats |
| Connected units | A1 Computer Fundamentals, A3 Databases, A4 Machine Learning, Social Engineering Awareness |
| Exam relevance | Definitions, process explanation, comparison, security scenarios, network design questions |

::: tip Learning Focus
A2 questions often require students to explain **how data moves across networks** and how systems can be protected from threats.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Threat | 威胁 | A potential cause of harm to a network or data |
| Malware | 恶意软件 | Software designed to cause harm or unauthorized activity |
| Phishing | 网络钓鱼 | Tricking users into revealing information or taking unsafe actions |
| Unauthorized access | 未授权访问 | Access by a user who does not have permission |
| DoS attack | 拒绝服务攻击 | Attack that overwhelms a service to make it unavailable |
| Firewall | 防火墙 | Filters network traffic based on rules |
| Authentication | 身份验证 | Checking user identity |
| Authorization | 授权 | Controlling what a user is allowed to access |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

网络安全的目标是保护数据和服务，防止 unauthorized access、data loss、malware、phishing、DoS attacks 等。

常见保护方法：

- strong passwords and MFA
- user access rights
- firewall
- anti-malware software
- software updates / patches
- encryption
- network monitoring and logs
- staff/student training
- backup and recovery

考试答案要结合 scenario。例如 school network 要保护 student data，hospital network 要保护 patient records。

</template>

<template #en>

### English Explanation

The goal of network security is to protect data and services from unauthorized access, data loss, malware, phishing, DoS attacks, and other threats.

Common protection methods include:

- strong passwords and MFA
- user access rights
- firewall
- anti-malware software
- software updates / patches
- encryption
- network monitoring and logs
- staff/student training
- backup and recovery

Exam answers should link to the scenario. For example, a school network protects student data, while a hospital network protects patient records.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: School network threats

| Threat | Possible Protection |
|---|---|
| Student guesses teacher password | strong password + MFA |
| Malware from USB | anti-malware + device policy |
| Phishing email | training + email filtering |
| Unauthorized grade access | role-based permissions |
| DoS against school website | traffic filtering and monitoring |

---

## 6. Layered Security Pattern

```text
Prevent → Detect → Respond → Recover

Prevent: firewall, authentication, access rights
Detect: logs, monitoring, alerts
Respond: block account, isolate device
Recover: backup, restore, patch
```

---

## 7. Technical Example

### Authentication vs authorization

| Concept | Question answered |
|---|---|
| Authentication | Who are you? |
| Authorization | What are you allowed to access? |

---

## 8. Explanation of the Example

Network security is strongest when it uses multiple layers. A firewall alone cannot stop every threat, because phishing may target users directly and malware may enter through unsafe downloads.

---

## 9. Step-by-step Process / Trace

| Step | Security process |
|---|---|
| 1 | User tries to log in |
| 2 | System authenticates identity |
| 3 | System checks authorization |
| 4 | Firewall filters traffic |
| 5 | Logs record activity |
| 6 | Suspicious activity triggers response |
| 7 | Backup supports recovery if data is lost |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying password alone is enough | Security needs layers | Mention MFA/access rights/firewall/training |
| Confusing authentication and authorization | They answer different questions | Authentication = identity; authorization = permission |
| Ignoring human threats | Phishing targets people | Include user training |
| Assuming firewall stops all attacks | Firewall is only one protection | Use layered security |
| Not linking to data being protected | Answer becomes generic | Mention student/patient/customer data |

---

## 11. Guided Practice

### Practice 1

What is phishing?

<details><summary>Suggested Answer</summary>

Phishing is tricking users into revealing sensitive information or taking unsafe actions, often through fake messages or websites.

</details>

### Practice 2

What is the difference between authentication and authorization?

<details><summary>Suggested Answer</summary>

Authentication checks who the user is. Authorization checks what the user is allowed to access.

</details>

---

## 12. Independent Practice

1. Explain two threats to a hospital network.
2. Suggest three protections for a school Wi-Fi network.
3. Explain why user training is part of security.
4. Explain how logs help detect attacks.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

A school network stores student grades. Explain two methods used to protect the data.

<details><summary>Mark Scheme Style Answer</summary>

Authentication such as passwords or MFA can ensure only valid users log in. Authorization can restrict teachers, students, and administrators to appropriate data. A firewall can filter unwanted network traffic, and backups can allow recovery if data is lost or corrupted.

</details>

### Question 2 [3 marks]

Explain why phishing is a network security risk.

<details><summary>Mark Scheme Style Answer</summary>

Phishing can trick users into giving away passwords or clicking unsafe links. This may allow attackers to access network accounts or install malware, leading to data theft or unauthorized changes.

</details>

---

## 14. Classroom Activity

### Activity: Threat and Defence Match

Students match threat cards to defence cards and justify why each defence reduces the risk.

---

## 15. Homework

Write a security plan for a school network. Include at least six threats/protections and explain why each protection is suitable.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Threat | Potential harm |
| Firewall | Filters traffic |
| Authentication | Checks identity |
| Authorization | Controls access |
| Phishing | Tricks users |
| Exam phrase | Security should use multiple layers because no single method prevents all threats. |
