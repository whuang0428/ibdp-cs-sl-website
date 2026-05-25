# Defending Against Social Engineering

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why social engineering needs people, process, and technology controls
- identify common defensive behaviours for users
- explain how verification reduces social engineering risk
- explain how MFA, least privilege, email filtering, and access control reduce damage
- explain why training and awareness must be repeated
- describe safe reporting procedures
- explain the importance of a no-blame reporting culture
- recommend controls for phishing, spear phishing, pretexting, baiting, quid pro quo, tailgating, and OSINT-related risks
- apply defensive controls to school and workplace scenarios
- answer exam-style questions using clear cybersecurity vocabulary

::: warning Defensive Learning Only
This page focuses on prevention, verification, reporting, and safe response. It does not teach how to deceive people, bypass controls, or carry out attacks.
:::

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | Social Engineering Awareness |
| Topic | Defending Against Social Engineering |
| Main skill | Choosing suitable controls to reduce human-focused security risks |
| Connected topics | Phishing, spear phishing, pretexting, tailgating, OSINT, MFA, access control, incident response |
| Practical focus | User behaviour, verification, reporting, technical controls, security culture |
| Exam relevance | Scenario-based defence, explain controls, evaluate balanced strategy |

::: tip Learning Focus
A strong defence against social engineering combines **people**, **process**, and **technology**. No single control is enough.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Defence-in-depth | 纵深防御 | Using multiple layers of controls to reduce risk |
| Security awareness | 安全意识 | User knowledge and habits that reduce security risk |
| Verification | 验证 | Checking whether a request or identity is legitimate |
| Trusted channel | 可信渠道 | Official or independently verified communication path |
| MFA | 多因素认证 | Authentication using more than one factor |
| Least privilege | 最小权限 | Giving users only the access they need |
| Email filtering | 邮件过滤 | System that blocks or labels suspicious emails |
| Web filtering | 网页过滤 | System that blocks known risky websites |
| Access control | 访问控制 | Restricting access to systems, data, or physical areas |
| Visitor management | 访客管理 | Process for checking and recording visitors |
| Reporting procedure | 报告流程 | Steps for users to report suspicious activity |
| No-blame culture | 无责报告文化 | Encourages users to report concerns or mistakes quickly |
| Incident response | 事件响应 | Actions taken after a suspected or confirmed security incident |
| Password manager | 密码管理器 | Tool that stores passwords and may help identify fake domains |
| Data minimization | 数据最小化 | Sharing/storing only necessary information |
| Approval workflow | 审批流程 | Formal process for sensitive actions such as payments or access changes |
| Training simulation | 培训演练 | Safe practice activity to improve recognition and response |
| Audit | 审计 / 检查 | Review of systems, processes, or public information |
| Monitoring | 监控 | Watching for suspicious activity or policy violations |
| Policy | 政策 | Written rule or procedure users should follow |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

防御 social engineering 不能只靠一个工具。因为 social engineering 攻击的是人的判断，所以防御也要同时包含：

```text
people = 人的意识和习惯
process = 正确流程和验证方式
technology = 技术控制和安全工具
```

例如 phishing：

```text
people: 学会识别 red flags
process: 可疑邮件要报告给 IT
technology: email filtering + MFA
```

例如 tailgating：

```text
people: 不随便帮陌生人开门
process: 访客必须 reception sign-in
technology: badge access + CCTV
```

最重要的防御动作是：

```text
pause
verify
do not share credentials or MFA codes
follow normal procedure
report suspicious activity
```

考试里如果问“how to defend”，不要只写一个方法。更高分的答案通常要写：

```text
training / awareness
verification procedure
technical control
reporting / incident response
```

一个好句子：

```text
A balanced defence combines user awareness, trusted verification procedures, technical controls such as MFA, and a clear reporting process.
```

</template>

<template #en>

### English Explanation

Defending against social engineering cannot rely on one tool only. Since social engineering attacks human judgement, defence should include:

```text
people = user awareness and habits
process = correct procedures and verification
technology = security tools and controls
```

Example: phishing

```text
people: learn to identify red flags
process: report suspicious emails to IT
technology: email filtering + MFA
```

Example: tailgating

```text
people: do not open secure doors for unknown people
process: visitors must sign in at reception
technology: badge access + CCTV
```

The most important defensive actions are:

```text
pause
verify
do not share credentials or MFA codes
follow normal procedure
report suspicious activity
```

In exams, if asked “how to defend”, do not write only one method. Stronger answers usually include:

```text
training / awareness
verification procedure
technical control
reporting / incident response
```

Useful sentence:

```text
A balanced defence combines user awareness, trusted verification procedures, technical controls such as MFA, and a clear reporting process.
```

</template>
</LangBlock>

---

## 5. The Defence-in-depth Idea

Defence-in-depth means using multiple layers of protection.

### Simple Definition

```text
Defence-in-depth uses several security controls together so that if one control fails, other controls can still reduce risk.
```

### Example

A phishing email may be reduced by:

```text
email filtering
warning banners
user training
MFA
password manager
reporting button
incident response
```

If the email filter misses the message, user training may still help.  
If the user enters a password, MFA may still reduce damage.  
If the user reports quickly, IT can reset accounts and warn others.

### Mark Scheme Phrase

```text
Defence-in-depth reduces social engineering risk by combining user awareness, procedures, and technical controls.
```

---

## 6. People, Process and Technology

| Layer | Meaning | Examples |
|---|---|---|
| People | user behaviour and awareness | training, red flag recognition, no-blame reporting |
| Process | rules and procedures | verification, approval workflow, visitor sign-in |
| Technology | tools and systems | MFA, email filtering, access control, logging |

### Strong Exam Sentence

```text
Social engineering defence should combine people, process, and technology because attackers may bypass one layer by targeting another.
```

---

## 7. User Awareness Training

Training helps users recognize and respond to social engineering.

### Training Should Cover

```text
phishing red flags
spear phishing and OSINT
MFA code safety
safe verification
tailgating prevention
unknown USB/device risks
reporting steps
common human factors
safe refusal phrases
```

### Good Training Features

```text
regular refreshers
short realistic scenarios
clear reporting instructions
no-blame tone
school/workplace examples
practice identifying red flags
```

### Poor Training Features

```text
one-time lecture only
too much technical jargon
blaming users
no reporting process
unrealistic examples
```

### Mark Scheme Phrase

```text
Security awareness training reduces risk by helping users recognize manipulation and follow safe procedures.
```

---

## 8. Pause and Verify

Users should slow down before acting on unusual requests.

### Pause Checklist

```text
Is the request unexpected?
Is it urgent?
Does it ask for credentials or MFA codes?
Does it ask me to bypass normal procedure?
Is the sender or caller verified?
Is there a link, attachment, QR code, or unknown device?
Could this request be confirmed another way?
```

### Verification Rule

```text
Use an independent trusted channel.
```

### Exam Phrase

```text
Users should pause and verify unusual requests through a trusted channel before sharing information or taking sensitive actions.
```

---

## 9. Trusted Verification Channels

A trusted channel is one that is independent of the suspicious message.

### Safer Channels

```text
official helpdesk portal
known phone number from trusted records
official school/company website typed manually
internal directory
in-person check with known staff
manager/teacher through normal platform
approved finance workflow
```

### Unsafe Channels

```text
replying to the suspicious email
using phone number in suspicious message
clicking login link in the message
trusting display name only
using a QR code from an unknown source
```

### Mark Scheme Phrase

```text
The user should verify using an independent trusted channel rather than contact details provided in the suspicious request.
```

---

## 10. Password and MFA Safety

### Password Rules

```text
use strong unique passwords
do not reuse passwords
do not share passwords
change passwords if compromise is suspected
use a password manager where appropriate
```

### MFA Rules

```text
never share MFA codes
do not approve unexpected MFA prompts
report unexpected login prompts
reset MFA if compromised
```

### Why MFA Helps

MFA reduces risk if a password is stolen because the attacker still needs another authentication factor.

### Limitation

MFA is not perfect if the user is tricked into sharing the code or approving a prompt.

### Exam Phrase

```text
MFA reduces the impact of stolen passwords, but users must not share codes or approve unexpected login requests.
```

---

## 11. Email and Web Filtering

### Email Filtering

Email filtering can:

```text
block known malicious senders
quarantine suspicious messages
warn about external senders
detect some malicious attachments
flag suspicious links
```

### Web Filtering

Web filtering can:

```text
block known malicious sites
warn users before unsafe pages
prevent access to fake login pages
reduce malware downloads
```

### Limitations

```text
some targeted messages may pass filters
new malicious sites may not be known yet
users may still click through warnings
```

### Exam Phrase

```text
Email and web filtering reduce exposure to malicious messages and websites, but they should be combined with user training and reporting.
```

---

## 12. Least Privilege

Least privilege means users only receive the access they need.

### Example

A teacher may need access to their class records, but not every record in the school.

### Why It Helps

If an account is compromised, the attacker has less access.

### Controls

```text
role-based access
regular permission review
remove unused accounts
separate administrator accounts
temporary access with expiry
```

### Mark Scheme Phrase

```text
Least privilege reduces damage from a compromised account because the attacker can only access limited resources.
```

---

## 13. Approval Workflows

Sensitive actions should follow formal approval procedures.

### Examples

```text
payment changes
bank detail updates
new supplier approval
student data release
password reset for another user
access permission change
software installation
```

### Good Workflow

```text
request submitted through official system
identity verified
second person approval where needed
logs kept
no approval through informal message only
```

### Exam Phrase

```text
Approval workflows reduce social engineering risk because sensitive actions must be verified and authorized through a formal process.
```

---

## 14. Reporting Procedures

Users need a simple way to report suspicious activity.

### Reportable Events

```text
suspicious email
unexpected MFA prompt
fake support call
unknown USB device
tailgating attempt
lost badge
clicked suspicious link
entered credentials on suspicious site
unusual account activity
```

### Good Reporting Process

```text
easy to find
clear steps
fast response
no-blame language
confirmation to user
feedback where appropriate
```

### Mark Scheme Phrase

```text
Clear reporting procedures help contain incidents quickly because users know who to contact and what evidence to preserve.
```

---

## 15. No-blame Security Culture

A no-blame culture encourages users to report quickly.

### Why It Matters

If users fear punishment, they may hide mistakes.

### Benefits

```text
faster containment
more suspicious messages reported
better warning to other users
less damage from compromised accounts
improved training based on real incidents
```

### Good Message

```text
Report quickly, even if you clicked. Early reporting protects everyone.
```

### Exam Phrase

```text
A no-blame culture improves security because users are more likely to report mistakes or suspicious events early.
```

---

## 16. Physical Security Controls

Physical security helps defend against tailgating and unauthorized access.

### Controls

```text
badges/access cards
visitor sign-in
reception desk
security guards
CCTV
door alarms
self-closing doors
clear desk policy
screen lock policy
locked cabinets
device inventory
```

### Safe User Behaviour

```text
do not hold secure doors open for unknown people
direct visitors to reception
wear badges visibly
report lost badges
lock screens when away
secure sensitive documents
```

### Exam Phrase

```text
Physical security controls reduce the risk of unauthorized people accessing devices, documents, or restricted areas.
```

---

## 17. Reducing OSINT and Digital Footprint Risk

Public information can help attackers create believable messages.

### Controls

```text
review public website content
limit unnecessary staff/student details
remove metadata from public documents
check photos before posting
blur badges, screens, and documents
use privacy settings
avoid oversharing
train users not to trust messages only because they contain real details
```

### Mark Scheme Phrase

```text
Reducing public information exposure makes it harder for attackers to create convincing targeted social engineering messages.
```

---

## 18. Defending Against Phishing

### User Controls

```text
check sender address
do not click unexpected links
do not open unexpected attachments
do not share credentials or MFA codes
verify through official channels
report suspicious messages
```

### Technical Controls

```text
email filtering
MFA
web filtering
anti-malware
password manager
reporting button
account monitoring
```

### Process Controls

```text
clear reporting
official login portals
regular training
incident response plan
```

### Exam Phrase

```text
Phishing risk can be reduced through user training, email filtering, MFA, safe verification, and quick reporting.
```

---

## 19. Defending Against Spear Phishing

Spear phishing may be more convincing because it uses specific details.

### Controls

```text
train users about targeted messages
verify unusual requests even if details look real
limit public information exposure
use approval workflows
use MFA
review sender identity carefully
report suspicious messages
```

### Key Reminder

```text
real details do not prove the message is safe
```

### Exam Phrase

```text
Spear phishing should be defended against by verifying unusual requests through trusted channels and reducing public information that can be used for targeting.
```

---

## 20. Defending Against Pretexting

### Controls

```text
identity verification
official helpdesk process
do not share passwords or MFA codes
do not grant access based only on a story
staff training
call-back using known number
report suspicious contact
```

### Safe Response

```text
I need to verify this through the official channel.
```

### Exam Phrase

```text
Pretexting risk is reduced by verifying identity and refusing requests for confidential information or access outside normal procedure.
```

---

## 21. Defending Against Baiting and Quid Pro Quo

### Baiting Controls

```text
do not plug in unknown USB devices
avoid untrusted downloads
use approved software sources
report suspicious devices or offers
anti-malware scanning
device control policy
```

### Quid Pro Quo Controls

```text
do not exchange credentials/MFA codes for help
verify support requests
use official helpdesk
deny unexpected remote access requests
report suspicious offers
```

### Exam Phrase

```text
Baiting and quid pro quo risks are reduced by avoiding unknown devices or downloads and verifying offers of help through official channels.
```

---

## 22. Defending Against Tailgating

### Controls

```text
badge access
visitor sign-in
security guards
CCTV
door alarms
staff awareness
clear challenge procedure
reception process
```

### Safe Response

```text
do not let unknown people follow through secure doors
politely direct them to reception
report suspicious behaviour
```

### Exam Phrase

```text
Tailgating can be reduced by requiring each person to authenticate or sign in and by training staff not to let unknown people bypass access control.
```

---

## 23. Incident Response Link

Defence also includes responding after something suspicious happens.

### Basic Steps

```text
stop interacting
preserve evidence if safe
report immediately
change password if credentials were entered
reset MFA if needed
block suspicious links/accounts
warn other users
review logs
follow incident response procedure
```

### Why It Matters

```text
limits damage
protects other users
helps investigation
improves future training
```

### Exam Phrase

```text
Prompt incident response helps contain damage and prevent the same attack from affecting more users.
```

---

## 24. School Scenario

### Scenario

A teacher receives an urgent message with a login link saying the school platform account will be disabled.

### Suitable Defence

```text
teacher training to recognize urgency and fake login risk
do not click the link
open official platform manually
MFA on school accounts
report to IT
email filtering to reduce similar messages
IT warns other staff if needed
```

### Exam-style Answer

```text
The school should train staff to recognize urgent login messages as possible phishing. Staff should verify by opening the official platform manually rather than clicking the link. MFA and email filtering reduce risk, and clear reporting allows IT to warn others and reset affected accounts.
```

---

## 25. Workplace Scenario

### Scenario

An employee receives an urgent message from a senior-looking account asking for supplier bank details to be changed.

### Suitable Defence

```text
approval workflow for bank changes
call-back verification using known number
staff training about authority pressure
do not act through informal message only
least privilege for finance systems
report suspicious request
```

### Exam-style Answer

```text
The organization should require supplier payment changes to go through a formal approval workflow and independent verification. This prevents an employee from changing details based only on an urgent message that may be impersonating a manager.
```

---

## 26. Physical Security Scenario

### Scenario

An unknown person tries to enter a staff-only area by following an employee.

### Suitable Defence

```text
badge access
visitor sign-in
staff training
polite challenge procedure
CCTV
reporting
```

### Exam-style Answer

```text
Staff should not let unknown people follow them into restricted areas. The person should be directed to reception or security. Badges, visitor sign-in, and awareness training reduce the chance of unauthorized physical access.
```

---

## 27. Common Mistakes in Defence

| Mistake | Why It Is Weak | Better Approach |
|---|---|---|
| relying only on training | users may still make mistakes | combine with MFA, filtering, reporting |
| relying only on technology | targeted messages may pass filters | train users and use verification |
| blaming users | discourages reporting | create no-blame culture |
| unclear reporting route | users may delay | provide simple reporting steps |
| no verification process | users improvise | define trusted channels |
| too much public information | supports spear phishing | use data minimization |
| shared badges/passwords | destroys accountability | individual access only |
| no incident response plan | slow containment | prepare response steps |
| no regular refreshers | awareness fades | repeat training |
| technical jargon in policies | users misunderstand | use clear language |

---

## 28. Scenario Answer Bank

### If Asked: “How can social engineering be defended against?”

```text
A balanced defence combines user awareness training, trusted verification procedures, technical controls such as MFA and filtering, and clear reporting or incident response.
```

### If Asked: “Why is training useful?”

```text
Training helps users recognize red flags, understand manipulation techniques, and follow safe procedures before acting.
```

### If Asked: “Why is verification useful?”

```text
Verification checks whether a request is legitimate before the user shares information or performs a sensitive action.
```

### If Asked: “Why is MFA useful?”

```text
MFA reduces the impact of stolen passwords because the attacker needs another authentication factor.
```

### If Asked: “Why is least privilege useful?”

```text
Least privilege limits damage from a compromised account because the attacker only gets limited access.
```

### If Asked: “Why is reporting important?”

```text
Reporting helps the organization contain the incident, warn others, block threats, and reset affected accounts.
```

---

## 29. Exam-style Questions

### Question 1 [4 marks]

Explain why technical controls alone are not enough to defend against social engineering.

<details>
<summary>Mark Scheme Style Answer</summary>

Social engineering targets human behaviour and may persuade an authorized user to perform an unsafe action, such as sharing a password, approving an MFA request, opening a secure door, or sending confidential data. Technical controls help, but users also need awareness training, trusted verification procedures, and clear reporting routes.

</details>

---

### Question 2 [4 marks]

Explain two ways user awareness training reduces social engineering risk.

<details>
<summary>Mark Scheme Style Answer</summary>

Training helps users recognize red flags such as urgency, suspicious links, requests for MFA codes, and unusual sender details. It also teaches users safe responses, such as verifying through trusted channels and reporting suspicious messages instead of clicking or replying.

</details>

---

### Question 3 [4 marks]

Explain why MFA reduces risk but does not remove all phishing risk.

<details>
<summary>Mark Scheme Style Answer</summary>

MFA reduces risk because a stolen password alone may not be enough to access the account. However, phishing can still trick users into sharing one-time codes or approving unexpected login prompts, so users must not share MFA codes and should report suspicious prompts.

</details>

---

### Question 4 [5 marks]

A school wants staff to verify suspicious IT requests. Explain a suitable verification procedure.

<details>
<summary>Mark Scheme Style Answer</summary>

Staff should not reply to suspicious messages or use phone numbers included in them. They should contact IT using the official helpdesk portal, known school phone number, or internal directory. Requests for passwords or MFA codes should be refused and reported.

</details>

---

### Question 5 [6 marks]

Explain three controls that reduce phishing risk.

<details>
<summary>Mark Scheme Style Answer</summary>

User training helps users identify suspicious links, attachments, urgency, and credential requests. Email filtering can block or quarantine some suspicious messages before users see them. MFA reduces the impact if a password is stolen because another authentication factor is required. Other valid answers include reporting procedures, web filtering, password managers, and incident response.

</details>

---

### Question 6 [6 marks]

Explain three controls that reduce tailgating risk.

<details>
<summary>Mark Scheme Style Answer</summary>

Badge access requires each person to authenticate before entering a restricted area. Visitor sign-in ensures visitors are recorded and directed or escorted properly. Staff awareness training teaches users not to hold secure doors open for unknown people and to report suspicious behaviour. Other valid answers include CCTV, door alarms, and security guards.

</details>

---

### Question 7 [8 marks]

A company is worried about spear phishing using public information from its website and social media. Discuss a suitable defence strategy.

<details>
<summary>Mark Scheme Style Answer</summary>

The company should review public websites, social media, photos, and documents to reduce unnecessary exposure of staff names, roles, internal systems, badges, office details, and metadata. This reduces the information available to make spear phishing messages appear legitimate.

Staff should be trained not to trust messages only because they contain real company details. Unusual requests, especially payments, credential requests, or data requests, should be verified through trusted channels and formal approval workflows.

Technical controls such as MFA, email filtering, web filtering, and least privilege should also be used. MFA reduces damage from stolen passwords, and least privilege limits what a compromised account can access. A clear reporting process helps security staff warn others and contain incidents quickly.

</details>

---

### Question 8 [8 marks]

Discuss why a no-blame reporting culture is important for defending against social engineering.

<details>
<summary>Mark Scheme Style Answer</summary>

A no-blame reporting culture is important because users may hide mistakes if they fear punishment or embarrassment. If a user clicked a suspicious link or shared information, early reporting allows the organization to reset passwords, block links, review logs, warn others, and reduce damage.

It also increases the number of suspicious messages or incidents reported, giving the organization better information about current threats. This can improve training and controls. A no-blame culture should still include learning and improvement, but the focus is quick containment rather than blaming the user.

</details>

---

## 30. Guided Practice

### Practice 1

Why should users not verify a suspicious message by replying to it?

<details>
<summary>Suggested Answer</summary>

Because the reply goes back to the suspicious sender and may continue the attack. Verification should use an independent trusted channel.

</details>

---

### Practice 2

What control reduces damage if a password is stolen?

<details>
<summary>Suggested Answer</summary>

MFA and least privilege both help. MFA adds another login factor; least privilege limits accessible resources.

</details>

---

### Practice 3

Why is email filtering not enough by itself?

<details>
<summary>Suggested Answer</summary>

Some targeted or new phishing messages may pass filters, so users still need awareness, verification, and reporting.

</details>

---

### Practice 4

What should a user do with an unknown USB device?

<details>
<summary>Suggested Answer</summary>

Do not plug it in. Report or hand it to IT/security/teacher according to policy.

</details>

---

### Practice 5

Why is no-blame reporting useful?

<details>
<summary>Suggested Answer</summary>

It encourages users to report suspicious activity or mistakes quickly, helping contain damage.

</details>

---

## 31. Independent Practice

### Question 1

Explain defence-in-depth.

### Question 2

Explain why people, process, and technology are all needed.

### Question 3

List five user behaviours that reduce social engineering risk.

### Question 4

Explain why trusted verification channels matter.

### Question 5

Explain how MFA helps and what its limitation is.

### Question 6

Explain why least privilege reduces damage.

### Question 7

Explain three controls against phishing.

### Question 8

Explain three controls against tailgating.

### Question 9

Explain how reducing public information helps defend against spear phishing.

### Question 10

Write a short incident response plan for a user who clicked a suspicious link.

---

## 32. Classroom Activity

### Activity 1: Control Matching

Match risk to control:

```text
phishing link → email filtering / training / reporting
unknown USB → device policy / reporting
tailgating → badge access / visitor sign-in
fake payment request → approval workflow
public staff details → data minimization
stolen password → MFA / password reset
```

---

### Activity 2: Build a Defence Stack

Students choose controls for a fictional school:

```text
training
MFA
email filtering
visitor sign-in
reporting process
least privilege
privacy review
incident response
```

They must explain which layer each control belongs to:

```text
people
process
technology
```

---

### Activity 3: Safe Reporting Role-play

Students practise reporting clearly:

```text
what happened
when it happened
what was clicked/shared
what account/device was involved
what evidence is available
```

Focus on no-blame language and quick reporting.

---

## 33. Homework

### Homework Part A

Explain how to defend against social engineering in 8-10 sentences using people, process, and technology.

### Homework Part B

Create a table:

```text
attack type
risk
people control
process control
technology control
```

Use at least five attack types.

### Homework Part C

Answer:

```text
1. Why is MFA useful but not perfect?
2. Why should verification use a trusted channel?
3. Why does least privilege reduce damage?
4. Why should suspicious incidents be reported quickly?
5. Why should training be repeated?
```

### Homework Part D

Correct these misconceptions:

```text
Technology alone can stop all social engineering.
Training once is enough.
MFA means users can safely share passwords.
Reporting is only needed after confirmed damage.
A message with real details does not need verification.
```

---

## 34. Teacher Notes

### Teaching Emphasis

Focus on:

```text
balanced defence
people + process + technology
safe verification
clear reporting
no-blame culture
scenario-based control choice
```

Avoid:

```text
teaching bypass methods
asking students to create attack messages
victim blaming
testing real systems without permission
```

### Suggested Discussion Questions

```text
Why is one control not enough?
How can a school make reporting easy?
Why should finance/payment changes have formal approval?
How can public information increase spear phishing risk?
What is the difference between prevention and response?
```

---

## 35. One-page Revision Summary

| Point | Summary |
|---|---|
| Defence-in-depth | multiple layers of protection |
| People | awareness, habits, reporting |
| Process | verification, approval workflow, visitor sign-in |
| Technology | MFA, filtering, access control, logging |
| Training | helps users recognize red flags |
| Verification | checks requests before sensitive action |
| Trusted channel | independent official communication path |
| MFA | reduces damage from stolen passwords |
| Least privilege | limits access if account is compromised |
| Email filtering | blocks or flags some suspicious messages |
| Physical security | protects buildings, rooms, devices, records |
| Data minimization | reduces public details for targeting |
| Reporting | helps contain and warn others |
| No-blame culture | encourages early reporting |
| Incident response | actions after suspected attack |
| Best exam structure | attack risk → people control → process control → technology control |
| Best phrase | A balanced defence against social engineering combines user awareness, trusted verification procedures, technical controls, and clear reporting. |

::: tip Next Step
After this page, the next page should be **Incident Response and Reporting**, using the real file name `incident-response-reporting.md`.
:::
