# Phishing and Spear Phishing

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define phishing
- define spear phishing
- distinguish phishing and spear phishing
- explain why spear phishing can be more convincing than general phishing
- identify common red flags in suspicious messages
- explain how phishing may lead to credential theft, malware, or data loss
- explain why links, attachments, QR codes, and login pages can be risky
- recommend safe defensive actions when a suspicious message is received
- explain how MFA, email filtering, user training, and reporting reduce risk
- answer exam-style questions using clear cybersecurity vocabulary

::: warning Defensive Learning Only
This page is for recognition, prevention, and reporting. It uses safe, simplified examples and does not teach how to write convincing phishing messages.
:::

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | Social Engineering Awareness |
| Topic | Phishing and Spear Phishing |
| Main skill | Recognizing deceptive messages and choosing safe responses |
| Connected topics | Social engineering, authentication, MFA, malware, OSINT, incident response |
| Practical focus | Red flags, verification, reporting, safe user behaviour |
| Exam relevance | Definitions, comparison, scenario-based defence, impact explanation |

::: tip Learning Focus
Phishing is usually broad and sent to many users. Spear phishing is targeted and uses specific information to appear more believable.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Phishing | 网络钓鱼 | Deceptive message designed to trick users into revealing information or taking unsafe action |
| Spear phishing | 鱼叉式网络钓鱼 | Targeted phishing aimed at a specific person or organization |
| Credential theft | 凭证盗窃 | Stealing login details such as username and password |
| Fake login page | 假登录页面 | Website pretending to be legitimate to capture credentials |
| Malicious link | 恶意链接 | Link that leads to unsafe or deceptive content |
| Malicious attachment | 恶意附件 | File that may contain malware or unsafe code |
| QR phishing | 二维码钓鱼 | Using a QR code to direct users to a suspicious site |
| Sender spoofing | 发件人伪造 | Making a message appear to come from a trusted sender |
| Display name | 显示名称 | Name shown in email/chat, which may be misleading |
| Domain | 域名 | Website/email address name used to identify a service |
| Red flag | 风险信号 | Warning sign that a message may be suspicious |
| Urgency | 紧迫感 | Pressure to act quickly |
| Attachment | 附件 | File included with a message |
| Verification | 验证 | Checking whether a request is legitimate |
| Trusted channel | 可信渠道 | Official or independently verified communication path |
| Reporting | 报告 | Informing IT/security/teacher/manager about a suspected issue |
| MFA | 多因素认证 | Authentication using more than one factor |
| Email filtering | 邮件过滤 | System that blocks or labels suspicious emails |
| Awareness training | 安全意识培训 | Teaching users how to recognize and respond to threats |
| Incident response | 事件响应 | Steps taken after a suspected or confirmed security incident |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Phishing（网络钓鱼）是一种常见的 social engineering attack。攻击者会发送假的信息，让用户做危险行为。

常见目标包括：

```text
让用户输入账号密码
让用户输入 MFA code
让用户点击链接
让用户下载附件
让用户打开假登录页面
让用户发送敏感信息
```

Phishing 通常是“大范围发送”，比如发给很多人：

```text
Your account will be closed. Click here.
```

Spear phishing 更有针对性。它可能会使用真实信息，比如：

```text
你的名字
学校/公司名字
部门
职位
最近活动
同事或老师名字
```

所以 spear phishing 往往更难识别，因为它看起来更像真的。

防御重点：

```text
不要因为紧急就马上点
不要分享 password 或 MFA code
不要直接用邮件里的链接登录
用官方渠道核实
发现可疑信息及时报告
```

考试答题时常用结构：

```text
red flag → possible risk → safe response
```

</template>

<template #en>

### English Explanation

Phishing is a common social engineering attack. The attacker sends a deceptive message to make the user take an unsafe action.

Common goals include:

```text
making the user enter username and password
making the user enter an MFA code
making the user click a link
making the user download an attachment
making the user open a fake login page
making the user send sensitive information
```

General phishing is often sent broadly to many people, for example:

```text
Your account will be closed. Click here.
```

Spear phishing is more targeted. It may use real information, such as:

```text
your name
school/company name
department
job role
recent event
colleague or teacher name
```

Therefore, spear phishing can be harder to detect because it appears more legitimate.

Defensive focus:

```text
do not act only because it feels urgent
do not share passwords or MFA codes
do not log in directly through email links
verify through official channels
report suspicious messages quickly
```

For exam answers, use:

```text
red flag → possible risk → safe response
```

</template>
</LangBlock>

---

## 5. What Is Phishing?

Phishing is a deceptive message designed to trick users.

### Simple Definition

```text
Phishing is a social engineering attack where a deceptive message is used to trick users into revealing sensitive information or performing unsafe actions.
```

### Common Channels

```text
email
SMS/text message
instant messaging
social media
fake websites
QR codes
voice calls linked with messages
```

### Common Goals

```text
steal usernames and passwords
steal MFA codes
install malware
collect personal data
steal payment details
trick users into sending files
redirect users to fake websites
```

### Mark Scheme Phrase

```text
Phishing uses deceptive messages to trick users into revealing confidential information, clicking malicious links, or opening unsafe attachments.
```

---

## 6. What Is Spear Phishing?

Spear phishing is targeted phishing.

### Simple Definition

```text
Spear phishing is a targeted phishing attack aimed at a specific person, group, or organization.
```

### What Makes It Targeted?

It may include:

```text
real name
school or company name
department
job title
recent event
teacher/manager/colleague name
known system or platform
publicly available information
```

### Why It Can Be More Effective

```text
appears more personal
appears more relevant
uses familiar context
may match real workplace/school routines
may reduce suspicion
```

### Mark Scheme Phrase

```text
Spear phishing is more targeted than general phishing because it uses information about the victim or organization to make the message appear more believable.
```

---

## 7. Phishing vs Spear Phishing

| Feature | Phishing | Spear Phishing |
|---|---|---|
| Target | many users | specific person/group |
| Personalization | low | high |
| Message style | generic | tailored |
| Information used | little specific information | names, roles, events, organization details |
| Detection | may be easier | may be harder |
| Example context | generic account warning | message related to user's school/work role |
| Main risk | many users may be exposed | target may trust it more |

### Strong Comparison Answer

```text
Phishing is usually a broad deceptive message sent to many users, while spear phishing is targeted and uses specific information about the victim or organization to appear more legitimate.
```

---

## 8. How Phishing Works at a High Level

A phishing attempt usually follows this pattern:

```text
1. User receives a deceptive message.
2. Message creates trust, urgency, fear, or curiosity.
3. User is asked to click, open, reply, scan, or log in.
4. User may reveal information or trigger unsafe content.
5. Attacker may use the information or access gained.
```

### Defensive Interruption Points

The user can stop the attack by:

```text
not clicking the link
not opening the attachment
not sharing credentials/MFA codes
verifying through a trusted channel
reporting the message
```

---

## 9. Common Red Flags

### Sender Red Flags

```text
unfamiliar sender
slightly unusual email address
display name does not match address
external sender pretending to be internal
reply-to address looks different
message sent at unusual time
```

### Message Red Flags

```text
urgent pressure
threat of account closure
unexpected request
generic greeting
unusual tone
grammar or formatting issues
request for password or MFA code
request to bypass normal process
```

### Link / Attachment Red Flags

```text
shortened link
link text and actual URL do not match
unexpected attachment
file type seems unusual
QR code asks for login
link leads to unfamiliar domain
```

### Mark Scheme Phrase

```text
Red flags include urgent pressure, unusual sender details, unexpected links or attachments, and requests for credentials or MFA codes.
```

---

## 10. Links and Fake Login Pages

A phishing link may lead to a fake website that looks similar to a real login page.

### Risk

The user may enter:

```text
username
password
MFA code
personal information
payment details
```

### Safer Behaviour

```text
do not use login links from suspicious messages
type the official website address manually
use bookmarks or official apps
check the domain carefully
report suspicious pages/messages
```

### Exam Phrase

```text
A fake login page can capture credentials entered by the user, allowing an attacker to access the real account.
```

---

## 11. Attachments

Attachments can be risky if they are unexpected or from an untrusted source.

### Possible Risks

```text
malware infection
macro-enabled document
fake invoice
unsafe script
data theft
ransomware
```

### Safer Behaviour

```text
do not open unexpected attachments
verify the sender through a separate trusted channel
use anti-malware scanning
report suspicious attachments
follow organization policy
```

### Exam Phrase

```text
Unexpected attachments may contain malware, so users should verify the sender and avoid opening files that are not expected.
```

---

## 12. QR Phishing

QR phishing uses QR codes to send users to suspicious websites.

### Why It Can Work

```text
users cannot easily see the destination before scanning
phone security controls may differ from computer controls
QR codes feel normal in many places
```

### Safe Behaviour

```text
avoid scanning unknown QR codes
check the displayed URL before opening
use official apps/websites
do not enter credentials after scanning an unknown code
report suspicious QR codes
```

### Exam Phrase

```text
QR phishing is risky because the user may not see the destination clearly before opening the link.
```

---

## 13. MFA Codes and Phishing

MFA reduces risk, but users must not share MFA codes.

### Risk

If a user shares an MFA code, an attacker may use it to complete login.

### Safe Rule

```text
Never share MFA codes with another person.
```

### If an MFA Prompt Appears Unexpectedly

```text
deny the request
change password if needed
report to IT/security
check account activity
```

### Exam Phrase

```text
MFA reduces the impact of stolen passwords, but users must still avoid sharing one-time codes or approving unexpected login requests.
```

---

## 14. Spear Phishing and OSINT

Spear phishing may use publicly available information.

### Possible Public Information

```text
staff names
student or teacher roles
school events
department names
email patterns
social media posts
public documents
photos
job titles
```

### Why This Matters

A message that includes real details may appear trustworthy.

### Defence

```text
limit unnecessary public information
check privacy settings
train staff about targeted attacks
verify unusual requests
avoid trusting a message only because it contains real details
```

### Exam Phrase

```text
OSINT can make spear phishing more convincing because attackers can include real names, roles, or events in the message.
```

---

## 15. Safe Verification

When a message asks for something sensitive, verify it.

### Unsafe Verification

```text
replying to the suspicious message
calling the number in the message
clicking the message link
using contact details supplied by the sender
```

### Safe Verification

```text
use the official website typed manually
use known contact details from trusted records
contact IT/helpdesk through the official system
ask the person through a separate trusted channel
check with a manager or teacher using normal process
```

### Mark Scheme Phrase

```text
The request should be verified through an independent trusted channel rather than using contact details contained in the suspicious message.
```

---

## 16. What To Do If a Suspicious Message Arrives

Safe response steps:

```text
do not click links
do not open attachments
do not reply with sensitive information
do not share passwords or MFA codes
take a screenshot or preserve evidence if safe
report the message to IT/security/teacher/manager
delete or quarantine only according to policy
```

### If Credentials Were Entered

```text
change password immediately
report the incident
reset MFA if needed
check recent account activity
warn IT/security so they can protect others
```

### Exam Phrase

```text
The user should stop interacting with the message, report it, and change credentials if they were entered on a suspicious site.
```

---

## 17. Defensive Controls

| Control | How It Reduces Risk |
|---|---|
| User training | helps users recognize red flags |
| MFA | reduces impact of stolen passwords |
| Email filtering | blocks or labels suspicious emails |
| Web filtering | blocks known malicious websites |
| Reporting button/process | allows quick investigation |
| Verified communication channels | reduces fake request success |
| Least privilege | limits damage from compromised accounts |
| Password manager | may help detect fake domains |
| Anti-malware | detects some unsafe attachments |
| Incident response plan | guides quick containment |

### Key Point

A strong defence combines:

```text
people + process + technology
```

---

## 18. School Scenario

### Scenario

A teacher receives a message saying:

```text
Your learning platform account will be disabled today. Log in now to confirm your account.
```

### Red Flags

```text
urgent deadline
login link
unexpected account warning
possible unusual sender
pressure to act quickly
```

### Possible Impact

```text
teacher credentials stolen
student data accessed
fake messages sent from teacher account
learning platform changed or disrupted
```

### Safe Response

```text
do not click the link
go to the official platform manually
contact school IT using official channel
report the message
```

---

## 19. Business Scenario

### Scenario

An employee receives a message that appears to come from a senior manager asking for an urgent payment change.

### Red Flags

```text
urgent financial request
authority pressure
request outside normal process
possible sender spoofing
confidential or sensitive action
```

### Safe Response

```text
do not make the change immediately
verify through approved finance process
contact manager through known channel
report suspicious request
```

### Exam Phrase

```text
Payment or bank detail changes should be verified using official procedures because attackers may impersonate senior staff or suppliers.
```

---

## 20. Common Misconceptions

| Misconception | Correction |
|---|---|
| Phishing only happens by email | it can happen by SMS, chat, social media, QR code, or fake websites |
| Spear phishing is easy to spot | it may use real details and appear believable |
| MFA stops all phishing | users can still be tricked into sharing codes or approving prompts |
| A message is safe if it uses my real name | real names can come from public sources or breaches |
| Display name proves sender identity | display names can be copied |
| Spelling mistakes always appear | modern phishing can be well-written |
| Only attachments are dangerous | links, QR codes, replies, and login pages can also be risky |
| Reporting is only needed after damage | early reporting can protect other users |
| Clicking is harmless if no login happens | links may track users or lead to further risk |
| A familiar logo proves legitimacy | logos can be copied |

---

## 21. Scenario Answer Bank

### If Asked: “Define phishing”

```text
Phishing is a social engineering attack where a deceptive message tricks users into revealing sensitive information or performing unsafe actions.
```

### If Asked: “Define spear phishing”

```text
Spear phishing is targeted phishing aimed at a specific person, group, or organization, often using personal or organizational details.
```

### If Asked: “Compare phishing and spear phishing”

```text
Phishing is usually broad and generic, while spear phishing is targeted and personalized, making it harder to detect.
```

### If Asked: “Why are phishing links risky?”

```text
They may lead to fake login pages or malicious websites that steal credentials or install malware.
```

### If Asked: “What should a user do with a suspicious message?”

```text
The user should not click links or open attachments, should verify through a trusted channel, and should report the message.
```

### If Asked: “Why is spear phishing convincing?”

```text
It may include real details from public information, making the message look more relevant and trustworthy.
```

---

## 22. Exam-style Questions

### Question 1 [2 marks]

Define phishing.

<details>
<summary>Mark Scheme Style Answer</summary>

Phishing is a social engineering attack where a deceptive message tricks users into revealing sensitive information or performing unsafe actions.

</details>

---

### Question 2 [2 marks]

Define spear phishing.

<details>
<summary>Mark Scheme Style Answer</summary>

Spear phishing is targeted phishing aimed at a specific person, group, or organization, often using personal or organizational details to appear more legitimate.

</details>

---

### Question 3 [4 marks]

Distinguish between phishing and spear phishing.

<details>
<summary>Mark Scheme Style Answer</summary>

Phishing is usually a broad deceptive message sent to many users, often with generic content. Spear phishing is targeted at a specific person or organization and may use names, roles, events, or other details to appear more believable.

</details>

---

### Question 4 [4 marks]

Explain why a fake login page is dangerous.

<details>
<summary>Mark Scheme Style Answer</summary>

A fake login page may look like a real service and trick users into entering usernames, passwords, or MFA codes. The attacker can then capture those details and use them to access the real account.

</details>

---

### Question 5 [6 marks]

A student receives a message saying their school account will be deleted unless they scan a QR code and log in immediately. Explain three red flags.

<details>
<summary>Mark Scheme Style Answer</summary>

One red flag is urgency because the message pressures the student to act immediately. Another red flag is the QR code because the destination may be hidden or difficult to check before opening. A third red flag is the request to log in through an unexpected message, which may lead to a fake login page that steals credentials.

</details>

---

### Question 6 [6 marks]

Explain three controls that reduce phishing risk.

<details>
<summary>Mark Scheme Style Answer</summary>

User awareness training helps users recognize red flags such as urgent pressure, suspicious links, and requests for credentials. MFA reduces the risk from stolen passwords because the attacker needs another factor to log in. Email filtering can block or label suspicious messages before users open them.

</details>

---

### Question 7 [8 marks]

A school wants to reduce phishing and spear phishing risks. Discuss a suitable strategy.

<details>
<summary>Mark Scheme Style Answer</summary>

The school should train staff and students to recognize phishing red flags, such as urgent account warnings, unexpected login links, suspicious attachments, and requests for MFA codes. Since spear phishing may use school-specific details, users should be taught not to trust a message only because it contains a real name or event.

The school should also use technical controls such as MFA, email filtering, web filtering, anti-malware, and secure password practices. MFA reduces the damage if a password is stolen, while filtering can block some suspicious messages.

Clear reporting is important. Users should know how to report suspicious messages without fear of blame. IT staff can then warn others, block links, and reset affected accounts. Overall, the best approach combines training, verification procedures, and technical controls.

</details>

---

## 23. Guided Practice

### Practice 1

A message says:

```text
Your account closes today. Log in now.
```

What red flag is present?

<details>
<summary>Suggested Answer</summary>

Urgency / fear / unexpected login request.

</details>

---

### Practice 2

A message uses your real teacher's name. Does that prove it is safe?

<details>
<summary>Suggested Answer</summary>

No. Real names can come from public information or previous data leaks. The request still needs to be checked.

</details>

---

### Practice 3

Why should users avoid sharing MFA codes?

<details>
<summary>Suggested Answer</summary>

An attacker may use the MFA code to complete login to the user's account.

</details>

---

### Practice 4

What should a user do before opening an unexpected attachment?

<details>
<summary>Suggested Answer</summary>

Verify the sender through a separate trusted channel and report the message if suspicious.

</details>

---

### Practice 5

Why is spear phishing often harder to detect?

<details>
<summary>Suggested Answer</summary>

It uses specific information about the target or organization, making the message appear more legitimate.

</details>

---

## 24. Independent Practice

### Question 1

Define phishing.

### Question 2

Define spear phishing.

### Question 3

List five red flags in a phishing message.

### Question 4

Explain why QR codes can be risky in phishing.

### Question 5

Explain why a fake login page can steal credentials.

### Question 6

Compare phishing and spear phishing.

### Question 7

Explain how OSINT can make spear phishing more convincing.

### Question 8

Describe what a user should do after entering a password on a suspicious page.

### Question 9

Explain why email filtering alone is not enough.

### Question 10

Explain how MFA helps but does not remove all phishing risk.

---

## 25. Classroom Activity

### Activity 1: Red Flag Checklist

Students analyse safe, fictional message summaries and identify:

```text
sender issue
urgency
unexpected link
attachment risk
credential request
MFA code request
normal procedure bypass
```

---

### Activity 2: Safe Verification Practice

Students practise safe responses:

```text
I will check this through the official school portal.
I cannot share MFA codes.
I will contact IT through the helpdesk.
I will ask my teacher/manager through a separate channel.
I will report this message.
```

---

### Activity 3: Phishing vs Spear Phishing Sort

Students sort simplified scenarios into:

```text
general phishing
spear phishing
not enough information
```

They justify using evidence from the scenario.

---

## 26. Homework

### Homework Part A

Explain phishing and spear phishing in 8-10 sentences.

### Homework Part B

Create a table:

```text
red flag
why it is risky
safe response
```

Use at least six red flags.

### Homework Part C

Answer:

```text
1. Why is spear phishing often more convincing?
2. Why should users avoid clicking login links in unexpected messages?
3. Why are MFA codes sensitive?
4. Why should suspicious messages be reported quickly?
5. Why should users verify requests through trusted channels?
```

### Homework Part D

Correct these misconceptions:

```text
A message is safe if it uses my real name.
All phishing has spelling mistakes.
MFA makes phishing impossible.
Only email links are risky.
A familiar logo proves a message is legitimate.
```

---

## 27. Teacher Notes

### Teaching Emphasis

Focus on:

```text
recognition
safe response
trusted verification
reporting
phishing vs spear phishing comparison
impact and controls
```

Avoid asking students to write realistic phishing messages. Use defensive analysis only.

### Suggested Discussion Questions

```text
Why can spear phishing look more believable?
Why should MFA codes never be shared?
Why is reporting important even if the user did not click?
Why is a combination of training and technology needed?
```

---

## 28. One-page Revision Summary

| Point | Summary |
|---|---|
| Phishing | deceptive message to steal data or trigger unsafe action |
| Spear phishing | targeted phishing using specific details |
| Main difference | broad/generic vs targeted/personalized |
| Common goals | credentials, MFA codes, malware, data, money |
| Link risk | fake login page or malicious website |
| Attachment risk | malware or unsafe file |
| QR risk | destination may be hidden |
| MFA rule | never share MFA codes |
| Red flags | urgency, suspicious sender, unexpected link, credential request |
| Safe response | do not click/open/reply with sensitive data |
| Verification | use independent trusted channel |
| Reporting | helps warn others and contain damage |
| Controls | training, MFA, email filtering, web filtering, reporting |
| Exam structure | red flag → risk → safe response |
| Best phrase | Spear phishing is more targeted than general phishing because it uses information about the victim or organization to appear more believable |

::: tip Next Step
After this page, the next page should be **Pretexting, Baiting and Quid Pro Quo**, using the real file name `pretexting-baiting-quid-pro-quo.md`.
:::
