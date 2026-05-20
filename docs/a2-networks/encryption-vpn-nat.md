# Encryption, VPN and NAT

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of encryption
- explain why VPNs may be used
- describe the basic purpose of NAT
- apply these ideas to network security scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding network protection and addressing |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Encryption | Converting data into an unreadable form without a key |
| Plaintext | Original readable data |
| Ciphertext | Encrypted unreadable data |
| VPN | Virtual Private Network |
| NAT | Network Address Translation |
| Private IP address | Address used inside a local network |
| Public IP address | Address used on the internet |

## 4. Concept Explanation

Encryption protects data by making it unreadable to unauthorized users.

A VPN can create a secure connection over a public network. It is often used for remote access to a private network.

NAT allows devices inside a private network to share a public IP address when accessing the internet.

## 5. Step-by-step Example

A staff member works from home and connects to the school network.

A VPN may be used because:

- it creates a secure connection
- data can be encrypted
- the user can access internal services more safely

NAT may be used at the school firewall/router to translate private internal addresses to a public address.

## 6. Visual Structure

::: info Security and Addressing
Encryption → protects data content.  
VPN → creates a secure connection.  
NAT → translates private and public IP addresses.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying encryption hides that data exists | It hides the meaning/content, not necessarily the existence |
| Thinking VPN means complete anonymity | VPNs mainly provide secure tunnelling/access |
| Confusing NAT with encryption | NAT translates addresses; encryption protects data |
| Ignoring keys | Encrypted data needs a key to be decrypted |

## 8. Exam-style Question

A hospital deploys a firewall that uses NAT.

**Explain one function of NAT in this firewall.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- NAT translates private internal IP addresses to a public IP address
- this allows internal devices to access the internet
- it can hide internal addressing from external networks
- return traffic can be mapped back to the correct internal device

## 10. Quick Check

1. What is encryption?
2. What does VPN stand for?
3. What does NAT do?
