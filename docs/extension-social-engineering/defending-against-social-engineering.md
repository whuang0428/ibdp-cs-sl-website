# Defending Against Social Engineering

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain layered defence against social engineering
- identify technical, procedural, and human controls
- describe MFA, password managers, access rights, reporting, and training
- explain why no single control is enough
- design defensive policies for a school
- write balanced security recommendations

---

## 2. Course Position

| Item | Detail |
|---|---|
| Section | Social Engineering Awareness / School Extension |
| Main link | A2 Networks + Cybersecurity + Ethics |
| Level | SL-friendly extension |
| Main skill | Building layered defences against manipulation-based attacks |
| Safety focus | Recognition, prevention, response, and ethics |

::: warning Safety Boundary
This page is for defensive cybersecurity education only. It explains how to recognize and prevent social engineering. It should not be used to train students to deceive, impersonate, or attack real people or systems.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Layered defence | 分层防御 | Using multiple controls together to reduce risk |
| MFA | 多因素认证 | Authentication using more than one factor |
| Password manager | 密码管理器 | Tool for storing and generating strong passwords |
| Access rights | 访问权限 | Permissions controlling what a user can access |
| Least privilege | 最小权限 | Giving users only the access they need |
| Security awareness | 安全意识 | User knowledge and habits that reduce risk |
| Reporting channel | 报告渠道 | Official method for reporting suspicious events |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

防御 social engineering 不能只依靠一个方法。有效安全通常需要 **layered defence（分层防御）**。

三类防御：

1. **Technical controls**：MFA、email filtering、firewall、anti-malware、password manager
2. **Procedural controls**：审批流程、访客制度、付款核验、密码重置流程
3. **Human controls**：安全培训、暂停核验、及时报告、不羞辱受害者

例如 MFA 可以降低密码被盗后的风险，但如果用户把验证码也给了攻击者，仍然可能出问题。因此还需要培训和报告流程。

</template>

<template #en>

### English Explanation

Defending against social engineering cannot rely on one method. Effective security usually needs **layered defence**.

Three types of defence:

1. **Technical controls**: MFA, email filtering, firewall, anti-malware, password manager
2. **Procedural controls**: approval process, visitor policy, payment verification, password reset process
3. **Human controls**: security training, pausing to verify, quick reporting, no victim-blaming

For example, MFA can reduce the risk after a password is stolen, but if a user also gives away a verification code, there may still be a problem. Training and reporting processes are still needed.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: School Defence Plan

| Risk | Defence |
|---|---|
| stolen password | MFA and password manager |
| fake teacher email | email filtering and verification habit |
| unknown visitor | visitor policy and reception check |
| suspicious link clicked | quick reporting and password reset |
| repeated mistakes | supportive awareness training |

---

## 6. Defensive Recognition Pattern

```text
Prevent → Detect → Report → Respond → Recover → Improve

Prevent: MFA, training, policies
Detect: warning signs, monitoring
Report: clear channel
Respond: reset password, block account
Recover: restore access/data
Improve: update training and procedures
```

---

## 7. Scenario Analysis

### Layered controls

| Control Type | Example | Purpose |
|---|---|---|
| Technical | MFA | reduces account takeover |
| Technical | password manager | strong unique passwords |
| Procedural | payment approval | prevents fake payment requests |
| Procedural | visitor sign-in | controls physical access |
| Human | awareness training | improves recognition |
| Human | no-blame reporting | encourages quick reporting |

---

## 8. Explanation of the Scenario

No single control is perfect. A strong system assumes mistakes may happen and makes it easier to detect, report, and recover from them.

---

## 9. Step-by-step Defensive Response

| Step | Defence Design |
|---|---|
| 1 | Identify assets and risks |
| 2 | Add technical controls |
| 3 | Add procedures for high-risk actions |
| 4 | Train users using safe examples |
| 5 | Create simple reporting channel |
| 6 | Respond quickly to reported incidents |
| 7 | Review and improve after incidents |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Relying only on user training | Users can still make mistakes | Combine training with technical/procedural controls |
| Relying only on MFA | Codes can be socially engineered | Teach never sharing codes |
| No clear reporting route | Users may stay silent | Create simple reporting channel |
| Punishing reporters | Reduces future reporting | Use supportive response |
| Giving broad access rights | Compromise becomes more damaging | Use least privilege |

---

## 11. Guided Practice

### Practice 1

Why is layered defence useful?

<details><summary>Suggested Answer</summary>

Because if one control fails, other controls may still reduce the risk or limit the damage.

</details>

### Practice 2

How does least privilege help?

<details><summary>Suggested Answer</summary>

It limits users to only the access they need, so a compromised account causes less damage.

</details>

---

## 12. Independent Practice

1. Design three technical controls for a school network.
2. Design three procedural controls for account and visitor safety.
3. Explain why reporting should be easy and non-punitive.
4. Explain why MFA does not fully stop social engineering.

---

## 13. Exam-style / Reflection Questions

### Question 1 [4 marks]

Explain two methods an organization can use to reduce social engineering risk.

<details><summary>Mark Scheme Style Answer</summary>

MFA can reduce the risk of account takeover because a password alone is not enough to log in. Security awareness training can help users recognize suspicious messages and verify requests. Access rights and least privilege can limit damage if an account is compromised.

</details>

### Question 2 [4 marks]

Explain why no single defence is enough against social engineering.

<details><summary>Mark Scheme Style Answer</summary>

Social engineering targets both technical systems and human behaviour. A firewall or MFA may not stop a user from being tricked into sharing a code or approving a request. Layered defence combines technical controls, procedures, training, reporting, and recovery so the system remains safer even if one control fails.

</details>

---

## 14. Classroom Activity

### Activity: Build a Defence Plan

Groups design a school social engineering defence plan with technical, procedural, and human controls. They must explain how each control reduces risk.

---

## 15. Homework

Write a school policy proposal for defending against social engineering. Include prevention, detection, reporting, response, and recovery.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Layered defence | Multiple controls together |
| MFA | More than one authentication factor |
| Least privilege | Only needed access |
| Reporting | Simple and supportive channel |
| Best design | Technical + procedural + human controls |
| Exam phrase | Layered defence reduces risk because other controls may still protect the system if one control fails. |
