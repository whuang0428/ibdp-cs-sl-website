# Mini Mock Exam Bank

## 1. Page Purpose

This page provides a bank of short mixed-topic mock exams for IBDP Computer Science SL.

The purpose is to help students practise:

```text
reading exam questions carefully
answering command terms correctly
using mark scheme keywords
linking answers to scenarios
managing time
combining topics across the syllabus
self-marking and improving answers
```

Each mini mock is shorter than a full paper, so it can be used for:

```text
weekly revision
end-of-topic review
10-20 minute class quizzes
homework practice
pre-exam warm-up
targeted intervention
mock exam preparation
```

---

## 2. How to Use This Bank

Recommended method:

```text
1. Choose one mini mock.
2. Set a timer.
3. Complete the questions without checking answers.
4. Mark using the hidden mark scheme.
5. Highlight missing keywords.
6. Rewrite weak answers.
7. Record the topics that need revision.
```

### Timing Guide

| Mini Mock Size | Suggested Time |
|---:|---:|
| 10 marks | 12-15 minutes |
| 20 marks | 25-30 minutes |
| 30 marks | 40-45 minutes |
| 50 marks | 75 minutes |

### Self-marking Rule

Do not only check whether the final answer is similar.  
Check whether your answer includes:

```text
correct technical term
clear explanation
separate points
scenario link
enough detail for the marks
```

---

## 3. Common Exam Answer Formula

Use this formula for many written answers:

```text
Point → Expansion → Scenario Link
```

### Example

Question:

```text
Explain one benefit of using a VPN for remote workers. [3]
```

Strong answer:

```text
A VPN creates an encrypted tunnel between the remote worker's device and the organization network. This reduces the risk of data being read if it is intercepted over the internet. This is useful because remote workers may access internal systems from home.
```

---

## 4. Mini Mock Index

| Mock | Focus | Marks |
|---:|---|---:|
| 1 | B1 Computational Thinking | 20 |
| 2 | B2 Programming | 20 |
| 3 | B3 Object-Oriented Programming | 20 |
| 4 | A1 Computer Fundamentals | 20 |
| 5 | A2 Networks | 20 |
| 6 | A3 Databases | 20 |
| 7 | A4 Machine Learning | 20 |
| 8 | Mixed Paper 1 Short Answer | 30 |
| 9 | Scenario-Based Security and Ethics | 30 |
| 10 | Full SL Paper 1 Style Mini Mock | 50 |

---

## 5. Mini Mock 1: B1 Computational Thinking

**Total: 20 marks**  
Suggested time: 25 minutes.

### Question 1 [2 marks]

Define decomposition.

<details>
<summary>Mark Scheme Style Answer</summary>

Decomposition is breaking a complex problem into smaller, more manageable sub-problems. This makes the problem easier to understand, solve, test, and maintain.

</details>

---

### Question 2 [3 marks]

A quiz app asks questions, checks answers, updates the score, and displays the final result.

Identify three suitable sub-problems.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible sub-problems:

```text
load questions
display each question
get user answer
check answer
update score
display final result
```

Award marks for clear quiz-related sub-problems.

</details>

---

### Question 3 [3 marks]

Distinguish between decomposition and abstraction.

<details>
<summary>Mark Scheme Style Answer</summary>

Decomposition breaks a complex problem into smaller sub-problems. Abstraction focuses on important details and ignores unnecessary details. For example, decomposition splits a login system into input, checking, and output, while abstraction ignores button colour because it does not affect login logic.

</details>

---

### Question 4 [4 marks]

Write an algorithm to input a mark and output `Pass` if the mark is 50 or above, otherwise output `Fail`.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
INPUT mark

IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

</details>

---

### Question 5 [5 marks]

Trace the following algorithm with inputs `3`, `4`, and `5`.

```text
total ← 0

FOR i ← 1 TO 3
    INPUT number
    total ← total + number
ENDFOR

OUTPUT total
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | i | number | total | Output |
|---:|---:|---:|---:|---|
| Start |  |  | 0 |  |
| 1 | 1 | 3 | 3 |  |
| 2 | 2 | 4 | 7 |  |
| 3 | 3 | 5 | 12 |  |
| End |  |  | 12 | 12 |

Final output:

```text
12
```

</details>

---

### Question 6 [3 marks]

The following loop should output numbers from 1 to 5, but it does not.

```text
count ← 1

WHILE count < 5
    OUTPUT count
    count ← count + 1
ENDWHILE
```

Identify the error and correct it.

<details>
<summary>Mark Scheme Style Answer</summary>

The condition `count < 5` stops the loop before outputting 5. This is an off-by-one error. The condition should be changed to:

```text
count <= 5
```

</details>

---

## 6. Mini Mock 2: B2 Programming

**Total: 20 marks**  
Suggested time: 25 minutes.

### Question 1 [2 marks]

Define variable.

<details>
<summary>Mark Scheme Style Answer</summary>

A variable is a named storage location used to store a value that may change during program execution.

</details>

---

### Question 2 [3 marks]

Choose a suitable data type for each value.

```text
"Yuki"
17
12.75
true
```

<details>
<summary>Mark Scheme Style Answer</summary>

```text
"Yuki" = string
17 = integer
12.75 = real / float
true = Boolean
```

Award up to 3 marks depending on marking allocation.

</details>

---

### Question 3 [4 marks]

Explain the difference between validation and verification.

<details>
<summary>Mark Scheme Style Answer</summary>

Validation checks whether input data is sensible, reasonable, or allowed before it is processed, such as checking that a mark is between 0 and 100. Verification checks whether data has been entered or copied correctly, such as double entry or visual checking.

</details>

---

### Question 4 [5 marks]

Write pseudocode to input 5 prices and output the total.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
total ← 0

FOR count ← 1 TO 5
    INPUT price
    total ← total + price
ENDFOR

OUTPUT total
```

</details>

---

### Question 5 [6 marks]

Write pseudocode to count how many values in array `scores` are at least 50.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
passCount ← 0

FOR index ← 0 TO length(scores) - 1
    IF scores[index] >= 50 THEN
        passCount ← passCount + 1
    ENDIF
ENDFOR

OUTPUT passCount
```

Accept 1-based indexing if consistent.

</details>

---

## 7. Mini Mock 3: B3 Object-Oriented Programming

**Total: 20 marks**  
Suggested time: 25 minutes.

### Question 1 [2 marks]

Define class.

<details>
<summary>Mark Scheme Style Answer</summary>

A class is a blueprint or template that defines the attributes and methods that objects of that type will have.

</details>

---

### Question 2 [2 marks]

Define object.

<details>
<summary>Mark Scheme Style Answer</summary>

An object is an instance of a class with its own attribute values and access to the class methods.

</details>

---

### Question 3 [4 marks]

Distinguish between an attribute and a method.

<details>
<summary>Mark Scheme Style Answer</summary>

An attribute stores data about an object, such as a student's name or score. A method is a procedure or function belonging to a class that represents behaviour, such as `setScore()` or `displayDetails()`.

</details>

---

### Question 4 [4 marks]

A class `Book` has attributes `title`, `author`, `ISBN`, and `available`.

Suggest two suitable methods and explain what each does.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible methods:

```text
borrow(): changes available to false
returnBook(): changes available to true
displayDetails(): outputs the book information
isAvailable(): returns whether the book can be borrowed
```

Award marks for suitable methods and explanations.

</details>

---

### Question 5 [4 marks]

Explain why encapsulation is useful.

<details>
<summary>Mark Scheme Style Answer</summary>

Encapsulation restricts direct access to an object's internal data. This protects data integrity because attributes can only be changed through methods that apply validation or controlled rules.

</details>

---

### Question 6 [4 marks]

Represent this class as a simple UML class diagram in text form.

```text
Class: Player
Attributes: name, health, score
Methods: takeDamage(amount), addScore(points), displayStatus()
```

<details>
<summary>Mark Scheme Style Answer</summary>

```text
Player
-------------------------
name
health
score
-------------------------
takeDamage(amount)
addScore(points)
displayStatus()
```

</details>

---

## 8. Mini Mock 4: A1 Computer Fundamentals

**Total: 20 marks**  
Suggested time: 25 minutes.

### Question 1 [2 marks]

State two components of the CPU.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible answers:

```text
ALU
control unit
registers
cache
```

</details>

---

### Question 2 [3 marks]

Describe the role of the program counter.

<details>
<summary>Mark Scheme Style Answer</summary>

The program counter stores the memory address of the next instruction to be fetched. It is updated during the fetch-decode-execute cycle so the CPU can fetch the next instruction in sequence, unless a branch changes the flow.

</details>

---

### Question 3 [3 marks]

Convert hexadecimal `AC` to binary.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
A = 1010
C = 1100
```

Answer:

```text
10101100
```

</details>

---

### Question 4 [4 marks]

Construct a truth table for `A AND NOT B`.

<details>
<summary>Mark Scheme Style Answer</summary>

| A | B | NOT B | A AND NOT B |
|---|---|---|---|
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |

</details>

---

### Question 5 [4 marks]

Distinguish between RAM and secondary storage.

<details>
<summary>Mark Scheme Style Answer</summary>

RAM is volatile primary memory used to store data and instructions currently in use. Secondary storage is non-volatile and used for long-term storage of files and programs. RAM is generally faster but loses data when power is off, while secondary storage retains data.

</details>

---

### Question 6 [4 marks]

Explain two functions of an operating system.

<details>
<summary>Mark Scheme Style Answer</summary>

An operating system manages memory by allocating memory to running programs and freeing memory when no longer needed. It also manages files by storing, retrieving, organizing, and controlling access to files. Other valid answers include process management, device management, security, user interface, and resource accounting.

</details>

---

## 9. Mini Mock 5: A2 Networks

**Total: 20 marks**  
Suggested time: 25 minutes.

### Question 1 [2 marks]

Define LAN.

<details>
<summary>Mark Scheme Style Answer</summary>

A LAN is a network that connects devices over a small geographical area, such as a home, school, or office.

</details>

---

### Question 2 [3 marks]

Distinguish between a router and a switch.

<details>
<summary>Mark Scheme Style Answer</summary>

A router forwards packets between different networks using IP addresses. A switch connects devices within a LAN and forwards frames to the correct device using MAC addresses.

</details>

---

### Question 3 [4 marks]

Describe packet switching.

<details>
<summary>Mark Scheme Style Answer</summary>

Packet switching splits data into smaller packets before transmission. Each packet includes addressing or control information and may travel independently across the network. Packets may take different routes and are reassembled at the destination.

</details>

---

### Question 4 [3 marks]

Explain why DNS is used when accessing a website.

<details>
<summary>Mark Scheme Style Answer</summary>

DNS translates a human-readable domain name into an IP address. The browser needs the IP address to send the request to the correct web server.

</details>

---

### Question 5 [4 marks]

Explain how encryption protects data sent across a network.

<details>
<summary>Mark Scheme Style Answer</summary>

Encryption converts data into unreadable ciphertext using a key. If the data is intercepted during transmission, an attacker cannot understand it without the correct decryption key.

</details>

---

### Question 6 [4 marks]

Explain why a VPN may be used by remote workers.

<details>
<summary>Mark Scheme Style Answer</summary>

A VPN creates an encrypted tunnel between the remote worker's device and the organization's network. This protects data from interception over the internet and allows remote workers to access internal resources more securely.

</details>

---

## 10. Mini Mock 6: A3 Databases

**Total: 20 marks**  
Suggested time: 25 minutes.

### Question 1 [2 marks]

Define primary key.

<details>
<summary>Mark Scheme Style Answer</summary>

A primary key is a field or combination of fields that uniquely identifies each record in a table.

</details>

---

### Question 2 [3 marks]

Distinguish between a record and a field.

<details>
<summary>Mark Scheme Style Answer</summary>

A record is one row in a table and represents one instance of an entity. A field is one column in a table and represents one attribute.

</details>

---

### Question 3 [4 marks]

A database contains:

```text
STUDENT(StudentID, Name)
ENROLMENT(StudentID, CourseID)
COURSE(CourseID, CourseName)
```

Identify the foreign keys.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
ENROLMENT.StudentID references STUDENT.StudentID
ENROLMENT.CourseID references COURSE.CourseID
```

</details>

---

### Question 4 [4 marks]

Explain why normalization is useful.

<details>
<summary>Mark Scheme Style Answer</summary>

Normalization reduces data redundancy by organizing data into related tables. This helps avoid update, insertion, and deletion anomalies and improves consistency because data is not unnecessarily repeated.

</details>

---

### Question 5 [4 marks]

Write an SQL query to list names of students in class `10A`.

Assume:

```text
STUDENT(StudentID, Name, Class)
```

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT Name
FROM STUDENT
WHERE Class = '10A';
```

</details>

---

### Question 6 [3 marks]

Explain atomicity in database transactions.

<details>
<summary>Mark Scheme Style Answer</summary>

Atomicity means that all operations in a transaction must complete successfully, or none are applied. If an error occurs, the transaction is rolled back to avoid partial updates.

</details>

---

## 11. Mini Mock 7: A4 Machine Learning

**Total: 20 marks**  
Suggested time: 25 minutes.

### Question 1 [2 marks]

Define machine learning.

<details>
<summary>Mark Scheme Style Answer</summary>

Machine learning is a technique where a system learns patterns from data and uses a trained model to make predictions or decisions on new data.

</details>

---

### Question 2 [3 marks]

Distinguish between a feature and a label.

<details>
<summary>Mark Scheme Style Answer</summary>

A feature is an input variable used by a model to make a prediction. A label is the known correct output or target value used in supervised learning.

</details>

---

### Question 3 [3 marks]

A model predicts whether an email is spam.

Identify two possible features and the label.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible features:

```text
sender address
number of links
suspicious words
attachments
message length
```

Label:

```text
spam / not spam
```

</details>

---

### Question 4 [3 marks]

Distinguish between classification and regression.

<details>
<summary>Mark Scheme Style Answer</summary>

Classification predicts a category or class, such as spam/not spam. Regression predicts a numerical value, such as house price or delivery time.

</details>

---

### Question 5 [4 marks]

Explain why testing data should be separate from training data.

<details>
<summary>Mark Scheme Style Answer</summary>

Testing data should be separate so the model is evaluated on examples it has not seen during training. This gives a more reliable estimate of performance on new data. If the same data is used for training and testing, the model may appear accurate because it memorized the training examples.

</details>

---

### Question 6 [5 marks]

A model has 98% training accuracy and 60% testing accuracy. Explain the likely problem and one possible solution.

<details>
<summary>Mark Scheme Style Answer</summary>

The model is likely overfitting because it performs very well on training data but poorly on unseen testing data. It may have learned the training examples too specifically, including noise. A possible solution is to use a simpler model, collect more representative data, reduce unnecessary features, or use validation data/regularization to tune the model.

</details>

---

## 12. Mini Mock 8: Mixed Paper 1 Short Answer

**Total: 30 marks**  
Suggested time: 40 minutes.

### Question 1 [2 marks]

State two examples of secondary storage.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible answers:

```text
HDD
SSD
USB flash drive
optical disc
memory card
magnetic tape
```

</details>

---

### Question 2 [3 marks]

Describe the role of the ALU.

<details>
<summary>Mark Scheme Style Answer</summary>

The ALU performs arithmetic operations, such as addition and subtraction, and logical operations, such as comparisons. It may store intermediate results in the accumulator.

</details>

---

### Question 3 [3 marks]

Convert binary `11001010` to hexadecimal.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
1100 = C
1010 = A
```

Answer:

```text
CA
```

</details>

---

### Question 4 [4 marks]

Explain the role of a firewall.

<details>
<summary>Mark Scheme Style Answer</summary>

A firewall filters incoming and outgoing network traffic based on security rules. It can block unauthorized or suspicious traffic, reducing the risk of attackers accessing internal systems.

</details>

---

### Question 5 [4 marks]

Write an SQL query to list product names with price greater than 100.

Assume:

```text
PRODUCT(ProductID, ProductName, Price)
```

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT ProductName
FROM PRODUCT
WHERE Price > 100;
```

</details>

---

### Question 6 [4 marks]

Distinguish between supervised and unsupervised learning.

<details>
<summary>Mark Scheme Style Answer</summary>

Supervised learning uses labelled data where each training example has a known correct output. Unsupervised learning uses unlabelled data and finds patterns, groups, or anomalies without being given correct labels.

</details>

---

### Question 7 [5 marks]

Write an algorithm to input 5 marks and output their average.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
total ← 0

FOR count ← 1 TO 5
    INPUT mark
    total ← total + mark
ENDFOR

average ← total / 5
OUTPUT average
```

</details>

---

### Question 8 [5 marks]

Explain two privacy controls for a database storing student records.

<details>
<summary>Mark Scheme Style Answer</summary>

Access control should restrict student records to authorized staff only, reducing the risk of unauthorized viewing or editing. Encryption can protect stored or transmitted data so that if it is accessed or intercepted, it cannot be understood without the key. Other valid answers include audit logs, data minimization, retention limits, and backups.

</details>

---

## 13. Mini Mock 9: Scenario-Based Security and Ethics

**Total: 30 marks**  
Suggested time: 40 minutes.

### Scenario

A hospital allows doctors and nurses to access patient records from tablets. Some staff use hospital-owned devices, while others use their own personal devices. The hospital is considering cloud storage and machine learning tools to support diagnosis.

---

### Question 1 [4 marks]

Explain two security risks of allowing personal devices to access hospital systems.

<details>
<summary>Mark Scheme Style Answer</summary>

Personal devices may not be updated or protected with the same security controls as hospital-owned devices, increasing malware or vulnerability risk. They may also be lost or stolen, which could expose patient records if the device is not encrypted or protected by strong authentication.

</details>

---

### Question 2 [4 marks]

Explain two controls that could reduce unauthorized access.

<details>
<summary>Mark Scheme Style Answer</summary>

Multi-factor authentication can require staff to provide a password and a second verification method, reducing the risk of access from stolen passwords. Mobile device management can enforce encryption, screen locks, updates, and remote wipe on devices accessing hospital data. Other valid answers include access control, VPN, firewalls, least privilege, and monitoring.

</details>

---

### Question 3 [4 marks]

Explain one benefit and one risk of using cloud storage for patient records.

<details>
<summary>Mark Scheme Style Answer</summary>

One benefit is accessibility because authorized staff can access patient records from different hospital locations or devices. One risk is privacy and security because sensitive patient data is stored by a third-party provider and could be exposed if access controls, encryption, or provider security are weak.

</details>

---

### Question 4 [5 marks]

The hospital uses an ML model to identify possible disease from scans.

Identify two possible features, the likely output, and whether this is classification or regression.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible features:

```text
image pixels
shapes or patterns in scan
size/location of abnormal area
texture/contrast features
patient age if included
```

Likely output:

```text
disease / no disease
or disease category
```

Task type:

```text
classification
```

because the output is a category.

</details>

---

### Question 5 [5 marks]

Explain why human oversight is important for the hospital's ML diagnosis tool.

<details>
<summary>Mark Scheme Style Answer</summary>

Human oversight is important because the ML model may make incorrect predictions, including false negatives that miss disease or false positives that cause unnecessary concern. Doctors can consider patient context and medical knowledge that the model may not include. This reduces harm and ensures the ML system supports rather than replaces clinical judgement.

</details>

---

### Question 6 [8 marks]

Evaluate whether the hospital should use personal devices for accessing patient records.

<details>
<summary>Mark Scheme Style Answer</summary>

Using personal devices can improve flexibility because staff may access patient records when moving between wards or working remotely. It may also reduce hardware costs because the hospital does not need to provide every device.

However, personal devices create security and privacy risks. Devices may be lost, stolen, infected with malware, or not updated. This is serious because patient records are sensitive and unauthorized access could harm patients and breach legal requirements.

The hospital would need strong controls such as multi-factor authentication, mobile device management, encryption, VPN access, least privilege, and remote wipe. Staff training and clear BYOD policies would also be needed.

Overall, personal devices may be acceptable only if strict security controls are enforced. Without those controls, the privacy risk to patient records would be too high.

</details>

---

## 14. Mini Mock 10: Full SL Paper 1 Style Mini Mock

**Total: 50 marks**  
Suggested time: 75 minutes.

---

### Section A

Answer all questions.

---

### Question 1 [4 marks]

A CPU uses registers during the fetch-decode-execute cycle.

Describe the role of the program counter and memory address register.

<details>
<summary>Mark Scheme Style Answer</summary>

The program counter stores the memory address of the next instruction to be fetched. It is updated after fetching unless a branch changes the flow. The memory address register stores the address of the memory location that is being accessed, such as the address of the instruction or data to be fetched from memory.

</details>

---

### Question 2 [3 marks]

Convert hexadecimal `5D` to binary.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
5 = 0101
D = 1101
```

Answer:

```text
01011101
```

</details>

---

### Question 3 [4 marks]

Construct a truth table for `A OR NOT B`.

<details>
<summary>Mark Scheme Style Answer</summary>

| A | B | NOT B | A OR NOT B |
|---|---|---|---|
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 1 |

</details>

---

### Question 4 [4 marks]

Explain why packet switching is used in networks.

<details>
<summary>Mark Scheme Style Answer</summary>

Packet switching splits data into smaller packets that can travel independently across the network. This allows network links to be shared efficiently by different communications. Packets may also use alternative routes if part of the network is unavailable and are reassembled at the destination.

</details>

---

### Question 5 [4 marks]

Distinguish between authentication and authorization.

<details>
<summary>Mark Scheme Style Answer</summary>

Authentication verifies the identity of a user or device, for example by checking a password or biometric factor. Authorization determines what an authenticated user is allowed to access or do, such as reading or editing certain files.

</details>

---

### Question 6 [5 marks]

Write an SQL query to list each category once from the table below, sorted alphabetically.

```text
PRODUCT(ProductID, ProductName, Category, Price)
```

<details>
<summary>Mark Scheme Style Answer</summary>

```sql
SELECT DISTINCT Category
FROM PRODUCT
ORDER BY Category ASC;
```

</details>

---

### Question 7 [4 marks]

Explain why testing data should be separate from training data in machine learning.

<details>
<summary>Mark Scheme Style Answer</summary>

Testing data should be separate so the model is evaluated on examples it has not seen during training. This gives a more reliable estimate of performance on new data. If the model is tested on training data, it may appear accurate because it memorized the examples, which does not show good generalization.

</details>

---

### Question 8 [5 marks]

Trace the algorithm with inputs `6`, `3`, and `9`.

```text
largest ← 0

FOR count ← 1 TO 3
    INPUT number
    IF number > largest THEN
        largest ← number
    ENDIF
ENDFOR

OUTPUT largest
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | count | number | number > largest? | largest | Output |
|---:|---:|---:|---|---:|---|
| Start |  |  |  | 0 |  |
| 1 | 1 | 6 | true | 6 |  |
| 2 | 2 | 3 | false | 6 |  |
| 3 | 3 | 9 | true | 9 |  |
| End |  |  |  | 9 | 9 |

Final output:

```text
9
```

</details>

---

### Section B

Answer all questions.

---

### Scenario

A school stores student records in a database. It also uses a machine learning system to identify students who may need academic support. Teachers access the system through the school network and sometimes from home.

---

### Question 9 [4 marks]

Explain how primary and foreign keys could be used in the school's database.

<details>
<summary>Mark Scheme Style Answer</summary>

A primary key such as `StudentID` can uniquely identify each student record. A foreign key can link related tables, such as using `StudentID` in an attendance or grade table to refer to the matching student. This allows related data to be stored in separate tables while maintaining referential integrity.

</details>

---

### Question 10 [4 marks]

Explain two security controls that should be used when teachers access the system from home.

<details>
<summary>Mark Scheme Style Answer</summary>

A VPN can create an encrypted tunnel between the teacher's device and the school network, reducing the risk that data is intercepted over the internet. Multi-factor authentication can require a password and a second verification method, reducing unauthorized access if a password is stolen. Other valid answers include access control, encryption, device management, and monitoring.

</details>

---

### Question 11 [4 marks]

For the ML system, identify two possible features and the label.

<details>
<summary>Mark Scheme Style Answer</summary>

Possible features:

```text
attendance
previous grades
assignment completion
homework submission
learning platform activity
```

Label:

```text
at risk / not at risk
or needs support / does not need support
```

</details>

---

### Question 12 [5 marks]

Explain one benefit and one risk of using the ML system to identify students needing support.

<details>
<summary>Mark Scheme Style Answer</summary>

One benefit is that the system may identify students needing support earlier by analysing patterns in attendance, grades, or assignment completion. This could help teachers provide intervention before final exams. One risk is that the model may make incorrect or biased predictions, such as falsely labelling a student as at risk, which could affect teacher expectations or student confidence.

</details>

---

### Question 13 [9 marks]

Evaluate whether the school should use the ML system for academic support decisions.

<details>
<summary>Mark Scheme Style Answer</summary>

The ML system could be useful because it can analyse large amounts of student data, such as attendance, previous grades, and assignment completion, to identify students who may need support earlier. This may help teachers provide targeted help before students fail.

However, the system may make incorrect predictions. A false positive could unfairly label a student as at risk, while a false negative could miss a student who needs help. The model may also be biased if the training data is unrepresentative or reflects past unfairness.

Privacy is also important because the system processes sensitive student data. The school should use data minimization, access control, transparency, fairness testing, and human oversight. Teachers should review predictions and use them to support students rather than punish them.

Overall, the system could be suitable as a decision-support tool, but it should not automatically make important decisions without teacher judgement, privacy safeguards, and regular monitoring.

</details>

---

## 15. Marking and Reflection Sheet

After completing a mini mock, students should fill in this reflection.

| Area | Notes |
|---|---|
| Mock number |  |
| Total marks |  |
| Marks achieved |  |
| Strongest topic |  |
| Weakest topic |  |
| Main command term mistake |  |
| Missing keywords |  |
| One answer to rewrite |  |
| Revision action |  |

### Rewrite Routine

```text
1. Choose one weak answer.
2. Underline vague words.
3. Add technical vocabulary.
4. Add explanation using because/how.
5. Add scenario link if relevant.
6. Compare again with mark scheme.
```

---

## 16. Common Mini Mock Mistakes

| Mistake | Why It Loses Marks | Fix |
|---|---|---|
| no command term check | wrong answer depth | underline command term first |
| vague answer | no mark-worthy detail | use technical keywords |
| no scenario link | answer too generic | mention organization/data/user |
| repeated points | same mark twice | use separate ideas |
| SQL syntax incomplete | query loses marks | check SELECT/FROM/WHERE |
| trace table guessed | variable errors | trace step by step |
| ML output type ignored | classification/regression wrong | category vs number |
| database keys confused | relationship answer wrong | primary unique, foreign references |
| network devices confused | wrong role | router between networks, switch in LAN |
| no conclusion for evaluate | weak judgement | add overall supported judgement |

---

## 17. One-page Mini Mock Summary

| Skill | What to Do |
|---|---|
| Before answering | read command term and mark value |
| Short answers | direct and precise |
| Explain answers | point + because/how |
| Scenario answers | mention system/data/user |
| Discuss/evaluate | balanced points and judgement |
| SQL | SELECT, FROM, WHERE, ORDER BY if needed |
| Trace | use inputs in order and record variables |
| Algorithms | initialize, loop, update, output |
| Databases | table, record, field, key, relationship |
| ML | feature, label, model, evaluation |
| Security | threat, control, mechanism, impact |
| After mock | self-mark, rewrite, record weak topics |

::: tip Completion Note
This page completes the main Exam Practice sidebar set. A future upgrade could add printable PDF mock papers or separate student/teacher versions.
:::

