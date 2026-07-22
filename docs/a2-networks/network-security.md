# Network Security

## Page map

- [Lesson goals](#1-lesson-goals)
- [Syllabus mapping](#2-syllabus-mapping)
- [Core checklist](#core-checklist)
- [Key terms and detailed lesson](#3-key-terms)

---

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what network security means
- explain why networks need security
- identify common network threats
- explain unauthorized access, malware, phishing, denial-of-service attacks, interception, and social engineering
- explain common protection methods such as authentication, passwords, firewalls, encryption, anti-malware, updates, permissions, and backups
- distinguish prevention, detection, and recovery controls
- explain the importance of access control and user permissions
- explain how firewalls help protect networks
- explain why security is a balance between usability, cost, and protection
- apply security measures to home, school, business, and cloud scenarios
- avoid common misconceptions about network security
- answer exam-style questions about network security

---

## Start here: core exam focus

This page belongs to **A2 Networks**. In Paper 1, network security often appears as a **scenario question**: a school, business, hospital, website, or cloud system has a risk, and you must explain how to reduce it.

Do not try to memorize every security term first. Start with this exam pattern:

1. identify the threat
2. explain the risk
3. choose a suitable control
4. justify why it fits the scenario

::: tip Exam focus
Strong answers connect a threat to a specific scenario. For example, do not only write "use a firewall"; explain what traffic or access the firewall helps control in that network.
:::

## Core checklist

After studying this page, you should be able to:

- identify common network threats
- explain how each threat affects confidentiality, integrity, or availability
- choose suitable protection methods
- explain why a control is suitable for a specific scenario
- distinguish prevention, detection, and recovery

## Must know for SL

Focus on these first:

| Threats / weaknesses | Protection methods |
|---|---|
| malware | firewall |
| phishing / social engineering | encryption |
| unauthorized access | access control |
| denial of service | authentication |
| weak passwords | backup / recovery |

## Scenario answer pattern

A good network security answer often follows this pattern:

1. Name the threat or weakness.
2. Explain what could happen in the given scenario.
3. Choose a suitable security measure.
4. Explain why that measure reduces the risk.

Example:

```text
Phishing could trick school staff into revealing login details, allowing attackers to access student records. Multi-factor authentication reduces this risk because a stolen password alone is not enough to log in.
```

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding threats to networks and how systems can be protected |
| Connected topics | Network fundamentals, LAN/WAN, network devices, TCP/IP, DNS and web access, encryption, VPN, NAT, cloud computing |
| Practical focus | Choosing suitable security measures for different network scenarios |
| Exam relevance | Threat explanation, protection methods, scenario evaluation, advantages/limitations |

::: tip Learning Focus
Network security is not one single tool. It is a combination of people, policies, software, hardware, and procedures used to protect data, devices, and services.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Network security | 网络安全 | Protection of networked systems, data, and services from threats |
| Threat | 威胁 | Possible danger to data, devices, or services |
| Vulnerability | 漏洞 / 弱点 | Weakness that can be exploited |
| Attack | 攻击 | Attempt to exploit a system or network |
| Unauthorized access | 未授权访问 | Access by someone without permission |
| Malware | 恶意软件 | Software designed to harm, disrupt, or steal data |
| Virus | 病毒 | Malware that attaches to files/programs and spreads |
| Worm | 蠕虫 | Malware that spreads across networks without user action |
| Trojan | 木马 | Malware disguised as legitimate software |
| Ransomware | 勒索软件 | Malware that encrypts or locks data and demands payment |
| Spyware | 间谍软件 | Malware that secretly collects information |
| Phishing | 网络钓鱼 | Trick users into revealing sensitive information |
| Social engineering | 社会工程 | Manipulating people to break security rules |
| DoS | 拒绝服务攻击 | Attack that makes a service unavailable |
| DDoS | 分布式拒绝服务攻击 | DoS attack using many attacking devices |
| Interception | 截获 | Capturing data while it is transmitted |
| Firewall | 防火墙 | Filters network traffic based on rules |
| Authentication | 身份验证 | Checking a user's identity |
| Authorization | 授权 | Deciding what an authenticated user can access |
| Encryption | 加密 | Encoding data so unauthorized users cannot read it |
| Backup | 备份 | Copy of data used for recovery |
| Patch / update | 补丁 / 更新 | Fix for security or software issues |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Network security（网络安全）** 是保护网络中的数据、设备和服务不被破坏、盗取、篡改或非法访问。

网络让设备可以互相通信和共享资源，但也带来了风险。  
例如：

```text
someone tries to access school files without permission
malware spreads through shared network folders
a phishing email steals login details
an attacker intercepts data on public Wi-Fi
a DDoS attack makes a website unavailable
```

所以网络安全不是只安装一个软件就结束。  
它通常需要多种方法一起使用：

```text
strong passwords
multi-factor authentication
firewalls
encryption
anti-malware
software updates
access permissions
user education
backup and recovery
network monitoring
```

可以把网络安全分成三个方向：

```text
prevention = stop attacks before they happen
detection = notice attacks or unusual activity
recovery = restore system after damage
```

简单来说：

```text
network security = protect data, devices, users, and services in a network
```

</template>

<template #en>

### English Explanation

**Network security** is the protection of data, devices, and services in a network from damage, theft, modification, or unauthorized access.

Networks allow devices to communicate and share resources, but they also create risks.  
For example:

```text
someone tries to access school files without permission
malware spreads through shared network folders
a phishing email steals login details
an attacker intercepts data on public Wi-Fi
a DDoS attack makes a website unavailable
```

Network security is not finished by installing one piece of software.  
It usually requires several methods working together:

```text
strong passwords
multi-factor authentication
firewalls
encryption
anti-malware
software updates
access permissions
user education
backup and recovery
network monitoring
```

Network security can be grouped into three areas:

```text
prevention = stop attacks before they happen
detection = notice attacks or unusual activity
recovery = restore system after damage
```

In simple terms:

```text
network security = protect data, devices, users, and services in a network
```

</template>
</LangBlock>

---

## 5. What Is Network Security?

Network security refers to the measures used to protect a network and the data moving through it.

It protects:

```text
devices
servers
users
accounts
files
databases
network traffic
cloud services
applications
```

### Main Security Goals

| Goal | Meaning |
|---|---|
| Confidentiality | only authorized people can access data |
| Integrity | data is accurate and not changed without permission |
| Availability | systems and data are accessible when needed |

These are often called the **CIA triad**:

```text
Confidentiality
Integrity
Availability
```

::: tip Exam Phrase
Network security protects networked systems and data from unauthorized access, damage, modification, theft, and disruption.
:::

---

## 6. Why Networks Need Security

Networks need security because connected systems are exposed to more risks.

### Risks Increase Because

```text
devices can communicate with many other devices
data travels across networks
users share resources
remote access may be allowed
internet connection exposes systems to external threats
malware can spread between connected devices
cloud services store data outside local control
```

### Example: School Network

A school network may contain:

```text
student accounts
teacher files
exam materials
attendance data
grades
parent contact information
school payment data
```

If security is weak, this data may be accessed, stolen, modified, or deleted.

---

## 7. Threats, Vulnerabilities, and Attacks

These three terms are related but different.

| Term | Meaning | Example |
|---|---|---|
| Threat | possible danger | hacker, malware, insider misuse |
| Vulnerability | weakness | weak password, unpatched software |
| Attack | action exploiting weakness | phishing login theft, malware infection |

### Example

```text
Threat: attacker wants to steal login details
Vulnerability: users have weak passwords
Attack: attacker guesses password or uses phishing
```

### Strong Answer Pattern

When explaining security, try to include:

```text
threat
impact
protection method
limitation
```

---

## 8. Common Network Threats Overview

The threats below are useful examples. For SL exam preparation, focus first on the must-know threats in the table near the top of this page, then use the extra examples to build stronger scenario answers.

| Threat | What It Does |
|---|---|
| Unauthorized access | someone accesses systems/data without permission |
| Malware | harmful software damages, steals, or disrupts |
| Phishing | tricks users into giving information |
| Social engineering | manipulates people to break security |
| DoS/DDoS | makes service unavailable |
| Interception | captures data in transit |
| Man-in-the-middle | attacker secretly intercepts/changes communication |
| Weak passwords | easy account compromise |
| Insider threat | authorized user misuses access |
| Misconfiguration | incorrect settings expose systems |
| Physical access | attacker touches devices/cables directly |

---

## 9. Unauthorized Access

Unauthorized access means someone accesses a network, account, file, or system without permission.

### Causes

```text
weak passwords
shared accounts
stolen credentials
poor permissions
unsecured Wi-Fi
lost devices
unpatched vulnerabilities
default admin passwords
```

### Impacts

```text
data theft
data modification
privacy breach
malware installation
service disruption
reputation damage
legal consequences
```

### Protection

```text
strong passwords
multi-factor authentication
access permissions
account lockout
least privilege
firewalls
monitoring and logs
secure Wi-Fi
```

---

## 10. Malware

Malware is malicious software designed to harm, disrupt, steal, or gain unauthorized access.

### Common Types

| Malware Type | Description |
|---|---|
| Virus | attaches to files/programs and spreads when executed |
| Worm | spreads automatically across networks |
| Trojan | disguised as legitimate software |
| Ransomware | locks/encrypts data and demands payment |
| Spyware | secretly collects information |
| Keylogger | records keystrokes |
| Adware | displays unwanted advertising or tracks user activity |
| Botnet malware | turns devices into remotely controlled bots |

### Network Risk

Malware can spread through:

```text
shared folders
email attachments
infected websites
USB drives
weak remote access
unpatched services
```

### Protection

```text
anti-malware software
software updates
email filtering
user education
least privilege
firewall rules
regular backups
disable unauthorized installations
```

---

## 11. Ransomware

Ransomware is malware that locks or encrypts files and demands payment.

### How It Can Enter

```text
phishing email attachment
malicious link
infected download
weak remote desktop access
unpatched vulnerability
```

### Impact

```text
files unavailable
business/school disruption
data loss
financial cost
privacy breach
downtime
```

### Protection

```text
regular offline/cloud backups
anti-malware
patching
email filtering
user training
least privilege
network segmentation
incident response plan
```

### Important

Backups are essential because ransomware attacks availability and may make files unusable.

---

## 12. Phishing

Phishing tricks users into revealing sensitive information or installing malware.

### Common Targets

```text
usernames and passwords
bank details
school accounts
email accounts
MFA codes
personal information
```

### Examples

```text
fake login page
email pretending to be IT support
message saying account will be closed
fake invoice attachment
fake delivery notification
```

### Warning Signs

```text
urgent pressure
suspicious sender
spelling or grammar errors
unexpected attachment
link does not match real website
asks for password or code
too-good-to-be-true offer
```

### Protection

```text
user education
spam filters
MFA
checking URLs
reporting suspicious messages
not sharing passwords
secure email gateway
```

---

## 13. Social Engineering

Social engineering means manipulating people to break security procedures.

### Examples

```text
pretending to be IT support
asking someone to hold open a secure door
calling staff to request password reset
tricking users into installing software
pretending to be a trusted teacher or manager
```

### Why It Works

Humans may:

```text
want to be helpful
feel rushed
trust authority
fear consequences
not check identity
```

### Protection

```text
staff/student training
identity verification procedures
clear reporting channels
least privilege
visitor controls
no password sharing policy
```

---

## 14. DoS and DDoS Attacks

A Denial-of-Service attack tries to make a service unavailable.

### DoS

```text
one attacker floods a service with traffic or requests
```

### DDoS

```text
many devices attack at the same time
```

The attacking devices may be part of a botnet.

### Impact

```text
website unavailable
school LMS down
game server lagging or offline
business services disrupted
lost revenue
```

### Protection

```text
traffic filtering
rate limiting
firewalls
DDoS protection services
load balancing
monitoring
scalable cloud infrastructure
```

::: tip Exam Phrase
A DDoS attack uses many devices to overwhelm a server or network with traffic, reducing availability for legitimate users.
:::

---

## 15. Interception and Man-in-the-Middle

Interception means capturing data while it is being transmitted.

A man-in-the-middle attack happens when an attacker secretly intercepts or changes communication between two parties.

### Risk Examples

```text
public Wi-Fi attacker captures unencrypted traffic
fake Wi-Fi access point tricks users
attacker changes data in transit
login details sent over HTTP are captured
```

### Protection

```text
HTTPS
VPN
Wi-Fi encryption
certificate checking
avoid sensitive login on untrusted networks
secure protocols
end-to-end encryption where appropriate
```

### Important

Encryption helps protect confidentiality even if data is intercepted.

---

## 16. Weak Passwords

Weak passwords are a major security risk.

### Weak Password Examples

```text
123456
password
student123
school2026
name + birthday
same password on many sites
```

### Attacks

```text
guessing
brute force
credential stuffing
dictionary attack
phishing
password reuse after data breach
```

### Good Password Practice

```text
use long passwords or passphrases
avoid common words and personal information
use unique passwords for important accounts
use password manager where appropriate
enable multi-factor authentication
never share passwords
```

---

## 17. Insider Threats

An insider threat comes from someone who already has some level of access.

Examples:

```text
student tries to access teacher files
staff member copies private data
employee deletes records
user accidentally shares sensitive files
admin misuses permissions
```

### Protection

```text
least privilege
access logs
role-based permissions
separation of duties
account review
training
clear policies
monitoring unusual behaviour
```

### Key Idea

Not all threats come from outside the network.

---

## 18. Misconfiguration

Misconfiguration means incorrect settings that create security weaknesses.

Examples:

```text
public cloud folder accidentally shared
firewall rule allows too much traffic
default router password unchanged
open Wi-Fi network
student accounts have admin rights
database exposed to internet
unused services left enabled
```

### Protection

```text
configuration review
security checklists
least privilege
regular audits
disable unused services
change default passwords
test permissions
```

---

## 19. Physical Security

Network security also includes physical protection.

### Risks

```text
unauthorized person enters server room
network cable is unplugged or tapped
laptop is stolen
router is reset
USB device is plugged into school computer
printer output is taken by wrong person
```

### Protection

```text
locked server rooms
visitor badges
CCTV
device locks
secure cabinets
port control
screen locks
safe disposal of old devices
```

### Key Idea

If attackers can physically access network equipment, technical security can be weakened.

---

## 20. Security Controls Overview

Start with the must-know controls: authentication, access control, firewalls, encryption, and backup / recovery. Other controls in this section are useful extra examples when a scenario needs more detail.

Security controls can be grouped into:

```text
prevention
detection
recovery
```

| Type | Purpose | Examples |
|---|---|---|
| Prevention | stop attacks before damage | passwords, MFA, firewalls, encryption, permissions |
| Detection | identify attacks or unusual activity | logs, monitoring, intrusion detection, alerts |
| Recovery | restore after incident | backups, disaster recovery, incident response |

### Strong Security

Good security uses all three.

Example:

```text
prevent ransomware with updates/training
detect infection with monitoring
recover using backups
```

---

## 21. Authentication

Authentication checks identity.

It answers:

```text
Who are you?
```

### Common Methods

```text
password
PIN
security token
smart card
biometrics
multi-factor authentication
```

### Multi-factor Authentication

MFA uses more than one factor.

Factors include:

```text
something you know = password
something you have = phone/token/card
something you are = fingerprint/face
```

### Benefit

Even if a password is stolen, MFA can make unauthorized login harder.

---

## 22. Authorization and Permissions

Authorization decides what an authenticated user can access.

It answers:

```text
What are you allowed to do?
```

### Examples

A student may be allowed to:

```text
open own files
submit assignments
use school printer
access approved websites
```

but not allowed to:

```text
open teacher gradebook
install software
change firewall settings
delete system files
```

### Least Privilege

Least privilege means users should only have the access needed for their role.

::: tip Exam Phrase
Authentication verifies identity, while authorization controls what the user is allowed to access.
:::

---

## 23. Firewalls

A firewall filters network traffic based on rules.

It can be:

```text
hardware
software
cloud-based
```

### Firewall Rules May Use

```text
IP address
port number
protocol
application
direction of traffic
source/destination
```

### What Firewalls Can Do

```text
block unauthorized inbound traffic
allow approved services
restrict websites or applications
log suspicious activity
reduce attack surface
protect internal network
```

### Limitation

A firewall cannot stop every threat.

For example:

```text
a user may still enter password into phishing page
malware may enter through allowed email attachment
insider may misuse valid access
```

---

## 24. Encryption

Encryption converts readable data into unreadable form using a key.

### Purpose

Encryption protects confidentiality.

If encrypted data is intercepted, unauthorized users cannot easily read it.

### Examples

```text
HTTPS encrypts web traffic
Wi-Fi encryption protects wireless traffic
VPN encrypts traffic through a tunnel
full-disk encryption protects stolen laptops
encrypted backups protect stored copies
```

### Simple Pattern

```text
plaintext → encryption → ciphertext
ciphertext → decryption → plaintext
```

### Important

Encryption protects data, but it does not replace authentication, backups, or user education.

---

## 25. Anti-malware

Anti-malware software helps detect, block, and remove malicious software.

### Functions

```text
scan files
detect known malware signatures
detect suspicious behaviour
quarantine infected files
block malicious downloads
update threat definitions
```

### Limitations

```text
new malware may not be detected immediately
users can still approve dangerous actions
misconfiguration can reduce protection
anti-malware must be kept updated
```

### Best Use

Anti-malware should be combined with:

```text
updates
least privilege
backups
firewalls
email filtering
user education
```

---

## 26. Software Updates and Patches

Updates and patches fix bugs and security vulnerabilities.

### Why Important

Attackers often exploit known vulnerabilities in outdated software.

Systems needing updates include:

```text
operating systems
browsers
routers
firewalls
servers
apps
plugins
firmware
```

### Example

If a school server is not patched, attackers may exploit a known vulnerability to access data.

### Good Practice

```text
apply security updates regularly
test updates where needed
remove unsupported software
update firmware on network devices
```

---

## 27. Backups and Recovery

Backups are copies of data used for recovery.

### Why Backups Matter

Backups help recover from:

```text
ransomware
accidental deletion
hardware failure
data corruption
natural disaster
malicious deletion
```

### Good Backup Practice

```text
backup regularly
store backups separately
keep offline or protected backups
encrypt sensitive backups
test restore process
keep multiple versions
```

### Important

A backup is only useful if it can be restored.

---

## Useful extra examples

The remaining controls and scenarios are useful for deeper answers, but students should not treat every item as equal priority. Use these examples when they fit the question context.

---

## 28. Network Monitoring and Logs

Monitoring checks network activity.

Logs record events.

### What Can Be Logged

```text
login attempts
failed passwords
file access
firewall blocks
network traffic patterns
admin changes
server errors
malware alerts
```

### Why Useful

Monitoring and logs help:

```text
detect attacks
investigate incidents
find misconfigurations
prove what happened
improve future security
```

### Privacy Note

Monitoring should follow school/company rules and relevant laws.

---

## 29. User Education

Users are often part of security.

Training can reduce:

```text
phishing success
password sharing
unsafe downloads
accidental data sharing
social engineering
use of unknown USB devices
```

### Good Training Topics

```text
recognizing phishing
checking URLs
creating strong passwords
using MFA
reporting incidents
safe use of public Wi-Fi
data privacy rules
```

### Key Idea

Technical controls are important, but users must also understand safe behavior.

---

## 30. Network Segmentation

Network segmentation separates a network into smaller parts.

### Examples

```text
student network separate from teacher/admin network
guest Wi-Fi separate from internal systems
server network separate from classroom devices
IoT devices separate from main network
```

### Benefits

```text
limits spread of malware
reduces unauthorized access
improves control
protects sensitive systems
makes monitoring easier
```

### Example

If a student's device is infected, segmentation can help prevent it from reaching teacher/admin systems.

---

## 31. Secure Wi-Fi

Wireless networks need secure configuration.

### Good Practice

```text
use WPA2 or WPA3
use strong Wi-Fi password
avoid outdated WEP
separate guest network
change default router/admin password
disable WPS if risky
keep router firmware updated
place access points carefully
monitor unknown devices
```

### Why This Matters

Wireless signals may extend beyond the building.  
Without strong protection, unauthorized users may connect from nearby areas.

---

## 32. Home Network Security Example

A home network may include:

```text
router
Wi-Fi access point
phones
laptops
smart TV
IoT devices
gaming PC
```

### Risks

```text
weak Wi-Fi password
default router admin password
unpatched router
insecure IoT device
phishing on family devices
malware on downloads
```

### Protection

```text
strong Wi-Fi password
WPA2/WPA3
change router admin password
update router firmware
guest network for visitors/IoT
anti-malware on computers
safe browsing habits
```

---

## 33. School Network Security Example

A school network may contain:

```text
student accounts
staff accounts
student files
teacher files
attendance records
grades
printers
school servers
Wi-Fi
LMS access
```

### Risks

```text
students accessing unauthorized files
malware spreading in computer labs
phishing emails to staff
lost student devices
weak shared passwords
guest Wi-Fi reaching internal systems
```

### Protection

```text
role-based permissions
strong passwords and MFA for staff
firewall and web filtering
anti-malware
regular backups
network segmentation
user education
logs and monitoring
secure Wi-Fi
software updates
```

---

## 34. Business Network Security Example

A business may need to protect:

```text
customer data
financial records
employee data
emails
cloud systems
databases
internal applications
```

### Risks

```text
data breach
ransomware
phishing
insider misuse
DDoS against website
cloud misconfiguration
unpatched servers
```

### Protection

```text
security policies
MFA
firewalls
encryption
backup and disaster recovery
least privilege
security monitoring
patch management
staff training
incident response plan
```

---

## 35. Cloud Network Security Example

Cloud services create shared responsibility.

### Cloud Provider May Handle

```text
physical data centre security
server hardware
some infrastructure security
availability features
platform updates depending on service
```

### User / Organization Must Handle

```text
account security
MFA
permissions
data sharing settings
secure configuration
backup policy
data classification
monitoring cloud logs
```

### Common Risk

```text
public cloud folder accidentally shared with everyone
```

### Protection

```text
review sharing permissions
use least privilege
enable MFA
monitor access logs
encrypt sensitive data
```

---

## 36. Balancing Security and Usability

Stronger security can sometimes reduce convenience.

Examples:

| Security Measure | Possible Usability Issue |
|---|---|
| MFA | extra login step |
| strict password rules | users may forget passwords |
| website filtering | may block useful sites |
| least privilege | users may need approval for tasks |
| encryption | key management needed |
| frequent updates | possible downtime |
| network segmentation | more complex setup |

### Key Idea

Security decisions should balance:

```text
risk
cost
usability
performance
legal requirements
data sensitivity
```

---

## 37. Incident Response

Incident response is how an organization handles a security incident.

### Basic Steps

```text
1. Detect the incident.
2. Contain the problem.
3. Remove the threat.
4. Recover systems/data.
5. Review what happened.
6. Improve security controls.
```

### Example: Malware Infection

```text
disconnect infected device
scan and remove malware
restore damaged files from backup
reset affected passwords
review how infection happened
train users or patch systems
```

---

## 38. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Firewall stops all attacks | Firewall filters traffic but cannot stop everything | Need layered security |
| Strong password alone is enough | Passwords can be phished or reused | Use MFA and other controls |
| HTTPS means website is safe | HTTPS encrypts connection but site may still be malicious | Check domain and trust |
| Encryption prevents data loss | Encryption protects confidentiality | Backups protect availability |
| Anti-malware removes need for updates | Updates fix vulnerabilities | Both are needed |
| Network security is only technical | People and policies matter | User education is important |
| Backups are useless if encrypted | Encrypted backups can protect confidentiality | Must be restorable |
| Wireless is always unsafe | Strong WPA2/WPA3 can protect Wi-Fi | Configuration matters |
| LAN is automatically secure | Internal threats and malware still exist | Access controls needed |
| Monitoring means prevention | Monitoring detects issues | Prevention and recovery also needed |

---

## 39. Guided Practice

### Practice 1: Threat or Protection?

Classify each as threat or protection:

```text
phishing
firewall
ransomware
backup
MFA
DDoS
```

<details>
<summary>Suggested Answer</summary>

| Item | Type |
|---|---|
| phishing | threat |
| firewall | protection |
| ransomware | threat |
| backup | protection / recovery |
| MFA | protection |
| DDoS | threat |

</details>

---

### Practice 2: Authentication or Authorization?

A user enters a password to log in. Is this authentication or authorization?

<details>
<summary>Suggested Answer</summary>

Authentication, because the system is checking the user's identity.

</details>

---

### Practice 3: Permission

A student can open their own folder but not a teacher folder. What security concept is this?

<details>
<summary>Suggested Answer</summary>

Authorization / access control / permissions.

</details>

---

### Practice 4: Ransomware

Why are backups important against ransomware?

<details>
<summary>Suggested Answer</summary>

Ransomware may encrypt or lock files. Backups allow the organization to restore files without relying on the attacker.

</details>

---

### Practice 5: Firewall Limitation

Why can a firewall not stop all phishing attacks?

<details>
<summary>Suggested Answer</summary>

Phishing tricks the user into giving information or clicking a link. Even if some traffic is filtered, a user may still enter details into a fake site, so education, MFA, and email filtering are also needed.

</details>

---

## 40. Independent Practice

### Question 1

Define network security.

### Question 2

Explain the difference between threat, vulnerability, and attack.

### Question 3

Describe three common network threats.

### Question 4

Explain how phishing can lead to unauthorized access.

### Question 5

Explain the role of a firewall.

### Question 6

Distinguish between authentication and authorization.

### Question 7

Explain why encryption is useful for data sent over a network.

### Question 8

Explain why backups are important for network security.

### Question 9

A school wants to protect student records. Recommend four security measures and justify them.

### Question 10

Explain why network security needs both technical controls and user education.

---

## 41. Exam-style Questions

### Question 1 [4 marks]

Define network security and state two security goals.

<details>
<summary>Mark Scheme Style Answer</summary>

Network security is the protection of networked systems, data, and services from unauthorized access, damage, modification, theft, or disruption. Security goals include confidentiality, integrity, and availability.

</details>

---

### Question 2 [5 marks]

Explain how phishing can threaten a school network.

<details>
<summary>Mark Scheme Style Answer</summary>

Phishing can trick students or staff into entering login details into a fake website or opening a malicious attachment. Stolen credentials may allow unauthorized access to school systems, student data, or staff files. A malicious attachment may install malware that spreads through the network. Protection includes user education, email filtering, MFA, and checking URLs carefully.

</details>

---

### Question 3 [6 marks]

Explain three methods used to protect a network.

<details>
<summary>Mark Scheme Style Answer</summary>

A firewall can filter incoming and outgoing traffic based on rules, blocking unauthorized access. Authentication such as strong passwords and MFA verifies user identity before access is allowed. Encryption protects data in transit so intercepted data cannot easily be read. Other valid methods include anti-malware, access permissions, updates, backups, network monitoring, and user education.

</details>

---

### Question 4 [6 marks]

Distinguish between authentication and authorization, using a school network example.

<details>
<summary>Mark Scheme Style Answer</summary>

Authentication verifies the user's identity, for example a student entering a username and password to log in. Authorization controls what the authenticated user is allowed to access, for example allowing the student to open their own files but not teacher grade files. Authentication answers who the user is, while authorization answers what the user can do.

</details>

---

### Question 5 [6 marks]

A school stores student records on a network server. Explain two threats and two suitable protection methods.

<details>
<summary>Mark Scheme Style Answer</summary>

One threat is unauthorized access, where a student or attacker may try to view or change private records. Another threat is malware or ransomware, which could damage or encrypt records. Suitable protection methods include role-based permissions so only authorized staff can access the records, strong authentication or MFA, firewalls to restrict access, anti-malware and updates to reduce infection risk, encryption to protect data, and regular backups so data can be restored.

</details>

---

## 42. Practice task
### Activity 1: Threat and Control Matching

Students match threats to controls:

```text
phishing
ransomware
weak password
DDoS
public Wi-Fi interception
lost laptop
```

Controls:

```text
MFA
user education
backup
encryption
firewall
DDoS protection
strong password policy
```

---

### Activity 2: School Network Security Plan

Groups design a security plan for a school network.

They must include:

```text
user accounts
permissions
Wi-Fi security
firewall
anti-malware
backup
updates
student/staff training
incident response
```

---

### Activity 3: Phishing Spotting

Students review sample email descriptions and identify warning signs:

```text
urgent tone
unknown sender
suspicious link
unexpected attachment
request for password
fake login page
```

---

## 43. Independent practice
### Independent practice part A: Concept Explanation

In 6-8 sentences, explain why network security is important for a school.

---

### Independent practice part B: Threat Table

Create a table for:

```text
unauthorized access
malware
phishing
DDoS
interception
insider threat
```

Include:

```text
meaning
possible impact
one protection method
```

---

### Independent practice part C: Scenario Recommendation

A small business stores customer data and uses cloud storage.

Recommend five security measures and explain why each is useful.

---

### Independent practice part D: Misconception Correction

Correct these statements:

```text
A firewall stops every network attack.
HTTPS means a website must be trustworthy.
Backups are only useful for hardware failure.
Strong passwords remove the need for MFA.
Network security is only the IT department's job.
```

---

## 44. One-page Revision Summary

| Point | Summary |
|---|---|
| Network security | Protects data, devices, and services |
| CIA triad | Confidentiality, integrity, availability |
| Threat | Possible danger |
| Vulnerability | Weakness that can be exploited |
| Attack | Action exploiting a weakness |
| Unauthorized access | Access without permission |
| Malware | Harmful software |
| Phishing | Tricks users into revealing data |
| Social engineering | Manipulates people |
| DoS/DDoS | Makes service unavailable |
| Interception | Captures transmitted data |
| Authentication | Checks identity |
| Authorization | Controls access |
| Firewall | Filters traffic |
| Encryption | Protects readable data by encoding it |
| Anti-malware | Detects/removes malware |
| Updates | Fix vulnerabilities |
| Backups | Help recovery |
| Monitoring | Detects suspicious activity |
| User education | Reduces human-based attacks |
| Exam phrase | Network security uses layered controls such as authentication, authorization, firewalls, encryption, anti-malware, updates, backups, monitoring, and user education to reduce threats |

---

## 45. Quick Self-test

Before moving on, students should be able to answer these:

1. What is network security?
2. What are confidentiality, integrity, and availability?
3. What is unauthorized access?
4. What is malware?
5. What is phishing?
6. What is a DDoS attack?
7. What does a firewall do?
8. What is the difference between authentication and authorization?
9. Why is encryption useful?
10. Why are backups important?
