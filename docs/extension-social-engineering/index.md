# Social Engineering Awareness

## 1. Section Overview

This extension section teaches students how social engineering attacks work from a **defensive and awareness-focused** perspective.

Social engineering is different from many technical attacks because it targets:

```text
human trust
attention
fear
urgency
authority
curiosity
routine behaviour
workplace habits
```

The goal of this section is to help students recognize suspicious situations, explain common attack methods, and recommend safe responses.

::: warning Defensive Learning Only
This section is for awareness, prevention, reporting, and safe response. It should not be used to create deceptive messages, impersonation attempts, or real attacks.
:::

---

## 2. Learning Goals

By the end of this section, students should be able to:

- define social engineering
- explain why humans can be targeted in security attacks
- identify common social engineering techniques
- distinguish phishing, spear phishing, pretexting, baiting, quid pro quo, tailgating, and physical security risks
- explain how OSINT and digital footprints can support targeted attacks
- identify red flags in suspicious messages or requests
- explain how trust, authority, urgency, and fear are used to manipulate users
- recommend safe defensive behaviours
- explain how staff training and reporting reduce risk
- describe basic incident response after a suspected social engineering attempt
- answer exam-style questions using clear security vocabulary and scenario links

---

## 3. Topic Index

| Order | Page | Main Focus | Link |
|---:|---|---|---|
| 1 | Overview | roadmap for social engineering awareness | [Open](./) |
| 2 | What Is Social Engineering? | definition, human factors, attack goals | [Open](./what-is-social-engineering) |
| 3 | Phishing and Spear Phishing | broad phishing vs targeted phishing, red flags | [Open](./phishing-and-spear-phishing) |
| 4 | Pretexting, Baiting and Quid Pro Quo | manipulation scenarios and defensive responses | [Open](./pretexting-baiting-quid-pro-quo) |
| 5 | Tailgating and Physical Security | unauthorized physical access and safe workplace habits | [Open](./tailgating-physical-security) |
| 6 | OSINT and Digital Footprints | public information and targeted risk | [Open](./osint-digital-footprints) |
| 7 | Human Factors and Trust | authority, urgency, fear, curiosity, helpfulness | [Open](./human-factors-and-trust) |
| 8 | Defending Against Social Engineering | prevention, training, verification, reporting | [Open](./defending-against-social-engineering) |
| 9 | Incident Response and Reporting | what to do after a suspected attack | [Open](./incident-response-reporting) |

::: warning Folder Name Note
The real folder name is `docs/extension-social-engineering`, matching the sidebar link `/extension-social-engineering/`.
:::

---

## 4. Concept Map

```text
Social Engineering Awareness
├── Core Idea
│   ├── attacks target people
│   ├── trust is manipulated
│   ├── technical controls may be bypassed
│   └── awareness reduces risk
├── Common Techniques
│   ├── phishing
│   ├── spear phishing
│   ├── pretexting
│   ├── baiting
│   ├── quid pro quo
│   ├── tailgating
│   └── physical impersonation
├── Human Factors
│   ├── urgency
│   ├── fear
│   ├── authority
│   ├── curiosity
│   ├── helpfulness
│   └── routine behaviour
├── Information Sources
│   ├── public profiles
│   ├── leaked data
│   ├── company websites
│   ├── social media posts
│   └── digital footprints
└── Defence
    ├── verify identity
    ├── report suspicious requests
    ├── use MFA
    ├── limit shared information
    ├── staff training
    ├── access control
    └── incident response
```

---

## 5. Bilingual Section Explanation

<LangBlock>
<template #cn>

### 中文说明

Social engineering（社会工程学攻击）不是先攻击电脑，而是先攻击人。

攻击者可能利用：

```text
信任
紧张
害怕
权威
好奇心
想帮忙的心理
工作中的习惯动作
```

比如，攻击者可能假装成：

```text
IT support
manager
delivery person
new employee
bank staff
school administrator
```

然后让用户做一些危险行为，例如：

```text
点击链接
输入密码
下载附件
透露验证码
打开门禁
把文件发出去
绕过正常流程
```

学习这一部分时，重点不是学习怎么骗人，而是学习怎么识别和防御。

安全回答一般要写：

```text
attack method
human weakness being targeted
possible impact
defensive control
safe response / reporting
```

例如：

```text
A phishing email may create urgency by saying the account will be closed. Staff should not click the link directly and should verify the request through an official channel.
```

</template>

<template #en>

### English Explanation

Social engineering attacks do not start by attacking the computer first.  
They often attack the human user first.

Attackers may exploit:

```text
trust
urgency
fear
authority
curiosity
helpfulness
routine workplace behaviour
```

For example, an attacker may pretend to be:

```text
IT support
manager
delivery person
new employee
bank staff
school administrator
```

Then they may try to make the user do something unsafe, such as:

```text
clicking a link
entering a password
downloading an attachment
sharing a verification code
opening a secure door
sending a confidential file
bypassing a normal process
```

The purpose of this section is not to learn how to deceive people.  
It is to learn how to recognize and defend against these attacks.

A strong security answer usually includes:

```text
attack method
human weakness being targeted
possible impact
defensive control
safe response / reporting
```

Example:

```text
A phishing email may create urgency by saying the account will be closed. Staff should not click the link directly and should verify the request through an official channel.
```

</template>
</LangBlock>

---

## 6. Key Vocabulary

| Term | Meaning |
|---|---|
| Social engineering | manipulating people into revealing information or performing unsafe actions |
| Phishing | deceptive message sent to many users to steal data or trigger unsafe action |
| Spear phishing | targeted phishing aimed at a specific person or organization |
| Pretexting | creating a false story or identity to gain trust |
| Baiting | tempting a user with something attractive to make them act unsafely |
| Quid pro quo | offering a service or benefit in exchange for information or access |
| Tailgating | following an authorized person into a restricted area |
| Shoulder surfing | observing someone entering confidential information |
| Impersonation | pretending to be someone else |
| OSINT | publicly available information gathered from open sources |
| Digital footprint | data trail left by online activity |
| Red flag | warning sign of suspicious activity |
| Verification | checking identity or request through a trusted channel |
| MFA | multi-factor authentication |
| Least privilege | giving users only the access they need |
| Incident reporting | telling the correct person/team about a suspected security issue |
| Security awareness | knowledge and habits that help users avoid security risks |
| Human factor | behaviour, emotion, or decision-making that affects security |

---

## 7. What Is Social Engineering?

Social engineering is a security attack that manipulates people rather than directly attacking technology.

### Simple Definition

```text
Social engineering is the manipulation of people into revealing confidential information or performing actions that reduce security.
```

### Common Targets

```text
passwords
MFA codes
bank details
student records
customer data
internal documents
building access
software installation
approval processes
```

### Mark Scheme Phrase

```text
Social engineering exploits human behaviour such as trust, fear, urgency, or helpfulness to bypass security controls.
```

---

## 8. Why Humans Are Targeted

Humans are often targeted because people may:

```text
trust authority figures
rush when under pressure
want to be helpful
avoid conflict
miss small warning signs
reuse passwords
share too much online
follow routine habits
```

### Example

A staff member may follow someone into a secure building because the person says:

```text
"I forgot my badge. Can you hold the door?"
```

The technical door lock works, but the human process is bypassed.

### Exam Phrase

```text
Social engineering can bypass technical controls by persuading an authorized user to perform the unsafe action.
```

---

## 9. Common Attack Types

| Attack Type | Core Idea | Defensive Response |
|---|---|---|
| Phishing | broad deceptive message | do not click unknown links; verify sender |
| Spear phishing | targeted deceptive message | check context and verify through official channel |
| Pretexting | fake story or identity | confirm identity before sharing information |
| Baiting | tempting offer or object | avoid unknown downloads/devices |
| Quid pro quo | fake help in exchange for access/info | verify support requests |
| Tailgating | entering behind authorized person | do not let unknown people bypass access control |
| Shoulder surfing | watching confidential input | shield screen/keypad |
| Impersonation | pretending to be trusted person | verify identity independently |

---

## 10. Phishing and Spear Phishing

### Phishing

Phishing is usually sent to many users.

Example warning signs:

```text
generic greeting
urgent message
unknown sender
suspicious link
unexpected attachment
poor spelling or unusual tone
request for password or MFA code
```

### Spear Phishing

Spear phishing is more targeted.

It may include:

```text
real name
job role
school/company name
recent event
manager or colleague impersonation
specific document reference
```

### Exam Phrase

```text
Spear phishing is more targeted than general phishing because it uses information about the victim to make the message appear more believable.
```

---

## 11. Pretexting, Baiting and Quid Pro Quo

### Pretexting

The attacker creates a false story.

Example:

```text
"I am from IT support and need to confirm your login details."
```

### Baiting

The attacker offers something tempting.

Example:

```text
free download
gift card
unknown USB drive
exclusive file
```

### Quid Pro Quo

The attacker offers help or benefit in exchange for information.

Example:

```text
"I can fix your account problem if you tell me the code on your phone."
```

### Defensive Rule

```text
Do not provide sensitive information or access unless the request is verified through a trusted channel.
```

---

## 12. Tailgating and Physical Security

Tailgating happens when an unauthorized person follows an authorized person into a restricted area.

### Common Situations

```text
person carrying boxes asks for door to be held open
person claims badge is forgotten
person follows a group through a door
visitor avoids reception check-in
```

### Controls

```text
badge checks
visitor sign-in
security awareness
politely challenge unknown people
security guards
door alarms
CCTV
clear reporting process
```

### Exam Phrase

```text
Tailgating bypasses physical access control by exploiting politeness or routine behaviour.
```

---

## 13. OSINT and Digital Footprints

OSINT means open-source intelligence: information collected from publicly available sources.

### Possible Sources

```text
social media
school/company websites
public staff pages
online profiles
event photos
public documents
news articles
forum posts
data breaches
```

### Why It Matters

Attackers can use public information to make messages more believable.

Example:

```text
using a teacher's name, school event, and department to create a convincing fake request
```

### Defensive Habits

```text
limit unnecessary public information
check privacy settings
avoid sharing sensitive work details publicly
train staff about targeted attacks
verify unusual requests
```

---

## 14. Human Factors and Trust

Social engineering often works because attackers manipulate normal human behaviour.

### Common Human Factors

| Factor | How It Is Used |
|---|---|
| Urgency | "Act now or your account will close" |
| Fear | "You are in trouble unless you respond" |
| Authority | "I am your manager / IT administrator" |
| Curiosity | "Open this interesting file" |
| Helpfulness | "Can you quickly help me?" |
| Scarcity | "Limited offer only today" |
| Trust | "This appears to come from someone I know" |
| Routine | "I always click this type of email" |

### Defensive Habit

Pause before acting, especially when the message creates pressure.

---

## 15. Defending Against Social Engineering

Strong defence uses people, process, and technology.

### People

```text
security awareness training
practice identifying red flags
encourage reporting
avoid blame culture
```

### Process

```text
verify unusual requests
use official communication channels
visitor sign-in
approval procedures
least privilege access
incident response plan
```

### Technology

```text
MFA
email filtering
access control
anti-malware
logging and monitoring
device management
data loss prevention
```

### Mark Scheme Phrase

```text
Defence against social engineering requires user awareness, verification procedures, and technical controls such as MFA and email filtering.
```

---

## 16. Incident Response and Reporting

If a user suspects social engineering, they should respond quickly and safely.

### Safe Response Steps

```text
do not click further links
do not reply with sensitive information
disconnect if instructed by IT/security policy
take screenshots or preserve evidence
report to teacher/IT/security team
change passwords if credentials were entered
enable or reset MFA if needed
monitor account activity
follow incident response procedure
```

### Why Reporting Matters

Reporting helps the organization:

```text
warn other users
block malicious links
reset affected accounts
investigate the source
reduce damage
improve training
```

### Exam Phrase

```text
Prompt reporting helps the organization contain the incident and warn other users before more accounts or data are affected.
```

---

## 17. Red Flag Checklist

Students should learn to identify warning signs.

### Message Red Flags

```text
unexpected request
urgent pressure
threat or fear
unusual sender address
generic greeting
spelling or formatting errors
unexpected attachment
shortened or suspicious link
request for password or MFA code
request to bypass normal process
payment or bank detail change
confidential data request
```

### Physical Red Flags

```text
unknown person without badge
visitor avoiding reception
person asking to borrow access card
person following closely through secure door
person taking photos of screens or desks
unknown USB device
```

---

## 18. Safe Verification

Verification should use a separate trusted channel.

### Unsafe Verification

```text
replying to the suspicious email
calling the phone number in the suspicious message
clicking the link to log in
using contact details provided by the unknown requester
```

### Safer Verification

```text
use official website typed manually
use known phone number from trusted records
ask manager in person or through official system
contact IT/helpdesk through approved channel
check request against normal procedure
```

### Mark Scheme Phrase

```text
The user should verify the request through an independent trusted channel rather than using contact details in the suspicious message.
```

---

## 19. Scenario Answer Bank

### If Asked: “Define social engineering”

```text
Social engineering is the manipulation of people into revealing confidential information or performing actions that reduce security.
```

### If Asked: “Why is phishing dangerous?”

```text
Phishing is dangerous because it can trick users into entering credentials, downloading malware, or revealing sensitive data.
```

### If Asked: “Why is spear phishing harder to detect?”

```text
Spear phishing is harder to detect because it uses personal or organizational details to make the message appear more legitimate.
```

### If Asked: “How can tailgating be reduced?”

```text
Tailgating can be reduced through badge checks, visitor sign-in, staff awareness, security guards, and politely challenging unknown people.
```

### If Asked: “How can OSINT increase risk?”

```text
Public information can be used to create more convincing targeted messages, such as using real names, roles, events, or departments.
```

### If Asked: “What should a user do after clicking a suspicious link?”

```text
The user should stop interacting with the site, report the incident, change credentials if entered, and follow the organization's incident response procedure.
```

---

## 20. Common Mistakes

| Mistake | Why It Is Risky | Safer Behaviour |
|---|---|---|
| clicking because message looks urgent | urgency may be manipulation | pause and verify |
| trusting display name only | sender address may be spoofed | check full address and context |
| replying to suspicious sender | confirms contact / may continue attack | report and verify separately |
| sharing MFA code | attacker may access account | never share MFA codes |
| holding door for unknown person | bypasses access control | ask them to use badge/reception |
| plugging in unknown USB | malware risk | report unknown device |
| posting too much work detail online | supports spear phishing | limit public information |
| ignoring small suspicious signs | attacks may look realistic | report concerns early |
| blaming victims | reduces reporting | create safe reporting culture |
| relying only on technology | humans/process also needed | combine training, process, and controls |

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

Explain two human factors that social engineering attacks may exploit.

<details>
<summary>Mark Scheme Style Answer</summary>

An attacker may exploit urgency by pressuring a user to act quickly without checking the request. They may also exploit authority by pretending to be a manager or IT administrator so the user feels they should obey the instruction.

</details>

---

### Question 3 [4 marks]

Distinguish between phishing and spear phishing.

<details>
<summary>Mark Scheme Style Answer</summary>

Phishing is a broad deceptive message usually sent to many users to trick them into revealing information or clicking unsafe links. Spear phishing is targeted at a specific person or organization and often uses personal or organizational details to appear more believable.

</details>

---

### Question 4 [4 marks]

Explain how OSINT can increase the risk of spear phishing.

<details>
<summary>Mark Scheme Style Answer</summary>

OSINT can provide attackers with public information such as staff names, job roles, events, and email formats. This information can be used to create a targeted message that appears more realistic, increasing the chance that the victim trusts it.

</details>

---

### Question 5 [4 marks]

Explain two ways an organization can reduce tailgating.

<details>
<summary>Mark Scheme Style Answer</summary>

The organization can require staff and visitors to use badges or visitor sign-in so unauthorized people cannot enter unnoticed. Staff can also be trained to politely challenge unknown people or direct them to reception instead of holding secure doors open.

</details>

---

### Question 6 [6 marks]

A school receives an email asking staff to log in urgently to keep their accounts active. Explain three red flags.

<details>
<summary>Mark Scheme Style Answer</summary>

One red flag is urgency because the message pressures staff to act quickly. Another red flag is the request to log in through a link, which may lead to a fake website that steals credentials. A third red flag may be an unusual sender address, generic greeting, unexpected request, spelling errors, or a request that does not follow normal school procedure.

</details>

---

### Question 7 [6 marks]

Explain three controls that can reduce the risk of social engineering.

<details>
<summary>Mark Scheme Style Answer</summary>

Security awareness training helps users identify red flags such as urgency, suspicious links, and requests for credentials. Multi-factor authentication reduces damage if a password is stolen because the attacker still needs another verification factor. Verification procedures require users to confirm unusual requests through trusted channels before sharing information or making changes.

</details>

---

## 22. Guided Practice

### Practice 1

A message says:

```text
Your account will close in 10 minutes. Click here now.
```

What human factor is being used?

<details>
<summary>Suggested Answer</summary>

Urgency and fear.

</details>

---

### Practice 2

A person says:

```text
I am from IT. Tell me your MFA code so I can fix your account.
```

What should the user do?

<details>
<summary>Suggested Answer</summary>

Do not share the MFA code. Verify the request through an official IT/helpdesk channel and report the suspicious request.

</details>

---

### Practice 3

A stranger follows closely behind a staff member into a secure room.

What type of attack is this?

<details>
<summary>Suggested Answer</summary>

Tailgating.

</details>

---

### Practice 4

Why is spear phishing often more convincing than general phishing?

<details>
<summary>Suggested Answer</summary>

It uses specific information about the target or organization, making the message appear more legitimate.

</details>

---

### Practice 5

Why should suspicious requests be reported?

<details>
<summary>Suggested Answer</summary>

Reporting helps the organization contain the incident, warn other users, block threats, and investigate what happened.

</details>

---

## 23. Independent Practice

### Question 1

Define social engineering.

### Question 2

Explain why social engineering can bypass technical controls.

### Question 3

List five red flags in phishing messages.

### Question 4

Compare phishing and spear phishing.

### Question 5

Explain pretexting using a safe defensive example.

### Question 6

Explain why unknown USB devices are risky.

### Question 7

Explain how tailgating can be prevented.

### Question 8

Explain how OSINT can support targeted attacks.

### Question 9

Describe what a user should do after entering credentials into a suspicious site.

### Question 10

Explain why a no-blame reporting culture improves security.

---

## 24. Classroom Activity

### Activity 1: Red Flag Sorting

Students are given safe example message snippets and sort warning signs into:

```text
urgency
authority
fear
suspicious link
unexpected attachment
credential request
normal message
```

---

### Activity 2: Verification Role-play

Students practise safe responses:

```text
"I cannot confirm that through this message."
"I will contact IT through the official helpdesk."
"Please go to reception for visitor access."
"I need to verify this request with my manager."
```

The focus is polite refusal and safe verification.

---

### Activity 3: Digital Footprint Audit

Students review fictional public profile cards and identify what information could increase spear phishing risk.

They recommend safer sharing habits.

---

## 25. Teacher Notes

### Teaching Emphasis

Focus on:

```text
recognition
prevention
safe reporting
verification
human factors
scenario-based explanation
```

Avoid asking students to produce realistic attack messages.  
Use sanitized examples and defensive analysis.

### Suggested Discussion

```text
Why do smart people still fall for social engineering?
How does urgency reduce careful thinking?
Why should reporting be encouraged even if the user made a mistake?
Why is MFA helpful but not a complete solution?
```

---

## 26. One-page Section Summary

| Point | Summary |
|---|---|
| Social engineering | manipulating people to reduce security |
| Main target | human trust and behaviour |
| Phishing | broad deceptive message |
| Spear phishing | targeted deceptive message |
| Pretexting | fake story or identity |
| Baiting | tempting offer/object |
| Quid pro quo | fake help or reward for access/info |
| Tailgating | following someone into secure area |
| OSINT | public information used for targeting |
| Digital footprint | online data trail |
| Human factors | urgency, fear, authority, curiosity, helpfulness |
| Red flags | suspicious links, urgent pressure, unexpected requests |
| Verification | use independent trusted channel |
| Defence | training, MFA, access control, reporting |
| Reporting | helps contain and warn others |
| Best exam habit | identify attack method, human factor, impact, and defence |

::: tip Next Step
After this overview page, the next page should be **What Is Social Engineering?**, using the real file name `what-is-social-engineering.md`.
:::
