# Tailgating and Physical Security

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define tailgating
- explain why tailgating is a social engineering risk
- define physical security
- explain how physical access can lead to digital security incidents
- identify common physical security risks in schools and organizations
- explain how attackers may exploit politeness, routine, authority, or urgency
- recommend controls to reduce unauthorized physical access
- explain the role of badges, visitor sign-in, locked doors, CCTV, and staff awareness
- describe safe responses when an unknown person tries to enter a restricted area
- answer exam-style questions using clear cybersecurity vocabulary

::: warning Defensive Learning Only
This page is for awareness, prevention, and safe response. It does not teach bypass methods or how to gain unauthorized physical access.
:::

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | Social Engineering Awareness |
| Topic | Tailgating and Physical Security |
| Main skill | Recognizing and preventing unauthorized physical access |
| Connected topics | Social engineering, access control, authentication, incident response, data protection |
| Practical focus | Door access, visitor management, badges, secure areas, reporting |
| Exam relevance | Definitions, scenario-based explanation, controls, impact and response |

::: tip Learning Focus
Tailgating bypasses physical access control by exploiting human behaviour, such as politeness or routine. Physical security protects buildings, rooms, devices, paper records, and people.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Tailgating | 尾随进入 | Unauthorized person follows an authorized person into a restricted area |
| Piggybacking | 借助他人进入 | Similar to tailgating, sometimes with the authorized person's awareness |
| Physical security | 物理安全 | Measures that protect buildings, rooms, devices, and physical records |
| Restricted area | 限制区域 | Area only authorized people should enter |
| Access control | 访问控制 | System/process controlling who can enter or access resources |
| Badge | 工牌 / 门禁卡 | Identification or access card used to verify authorization |
| Visitor sign-in | 访客登记 | Process for recording and approving visitors |
| Reception | 前台 | Controlled entry point for visitors |
| CCTV | 监控摄像 | Video monitoring used to deter or investigate incidents |
| Door alarm | 门禁警报 | Alert when a door is forced or held open |
| Lock | 锁 | Physical mechanism preventing unauthorized entry |
| Escort | 陪同 | Authorized person accompanies visitor |
| Challenge procedure | 询问流程 | Polite process to question unknown people |
| Clear desk policy | 清桌政策 | Keeping sensitive documents/devices away from public view |
| Shoulder surfing | 肩窥 | Observing someone entering private information |
| Asset | 资产 | Valuable item/data/device that needs protection |
| Incident report | 事件报告 | Report of a suspected security issue |
| Human factor | 人为因素 | Behaviour such as politeness, routine, fear, or authority |
| Least privilege | 最小权限 | Users only get access they need |
| Security culture | 安全文化 | Shared habits and expectations that support safe behaviour |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Tailgating 是一种 physical social engineering。它不是先破解系统，而是让没有权限的人跟着有权限的人进入限制区域。

常见场景：

```text
有人跟在员工后面进门
有人说自己忘带门禁卡
有人抱着箱子，请别人帮忙开门
有人假装是访客、维修人员、快递员
有人混在人群里一起进入
```

它利用的是人的习惯和心理：

```text
politeness: 不好意思拒绝别人
helpfulness: 想帮忙
routine: 平时大家都这样进门
authority: 对方看起来像工作人员
urgency: 对方说自己很赶时间
```

Physical security 很重要，因为一旦进入内部区域，攻击者可能：

```text
偷走设备
查看屏幕
拍摄文件
插入未知设备
接触服务器或网络设备
拿走纸质记录
进入员工专用区域
```

防御重点：

```text
不要随便帮陌生人刷门禁
访客必须走 reception / sign-in
看到无 badge 的人要礼貌询问
发现可疑情况及时报告
敏感文件和设备不要随便放在桌面
```

考试答题结构：

```text
physical risk → human factor → possible impact → control / safe response
```

</template>

<template #en>

### English Explanation

Tailgating is a physical form of social engineering. It does not start by breaking into a computer system. Instead, an unauthorized person follows an authorized person into a restricted area.

Common situations:

```text
someone follows an employee through a door
someone says they forgot their access card
someone carries boxes and asks for help opening a door
someone pretends to be a visitor, repair worker, or delivery person
someone enters with a group
```

It exploits human habits and psychology:

```text
politeness: people feel uncomfortable refusing
helpfulness: people want to help
routine: people are used to opening doors
authority: the person looks like staff
urgency: the person says they are in a hurry
```

Physical security matters because once inside, an attacker may:

```text
steal devices
view screens
photograph documents
insert unknown devices
access servers or network equipment
take paper records
enter staff-only areas
```

Defensive focus:

```text
do not let unknown people bypass access control
visitors must go through reception/sign-in
politely challenge people without badges
report suspicious situations quickly
keep sensitive files and devices secure
```

Exam answer structure:

```text
physical risk → human factor → possible impact → control / safe response
```

</template>
</LangBlock>

---

## 5. What Is Tailgating?

Tailgating happens when an unauthorized person follows an authorized person into a restricted area.

### Simple Definition

```text
Tailgating is a physical social engineering attack where an unauthorized person gains entry by following an authorized person through a secure entrance.
```

### Common Example

```text
An employee opens a secure door with their badge.
An unknown person walks in directly behind them.
The unknown person avoids using their own badge or signing in.
```

### Mark Scheme Phrase

```text
Tailgating bypasses physical access control by exploiting politeness or routine behaviour.
```

---

## 6. Tailgating vs Piggybacking

The terms are sometimes used similarly, but there is a useful distinction.

| Term | Meaning |
|---|---|
| Tailgating | unauthorized person follows closely, often without clear permission |
| Piggybacking | unauthorized person enters with help or awareness of an authorized person |

### Example Tailgating

```text
Someone slips in behind a staff member without being noticed.
```

### Example Piggybacking

```text
Someone says "I forgot my badge" and the staff member knowingly lets them in.
```

### Exam Note

Many courses use tailgating as the general term for both. Focus on the security risk: unauthorized physical entry.

---

## 7. What Is Physical Security?

Physical security protects physical spaces, people, devices, and records.

### Simple Definition

```text
Physical security is the set of measures used to protect buildings, rooms, devices, and physical information from unauthorized access, damage, or theft.
```

### What It Protects

```text
classrooms
offices
server rooms
computer labs
staff rooms
paper records
laptops
USB drives
network equipment
ID badges
exam materials
```

### Mark Scheme Phrase

```text
Physical security controls prevent unauthorized people from accessing buildings, rooms, devices, or paper records.
```

---

## 8. Why Physical Security Matters for Digital Security

Digital security can be affected by physical access.

If an unauthorized person enters a restricted area, they may:

```text
use an unlocked computer
steal a laptop
insert an unknown USB device
photograph passwords or documents
view confidential data on screens
access network ports or equipment
take paper records
install unauthorized equipment
```

### Key Point

Cybersecurity is not only about software.

```text
physical access can lead to digital compromise
```

### Exam Phrase

```text
Physical access can compromise digital security because an attacker may access devices, documents, or network equipment directly.
```

---

## 9. Common Tailgating Scenarios

| Scenario | Human Factor Exploited | Risk |
|---|---|---|
| "I forgot my badge" | helpfulness / politeness | unauthorized entry |
| carrying boxes | helpfulness | door held open |
| joining a group | routine | no individual check |
| pretending to be delivery staff | trust / authority | access to internal area |
| rushing behind someone | urgency | staff may not challenge |
| wearing similar clothing | familiarity | assumed to be authorized |
| claiming to be new staff | helpfulness | bypass reception |
| following after lunch break | routine | busy entry point |

---

## 10. Physical Security Risks

Physical security risks include:

```text
tailgating
unlocked doors
lost badges
shared access cards
unattended laptops
visible passwords
open filing cabinets
unknown USB devices
unlocked server rooms
unescorted visitors
poor visitor records
screens visible to public
documents left on printers
```

### Exam Phrase

```text
Physical security weaknesses can allow unauthorized access to devices, documents, or restricted areas.
```

---

## 11. Human Factors in Tailgating

Tailgating often works because people want to be polite.

### Human Factors

| Factor | How It Is Exploited |
|---|---|
| Politeness | staff feel rude refusing entry |
| Helpfulness | staff help someone carrying items |
| Authority | person appears official or senior |
| Routine | staff are used to people entering together |
| Urgency | person says they are late or in a hurry |
| Social pressure | staff do not want confrontation |
| Assumption | staff assume someone belongs there |

### Defensive Mindset

```text
security procedure is not rudeness
verification protects everyone
```

---

## 12. Impact of Tailgating

Tailgating may lead to:

```text
theft of devices
data breach
malware installation
unauthorized access to systems
damage to equipment
access to exam materials
privacy breach
safety risk to staff/students
loss of trust
legal/regulatory consequences
```

### School Impact

In a school, tailgating could expose:

```text
student records
exam papers
staff devices
network equipment
learning platform access
confidential meetings
```

### Business Impact

In a business, tailgating could expose:

```text
customer data
financial records
staff records
intellectual property
server rooms
payment systems
```

---

## 13. Access Control Measures

Access control limits who can enter restricted areas.

### Common Measures

```text
ID badges
access cards
PIN entry
biometric access
locks
security guards
reception desks
visitor sign-in
turnstiles
door alarms
CCTV
restricted area signs
```

### Strong Answer

```text
Access control reduces tailgating risk by requiring each person to prove authorization before entering a restricted area.
```

---

## 14. Visitor Management

Visitors should follow a controlled process.

### Good Visitor Process

```text
enter through reception
sign in
show identification if required
receive visitor badge
be escorted if needed
access only approved areas
sign out before leaving
return visitor badge
```

### Why It Helps

```text
records who entered
prevents unknown visitors wandering
makes unauthorized people easier to identify
supports investigation after incidents
```

### Exam Phrase

```text
Visitor sign-in and badges help identify authorized visitors and prevent unknown people from entering restricted areas.
```

---

## 15. Badge and ID Policy

Badges help show who is authorized.

### Good Badge Practice

```text
wear badge visibly
do not lend badge to others
report lost badges immediately
do not let others use your access card
challenge or report people without badges
disable lost/stolen badges quickly
```

### Common Mistake

```text
letting someone else use your badge because they seem trustworthy
```

### Risk

The system records the badge owner as entering, even if someone else used it.

---

## 16. Door Security

Door security controls access to rooms and buildings.

### Examples

```text
self-closing doors
automatic locks
door alarms
badge readers
turnstiles
security guards
anti-tailgating sensors
clear signs
```

### Common Weaknesses

```text
door propped open
door held open for groups
broken lock
alarm ignored
staff entrance used by visitors
emergency exit misused
```

### Safe Behaviour

```text
do not prop open secure doors
make sure doors close behind you
report broken locks or doors
direct visitors to reception
```

---

## 17. CCTV and Monitoring

CCTV can help deter and investigate incidents.

### Benefits

```text
visible deterrent
evidence after incident
supports investigation
monitors entrances and restricted areas
helps identify suspicious behaviour
```

### Limitations

```text
does not physically stop entry by itself
must be monitored or reviewed
privacy rules must be respected
camera blind spots may exist
```

### Exam Phrase

```text
CCTV can deter and provide evidence, but it should be combined with access control and staff awareness because it does not always prevent entry by itself.
```

---

## 18. Clear Desk and Clear Screen

Physical security also includes protecting visible information.

### Clear Desk

```text
do not leave confidential papers on desks
lock sensitive documents away
remove printouts from printers
secure notebooks and USB drives
```

### Clear Screen

```text
lock computer when leaving desk
avoid showing confidential data in public
use privacy screens if needed
position screens carefully
```

### Exam Phrase

```text
Clear desk and screen-lock policies reduce the risk of unauthorized people viewing or taking sensitive information.
```

---

## 19. Shoulder Surfing

Shoulder surfing happens when someone observes private information being entered or displayed.

### Examples

```text
watching someone type a password
looking at a PIN entry
viewing confidential data on a screen
photographing a desk or monitor
```

### Controls

```text
shield keypad
use privacy screen
position monitors away from public view
lock screen when not in use
avoid entering passwords in crowded areas
```

### Mark Scheme Phrase

```text
Shoulder surfing can reveal confidential information by observing a user's screen or input.
```

---

## 20. Device and Paper Record Security

Physical items can contain sensitive data.

### Devices

```text
laptops
tablets
USB drives
phones
external hard drives
ID cards
network devices
```

### Paper Records

```text
student files
exam papers
medical notes
financial forms
contracts
printed reports
password notes
```

### Controls

```text
locked cabinets
encrypted devices
device tracking
secure printing
shredding sensitive waste
access-controlled storage
inventory checks
```

---

## 21. Safe Response to Tailgating

If an unknown person tries to enter behind you:

```text
do not let them bypass access control
politely ask them to use their own badge
direct them to reception/security
do not physically confront if unsafe
report suspicious behaviour
follow organization policy
```

### Polite Phrases

```text
Please use your own badge.
Visitors need to sign in at reception.
I am not allowed to let people in without access.
Let me call reception/security for you.
```

### Exam Phrase

```text
The user should not allow the person to enter and should direct them to reception or report the incident according to policy.
```

---

## 22. Incident Response for Physical Security

If tailgating or a physical security incident is suspected:

```text
report immediately to security/teacher/manager/IT
note time, location, and description if safe
do not confront aggressively
check whether restricted areas were accessed
review access logs or CCTV if appropriate
disable lost badges if needed
check devices and records
follow incident response procedure
```

### Why Reporting Matters

```text
prevents further access
helps locate the person
protects data and equipment
supports investigation
improves future controls
```

---

## 23. School Scenario

### Scenario

A person says they are a new substitute teacher and asks a student to hold open the staff entrance.

### Red Flags

```text
unknown person
staff entrance
no visible badge
request to bypass normal entry
claim of authority/legitimate role
```

### Possible Impact

```text
unauthorized access to staff areas
student records exposed
exam papers or devices at risk
safety concern
```

### Safe Response

```text
do not open the staff entrance
direct them to reception
tell a teacher or staff member
report the situation
```

---

## 24. Business Scenario

### Scenario

A person carrying boxes follows an employee into an office building without scanning a badge.

### Red Flags

```text
no badge scan
uses helpfulness
enters with employee
possible delivery pretext
```

### Possible Impact

```text
access to offices
device theft
confidential documents exposed
network access risk
```

### Safe Response

```text
ask them to check in at reception
do not hold secure doors open
report if they enter without authorization
```

---

## 25. Common Misconceptions

| Misconception | Correction |
|---|---|
| Physical security is separate from cybersecurity | physical access can lead to digital compromise |
| Holding a door is always harmless | it may bypass access control |
| A confident person must be authorized | confidence is not proof of authorization |
| CCTV alone prevents tailgating | CCTV helps monitor but may not stop entry |
| Badges can be shared | badges should never be lent or shared |
| Visitors can walk around if they look official | visitors should follow sign-in and escort rules |
| Paper records are not cybersecurity | paper can contain sensitive data |
| Screen locks are unnecessary for short breaks | unattended screens can expose data |
| Reporting is only needed after theft | early reporting can prevent harm |
| Challenging is rude | polite verification is a normal security practice |

---

## 26. Scenario Answer Bank

### If Asked: “Define tailgating”

```text
Tailgating is when an unauthorized person follows an authorized person into a restricted area without properly authenticating or signing in.
```

### If Asked: “Define physical security”

```text
Physical security is the use of controls to protect buildings, rooms, devices, and physical records from unauthorized access, damage, or theft.
```

### If Asked: “Why is tailgating a social engineering attack?”

```text
Tailgating exploits human behaviour such as politeness, helpfulness, or routine to bypass physical access controls.
```

### If Asked: “How can tailgating be reduced?”

```text
Tailgating can be reduced using badges, visitor sign-in, secure doors, staff awareness training, CCTV, and procedures for politely challenging unknown people.
```

### If Asked: “Why does physical security matter for cybersecurity?”

```text
Unauthorized physical access can allow someone to steal devices, view confidential information, insert unknown devices, or access network equipment.
```

### If Asked: “What should a user do if someone asks to follow them inside?”

```text
The user should not allow entry, should direct the person to reception or security, and should report the situation according to policy.
```

---

## 27. Exam-style Questions

### Question 1 [2 marks]

Define tailgating.

<details>
<summary>Mark Scheme Style Answer</summary>

Tailgating is when an unauthorized person follows an authorized person into a restricted area without properly authenticating or signing in.

</details>

---

### Question 2 [2 marks]

Define physical security.

<details>
<summary>Mark Scheme Style Answer</summary>

Physical security is the use of controls to protect buildings, rooms, devices, and physical records from unauthorized access, damage, or theft.

</details>

---

### Question 3 [4 marks]

Explain why tailgating is a social engineering risk.

<details>
<summary>Mark Scheme Style Answer</summary>

Tailgating is a social engineering risk because it exploits human behaviour such as politeness, helpfulness, or routine. An unauthorized person may persuade or follow an authorized person through a secure door, bypassing normal access control and gaining entry to restricted areas.

</details>

---

### Question 4 [4 marks]

Explain two controls that reduce tailgating.

<details>
<summary>Mark Scheme Style Answer</summary>

Badge access can require each person to authenticate before entering a restricted area. Visitor sign-in and reception procedures ensure visitors are recorded, approved, and directed or escorted properly. Other valid controls include CCTV, door alarms, staff awareness training, and security guards.

</details>

---

### Question 5 [5 marks]

A staff member sees an unknown person without a badge trying to follow them into a secure office. Explain the safe response.

<details>
<summary>Mark Scheme Style Answer</summary>

The staff member should not allow the person to enter behind them. They should politely ask the person to use their own badge or direct them to reception/security. If the situation seems suspicious, they should report it according to the organization's procedure and avoid unsafe confrontation.

</details>

---

### Question 6 [5 marks]

Explain how poor physical security can lead to a digital security incident.

<details>
<summary>Mark Scheme Style Answer</summary>

Poor physical security may allow an unauthorized person to enter a restricted area and access devices or documents directly. They could use an unlocked computer, steal a laptop, insert an unknown USB device, view passwords or confidential data, or access network equipment. This can lead to data theft, malware infection, or account compromise.

</details>

---

### Question 7 [6 marks]

A school wants to protect staff rooms and computer labs from unauthorized access. Explain three suitable controls.

<details>
<summary>Mark Scheme Style Answer</summary>

The school can use badge or key access so only authorized staff can enter restricted rooms. It can require visitors to sign in at reception and be escorted when necessary. It can train staff and students not to hold secure doors open for unknown people and to report suspicious behaviour. Other valid answers include CCTV, locked cabinets, door alarms, and screen locking.

</details>

---

### Question 8 [8 marks]

Discuss a balanced physical security strategy for an organization.

<details>
<summary>Mark Scheme Style Answer</summary>

A balanced physical security strategy should combine access control, staff awareness, and monitoring. Access control such as badges, locks, visitor sign-in, and restricted areas helps ensure only authorized people can enter sensitive spaces. Staff should be trained not to allow tailgating and to politely direct visitors to reception.

Monitoring controls such as CCTV and door alarms can deter incidents and provide evidence, but they should not be the only protection because they may not physically stop entry. Clear desk and screen-lock policies also protect sensitive documents and data if someone enters an area.

The organization should also have a clear reporting process so suspicious people, lost badges, broken locks, or unknown devices are reported quickly. Overall, physical security supports cybersecurity because unauthorized physical access can lead to device theft, data exposure, or network compromise.

</details>

---

## 28. Guided Practice

### Practice 1

Someone says:

```text
I forgot my badge. Can you hold the door?
```

What risk is present?

<details>
<summary>Suggested Answer</summary>

Tailgating / unauthorized physical access.

</details>

---

### Practice 2

Why is holding a secure door for an unknown person risky?

<details>
<summary>Suggested Answer</summary>

It may allow an unauthorized person to bypass access control and enter a restricted area.

</details>

---

### Practice 3

Give two physical security controls.

<details>
<summary>Suggested Answer</summary>

Possible answers: badges, locks, CCTV, visitor sign-in, reception, door alarms, security guards.

</details>

---

### Practice 4

Why should screens be locked when users leave their desks?

<details>
<summary>Suggested Answer</summary>

An unauthorized person may view or use the account if the computer is left unlocked.

</details>

---

### Practice 5

What should happen to a lost badge?

<details>
<summary>Suggested Answer</summary>

It should be reported immediately and disabled if possible.

</details>

---

## 29. Independent Practice

### Question 1

Define tailgating.

### Question 2

Define physical security.

### Question 3

Explain why tailgating exploits politeness.

### Question 4

List five physical security controls.

### Question 5

Explain why visitor sign-in is useful.

### Question 6

Explain why CCTV alone is not enough.

### Question 7

Explain how physical access can lead to data theft.

### Question 8

Describe a safe response to an unknown person without a badge.

### Question 9

Explain the purpose of a clear desk policy.

### Question 10

Explain how a school can reduce unauthorized access to computer labs.

---

## 30. Classroom Activity

### Activity 1: Physical Risk Walkthrough

Students review a fictional school map and identify:

```text
unlocked doors
publicly visible screens
unattended devices
visitor route problems
printer with sensitive documents
computer lab access issues
```

They recommend controls.

---

### Activity 2: Safe Challenge Practice

Students practise polite phrases:

```text
Please use your own badge.
Visitors need to sign in at reception.
I cannot let people in through this door.
Let me call reception for you.
```

---

### Activity 3: Control Matching

Match risks to controls:

```text
tailgating → badge access / staff awareness
lost badge → report and disable badge
visible screen → screen lock / privacy screen
paper records on desk → clear desk policy
unknown visitor → reception / visitor badge
```

---

## 31. Homework

### Homework Part A

Explain tailgating and physical security in 8-10 sentences using one school or workplace example.

### Homework Part B

Create a table:

```text
physical risk
possible impact
control
```

Use at least six risks.

### Homework Part C

Answer:

```text
1. Why is tailgating a social engineering attack?
2. Why should visitors sign in?
3. Why is physical security part of cybersecurity?
4. Why should badges not be shared?
5. Why is a screen lock useful?
```

### Homework Part D

Correct these misconceptions:

```text
Physical security is not related to computer security.
CCTV alone prevents all unauthorized access.
It is always polite to hold a secure door open.
Paper records do not need security.
A badge can be shared with a trusted person.
```

---

## 32. Teacher Notes

### Teaching Emphasis

Focus on:

```text
safe response
polite verification
access control
physical-to-digital risk
reporting
security culture
```

Avoid:

```text
teaching bypass techniques
encouraging confrontation
using real building weak points
asking students to test access control
```

### Suggested Discussion Questions

```text
Why do people feel uncomfortable challenging strangers?
How can schools make safe checking feel normal?
Why is physical access dangerous for digital systems?
What is a polite way to refuse tailgating?
```

---

## 33. One-page Revision Summary

| Point | Summary |
|---|---|
| Tailgating | unauthorized person follows authorized person into restricted area |
| Piggybacking | unauthorized entry with help/awareness of authorized person |
| Physical security | protects buildings, rooms, devices, and records |
| Main human factors | politeness, helpfulness, routine, authority, urgency |
| Main risk | unauthorized physical access |
| Digital impact | device theft, unlocked computer use, network access, data exposure |
| Common controls | badges, locks, visitor sign-in, CCTV, alarms |
| Visitor rule | sign in, badge, escort if needed |
| Badge rule | do not share; report lost badge |
| Door rule | do not prop open secure doors |
| Screen rule | lock screen when away |
| Desk rule | secure sensitive papers and devices |
| Safe response | direct unknown person to reception/security |
| Reporting | report suspicious people, lost badges, broken locks |
| Best exam structure | physical risk → human factor → impact → control |
| Best phrase | Tailgating exploits politeness or routine to bypass physical access controls and gain unauthorized entry |

::: tip Next Step
After this page, the next page should be **OSINT and Digital Footprints**, using the real file name `osint-digital-footprints.md`.
:::
