# Incident Response and Reporting

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define incident response
- define security incident
- explain why quick reporting matters
- identify what users should do after a suspected social engineering attempt
- explain how evidence should be preserved safely
- describe basic response steps after phishing, credential exposure, malware risk, tailgating, or data exposure
- explain why organizations need clear reporting procedures
- explain the role of containment, investigation, recovery, and lessons learned
- distinguish user response from IT/security team response
- explain why a no-blame reporting culture improves security
- answer exam-style questions using clear cybersecurity vocabulary

::: warning Defensive Learning Only
This page teaches safe response, reporting, containment, and recovery. It does not teach how to attack systems, hide activity, or bypass investigation.
:::

---

## 2. Syllabus / Extension Mapping

| Item | Detail |
|---|---|
| Section | Social Engineering Awareness |
| Topic | Incident Response and Reporting |
| Main skill | Responding safely and quickly after suspected social engineering or security incidents |
| Connected topics | Phishing, spear phishing, pretexting, tailgating, OSINT, robust programs, network security |
| Practical focus | Stop, preserve evidence, report, contain, recover, learn |
| Exam relevance | Scenario response, reporting benefits, response stages, control recommendations |

::: tip Learning Focus
A good incident response does not start with panic or blame. It starts with stopping further harm, reporting quickly, preserving useful evidence, and following the correct procedure.
:::

---

## 3. Key Terms

| Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Security incident | 安全事件 | Event that may threaten confidentiality, integrity, or availability |
| Incident response | 事件响应 | Organized steps taken after a suspected or confirmed security incident |
| Reporting | 报告 | Informing the correct person or team about a suspected issue |
| Containment | 控制 / 遏制 | Limiting further damage from an incident |
| Investigation | 调查 | Finding what happened, what was affected, and how |
| Recovery | 恢复 | Restoring safe normal operation |
| Evidence | 证据 | Information that helps understand the incident |
| Screenshot | 截图 | Image record of a message, page, or warning |
| Log | 日志 | Record of system or account activity |
| Credential exposure | 凭证暴露 | Password, MFA code, or login details may have been revealed |
| Account compromise | 账号被攻陷 | Unauthorized person may have accessed an account |
| Malware | 恶意软件 | Software designed to harm, spy, encrypt, or disrupt |
| Data breach | 数据泄露 | Unauthorized access to or disclosure of sensitive data |
| Escalation | 升级处理 | Passing an incident to a higher or specialist team |
| Triage | 初步分级 | Assessing severity and priority |
| Root cause | 根本原因 | Underlying reason the incident happened |
| Lessons learned | 经验总结 | Review after incident to improve future defence |
| No-blame culture | 无责报告文化 | Encourages quick reporting without fear of punishment |
| Incident response plan | 事件响应计划 | Prepared procedure for handling incidents |
| Communication plan | 沟通计划 | Plan for informing affected users or stakeholders safely |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

Incident response（事件响应）就是当出现可疑安全事件时，组织或用户应该怎么做。

比如：

```text
点了可疑链接
输入了密码
分享了 MFA code
打开了可疑附件
发现 unknown USB
看到陌生人 tailgating
发现学生数据被误发
账号出现异常登录
```

最差的做法是：

```text
害怕被骂，所以不报告
继续点击更多内容
自己乱删证据
继续使用可能已经出问题的账号
假装没发生
```

更安全的做法是：

```text
stop interacting
preserve evidence if safe
report quickly
change password if credentials were exposed
reset MFA if needed
follow IT/security instructions
learn from the incident
```

事件响应不是为了责怪用户，而是为了：

```text
减少损失
保护更多人
查清影响范围
恢复安全状态
改进未来防御
```

考试答题可以用：

```text
stop → report → contain → investigate → recover → lessons learned
```

</template>

<template #en>

### English Explanation

Incident response means what users and organizations should do when a suspicious security event happens.

Examples:

```text
clicking a suspicious link
entering a password on a suspicious page
sharing an MFA code
opening a suspicious attachment
finding an unknown USB device
seeing someone tailgating
sending student data to the wrong person
noticing unusual account login activity
```

Weak responses include:

```text
not reporting because of fear
clicking more content
deleting evidence randomly
continuing to use a possibly compromised account
pretending nothing happened
```

Safer responses include:

```text
stop interacting
preserve evidence if safe
report quickly
change password if credentials were exposed
reset MFA if needed
follow IT/security instructions
learn from the incident
```

Incident response is not mainly about blaming the user. It is about:

```text
reducing damage
protecting more users
understanding the impact
restoring a safe state
improving future defence
```

Exam answer structure:

```text
stop → report → contain → investigate → recover → lessons learned
```

</template>
</LangBlock>

---

## 5. What Is a Security Incident?

A security incident is an event that may harm security.

### Simple Definition

```text
A security incident is an event that may threaten the confidentiality, integrity, or availability of data, systems, or services.
```

### Examples

```text
phishing email received
user clicked a suspicious link
password entered into fake site
MFA code shared
unknown attachment opened
device infected by malware
unauthorized person entered a restricted area
student data sent to wrong recipient
lost laptop or USB drive
unusual login detected
```

### Mark Scheme Phrase

```text
A security incident is an event that may compromise data, accounts, systems, or physical access and should be reported for investigation.
```

---

## 6. What Is Incident Response?

Incident response is the organized process of handling security incidents.

### Simple Definition

```text
Incident response is the process used to identify, report, contain, investigate, recover from, and learn from security incidents.
```

### Main Goals

```text
limit damage
protect users and data
restore normal service
find what happened
prevent repeat incidents
meet legal or policy requirements
```

### Mark Scheme Phrase

```text
Incident response provides a structured way to reduce damage, restore secure operation, and improve future security after an incident.
```

---

## 7. Why Quick Reporting Matters

Quick reporting is one of the most important user actions.

### Benefits

```text
IT can block malicious links
affected accounts can be reset
other users can be warned
logs can be checked before they expire
malware can be contained
lost devices or badges can be disabled
data exposure can be assessed
damage can be reduced
```

### If Reporting Is Delayed

```text
more accounts may be compromised
attackers may continue using access
evidence may be lost
more users may click the same message
data may spread further
recovery may take longer
```

### Mark Scheme Phrase

```text
Prompt reporting helps contain an incident, protect other users, preserve evidence, and reduce further damage.
```

---

## 8. User First Response: STOP

The first user response is to stop making the situation worse.

### Stop Doing

```text
do not click more links
do not enter more information
do not reply with credentials or MFA codes
do not open more attachments
do not plug in unknown devices
do not forward suspicious content to others casually
do not delete evidence unless instructed
```

### Safer Action

```text
pause
disconnect only if policy says so
take note of what happened
report through the correct channel
follow official instructions
```

### Exam Phrase

```text
The user should stop interacting with the suspicious message or device to prevent further exposure.
```

---

## 9. Preserve Evidence Safely

Evidence helps IT/security understand what happened.

### Useful Evidence

```text
screenshot of message or page
sender address
time received
link shown in message
file name of attachment
what was clicked or entered
device used
account involved
location of physical incident
description of unknown person/device
```

### Important

Do not perform unsafe actions just to collect evidence.

```text
do not click links to investigate
do not open suspicious attachments
do not plug in unknown devices
do not confront people aggressively
```

### Mark Scheme Phrase

```text
Evidence should be preserved safely, such as screenshots or sender details, without further interacting with suspicious content.
```

---

## 10. Basic Incident Response Cycle

A common response cycle:

```text
1. Preparation
2. Identification
3. Containment
4. Investigation
5. Recovery
6. Lessons learned
```

### Short Version for Students

```text
prepare → detect → contain → recover → improve
```

### Explanation

| Stage | Meaning |
|---|---|
| Preparation | policies, training, tools, contacts ready |
| Identification | notice and confirm possible incident |
| Containment | stop further harm |
| Investigation | find cause and impact |
| Recovery | restore safe normal operation |
| Lessons learned | improve controls and training |

---

## 11. Preparation

Preparation happens before an incident.

### Preparation Includes

```text
clear reporting channel
staff/student awareness training
incident response plan
contact list
backup procedures
MFA enabled
logging enabled
device inventory
visitor and badge policy
data protection procedures
```

### Why It Matters

When an incident happens, people should not need to invent the process.

### Exam Phrase

```text
Preparation reduces response time because users and staff already know who to contact and what steps to follow.
```

---

## 12. Identification

Identification means recognizing that something may be wrong.

### Signs of an Incident

```text
unexpected MFA prompt
password no longer works
messages sent from account without permission
unusual login location
antivirus warning
files missing or encrypted
suspicious email received
unknown USB found
lost device or badge
unauthorized person in restricted area
```

### User Role

Users do not need to prove everything.  
If it seems suspicious, report it.

### Exam Phrase

```text
Identification involves recognizing suspicious signs and reporting them so the incident can be assessed.
```

---

## 13. Containment

Containment means limiting further damage.

### Possible Containment Actions

```text
disable compromised account
force password reset
revoke active sessions
block malicious URL
quarantine email
isolate infected device
disable lost badge
remove unauthorized visitor
restrict access temporarily
warn other users
```

### User Role

```text
stop interacting
report quickly
follow IT/security instructions
do not continue using affected account/device if told not to
```

### Exam Phrase

```text
Containment limits further damage by stopping the incident from spreading or continuing.
```

---

## 14. Investigation

Investigation finds what happened and what was affected.

### Investigation Questions

```text
Who reported it?
What happened?
When did it happen?
Which account/device/data was involved?
Was any password or MFA code shared?
Was any file opened?
Was any data accessed or sent?
Are other users affected?
What logs or evidence are available?
```

### Evidence Sources

```text
user report
screenshots
email headers
login logs
device logs
network logs
CCTV or access logs
file access records
```

### Exam Phrase

```text
Investigation uses reports, evidence, and logs to determine the cause, scope, and impact of the incident.
```

---

## 15. Recovery

Recovery restores safe normal operation.

### Recovery Actions

```text
reset password
reset MFA
restore files from backup
remove malware
patch affected systems
re-enable account after securing it
replace lost badge
recover clean device image
notify affected users if required
verify systems are safe before returning to normal use
```

### Key Point

Recovery should not simply turn everything back on without checking safety.

### Exam Phrase

```text
Recovery restores normal operation only after affected accounts, devices, or systems have been secured.
```

---

## 16. Lessons Learned

Lessons learned means improving after the incident.

### Questions

```text
What allowed the incident to happen?
Was reporting fast enough?
Were users clear about what to do?
Did technical controls work?
Were policies followed?
What training needs updating?
What process should change?
```

### Improvements

```text
update training
improve email filtering
change approval workflow
reduce public information
improve badge policy
make reporting easier
update incident response plan
```

### Mark Scheme Phrase

```text
Lessons learned help prevent repeat incidents by improving policies, training, and technical controls.
```

---

## 17. Reporting Channel

A reporting channel must be clear and easy.

### Possible Reporting Channels

```text
IT helpdesk
security team email
report phishing button
teacher or manager
school safeguarding / data protection lead
incident form
phone hotline
reception/security desk for physical issues
```

### Good Reporting Design

```text
simple
well-known
fast
no-blame
available during urgent situations
confirms receipt
gives next steps
```

### Exam Phrase

```text
A clear reporting channel reduces delay because users know exactly where to report suspicious activity.
```

---

## 18. No-blame Reporting

No-blame reporting encourages honesty.

### Why Needed

Users may hide incidents because they fear:

```text
punishment
embarrassment
being blamed
looking careless
causing trouble
```

### Why No-blame Helps

```text
faster reporting
more accurate information
earlier containment
better warning to others
more learning opportunities
stronger security culture
```

### Exam Phrase

```text
A no-blame culture encourages users to report mistakes or suspicious events quickly, helping the organization contain damage.
```

---

## 19. After Clicking a Suspicious Link

### User Should

```text
stop using the page
do not enter more information
take screenshot if safe
report immediately
tell IT what was clicked
follow instructions
change password if credentials were entered
check account activity if advised
```

### IT/Security May

```text
block URL
check logs
warn other users
reset affected credentials
review email campaign
monitor account activity
```

### Exam Phrase

```text
After clicking a suspicious link, the user should stop interacting, report it, and change credentials if they entered them.
```

---

## 20. After Entering Credentials

Credentials include username, password, MFA code, or authentication details.

### User Should

```text
report immediately
change password using official site
do not reuse old password
reset MFA if code was shared
sign out of other sessions if possible
check account activity
follow IT/security instructions
```

### IT/Security May

```text
force password reset
revoke sessions
review login logs
disable account temporarily
check for data access
warn contacts if account sent messages
```

### Mark Scheme Phrase

```text
If credentials were exposed, the account should be secured by resetting the password, revoking sessions, checking logs, and resetting MFA if needed.
```

---

## 21. After Opening a Suspicious Attachment

### User Should

```text
stop opening or running the file
do not forward it
report immediately
note file name and sender
follow policy on disconnecting device
do not try to remove malware manually unless instructed
```

### IT/Security May

```text
scan device
isolate device from network
quarantine email
check for malware indicators
restore from clean backup if needed
warn other users
```

### Exam Phrase

```text
A suspicious attachment should be reported and the device may need to be isolated or scanned to prevent malware spreading.
```

---

## 22. After Sharing an MFA Code

### User Should

```text
report immediately
deny further prompts
change password
reset MFA if instructed
check account activity
tell IT the time of the event
```

### IT/Security May

```text
revoke active sessions
reset MFA tokens
check login logs
temporarily disable account
investigate data access
warn user contacts
```

### Key Point

MFA codes are sensitive and should never be shared.

---

## 23. After Tailgating or Physical Incident

### User Should

```text
do not physically confront if unsafe
report immediately to security/reception/teacher/manager
describe person and location if safe
note time and door/area
do not let more people in
follow site policy
```

### Security/Organization May

```text
check CCTV
check access logs
locate visitor
secure affected area
review badge policy
warn staff
disable lost badges
```

### Exam Phrase

```text
Physical security incidents should be reported quickly so access logs, CCTV, and affected areas can be checked.
```

---

## 24. After Data Is Sent to the Wrong Person

### User Should

```text
report immediately
do not try to hide the mistake
record what data was sent
record recipient and time
ask recipient not to open/forward/delete according to policy if instructed
follow data protection procedure
```

### Organization May

```text
assess sensitivity of data
contact recipient
contain further sharing
notify affected people if required
record incident
review process
```

### Mark Scheme Phrase

```text
Mis-sent sensitive data should be reported immediately so the organization can assess impact and contain further disclosure.
```

---

## 25. After Finding an Unknown USB Device

### User Should

```text
do not plug it in
do not open files on it
report or hand it to IT/security/teacher
state where and when it was found
follow device policy
```

### Organization May

```text
handle using safe forensic process
warn users
review physical security
check whether similar devices were found
```

### Exam Phrase

```text
Unknown USB devices should not be plugged in because they may contain malware; they should be reported according to policy.
```

---

## 26. Communication During Incidents

Communication should be clear and controlled.

### Users Need

```text
what happened in simple terms
what action to take
what not to do
where to report
whether password reset is required
```

### Avoid

```text
panic
rumours
blaming individuals
sharing sensitive details publicly
technical jargon without explanation
```

### Exam Phrase

```text
Clear communication helps users take the correct action and prevents confusion or further spread of the incident.
```

---

## 27. Documentation

Incidents should be documented.

### Useful Details

```text
date and time
who reported it
type of incident
systems/accounts involved
actions taken
evidence collected
impact assessment
recovery steps
lessons learned
```

### Why Document?

```text
supports investigation
shows actions taken
helps legal/policy compliance
improves future training
helps identify repeated patterns
```

### Mark Scheme Phrase

```text
Documentation supports investigation and helps the organization improve future incident response.
```

---

## 28. School Scenario

### Scenario

A teacher clicked a link in an urgent email and entered school login details.

### Good Response

```text
teacher reports immediately
stop using suspicious page
reset password using official system
IT revokes sessions and checks logs
MFA is reset if needed
IT warns other staff
email link is blocked
incident is recorded
training is updated if needed
```

### Exam-style Answer

```text
The teacher should report immediately and stop interacting with the suspicious site. The account should be secured by resetting the password, revoking active sessions, and checking login logs. IT should warn other staff and block the link. The school should review the incident and improve training or filtering if needed.
```

---

## 29. Workplace Scenario

### Scenario

An employee approved a payment change after an urgent message that appeared to come from a manager.

### Good Response

```text
report immediately to finance/security
pause further payment
verify request through known channel
contact bank/provider if money moved
check email/account logs
review approval workflow
warn relevant staff
document incident
```

### Exam-style Answer

```text
The employee should report the incident immediately so finance can stop or review the payment. The organization should verify the request through known channels, check whether accounts were compromised, and review the approval process to prevent future changes based only on urgent messages.
```

---

## 30. Physical Security Scenario

### Scenario

A student sees an unknown adult enter a staff-only area without a badge.

### Good Response

```text
do not confront aggressively
tell a teacher/reception/security immediately
describe person and location if safe
staff check area and visitor records
CCTV or access logs may be reviewed
incident is documented
```

### Exam-style Answer

```text
The student should report the situation to a teacher or security immediately rather than confronting the person. Staff can check visitor records, secure the area, and review CCTV or access logs if needed.
```

---

## 31. Common Mistakes

| Mistake | Why It Is Bad | Better Response |
|---|---|---|
| not reporting because embarrassed | delays containment | report quickly |
| deleting suspicious message immediately | evidence may be lost | preserve/report according to policy |
| clicking again to check | increases risk | stop interacting |
| forwarding suspicious email to friends | spreads risk | use official reporting method |
| using suspicious link to change password | may expose password again | use official site/app |
| ignoring unexpected MFA prompt | attacker may be trying to log in | deny and report |
| plugging in unknown USB | malware risk | report device |
| confronting intruder aggressively | safety risk | report to security/staff |
| assuming no damage because nothing happened | compromise may be hidden | report for investigation |
| blaming user | discourages future reporting | use no-blame learning culture |

---

## 32. Scenario Answer Bank

### If Asked: “Define incident response”

```text
Incident response is the process used to identify, report, contain, investigate, recover from, and learn from security incidents.
```

### If Asked: “Why is quick reporting important?”

```text
Quick reporting helps contain damage, preserve evidence, warn other users, and secure affected accounts or systems.
```

### If Asked: “What should a user do after clicking a suspicious link?”

```text
The user should stop interacting, preserve evidence if safe, report immediately, and change credentials if they were entered.
```

### If Asked: “What should happen after a password is exposed?”

```text
The password should be reset using the official system, active sessions should be revoked, logs should be checked, and MFA should be reviewed or reset if needed.
```

### If Asked: “What is containment?”

```text
Containment is limiting further damage, such as disabling an account, blocking a link, isolating a device, or warning users.
```

### If Asked: “Why are lessons learned useful?”

```text
Lessons learned help improve policies, training, and controls so similar incidents are less likely to happen again.
```

---

## 33. Exam-style Questions

### Question 1 [2 marks]

Define incident response.

<details>
<summary>Mark Scheme Style Answer</summary>

Incident response is the process used to identify, report, contain, investigate, recover from, and learn from security incidents.

</details>

---

### Question 2 [4 marks]

Explain why users should report suspicious activity quickly.

<details>
<summary>Mark Scheme Style Answer</summary>

Quick reporting helps the organization contain the incident before more damage occurs. IT/security can block malicious links, reset affected accounts, warn other users, preserve evidence, and investigate logs before information is lost.

</details>

---

### Question 3 [4 marks]

A user clicked a suspicious link but did not enter any details. Explain what they should do.

<details>
<summary>Mark Scheme Style Answer</summary>

The user should stop interacting with the page and not click further. They should report the message or link to IT/security and provide details such as the sender, time, and screenshot if safe. IT can then block the link or warn others if needed.

</details>

---

### Question 4 [5 marks]

A user entered their password into a suspicious page. Explain suitable response steps.

<details>
<summary>Mark Scheme Style Answer</summary>

The user should report immediately and change the password using the official website or system. IT/security should revoke active sessions, check login logs, and reset MFA if needed. The user should monitor account activity and follow the incident response procedure.

</details>

---

### Question 5 [5 marks]

Explain containment using two examples.

<details>
<summary>Mark Scheme Style Answer</summary>

Containment means limiting further damage from an incident. For example, a compromised account may be disabled or forced to reset its password. A suspicious link may be blocked by web filtering or an infected device may be isolated from the network to stop malware spreading.

</details>

---

### Question 6 [6 marks]

Explain three stages of an incident response process.

<details>
<summary>Mark Scheme Style Answer</summary>

Identification involves recognizing and reporting suspicious activity. Containment limits further damage, such as disabling an account or blocking a malicious link. Recovery restores safe normal operation, such as resetting passwords, removing malware, or restoring files from backup. Other valid stages include preparation, investigation, and lessons learned.

</details>

---

### Question 7 [6 marks]

A student finds an unknown USB drive in a computer lab. Explain the correct response and why.

<details>
<summary>Mark Scheme Style Answer</summary>

The student should not plug in the USB drive because it may contain malware or unsafe files. They should report it or hand it to a teacher/IT staff member and explain where it was found. This allows the school to handle it safely and warn others if needed.

</details>

---

### Question 8 [8 marks]

A school wants to improve reporting and response after social engineering incidents. Discuss a suitable approach.

<details>
<summary>Mark Scheme Style Answer</summary>

The school should create a clear reporting process so staff and students know who to contact after suspicious emails, lost badges, unknown USB devices, tailgating, or credential exposure. The process should be simple and no-blame so users report quickly instead of hiding mistakes.

The school should prepare an incident response plan with steps for containment, investigation, recovery, and lessons learned. For example, IT may reset passwords, revoke sessions, block links, check logs, isolate devices, or warn other users.

Training should teach users to stop interacting with suspicious content, preserve evidence safely, and report immediately. After incidents, the school should review what happened and improve training, filtering, access control, or policies. This reduces damage and helps prevent similar incidents.

</details>

---

## 34. Guided Practice

### Practice 1

A user clicked a suspicious link. What is the first safe action?

<details>
<summary>Suggested Answer</summary>

Stop interacting with the page/message and report it.

</details>

---

### Practice 2

A user entered a password on a suspicious site. What should happen?

<details>
<summary>Suggested Answer</summary>

Report immediately, reset the password using the official system, revoke sessions/check logs, and review MFA if needed.

</details>

---

### Practice 3

Why should suspicious emails not simply be forwarded to friends?

<details>
<summary>Suggested Answer</summary>

Forwarding may spread the risk. The user should use the official reporting method.

</details>

---

### Practice 4

What is containment?

<details>
<summary>Suggested Answer</summary>

Containment means limiting further damage, such as disabling an account, blocking a link, or isolating a device.

</details>

---

### Practice 5

Why are lessons learned important?

<details>
<summary>Suggested Answer</summary>

They help improve training, policies, and controls to prevent similar incidents in the future.

</details>

---

## 35. Independent Practice

### Question 1

Define security incident.

### Question 2

Define incident response.

### Question 3

Explain why quick reporting matters.

### Question 4

List five examples of reportable incidents.

### Question 5

Explain what a user should do after clicking a suspicious link.

### Question 6

Explain what should happen after credentials are exposed.

### Question 7

Explain containment with two examples.

### Question 8

Explain why evidence should be preserved safely.

### Question 9

Explain why a no-blame culture improves reporting.

### Question 10

Write a basic incident response plan for a school phishing incident.

---

## 36. Classroom Activity

### Activity 1: Incident Sort

Students sort safe scenario cards into:

```text
phishing
credential exposure
malware risk
physical security
data exposure
lost asset
```

Then they choose the first safe response.

---

### Activity 2: Response Timeline

Students arrange response steps into order:

```text
stop interacting
preserve evidence
report
contain
investigate
recover
lessons learned
```

---

### Activity 3: Reporting Practice

Students practise writing a short incident report using fictional details:

```text
what happened
when it happened
what was clicked/shared
which account/device was involved
what evidence is available
what action has already been taken
```

---

## 37. Homework

### Homework Part A

Explain incident response and reporting in 8-10 sentences using one social engineering example.

### Homework Part B

Create a table:

```text
incident type
first user response
possible IT/security response
reason
```

Use at least five incident types.

### Homework Part C

Answer:

```text
1. Why should suspicious links be reported quickly?
2. Why should users avoid deleting evidence immediately?
3. Why should credentials be reset after exposure?
4. Why is containment important?
5. Why should organizations do lessons learned?
```

### Homework Part D

Correct these misconceptions:

```text
Reporting is only needed after confirmed damage.
Users should investigate suspicious links themselves.
Deleting suspicious emails always solves the problem.
A clicked link is harmless if nothing appears.
Incident response is only about punishing the user.
```

---

## 38. Teacher Notes

### Teaching Emphasis

Focus on:

```text
quick reporting
stop and preserve evidence safely
containment
recovery
no-blame culture
scenario-based response
```

Avoid:

```text
asking students to investigate real suspicious links
opening suspicious files
plugging in unknown devices
using real incidents with identifiable personal data
blaming individuals
```

### Suggested Discussion Questions

```text
Why do people delay reporting?
What makes reporting easier in a school?
Why should evidence be preserved but not investigated by users?
How can a school learn from an incident without blaming someone?
```

---

## 39. One-page Revision Summary

| Point | Summary |
|---|---|
| Security incident | event that may threaten security |
| Incident response | identify, report, contain, investigate, recover, learn |
| Quick reporting | reduces damage and warns others |
| Stop | do not click/open/reply further |
| Evidence | screenshots, sender, time, what happened |
| Preserve safely | do not interact further just to collect evidence |
| Containment | limit further harm |
| Investigation | find cause, scope, and impact |
| Recovery | restore safe normal operation |
| Lessons learned | improve training, policy, and controls |
| Credential exposure | reset password, revoke sessions, check logs |
| Suspicious attachment | report, scan/isolate device if needed |
| Unknown USB | do not plug in, report it |
| Tailgating | report to security/staff, check access logs/CCTV |
| No-blame culture | encourages quick reporting |
| Best exam structure | stop → report → contain → investigate → recover → learn |
| Best phrase | Prompt reporting and structured incident response help contain damage, protect other users, and improve future security. |

::: tip Next Step
Social Engineering Awareness content pages are now complete. The next section to refine should be **IA Support**, starting with its real `index.md`.
:::
