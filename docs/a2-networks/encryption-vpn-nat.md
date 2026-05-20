# Encryption, VPN and NAT

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define encryption
- explain plaintext, ciphertext, and key
- explain the purpose of VPNs
- explain the purpose of NAT
- apply encryption, VPN, and NAT to network security scenarios
- distinguish privacy, confidentiality, and address translation

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding secure communication and address translation |
| Connected units | A1 Computer Fundamentals, A3 Databases, A4 Machine Learning, Social Engineering Awareness |
| Exam relevance | Definitions, process explanation, comparison, security scenarios, network design questions |

::: tip Learning Focus
A2 questions often require students to explain **how data moves across networks** and how systems can be protected from threats.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Encryption | 加密 | Converting data into unreadable form using a key |
| Plaintext | 明文 | Original readable data |
| Ciphertext | 密文 | Encrypted unreadable data |
| Key | 密钥 | Value used to encrypt or decrypt data |
| VPN | 虚拟专用网络 | Secure encrypted connection over a public network |
| NAT | 网络地址转换 | Translates private IP addresses to a public IP address |
| Private IP address | 私有IP地址 | Address used inside a local network |
| Public IP address | 公网IP地址 | Address used on the internet |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Encryption（加密）** 把 readable data 变成 unreadable ciphertext。没有正确 key 的人即使截获数据，也难以理解内容。

**VPN（Virtual Private Network）** 在公共网络上建立加密连接，常用于 remote worker 安全访问 company network。

**NAT（Network Address Translation）** 把 LAN 内部多个 private IP addresses 转换成一个或少量 public IP addresses，用于访问 internet。

注意：VPN 和 NAT 不是同一个东西。VPN 主要关注安全加密连接；NAT 主要关注地址转换。

</template>

<template #en>

### English Explanation

**Encryption** converts readable data into unreadable ciphertext. Without the correct key, someone who intercepts the data should not be able to understand it.

A **VPN** creates an encrypted connection over a public network. It is often used by remote workers to securely access a company network.

**NAT** translates multiple private IP addresses inside a LAN into one or a small number of public IP addresses for internet access.

VPN and NAT are not the same. VPN focuses mainly on secure encrypted communication; NAT focuses mainly on address translation.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Remote teacher accessing school files

| Technology | Role |
|---|---|
| Encryption | protects file data in transit |
| VPN | creates secure tunnel from home to school network |
| NAT | allows home devices with private IPs to access internet using public IP |

::: info Scenario Link
A remote teacher may use a VPN to securely access school resources over the internet.
:::

---

## 6. Security and Address Pattern

```text
Plaintext + key → encryption → ciphertext → transmission → decryption with key → plaintext

Private IP → NAT router → Public IP → Internet
```

---

## 7. Technical Example

### Concept comparison

| Technology | Main purpose |
|---|---|
| Encryption | protect data confidentiality |
| VPN | secure tunnel over public network |
| NAT | translate private/public IP addresses |

---

## 8. Explanation of the Example

Encryption protects data content. VPN uses encryption to protect a connection. NAT changes addressing information so private devices can communicate with the internet.

---

## 9. Step-by-step Process / Trace

| Process | Steps |
|---|---|
| Encryption | plaintext → encrypted using key → ciphertext → decrypted with key |
| VPN | device connects to VPN → encrypted tunnel created → data travels securely |
| NAT | private device sends request → router replaces private IP with public IP → response mapped back to device |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying encryption hides that communication exists | Encryption protects content, not always metadata | Say it makes data unreadable without key |
| Confusing VPN and NAT | Different purposes | VPN = secure tunnel; NAT = address translation |
| Saying NAT encrypts data | NAT does not encrypt by itself | Use encryption/VPN for confidentiality |
| Ignoring key role | Encryption needs key | Mention encrypt/decrypt key |
| Saying VPN is always anonymous | VPN improves secure access but depends on provider/context | Use precise wording |

---

## 11. Guided Practice

### Practice 1

What is ciphertext?

<details><summary>Suggested Answer</summary>

Ciphertext is encrypted data that is unreadable without the correct key.

</details>

### Practice 2

What is the main purpose of NAT?

<details><summary>Suggested Answer</summary>

NAT translates private IP addresses used inside a local network into a public IP address used on the internet.

</details>

---

## 12. Independent Practice

1. Explain encryption using plaintext, ciphertext, and key.
2. Explain why a remote worker may use a VPN.
3. Explain how NAT allows multiple home devices to access the internet.
4. Compare encryption and VPN.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

Explain how encryption protects data sent over a network.

<details><summary>Mark Scheme Style Answer</summary>

Encryption converts plaintext into ciphertext using a key. If the data is intercepted, it is unreadable without the correct key. The intended receiver can decrypt the ciphertext back into plaintext using the correct key.

</details>

### Question 2 [3 marks]

Explain why a company may use a VPN for remote workers.

<details><summary>Mark Scheme Style Answer</summary>

A VPN creates an encrypted connection over the public internet. This allows remote workers to access company resources more securely and reduces the risk of intercepted data being read by attackers.

</details>

### Question 3 [3 marks]

State the purpose of NAT.

<details><summary>Mark Scheme Style Answer</summary>

NAT translates private IP addresses used inside a local network into a public IP address for internet communication, and maps responses back to the correct internal device.

</details>

---

## 14. Classroom Activity

### Activity: Secure Tunnel and NAT Role-play

Students act as private devices, NAT router, public internet, VPN tunnel, and attacker. They show which information is translated and which data is encrypted.

---

## 15. Homework

Write a scenario-based explanation for a company with remote workers. Include encryption, VPN, NAT, risks, and benefits.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Encryption | Converts plaintext to ciphertext |
| Key | Used for encryption/decryption |
| VPN | Encrypted tunnel over public network |
| NAT | Private-public IP translation |
| Exam phrase | A VPN creates an encrypted tunnel so data sent over a public network is harder to read if intercepted. |
