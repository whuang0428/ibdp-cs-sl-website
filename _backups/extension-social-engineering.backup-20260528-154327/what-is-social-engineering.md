# What Is Social Engineering?

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define social engineering
- explain how social engineering differs from purely technical attacks
- explain why attackers target people, not only systems
- identify common goals of social engineering attacks
- explain the role of trust, urgency, fear, authority, curiosity, and helpfulness
- identify safe, high-level examples of social engineering scenarios
- explain how social engineering can bypass technical controls
- describe the possible impacts on individuals, schools, and organizations
- recommend defensive behaviours and verification steps
- answer exam-style questions using clear cybersecurity vocabulary

::: warning Defensive Learning Only
This page is for awareness and prevention. It does not teach how to create deceptive messages, impersonate people, or carry out attacks.
:::

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | Social Engineering Awareness |
| Topic | What Is Social Engineering? |
| Main skill | Recognizing and explaining human-focused security attacks |
| Connected topics | Network security, authentication, access control, phishing, OSINT, incident response |
| Practical focus | Awareness, red flags, safe verification, reporting |
| Exam relevance | Definitions, explanation, scenario-based defence, compare technical vs human attacks |

::: tip Learning Focus
Social engineering attacks target human behaviour. A strong answer should explain the manipulation method, the human factor being exploited, the possible impact, and the defensive response.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Social engineering | 社会工程学攻击 | Manipulating people into revealing confidential information or performing unsafe actions |
| Human factor | 人为因素 | Human behaviour or decision-making that affects security |
| Manipulation | 操控 | Influencing someone to act against their own or their organization's security interest |
| Trust | 信任 | Belief that a person, message, or request is legitimate |
| Urgency | 紧迫感 | Pressure to act quickly without checking |
| Fear | 恐惧 | Pressure caused by possible punishment, loss, or danger |
| Authority | 权威 | Influence from someone who appears senior or official |
| Curiosity | 好奇心 | Desire to open or check something interesting |
| Helpfulness | 乐于助人 | Desire to assist someone, sometimes exploited by attackers |
| Impersonation | 冒充 | Pretending to be a trusted person or organization |
| Credential | 凭证 | Information used to authenticate a user, such as username/password |
| MFA code | 多因素验证码 | One-time code or factor used for authentication |
| Verification | 验证 | Checking whether a request or identity is legitimate |
| Trusted channel | 可信渠道 | Official or independently verified communication path |
| Red flag | 风险信号 | Warning sign that something may be suspicious |
| Bypass | 绕过 | Avoiding or defeating a control or process |
| Incident | 安全事件 | Security-related event that may cause harm |
| Reporting | 报告 | Informing the correct person/team about a suspected security issue |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Social engineering 不是先攻击电脑，而是先攻击人。

普通技术攻击可能会尝试：

```text
破解密码
利用软件漏洞
扫描网络
攻击服务器
```

但 social engineering 可能会尝试：

```text
让用户自己输入密码
让员工打开门
让老师点击链接
让工作人员发送文件
让管理员绕过正常流程
```

也就是说，攻击者不是直接“打破”系统，而是让有权限的人自己做出危险行为。

它常利用人的心理：

```text
urgency: 现在不做就来不及
fear: 不做会有惩罚
authority: 我是你的上级/IT/银行/学校
trust: 这个人看起来可信
curiosity: 这个文件好像很有意思
helpfulness: 我只是想帮忙
```

所以防御 social engineering 的核心不是只靠技术，也需要：

```text
安全意识
身份验证
不随便点击
不分享 MFA code
不绕过流程
遇到可疑情况及时报告
```

考试答题时可以按这个结构写：

```text
attack method → human factor → possible impact → defensive response
```

</template>

<template #en>

### English Explanation

Social engineering does not attack the computer first. It often attacks the human user first.

A technical attack may try to:

```text
crack passwords
exploit software vulnerabilities
scan networks
attack servers
```

A social engineering attack may try to:

```text
make a user enter their password
make an employee open a door
make a teacher click a link
make staff send a file
make an administrator bypass a normal process
```

In other words, the attacker may not directly break the system. They persuade someone with legitimate access to do something unsafe.

It often exploits human psychology:

```text
urgency: act now
fear: something bad will happen
authority: I am your manager / IT / bank / school
trust: this person seems legitimate
curiosity: this file looks interesting
helpfulness: I just want to help
```

Defending against social engineering is not only technical. It also needs:

```text
security awareness
identity verification
not clicking suspicious links
not sharing MFA codes
not bypassing procedures
reporting suspicious situations quickly
```

For exam answers, use this structure:

```text
attack method → human factor → possible impact → defensive response
```

</template>
</LangBlock>

---

## 5. Definition of Social Engineering

Social engineering is a security attack that manipulates people.

### Simple Definition

```text
Social engineering is the manipulation of people into revealing confidential information or performing actions that reduce security.
```

### Stronger Exam Definition

```text
Social engineering is a human-focused attack that exploits trust, authority, urgency, fear, curiosity, or helpfulness to make a user reveal sensitive information or bypass normal security procedures.
```

### Key Point

The target is not only the computer system. The target may be:

```text
a student
a teacher
an employee
a parent
a receptionist
a system administrator
a customer
a manager
```

---

## 6. Social Engineering vs Technical Attacks

| Aspect | Social Engineering | Technical Attack |
|---|---|---|
| Main target | human behaviour | system/software/network |
| Main method | manipulation and deception | exploiting technical weakness |
| Example | tricking user to reveal password | exploiting unpatched software |
| Defence | awareness, verification, reporting | patching, firewall, antivirus |
| Common weakness | trust, urgency, fear | vulnerability, misconfiguration |
| May bypass | user judgement and process | technical controls |

Many real incidents combine both. For example, a deceptive email may convince a user to open a file, and that file may exploit a technical weakness.

### Exam Phrase

```text
Social engineering targets human behaviour, while technical attacks target weaknesses in hardware, software, or networks.
```

---

## 7. Why Attackers Target People

Attackers may target people because:

```text
people can be pressured
people can make mistakes
people may trust familiar names
people may want to help
people may not check details carefully
people may have legitimate access
people may bypass procedures
```

### Example

A system may require a badge to enter a secure office.

But if someone politely asks:

```text
Can you hold the door? I forgot my badge.
```

a staff member may let them in. The technical control exists, but human behaviour bypasses it.

### Mark Scheme Phrase

```text
Attackers may target people because authorized users can be manipulated into bypassing security controls.
```

---

## 8. Common Goals of Social Engineering

Social engineering may aim to get:

```text
usernames and passwords
MFA codes
bank or payment details
personal information
student or customer records
internal documents
building access
system access
software installation permission
approval for a fake request
```

### Possible Actions Attackers Want

```text
click a link
open an attachment
download software
scan a QR code
share a code
transfer money
change bank details
open a secure door
send confidential data
disable a security control
```

### Defensive Point

Users should be careful when a request asks them to do something unusual, urgent, or outside normal procedure.

---

## 9. Human Factors Exploited

| Human Factor | Example of Manipulation | Safe Response |
|---|---|---|
| Urgency | "Do this now or your account closes" | pause and verify |
| Fear | "You will be punished if you ignore this" | check through official channel |
| Authority | "I am from IT / management" | verify identity independently |
| Trust | message appears from known person | check sender and context |
| Curiosity | "Open this interesting file" | avoid unexpected attachments |
| Helpfulness | "Can you quickly help me?" | follow normal procedures |
| Scarcity | "limited offer today only" | do not rush |
| Routine | looks like a normal task | check unusual details |

### Mark Scheme Phrase

```text
Social engineering manipulates human factors such as urgency and authority so users act before verifying the request.
```

---

## 10. Safe High-level Examples

### Example 1: Fake IT Support

A person claims to be IT support and asks for an MFA code.

Risk:

```text
the attacker may use the code to access the account
```

Safe response:

```text
do not share the code
contact IT using official helpdesk channel
report the request
```

### Example 2: Urgent Account Email

A message says the user must log in immediately or lose access.

Risk:

```text
the link may lead to a fake login page
```

Safe response:

```text
do not click the link
go to the official site manually
report suspicious message
```

### Example 3: Door Access Request

A person without a badge asks to follow someone into a secure area.

Risk:

```text
unauthorized physical access
```

Safe response:

```text
direct them to reception or security
do not bypass access control
```

---

## 11. How Social Engineering Can Bypass Technical Controls

| Technical Control | How Social Engineering May Bypass It |
|---|---|
| Password login | user is tricked into revealing password |
| MFA | user is tricked into sharing one-time code |
| Door lock | user lets attacker follow them inside |
| File permissions | authorized user sends file to attacker |
| Email filtering | targeted message avoids detection |
| Payment approval | employee is pressured to approve fake request |

### Mark Scheme Phrase

```text
Social engineering can bypass technical controls because it convinces an authorized user to perform an unsafe action themselves.
```

---

## 12. Impacts of Social Engineering

### Impact on Individuals

```text
account compromise
identity theft
financial loss
privacy invasion
loss of personal files
stress and embarrassment
```

### Impact on Organizations

```text
data breach
financial loss
malware infection
unauthorized access
reputation damage
legal/regulatory consequences
service disruption
loss of trust
```

### School Example

If a staff account is compromised, attackers may access:

```text
student records
grades
parent contact details
internal documents
learning platform accounts
```

### Exam Phrase

```text
The impact can include unauthorized access, data loss, privacy breaches, financial loss, and reputational damage.
```

---

## 13. Red Flags

### Message Red Flags

```text
unexpected request
urgent deadline
threat or fear
unusual sender address
generic greeting
poor grammar or unusual style
unexpected attachment
shortened link
request for password
request for MFA code
request to bypass normal procedure
request for confidential data
```

### Phone / In-person Red Flags

```text
refuses to verify identity
pressures user to act quickly
asks for confidential information
claims normal process is not needed
does not have badge or appointment
asks to use someone else's account
```

### Mark Scheme Phrase

```text
Users should look for red flags such as urgency, unexpected requests, suspicious links, or requests for credentials.
```

---

## 14. Safe Verification

Verification means checking whether a request is legitimate.

### Unsafe Verification

```text
replying to the suspicious email
calling the number in the suspicious message
clicking the login link provided
trusting the display name only
using contact details supplied by the requester
```

### Safe Verification

```text
use official website typed manually
use known phone number from trusted records
ask the person through a separate trusted channel
contact IT/helpdesk using the official system
check with a manager using normal internal process
```

### Exam Phrase

```text
The user should verify the request using an independent trusted channel, not the contact details provided in the suspicious message.
```

---

## 15. Defensive Behaviours

Good defensive behaviours include:

```text
pause before acting on urgent requests
do not share passwords or MFA codes
check sender address and context
avoid unexpected links and attachments
verify unusual requests separately
follow visitor and access control rules
report suspicious messages quickly
use strong unique passwords
use MFA
keep devices updated
limit unnecessary public information
```

### Important Mindset

It is better to report early than to stay silent because of embarrassment.

### Mark Scheme Phrase

```text
Awareness training and clear reporting procedures reduce risk because users are more likely to recognize and report suspicious requests.
```

---

## 16. Social Engineering in a School Context

A school may face social engineering attempts involving:

```text
fake messages to teachers
fake IT support requests
requests for student data
fake parent or guardian messages
attempts to enter restricted areas
links to fake learning platform pages
requests to change payment details
```

### Possible Controls

```text
staff training
MFA for school accounts
verified communication channels
visitor sign-in
least privilege access
email filtering
incident reporting process
regular reminders before exam/report seasons
```

### Scenario Phrase

```text
In a school, social engineering could expose student data, so staff should verify unusual requests and report suspicious messages to IT or senior staff.
```

---

## 17. Security Controls That Help

| Control | How It Helps |
|---|---|
| MFA | reduces damage if password is stolen |
| Email filtering | blocks some suspicious messages |
| Web filtering | blocks known malicious sites |
| Staff training | helps users recognize red flags |
| Access control | limits data/building access |
| Least privilege | reduces damage from compromised account |
| Logging | helps investigate incidents |
| Incident reporting | allows quick response |
| Visitor management | reduces physical access risk |
| Backups | help recover after data loss or malware |

No single control is enough. Use:

```text
people + process + technology
```

---

## 18. What To Do After a Suspected Attempt

If a user suspects social engineering:

```text
stop interacting with the message/person
do not click further links
do not share more information
record evidence if safe, such as screenshot or sender details
report to IT/security/teacher/manager
change password if credentials were entered
reset MFA if needed
monitor account activity
follow incident response procedure
```

### Exam Phrase

```text
Prompt reporting helps the organization contain the incident, warn other users, and reduce further damage.
```

---

## 19. Common Misconceptions

| Misconception | Correction |
|---|---|
| Social engineering only happens by email | it can happen by phone, message, in person, or social media |
| Only careless people are affected | pressure and realistic context can affect anyone |
| Technical controls stop all attacks | users can be manipulated into bypassing controls |
| MFA makes social engineering impossible | attackers may still try to trick users into sharing codes |
| If nothing bad happened immediately, no need to report | early reporting helps prevent wider harm |
| A display name proves identity | display names can be spoofed or copied |
| Holding a door is harmless | it may bypass physical access control |
| Reporting will get the user punished | safe reporting culture should focus on containment and learning |

---

## 20. Scenario Answer Bank

### If Asked: “Define social engineering”

```text
Social engineering is the manipulation of people into revealing confidential information or performing actions that reduce security.
```

### If Asked: “How is it different from a technical attack?”

```text
Social engineering targets human behaviour and decision-making, while technical attacks target weaknesses in systems, software, or networks.
```

### If Asked: “Why do attackers use urgency?”

```text
Urgency pressures users to act quickly without checking whether the request is legitimate.
```

### If Asked: “Why does social engineering bypass security?”

```text
It may persuade an authorized user to perform an unsafe action, such as sharing credentials or opening a secure door.
```

### If Asked: “How can users defend themselves?”

```text
Users should pause, check red flags, avoid sharing credentials or MFA codes, verify unusual requests through trusted channels, and report suspicious activity.
```

---

## 21. Exam-style Questions

### Question 1 [2 marks]

Define social engineering.

<details>
<summary>Mark Scheme Style Answer</summary>

Social engineering is the manipulation of people into revealing confidential information or performing actions that reduce security.

</details>

---

### Question 2 [4 marks]

Explain how social engineering differs from a technical attack.

<details>
<summary>Mark Scheme Style Answer</summary>

Social engineering targets human behaviour, such as trust, fear, urgency, or helpfulness, to persuade a user to take an unsafe action. A technical attack targets weaknesses in hardware, software, or networks, such as exploiting an unpatched vulnerability. Social engineering may bypass technical controls by convincing an authorized user to misuse their access.

</details>

---

### Question 3 [4 marks]

Explain two reasons why attackers may target people.

<details>
<summary>Mark Scheme Style Answer</summary>

Attackers may target people because users can be pressured by urgency or fear and may act before checking a request. Attackers may also target people because authorized users already have access to systems or data, so tricking the user may bypass technical controls.

</details>

---

### Question 4 [4 marks]

A message claims to be from IT support and asks for an MFA code. Explain why this is suspicious and what the user should do.

<details>
<summary>Mark Scheme Style Answer</summary>

It is suspicious because MFA codes should not be shared, and attackers may use the code to access the user's account. The user should not reply with the code and should verify the request through the official IT/helpdesk channel. The user should report the message as suspicious.

</details>

---

### Question 5 [6 marks]

A school receives an urgent email asking staff to log in using a link to avoid account closure. Explain three red flags.

<details>
<summary>Mark Scheme Style Answer</summary>

One red flag is urgency because the message pressures staff to act quickly without checking. Another red flag is the login link because it may lead to a fake website that steals credentials. A third red flag could be an unusual sender address, a generic greeting, unexpected timing, poor formatting, or a request that does not follow normal school procedure.

</details>

---

### Question 6 [6 marks]

Explain three controls that reduce social engineering risk in an organization.

<details>
<summary>Mark Scheme Style Answer</summary>

Security awareness training helps users recognize red flags such as urgency, suspicious links, and requests for credentials. Multi-factor authentication reduces the impact of stolen passwords because a password alone is not enough to access the account. Verification procedures require unusual requests to be checked through trusted channels before staff share information or perform sensitive actions.

</details>

---

### Question 7 [8 marks]

A company wants to reduce social engineering attacks against employees. Discuss a balanced strategy.

<details>
<summary>Mark Scheme Style Answer</summary>

The company should use staff training so employees can recognize common red flags such as urgency, authority pressure, suspicious links, and requests for credentials. It should also create clear verification procedures for unusual requests, especially payment changes, data requests, or account access issues.

Technical controls are also important. MFA can reduce the damage from stolen passwords, while email filtering and web filtering can block some suspicious messages and links. Access control and least privilege reduce the amount of data an attacker can access if one account is compromised.

The company should encourage quick reporting without blaming employees, because early reporting helps security staff warn others, block threats, and reset affected accounts. Overall, the best approach combines people, process, and technology rather than relying on only one control.

</details>

---

## 22. Guided Practice

### Practice 1

A caller says:

```text
I am from your bank. Read me the code sent to your phone.
```

What is the safest response?

<details>
<summary>Suggested Answer</summary>

Do not share the code. End the call and contact the bank using the official number or app.

</details>

---

### Practice 2

A person says:

```text
I forgot my badge. Can you hold the secure door?
```

What risk is present?

<details>
<summary>Suggested Answer</summary>

Tailgating / unauthorized physical access.

</details>

---

### Practice 3

A message says:

```text
Reply within 5 minutes or your account will be deleted.
```

Which human factor is being exploited?

<details>
<summary>Suggested Answer</summary>

Urgency and fear.

</details>

---

### Practice 4

Why is using a separate trusted channel important?

<details>
<summary>Suggested Answer</summary>

Because contact details in the suspicious message may belong to the attacker. A trusted channel helps verify the request independently.

</details>

---

## 23. Independent Practice

### Question 1

Define social engineering.

### Question 2

Explain why social engineering is a human-focused attack.

### Question 3

Give four human factors used in social engineering.

### Question 4

Explain how social engineering may bypass MFA.

### Question 5

List five red flags in a suspicious message.

### Question 6

Explain why holding a secure door for an unknown person is risky.

### Question 7

Explain why a school should train staff about social engineering.

### Question 8

Explain why a no-blame reporting culture improves security.

### Question 9

Compare social engineering and a technical vulnerability attack.

### Question 10

Write a short response plan for a user who clicked a suspicious login link.

---

## 24. Classroom Activity

### Activity 1: Human Factor Match

Match the message feature to the human factor:

```text
"Act now" → urgency
"I am your manager" → authority
"You will lose access" → fear
"Open this interesting file" → curiosity
"Can you help me quickly?" → helpfulness
```

Students then write a safe response for each.

---

### Activity 2: Red Flag Detective

Students analyse safe, fictional message summaries and identify:

```text
sender issue
urgency
unusual request
credential request
link/attachment risk
normal procedure bypass
```

Do not ask students to create realistic phishing messages.

---

## 25. Homework

### Homework Part A

Explain social engineering in 8-10 sentences using one safe defensive example.

### Homework Part B

Create a table with:

```text
human factor
how it is exploited
safe user response
```

Use at least five human factors.

### Homework Part C

Answer:

```text
1. Why is urgency dangerous?
2. Why should MFA codes never be shared?
3. Why is a trusted verification channel important?
4. Why can social engineering affect even careful users?
5. Why should suspicious incidents be reported?
```

### Homework Part D

Correct these misconceptions:

```text
Social engineering only happens by email.
MFA stops all social engineering.
Only careless users fall for social engineering.
Display names prove identity.
Reporting is unnecessary if no damage is visible.
```

---

## 26. Teacher Notes

### Teaching Emphasis

Focus on:

```text
recognition
defensive response
safe verification
reporting
human factors
scenario-based explanation
```

Avoid:

```text
writing realistic phishing templates
role-playing deception in detail
collecting real personal information
teaching bypass methods
```

### Good Discussion Questions

```text
Why do urgent messages reduce careful thinking?
Why do attackers impersonate authority figures?
Why should reporting be no-blame?
Why are technical controls not enough by themselves?
How can schools make safe reporting easier?
```

---

## 27. One-page Revision Summary

| Point | Summary |
|---|---|
| Social engineering | manipulating people to reduce security |
| Main target | human behaviour |
| Common factors | urgency, fear, authority, trust, curiosity, helpfulness |
| Common goals | credentials, MFA codes, data, money, access |
| Technical difference | targets people rather than only system weaknesses |
| Bypass idea | authorized user is tricked into unsafe action |
| Red flags | urgent pressure, suspicious link, unexpected request |
| Safe verification | use independent trusted channel |
| MFA code rule | never share MFA codes |
| Physical risk | tailgating can bypass access control |
| Defence | training, MFA, access control, reporting |
| Incident response | stop, preserve evidence, report, reset if needed |
| Exam structure | method → human factor → impact → defence |
| Best phrase | Social engineering exploits trust, urgency, or authority to manipulate users into revealing information or bypassing security procedures |

::: tip Next Step
After this page, the next page should be **Phishing and Spear Phishing**, using the real file name `phishing-and-spear-phishing.md`.
:::
