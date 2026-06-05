# Secondary Storage

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain what secondary storage is
- distinguish secondary storage from primary memory
- explain why computers need secondary storage
- describe common types of secondary storage
- compare SSD, HDD, optical storage, flash storage, and cloud storage
- explain storage characteristics such as capacity, speed, portability, durability, and cost
- choose suitable storage for different scenarios
- explain backup and archiving at a basic level
- explain how storage choice affects performance and reliability
- avoid common misconceptions about storage
- answer exam-style questions about secondary storage

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding long-term storage devices and storage choices |
| Connected topics | Computer hardware, primary memory, operating systems, backup, cloud computing, databases |
| Practical focus | Choosing suitable storage media for real-world scenarios |
| Exam relevance | Definitions, comparisons, scenario recommendations, advantages and disadvantages |

::: tip Learning Focus
Secondary storage stores data and programs long term. It is usually non-volatile, meaning data remains when power is turned off.
:::

---

## Start here: storage keeps data long term

Secondary storage keeps data even when the power is off.

It is different from primary memory, which is mainly used while programs are running.

Compare storage methods by capacity, speed, cost, portability, durability, and access needs. In exam questions, the key skill is choosing a suitable storage method for a scenario and justifying the choice.

---

## Storage choice workflow

Use this route when choosing storage for a scenario:

| Step | What to do | Why it matters |
|---:|---|---|
| 1 | Identify what data needs to be stored. | The data type affects capacity, speed, and security needs. |
| 2 | Decide whether the data must be accessed often or only kept long term. | Frequent access usually needs faster storage. |
| 3 | Consider how much capacity is needed. | Large files and backups need more space. |
| 4 | Consider speed and performance. | Operating systems, apps, and games benefit from faster storage. |
| 5 | Consider cost and portability. | Some scenarios need low cost or easy movement between devices. |
| 6 | Consider reliability, durability, and backup needs. | Important data needs protection and recovery planning. |
| 7 | Choose the most suitable storage method. | The choice should match the scenario, not just a definition. |
| 8 | Justify the choice using scenario details. | Explain why the storage method fits the user's needs. |

---

## Storage comparison table

| Storage type | Strengths | Limitations | Suitable scenario |
|---|---|---|---|
| HDD | large capacity, lower cost per GB | slower, moving parts | large local storage or backups |
| SSD | fast, durable, no moving parts | more expensive per GB | operating system, frequently used files |
| Optical storage | cheap, removable, useful for distribution/archive | lower capacity, slower | distributing files or long-term archive |
| USB / flash storage | portable and easy to use | can be lost or damaged | transferring files |
| Cloud storage | accessible from many devices, supports sharing | needs internet, privacy/security concerns | shared files, remote backup |

---

## Core checklist

By the end of this page, you should be able to:

- explain what secondary storage is
- distinguish secondary storage from primary memory
- compare HDD and SSD
- explain when cloud storage may be useful
- explain when removable storage may be useful
- describe the purpose of backup
- describe the purpose of archive
- choose suitable storage for a scenario
- justify the choice using capacity, speed, cost, portability, durability, or access needs

---

## Scenario answer pattern

When you meet a storage choice question, use this order:

1. Identify the user or organization's storage need.
2. Decide whether speed, capacity, portability, cost, or access is most important.
3. Choose a suitable storage method.
4. Give one clear advantage linked to the scenario.
5. Give one limitation or risk if the question asks for evaluation.
6. Mention backup or security if the data is important.
7. Avoid giving only a definition without scenario justification.

---

## Common mistakes

- confusing RAM with secondary storage
- saying secondary storage loses data when power is off
- choosing SSD only because it is "better" without linking to the scenario
- choosing cloud storage without mentioning internet access or privacy/security
- confusing backup with archive
- saying backup means deleting old files
- focusing only on capacity and ignoring speed, cost, or portability
- naming a device without explaining why it fits the scenario

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Secondary storage | 辅助存储 / 二级存储 | Long-term storage for data, files, and programs |
| Non-volatile | 非易失性 | Data remains when power is turned off |
| Storage medium | 存储介质 | Physical or virtual place where data is stored |
| Storage device | 存储设备 | Hardware used to read/write storage media |
| SSD | 固态硬盘 | Solid-state drive using flash memory |
| HDD | 机械硬盘 | Hard disk drive using magnetic disks |
| Optical storage | 光学存储 | Storage read/written using laser, such as CD/DVD/Blu-ray |
| Flash storage | 闪存 | Non-volatile electronic storage, such as USB drive or SD card |
| Cloud storage | 云存储 | Data stored on remote servers accessed through a network |
| Capacity | 容量 | Amount of data that can be stored |
| Access speed | 访问速度 | How quickly data can be read or written |
| Portability | 便携性 | How easy it is to move the storage device |
| Durability | 耐用性 | Ability to resist damage or data loss |
| Backup | 备份 | Copy of data used for recovery |
| Archive | 归档 | Long-term storage of data that is rarely used |
| Read/write | 读写 | Reading data from or writing data to storage |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Secondary storage（辅助存储）** 用来长期保存数据、文件和程序。  
它和 RAM 不一样。RAM 是程序运行时的临时工作区域，而 secondary storage 是长期保存数据的地方。

例如：

```text
SSD 保存操作系统、应用程序和文件
HDD 保存大量视频、照片或备份
USB drive 用来移动文件
SD card 用在相机或手机中
cloud storage 通过网络保存文件
```

最重要的区别是：

```text
RAM = volatile, temporary, used while programs run
secondary storage = non-volatile, long-term, keeps files after power off
```

当你打开一个程序时：

```text
程序原本保存在 SSD 中
操作系统把需要的部分加载到 RAM
CPU 从 RAM 中取指令执行
保存文件时，数据再写回 SSD
```

选择 storage 时，不能只看容量。还要考虑：

```text
speed
capacity
cost
portability
durability
reliability
security
```

</template>

<template #en>

### English Explanation

**Secondary storage** is used to store data, files, and programs long term.  
It is different from RAM. RAM is the temporary working area used while programs are running, while secondary storage keeps data for later use.

Examples include:

```text
SSD stores the operating system, applications, and files
HDD stores large videos, photos, or backups
USB drive moves files between devices
SD card is used in cameras or phones
cloud storage stores files through a network
```

The most important distinction is:

```text
RAM = volatile, temporary, used while programs run
secondary storage = non-volatile, long-term, keeps files after power off
```

When you open a program:

```text
the program is originally stored on SSD
the operating system loads needed parts into RAM
the CPU fetches instructions from RAM
when you save a file, data is written back to SSD
```

When choosing storage, do not only consider capacity. Also consider:

```text
speed
capacity
cost
portability
durability
reliability
security
```

</template>
</LangBlock>

---

## 5. What Is Secondary Storage?

Secondary storage is long-term storage used to keep data and programs even when the computer is turned off.

It stores:

```text
operating system files
application software
documents
images
videos
music
databases
backups
game files
programming projects
```

### Key Properties

| Property | Explanation |
|---|---|
| Non-volatile | data remains after power off |
| Larger capacity | usually larger than RAM |
| Slower than primary memory | not as fast as RAM/cache/registers |
| Long-term | used for saved files and installed programs |
| Often cheaper per GB | compared with RAM/cache |

---

## 6. Why Secondary Storage Is Needed

Computers need secondary storage because RAM is temporary.

Without secondary storage:

```text
files would be lost when power is off
programs could not be stored permanently
operating system could not be kept for startup
users could not save work
backups could not be stored
```

### Example

Scenario choice example: saved code files need secondary storage so they remain after power is off.

A student writes code in an IDE.

| Stage | Where Data Is |
|---|---|
| Code file saved | SSD |
| File opened in IDE | RAM |
| CPU runs program | CPU + RAM |
| Student saves changes | SSD |

::: tip Exam Phrase
Secondary storage is needed to store data and programs permanently because RAM is volatile and loses its contents when power is turned off.
:::

---

## 7. Secondary Storage vs Primary Memory

| Feature | Primary Memory | Secondary Storage |
|---|---|---|
| Purpose | active processing | long-term storage |
| CPU access | direct and fast | indirect/slower |
| Volatility | RAM/cache volatile; ROM non-volatile | usually non-volatile |
| Speed | faster | slower |
| Capacity | smaller | larger |
| Cost per GB | higher | lower |
| Examples | RAM, ROM, cache | SSD, HDD, USB, cloud |

### Simple Memory

```text
Primary memory = working area
Secondary storage = long-term library
```

---

## 8. Main Types of Secondary Storage

Common types include:

```text
SSD
HDD
USB flash drive
SD card
optical disc
magnetic tape
cloud storage
```

### Overview Table

| Type | Main Strength | Main Weakness |
|---|---|---|
| SSD | fast, durable, no moving parts | more expensive than HDD per GB |
| HDD | large capacity, cheaper per GB | slower, moving parts |
| USB flash drive | portable | easy to lose, limited durability |
| SD card | small and portable | slower/less durable depending on type |
| Optical disc | cheap for distribution/archive | low capacity, slower |
| Magnetic tape | very cheap for huge backup/archive | slow access |
| Cloud storage | accessible anywhere with internet | needs network, privacy/security concerns |

---

## 9. Solid-State Drive: SSD

SSD example: use this when fast startup, fast loading, and shock resistance matter.

An SSD uses flash memory and has no moving mechanical parts.

### Advantages

```text
fast read/write speed
fast boot and program loading
more shock-resistant than HDD
silent operation
low power use
small and light
```

### Disadvantages

```text
more expensive per GB than HDD
limited write cycles, although modern SSDs are reliable
data recovery can be difficult after failure
```

### Common Uses

```text
laptops
desktops
game consoles
servers needing fast access
operating system drive
programming workstations
```

### Example

Using an SSD can make:

```text
computer startup faster
applications open faster
large projects load faster
games load faster
```

---

## 10. Hard Disk Drive: HDD

HDD example: use this when large capacity and low cost per GB matter more than speed.

An HDD uses spinning magnetic disks and a read/write head.

### Advantages

```text
large capacity
cheaper per GB
suitable for large backups and media libraries
widely available
```

### Disadvantages

```text
slower than SSD
moving parts can be damaged by shock
makes noise
uses more power
slower random access
```

### Common Uses

```text
large file storage
backup drives
desktop storage
media archives
low-cost high-capacity storage
```

### Example

An HDD may be suitable for storing:

```text
large video collections
photos
backup files
archive data
```

but less ideal for fast program loading compared with SSD.

---

## 11. SSD vs HDD

| Feature | SSD | HDD |
|---|---|---|
| Technology | flash memory | spinning magnetic disks |
| Moving parts | no | yes |
| Speed | faster | slower |
| Durability | better against shock | more vulnerable to shock |
| Noise | silent | can make noise |
| Power use | usually lower | usually higher |
| Cost per GB | higher | lower |
| Capacity for price | lower | higher |
| Best for | OS, apps, fast access | large storage, backups |

### Exam-style Comparison

An SSD is usually faster and more durable because it has no moving parts, while an HDD is usually cheaper per GB and can provide large capacity at lower cost.

---

## 12. Flash Storage

Flash storage uses non-volatile electronic memory.

Examples:

```text
USB flash drive
SD card
microSD card
SSD
```

### USB Flash Drive

Advantages:

```text
portable
easy to use
small
useful for transferring files
```

Disadvantages:

```text
easy to lose
can be physically damaged
may have slower speed than internal SSD
security risk if lost
limited write endurance
```

### SD Card

Common in:

```text
cameras
phones
drones
portable devices
single-board computers
```

---

## 13. Optical Storage

Archive example: optical storage can be useful for cheap offline distribution or long-term storage.

Optical storage uses lasers to read or write data.

Examples:

```text
CD
DVD
Blu-ray
```

### Advantages

```text
cheap for distribution
can be useful for offline archive
some types are read-only, reducing accidental changes
```

### Disadvantages

```text
lower capacity than modern drives
slower access
can be scratched
many modern devices no longer include optical drives
```

### Common Uses

```text
software/media distribution in older systems
backup/archive in some cases
movies/music discs
```

---

## 14. Magnetic Tape

Magnetic tape is mainly used for large-scale backup and archiving.

### Advantages

```text
very low cost per GB/TB
high capacity
good for long-term archive
can be stored offline
```

### Disadvantages

```text
slow access
sequential access, not good for quickly finding one file
requires tape drives
not convenient for everyday use
```

### Common Uses

```text
large organization backups
data archives
disaster recovery copies
```

::: info Level Control
Students usually only need basic awareness that magnetic tape is useful for large backups and archives, not everyday fast access.
:::

---

## 15. Cloud Storage

Cloud storage example: cloud storage is useful when files must be accessed or shared from different devices.

Cloud storage stores data on remote servers accessed through a network.

Examples:

```text
Google Drive
OneDrive
iCloud
Dropbox
school cloud storage
company cloud backup
```

### Advantages

```text
access files from different devices
easy sharing
automatic synchronization
can support backup
scalable capacity
off-site storage
```

### Disadvantages

```text
requires internet access
upload/download speed depends on network
ongoing cost may apply
privacy and security concerns
provider outage can affect access
user may lose access to account
```

### Important

Cloud storage is still stored on physical storage devices somewhere, but the user accesses it remotely.

---

## 16. Local Storage vs Cloud Storage

| Feature | Local Storage | Cloud Storage |
|---|---|---|
| Location | user's device or local drive | remote servers |
| Access | available without internet | usually needs internet |
| Speed | can be very fast locally | depends on network |
| Sharing | manual or network setup | often easy |
| Control | user controls device | provider manages infrastructure |
| Risk | device loss/damage | account/provider/network issues |
| Privacy | depends on device security | depends on provider and settings |

### Balanced View

Cloud storage is convenient, but it does not remove the need for security and backup planning.

---

## 17. Storage Characteristics

When comparing storage, consider:

```text
capacity
speed
cost
portability
durability
reliability
security
power use
physical size
```

### Explanation Table

| Characteristic | Question to Ask |
|---|---|
| Capacity | How much data can it store? |
| Speed | How fast can it read/write data? |
| Cost | How expensive is it per GB? |
| Portability | Is it easy to carry? |
| Durability | Can it survive movement/shock? |
| Reliability | How likely is failure/data loss? |
| Security | Can data be protected if lost/stolen? |
| Power use | Is it suitable for battery devices? |

---

## 18. Choosing Suitable Storage

Scenario choice example: choose storage by matching device strengths to the user's situation.

### Scenario Table

| Scenario | Suitable Storage | Reason |
|---|---|---|
| Laptop operating system | SSD | fast boot and app loading |
| Large video archive | HDD or cloud/archive storage | high capacity, lower cost |
| Moving files between computers | USB flash drive or cloud | portable/convenient |
| Camera photos | SD card | small and compatible |
| Enterprise backup | magnetic tape/cloud backup/HDD | high capacity and recovery |
| Gaming computer | SSD | fast game loading |
| School shared documents | cloud storage | access from multiple devices |
| Long-term offline archive | tape or external drive | can be stored separately |

### Key Skill

Always justify the choice using the scenario.

Do not just say:

```text
SSD is best
```

Instead say:

```text
SSD is suitable because it has fast read/write speed, which helps the operating system and applications load quickly.
```

---

## 19. Backup and Storage

Backup example: a backup is a recovery copy, not the original working file.

A backup is a copy of data used for recovery.

Backups protect against:

```text
accidental deletion
hardware failure
ransomware
file corruption
device theft
natural disaster
```

### Good Backup Practice

```text
make backups regularly
store backups separately
encrypt sensitive backups
test that backups can be restored
keep more than one backup version
use off-site backup when needed
```

### Example

A school may keep:

```text
local backup for quick recovery
cloud/off-site backup for disaster recovery
```

---

## 20. Archive Storage

Archive example: archive storage keeps rarely used data for long-term retention.

Archiving means storing data long term because it is rarely used but may still be needed.

Examples:

```text
old exam records
past student records
legal documents
research data
old project versions
```

### Backup vs Archive

| Backup | Archive |
|---|---|
| used for recovery after loss | used for long-term retention |
| usually updated regularly | rarely changed |
| protects current data | stores old/inactive data |
| recovery focus | history/compliance focus |

---

## 21. Storage and Performance

Storage affects performance when the system needs to read or write data.

### Examples

| Situation | Storage Impact |
|---|---|
| Booting computer | SSD usually boots faster than HDD |
| Opening applications | faster storage loads apps quicker |
| Loading games | SSD reduces loading screens |
| Editing video | fast storage helps read/write large media |
| Using virtual memory | slow storage makes swapping slower |
| Database queries | faster storage can improve access to large datasets |

### Important

Storage speed is only one performance factor.  
CPU, RAM, GPU, network, and software design also matter.

---

## 22. Storage Security

Storage devices can contain sensitive data.

Risks include:

```text
lost USB drive
stolen laptop
unsecured backup drive
cloud account compromise
improper disposal of old drives
```

Protection methods:

```text
encryption
strong passwords
access control
secure backup storage
safe disposal or wiping
multi-factor authentication for cloud accounts
```

### Example

A lost USB drive with student records can cause a data breach if it is not encrypted.

---

## 23. Worked Example: Student Laptop

Scenario choice example: a student laptop may combine fast local storage, cloud sync, and separate backup.

A student laptop may use:

```text
SSD for operating system and apps
cloud storage for syncing documents
USB drive for moving files
external HDD for backup
```

### Why SSD?

```text
fast startup
fast app loading
more durable for a portable laptop
lower power use than HDD
```

### Why Cloud?

```text
access from different devices
automatic sync
easier sharing
```

### Why External Backup?

```text
protects against laptop failure or accidental deletion
```

---

## 24. Worked Example: School Server

Scenario choice example: a school server needs capacity, speed, security, reliability, and backup planning.

A school server stores:

```text
student accounts
shared files
lesson resources
database records
backups
```

Suitable storage may include:

```text
large SSDs for fast access
HDD arrays for large capacity
cloud/off-site backup
tape archive for long-term records
```

The school should consider:

```text
capacity
speed
reliability
backup
security
cost
```

---

## 25. Detailed common mistakes table

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Secondary storage is the same as RAM | RAM is temporary primary memory | Secondary storage is long-term |
| SSD and HDD are both RAM | They are secondary storage | RAM is primary memory |
| Cloud storage means data is nowhere physical | Cloud data is stored on remote physical servers | It is accessed through a network |
| More storage always makes a computer faster | Capacity is not the same as speed | SSD speed may help; capacity alone may not |
| USB drives are always secure | They can be lost or infected | Encrypt and scan if needed |
| Backup means archive | Backup is for recovery; archive is long-term retention | Different purposes |
| HDD is always worse than SSD | HDD can be better for low-cost large capacity | Choose by scenario |
| Optical discs are always obsolete | They can still be useful in some archive/distribution contexts | But less common now |
| Cloud storage removes need for backup | Cloud accounts can fail or be compromised | Backup strategy still matters |
| Data deleted from storage is always gone forever | Recovery may be possible unless securely wiped | Use secure deletion for sensitive data |

---

## 26. Guided Practice

### Practice 1: Memory or Storage?

Where are saved photos stored after a computer is turned off?

<details>
<summary>Suggested Answer</summary>

They are stored in secondary storage, such as SSD, HDD, cloud storage, or another storage device.

</details>

---

### Practice 2: SSD or HDD?

A gaming laptop needs fast boot and fast game loading. Which is more suitable, SSD or HDD?

<details>
<summary>Suggested Answer</summary>

SSD is more suitable because it has faster read/write speed and no moving parts, helping games and applications load faster.

</details>

---

### Practice 3: Cloud Storage

Give one advantage and one disadvantage of cloud storage.

<details>
<summary>Suggested Answer</summary>

Advantage: files can be accessed from multiple devices and easily shared.  
Disadvantage: access depends on internet connection and there may be privacy/security concerns.

</details>

---

### Practice 4: Backup or Archive?

A school stores old student records for legal reasons but rarely uses them. Is this backup or archive?

<details>
<summary>Suggested Answer</summary>

This is archive storage because the data is kept long term and rarely accessed.

</details>

---

### Practice 5: Security

Why should a USB drive containing student data be encrypted?

<details>
<summary>Suggested Answer</summary>

Because USB drives are easy to lose. Encryption protects the data if someone unauthorized finds or steals the drive.

</details>

---

## 27. Independent Practice

### Question 1

Define secondary storage.

### Question 2

Explain why secondary storage is needed.

### Question 3

Compare RAM and secondary storage.

### Question 4

Compare SSD and HDD.

### Question 5

Give two advantages and two disadvantages of cloud storage.

### Question 6

Choose suitable storage for a video editing workstation and justify your answer.

### Question 7

Choose suitable storage for long-term school record archiving and justify your answer.

### Question 8

Explain the difference between backup and archive.

### Question 9

Explain how storage can affect system performance.

### Question 10

Explain two security risks related to storage devices.

---

## 28. Exam-style Questions

### Question 1 [4 marks]

Define secondary storage and give two examples.

<details>
<summary>Mark Scheme Style Answer</summary>

Secondary storage is non-volatile storage used to store data, files, and programs long term. It keeps data when the computer is turned off. Examples include SSD, HDD, USB flash drive, optical disc, memory card, and cloud storage.

</details>

---

### Question 2 [5 marks]

Distinguish between primary memory and secondary storage.

<details>
<summary>Mark Scheme Style Answer</summary>

Primary memory is directly accessed by the CPU and stores data and instructions currently in use. It is usually faster but smaller. Secondary storage stores data and programs long term and is usually non-volatile. It is generally slower but has larger capacity. RAM is an example of primary memory, while SSD or HDD are examples of secondary storage.

</details>

---

### Question 3 [6 marks]

Compare SSD and HDD.

<details>
<summary>Mark Scheme Style Answer</summary>

An SSD uses flash memory and has no moving parts, so it is usually faster, quieter, more shock-resistant, and lower power than an HDD. An HDD uses spinning magnetic disks, so it is usually slower and more vulnerable to physical shock. However, HDDs are often cheaper per GB and can provide large capacity at lower cost. SSDs are suitable for operating systems and applications, while HDDs can be suitable for large backups or media storage.

</details>

---

### Question 4 [6 marks]

A school wants to store backups of student files. Explain two storage considerations.

<details>
<summary>Mark Scheme Style Answer</summary>

The school should consider capacity because backups may contain many student files and require large storage space. It should also consider reliability and security because backups must be available for recovery and may contain personal data. Other valid considerations include cost, speed of recovery, off-site storage, encryption, and testing whether backups can be restored.

</details>

---

### Question 5 [6 marks]

Explain why cloud storage may be useful but also risky.

<details>
<summary>Mark Scheme Style Answer</summary>

Cloud storage is useful because files can be accessed from different devices, shared easily, synchronized automatically, and stored off-site. However, it can be risky because it depends on internet access and provider availability. There may also be privacy and security concerns if accounts are compromised or data is stored with a third-party provider.

</details>

---

## 29. Practice task
### Activity 1: Storage Ranking

Students rank storage options by:

```text
speed
capacity
cost per GB
portability
durability
```

Options:

```text
SSD
HDD
USB drive
SD card
optical disc
cloud storage
magnetic tape
```

---

### Activity 2: Scenario Storage Choice

Groups choose storage for:

```text
gaming PC
school server backup
camera
student laptop
video editing workstation
long-term archive
```

They must justify each choice using storage characteristics.

---

### Activity 3: Backup Plan

Students design a simple backup plan for:

```text
student project files
school records
game development project
```

They include:

```text
where backup is stored
how often backup is made
how data is protected
how restore is tested
```

---

## 30. Independent practice
### Independent practice part A: Concept Explanation

In 5-6 sentences, explain what secondary storage is and why it is needed.

---

### Independent practice part B: Comparison Table

Create a comparison table for:

```text
SSD
HDD
USB flash drive
cloud storage
magnetic tape
```

Include:

```text
capacity
speed
portability
cost
best use
```

---

### Independent practice part C: Scenario Recommendation

Recommend suitable storage for each:

```text
1. a laptop used for programming
2. a school server backup
3. a camera
4. a large video archive
5. sharing documents between home and school
```

Explain each choice.

---

### Independent practice part D: Written Answer

Explain why backup and storage security are important when storing personal data.

---

## 31. One-page Revision Summary

| Point | Summary |
|---|---|
| Secondary storage | Long-term data/program storage |
| Non-volatile | Keeps data when power is off |
| SSD | Fast, no moving parts, higher cost per GB |
| HDD | Large capacity, cheaper per GB, slower |
| Flash storage | Portable electronic storage |
| Optical storage | Laser-read discs, lower capacity |
| Magnetic tape | Large backup/archive storage |
| Cloud storage | Remote storage accessed through network |
| Capacity | Amount of data stored |
| Speed | Read/write performance |
| Portability | Ease of moving storage |
| Durability | Resistance to damage |
| Backup | Copy for recovery |
| Archive | Long-term rarely used data |
| Exam phrase | Secondary storage is non-volatile storage used to keep data and programs long term |

---

## 32. Quick Self-test

Before moving on, students should be able to answer these:

1. What is secondary storage?
2. Why is secondary storage needed?
3. Give three examples of secondary storage.
4. Why is secondary storage usually non-volatile?
5. What is the difference between SSD and HDD?
6. What is one advantage of cloud storage?
7. What is one disadvantage of cloud storage?
8. What is the difference between backup and archive?
9. Why can storage affect performance?
10. Why should portable storage be protected?

