# Pretexting, Baiting and Quid Pro Quo

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define pretexting
- define baiting
- define quid pro quo attacks
- distinguish pretexting, baiting, and quid pro quo
- explain how false identity, false stories, rewards, and fake help can manipulate users
- identify safe, high-level examples of these attack types
- explain possible impacts on individuals, schools, and organizations
- recommend safe defensive behaviours
- explain how verification procedures reduce risk
- explain why users should avoid unknown USB devices, unexpected downloads, and requests for credentials
- answer exam-style questions using clear cybersecurity vocabulary

::: warning Defensive Learning Only
This page is for recognition, prevention, and reporting. It uses safe, simplified examples and does not teach how to perform deception or create convincing attack scenarios.
:::

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | Social Engineering Awareness |
| Topic | Pretexting, Baiting and Quid Pro Quo |
| Main skill | Recognizing manipulation based on false stories, temptation, or fake exchange |
| Connected topics | Social engineering, phishing, OSINT, physical security, incident response |
| Practical focus | Red flags, safe verification, refusal, reporting |
| Exam relevance | Definitions, comparison, scenario-based defence, impact and controls |

::: tip Learning Focus
Pretexting uses a false story. Baiting uses temptation. Quid pro quo offers a fake benefit or help in exchange for information or access.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Pretexting | 借口攻击 / 编造身份 | Creating a false story or identity to gain trust |
| Pretext | 借口 / 背景故事 | The fake reason or situation used to justify a request |
| Baiting | 诱饵攻击 | Tempting a user with something attractive to make them act unsafely |
| Bait | 诱饵 | The attractive object, offer, download, or reward |
| Quid pro quo | 交换式诱骗 | Offering help or benefit in exchange for information or access |
| Impersonation | 冒充 | Pretending to be someone trusted |
| Trust | 信任 | Belief that a person or request is legitimate |
| Authority | 权威 | Influence from someone who appears senior or official |
| Curiosity | 好奇心 | Desire to open or investigate something interesting |
| Reward | 奖励 | Benefit used to tempt the user |
| Fake support | 假技术支持 | Pretending to help while requesting access or information |
| Confidential information | 机密信息 | Sensitive data such as passwords, MFA codes, files, or records |
| Unknown USB | 未知 U 盘 | Untrusted removable device that may contain malware |
| Verification | 验证 | Checking whether a request or identity is legitimate |
| Trusted channel | 可信渠道 | Official or independently verified communication path |
| Red flag | 风险信号 | Warning sign that something may be suspicious |
| Reporting | 报告 | Informing the correct person/team about a suspected security issue |
| Least privilege | 最小权限 | Giving users only the access they need |
| Security awareness | 安全意识 | Knowledge and habits that help users avoid risk |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Pretexting、baiting 和 quid pro quo 都属于 social engineering。它们的共同点是：攻击者不是先破解系统，而是先操控人的判断。

**Pretexting** 的核心是编故事：

```text
假装成 IT support
假装成学校工作人员
假装成银行员工
假装成快递或访客
```

攻击者会用一个看起来合理的理由，让用户相信请求是真的。

**Baiting** 的核心是诱惑：

```text
免费礼品
免费软件
未知 U 盘
看起来有趣的文件
```

用户因为好奇或想得到好处，可能点击、下载或插入设备。

**Quid pro quo** 的核心是“交换”：

```text
我帮你修账号，你给我验证码
我给你技术支持，你允许我远程访问
我给你奖励，你填写个人信息
```

防御重点：

```text
不要因为对方看起来可信就相信
不要因为有奖励就点击或下载
不要分享 password / MFA code
不要插入 unknown USB
用官方渠道验证
发现可疑情况及时报告
```

考试答题结构：

```text
attack type → manipulation method → possible impact → safe response
```

</template>

<template #en>

### English Explanation

Pretexting, baiting, and quid pro quo are all forms of social engineering. They do not start by breaking the system first. They first manipulate human judgement.

**Pretexting** is based on a false story:

```text
pretending to be IT support
pretending to be school staff
pretending to be bank staff
pretending to be a delivery person or visitor
```

The attacker uses a believable reason to make the request seem legitimate.

**Baiting** is based on temptation:

```text
free gift
free software
unknown USB device
interesting-looking file
```

The user may click, download, or plug in a device because they are curious or want the reward.

**Quid pro quo** is based on exchange:

```text
I help fix your account, you give me the verification code
I provide technical support, you allow remote access
I give you a reward, you fill in personal information
```

Defensive focus:

```text
do not trust only because someone sounds believable
do not click or download only because there is a reward
do not share passwords or MFA codes
do not plug in unknown USB devices
verify through official channels
report suspicious situations quickly
```

Exam answer structure:

```text
attack type → manipulation method → possible impact → safe response
```

</template>
</LangBlock>

---

## 5. What Is Pretexting?

Pretexting uses a false story or identity to gain trust.

### Simple Definition

```text
Pretexting is a social engineering attack where the attacker creates a false identity or story to persuade a victim to reveal information or perform an unsafe action.
```

### Common False Roles

```text
IT support
manager
bank employee
school administrator
delivery person
new staff member
customer support agent
government or official worker
```

### Common Goals

```text
get passwords or MFA codes
collect personal information
access confidential files
gain physical access
make a user bypass a normal procedure
make a user approve a request
```

### Mark Scheme Phrase

```text
Pretexting uses a false story or identity to make a request appear legitimate.
```

---

## 6. Pretexting Red Flags

Pretexting may include:

```text
unexpected contact
request for confidential information
pressure to act quickly
claim of authority
request to bypass normal procedure
refusal to verify identity
unusual communication channel
story that cannot be checked easily
```

### Safe Response

```text
pause before acting
do not share sensitive information
verify identity through official channel
follow normal procedure
report suspicious contact
```

### Exam Phrase

```text
A user should verify the person's identity through an independent trusted channel before sharing information or granting access.
```

---

## 7. Safe Pretexting Scenario

### Scenario

A caller claims to be from IT support and says they need the user's password to fix an account problem.

### Red Flags

```text
unexpected contact
request for password
authority claim
pressure to cooperate
```

### Possible Impact

```text
account compromise
data theft
unauthorized access
messages sent from the user's account
```

### Safe Response

```text
do not share the password
contact IT through the official helpdesk
report the call
change password if it was shared
```

---

## 8. What Is Baiting?

Baiting uses something attractive to tempt the user into unsafe behaviour.

### Simple Definition

```text
Baiting is a social engineering attack where an attacker uses a tempting object, offer, or file to persuade a user to perform an unsafe action.
```

### Common Bait Examples

```text
unknown USB device
free download
gift card offer
exclusive file
fake prize
free software
interesting video or document
```

### Common Unsafe Actions

```text
plugging in an unknown device
opening an unknown file
downloading unsafe software
entering personal information
visiting a suspicious website
```

### Mark Scheme Phrase

```text
Baiting exploits curiosity or desire for a reward to make users interact with unsafe files, links, or devices.
```

---

## 9. Baiting Red Flags

Baiting may include:

```text
offer seems too good to be true
unexpected prize or reward
unknown USB device
untrusted download
file from unknown sender
pressure to act before offer expires
request for personal data to claim reward
```

### Safe Response

```text
do not plug in unknown USB devices
do not download from untrusted sources
do not enter personal information for unknown rewards
report suspicious objects or messages
use approved software sources only
```

---

## 10. Safe Baiting Scenario

### Scenario

A student finds a USB drive labelled:

```text
Exam answers
```

near a computer lab.

### Red Flags

```text
unknown USB device
tempting label
possible malware risk
attempt to exploit curiosity
```

### Possible Impact

```text
malware infection
data theft
school network compromise
loss of files
```

### Safe Response

```text
do not plug it in
give it to teacher or IT staff
report where it was found
follow school policy
```

---

## 11. What Is Quid Pro Quo?

Quid pro quo means “something for something”.

In cybersecurity, it means the attacker offers a service, reward, or benefit in exchange for information or access.

### Simple Definition

```text
Quid pro quo is a social engineering attack where the attacker offers help or a benefit in exchange for confidential information, access, or an unsafe action.
```

### Common Examples

```text
fake technical support in exchange for login details
fake prize in exchange for personal information
fake account repair in exchange for MFA code
fake discount in exchange for payment details
fake survey reward in exchange for sensitive data
```

### Mark Scheme Phrase

```text
Quid pro quo attacks offer a fake benefit or service to persuade users to reveal information or grant access.
```

---

## 12. Quid Pro Quo Red Flags

Quid pro quo may include:

```text
unexpected offer of help
request for password or MFA code
reward in exchange for personal data
support request from unknown person
remote access request
pressure to accept quickly
offer not from official channel
```

### Safe Response

```text
do not share credentials or MFA codes
do not allow remote access unless verified through official support process
verify the offer through trusted channel
report suspicious requests
```

---

## 13. Safe Quid Pro Quo Scenario

### Scenario

A person says:

```text
I can fix your school account if you tell me the code sent to your phone.
```

### Red Flags

```text
fake help
request for MFA code
unexpected contact
possible impersonation
```

### Possible Impact

```text
attacker may complete login
account may be compromised
student or school data may be accessed
```

### Safe Response

```text
do not share the code
contact official IT support
report the request
deny unexpected MFA prompts
```

---

## 14. Comparing the Three Attack Types

| Feature | Pretexting | Baiting | Quid Pro Quo |
|---|---|---|---|
| Core method | false story or identity | tempting object/offer | exchange of fake help/reward |
| Human factor | trust, authority | curiosity, reward | helpfulness, reward, trust |
| Typical risk | user believes the story | user clicks/downloads/plugs in | user gives info/access for benefit |
| Example | fake IT support | unknown USB | fake support for MFA code |
| Defence | verify identity | avoid unknown files/devices | verify offer and never share codes |

### Strong Comparison Phrase

```text
Pretexting relies on a false story, baiting relies on temptation, and quid pro quo relies on offering a benefit or help in exchange for information or access.
```

---

## 15. How These Attacks Bypass Security

These attacks may bypass technical controls by getting an authorized user to act unsafely.

| Control | Possible Bypass |
|---|---|
| Password policy | user reveals password |
| MFA | user shares one-time code |
| Access control | user lets person in or grants access |
| Malware protection | user opens unsafe file |
| Software policy | user installs unapproved software |
| Data permissions | authorized user sends data to attacker |

### Mark Scheme Phrase

```text
The attack may bypass security because the victim already has legitimate access and is manipulated into misusing it.
```

---

## 16. Impacts

### Individual Impact

```text
account compromise
identity theft
financial loss
privacy loss
device infection
stress or embarrassment
```

### School Impact

```text
student data breach
compromised staff accounts
malware on school devices
unauthorized physical access
disrupted learning systems
loss of trust from parents
```

### Business Impact

```text
financial loss
customer data breach
supplier fraud
reputation damage
legal/regulatory consequences
service disruption
```

---

## 17. Defensive Controls

| Control | How It Helps |
|---|---|
| Security awareness training | helps users recognize manipulation |
| Identity verification procedure | prevents trust based only on claims |
| MFA | reduces risk from stolen passwords |
| Least privilege | limits damage if account is compromised |
| Approved software policy | reduces risky downloads |
| USB/device policy | reduces malware from unknown devices |
| Visitor management | reduces physical impersonation |
| Clear reporting process | allows quick response |
| No-blame culture | encourages early reporting |
| Incident response plan | helps contain damage |

---

## 18. Safe Verification and Refusal

### Safe Verification

Use a separate trusted channel:

```text
official helpdesk portal
known phone number from trusted records
in-person verification with known staff
school/company directory
manager confirmation through normal process
```

### Polite Refusal Phrases

```text
I cannot share passwords or MFA codes.
Please contact the official helpdesk.
I need to verify this request first.
Please go through reception or security.
I cannot install unapproved software.
I will report this so IT can check it.
```

### Exam Phrase

```text
Users should refuse unsafe requests and verify through an independent trusted channel before sharing information or granting access.
```

---

## 19. What To Do After Suspected Contact

If a user suspects pretexting, baiting, or quid pro quo:

```text
stop interacting
do not provide more information
do not plug in unknown devices
do not install software
preserve evidence if safe
report to IT/security/teacher/manager
change password if credentials were shared
reset MFA if code was shared
scan device if unsafe file/device was used
follow incident response procedure
```

### Why Reporting Matters

```text
warn other users
block suspicious accounts or links
check logs
reset affected credentials
remove malware
improve training
```

---

## 20. Common Misconceptions

| Misconception | Correction |
|---|---|
| Pretexting only happens on phone calls | it can happen by email, chat, in person, or social media |
| A uniform or title proves identity | identity should still be verified |
| Unknown USB devices are harmless | they may contain malware or unsafe files |
| Free rewards are always safe | rewards can be used as bait |
| MFA codes can be shared with IT | legitimate IT should not need your one-time code |
| Helpful people are always safe | helpfulness can be exploited |
| If the story sounds realistic, it is true | realistic details may come from public information |
| Reporting is only needed after damage | reporting early can prevent wider harm |
| Security is only IT's job | users are part of the defence |
| Refusing is rude | polite verification protects everyone |

---

## 21. Scenario Answer Bank

### If Asked: “Define pretexting”

```text
Pretexting is a social engineering attack where the attacker creates a false story or identity to gain trust and obtain information or access.
```

### If Asked: “Define baiting”

```text
Baiting uses a tempting object, offer, or file to persuade a user to perform an unsafe action.
```

### If Asked: “Define quid pro quo”

```text
Quid pro quo is an attack where the attacker offers help or a benefit in exchange for confidential information, access, or an unsafe action.
```

### If Asked: “Compare the three”

```text
Pretexting uses a false story, baiting uses temptation, and quid pro quo uses an offer of help or reward in exchange for information or access.
```

### If Asked: “Why is an unknown USB risky?”

```text
An unknown USB device may contain malware or unsafe files, so it should not be plugged into a computer and should be reported.
```

### If Asked: “How should a user respond to fake IT support?”

```text
The user should not share passwords or MFA codes and should verify the request through the official IT/helpdesk channel.
```

---

## 22. Exam-style Questions

### Question 1 [2 marks]

Define pretexting.

<details>
<summary>Mark Scheme Style Answer</summary>

Pretexting is a social engineering attack where the attacker creates a false story or identity to gain trust and obtain information or access.

</details>

---

### Question 2 [2 marks]

Define baiting.

<details>
<summary>Mark Scheme Style Answer</summary>

Baiting is a social engineering attack where a tempting object, offer, or file is used to persuade a user to perform an unsafe action.

</details>

---

### Question 3 [2 marks]

Define quid pro quo.

<details>
<summary>Mark Scheme Style Answer</summary>

Quid pro quo is a social engineering attack where the attacker offers help or a benefit in exchange for confidential information, access, or an unsafe action.

</details>

---

### Question 4 [4 marks]

Distinguish between pretexting and baiting.

<details>
<summary>Mark Scheme Style Answer</summary>

Pretexting relies on a false story or identity to gain trust, such as pretending to be IT support. Baiting relies on temptation, such as offering a free download or leaving an unknown USB device to make the user act unsafely.

</details>

---

### Question 5 [4 marks]

A user finds an unknown USB drive labelled `Bonus materials`. Explain the risk and the safe response.

<details>
<summary>Mark Scheme Style Answer</summary>

The USB drive may be bait designed to exploit curiosity and could contain malware or unsafe files. The user should not plug it into any computer and should report or hand it to IT/security/teacher according to policy.

</details>

---

### Question 6 [5 marks]

A caller says they can fix a user's account if the user reads out an MFA code. Identify the attack type and explain the safe response.

<details>
<summary>Mark Scheme Style Answer</summary>

This is likely quid pro quo because the caller offers help in exchange for an MFA code. It may also involve pretexting if they pretend to be IT support. The user should not share the code, should end the interaction, verify through the official helpdesk, and report the request.

</details>

---

### Question 7 [6 marks]

Explain three controls that reduce the risk of pretexting, baiting, and quid pro quo attacks.

<details>
<summary>Mark Scheme Style Answer</summary>

Security awareness training helps users recognize false stories, suspicious offers, and requests for credentials or MFA codes. Verification procedures require users to confirm identity or requests through trusted channels before sharing information or granting access. USB/device policies and approved software rules reduce the risk of users plugging in unknown devices or downloading unsafe files.

</details>

---

### Question 8 [8 marks]

A school wants to reduce social engineering risks from fake support calls, unknown USB devices, and reward-based messages. Discuss a suitable strategy.

<details>
<summary>Mark Scheme Style Answer</summary>

The school should train staff and students to recognize social engineering methods such as pretexting, baiting, and quid pro quo. Training should emphasize that passwords and MFA codes must not be shared, unknown USB devices should not be plugged in, and reward-based messages should be treated carefully.

The school should also create clear verification procedures. For example, IT support requests should be confirmed through the official helpdesk, and visitors or unknown people should be directed to reception. Policies should explain how to handle unknown devices and unapproved downloads.

Technical and process controls can also help. MFA, least privilege, device management, anti-malware, and email/web filtering can reduce damage. A simple reporting process and no-blame culture encourage users to report suspicious situations early. Overall, the best strategy combines awareness, verification, policy, and technical controls.

</details>

---

## 23. Guided Practice

### Practice 1

A person claims to be from IT and asks for your password.

What attack type is most likely?

<details>
<summary>Suggested Answer</summary>

Pretexting, because the person is using a false identity/story to gain trust.

</details>

---

### Practice 2

A free download asks you to install unknown software.

What attack type might this be?

<details>
<summary>Suggested Answer</summary>

Baiting, because the free download is used as temptation.

</details>

---

### Practice 3

Someone offers to fix your account if you share an MFA code.

What attack type is this?

<details>
<summary>Suggested Answer</summary>

Quid pro quo, because help is offered in exchange for sensitive information. It may also involve pretexting.

</details>

---

### Practice 4

Why should unknown USB devices not be plugged in?

<details>
<summary>Suggested Answer</summary>

They may contain malware or unsafe files and could infect the device or network.

</details>

---

### Practice 5

What is the safest way to verify an IT support request?

<details>
<summary>Suggested Answer</summary>

Use the official helpdesk or another independent trusted channel, not the contact details supplied in the suspicious request.

</details>

---

## 24. Independent Practice

### Question 1

Define pretexting.

### Question 2

Define baiting.

### Question 3

Define quid pro quo.

### Question 4

Compare the three attack types.

### Question 5

List five red flags in fake support requests.

### Question 6

Explain why unknown USB devices are risky.

### Question 7

Explain why free rewards can be dangerous.

### Question 8

Explain why MFA codes should never be shared.

### Question 9

Describe what a user should do after sharing a password with a suspicious caller.

### Question 10

Explain how schools can reduce these risks.

---

## 25. Classroom Activity

### Activity 1: Attack Type Sort

Students sort safe, fictional scenarios into:

```text
pretexting
baiting
quid pro quo
mixed / more than one
```

They justify their choice using evidence.

---

### Activity 2: Safe Refusal Practice

Students practise polite refusal phrases:

```text
I cannot share that information.
I need to verify this through the official channel.
Please contact the helpdesk.
I cannot plug in unknown devices.
I will report this so IT can check it.
```

---

### Activity 3: Control Matching

Students match controls to risks:

```text
unknown USB → USB/device policy
fake IT call → verification procedure
reward message → awareness training
shared password → MFA and password reset
unusual visitor → visitor management
```

---

## 26. Homework

### Homework Part A

Explain pretexting, baiting, and quid pro quo in 8-10 sentences.

### Homework Part B

Create a comparison table:

```text
attack type
main method
human factor exploited
possible impact
safe response
```

### Homework Part C

Answer:

```text
1. Why is pretexting dangerous?
2. Why can baiting work even on careful users?
3. Why should MFA codes never be exchanged for help?
4. Why is verification through a trusted channel important?
5. Why should unknown USB devices be reported?
```

### Homework Part D

Correct these misconceptions:

```text
A realistic story proves the request is real.
Unknown USB devices are safe if they look new.
IT support needs your password to fix your account.
Free rewards are always harmless.
Reporting is only needed after damage occurs.
```

---

## 27. Teacher Notes

### Teaching Emphasis

Focus on:

```text
recognition
safe refusal
trusted verification
reporting
human factors
impact and defensive controls
```

Avoid:

```text
asking students to create convincing fake stories
acting out realistic deception in detail
collecting real personal data
teaching bypass methods
```

### Suggested Discussion Questions

```text
Why do false authority roles feel convincing?
Why does curiosity make baiting effective?
Why is it hard to refuse someone asking for help?
How can schools make safe refusal feel normal?
```

---

## 28. One-page Revision Summary

| Point | Summary |
|---|---|
| Pretexting | false story or identity |
| Baiting | tempting object, offer, or file |
| Quid pro quo | fake benefit/help in exchange for access/info |
| Main human factors | trust, authority, curiosity, reward, helpfulness |
| Common target | credentials, MFA codes, data, access |
| Unknown USB | do not plug in; report it |
| Fake IT support | verify through official helpdesk |
| Free reward | check carefully before clicking/downloading |
| MFA rule | never share one-time codes |
| Safe response | pause, refuse, verify, report |
| Main control | security awareness and trusted verification |
| Best exam structure | attack type → manipulation → impact → defence |
| Best phrase | Pretexting uses a false story, baiting uses temptation, and quid pro quo offers a benefit in exchange for information or access |

::: tip Next Step
After this page, the next page should be **Tailgating and Physical Security**, using the real file name `tailgating-physical-security.md`.
:::
