# TCP/IP Model

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain the purpose of protocols
- describe the TCP/IP model at a simple level
- identify roles of application, transport, internet, and network access layers
- explain TCP and IP roles
- connect protocols to web and email communication
- write step-by-step network process explanations

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding layered network communication |
| Connected units | A1 Computer Fundamentals, A3 Databases, A4 Machine Learning, Social Engineering Awareness |
| Exam relevance | Definitions, process explanation, comparison, security scenarios, network design questions |

::: tip Learning Focus
A2 questions often require students to explain **how data moves across networks** and how systems can be protected from threats.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Protocol | 协议 | A set of rules for communication |
| TCP/IP | TCP/IP模型 | A suite of protocols used for network and internet communication |
| Application layer | 应用层 | Provides network services to applications |
| Transport layer | 传输层 | Manages end-to-end communication and reliability |
| Internet layer | 互联网层 | Handles IP addressing and routing |
| Network access layer | 网络接入层 | Handles physical transmission across local network media |
| TCP | 传输控制协议 | Provides reliable delivery by ordering and checking packets |
| IP | 互联网协议 | Handles addressing and routing of packets |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

网络通信需要 **protocols（协议）**。协议是一组通信规则，让不同设备可以理解彼此。

**TCP/IP model** 把网络通信分成 layers。每一层负责不同任务：

- Application layer：为应用程序提供服务，例如 HTTP、HTTPS、DNS
- Transport layer：处理端到端通信，例如 TCP
- Internet layer：处理 IP 地址和路由，例如 IP
- Network access layer：处理在本地网络介质上的传输

Layering 的好处是每一层只负责自己的任务，复杂问题被分解。

</template>

<template #en>

### English Explanation

Network communication needs **protocols**. A protocol is a set of rules that allows different devices to understand each other.

The **TCP/IP model** divides network communication into layers. Each layer has a different responsibility:

- Application layer: provides services to applications, such as HTTP, HTTPS, DNS
- Transport layer: manages end-to-end communication, such as TCP
- Internet layer: handles IP addressing and routing, such as IP
- Network access layer: handles transmission over local network media

Layering is useful because each layer has its own responsibility, reducing complexity.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Opening a website

| Layer | Example Role |
|---|---|
| Application | HTTP/HTTPS request for webpage |
| Transport | TCP manages reliable delivery |
| Internet | IP addresses and routes packets |
| Network access | Wi-Fi/Ethernet transmits frames locally |

---

## 6. Layering Pattern

```text
Application data → Transport segments → Internet packets → Network access frames → physical/wireless transmission
```

At the receiving device, the process is reversed.

---

## 7. Technical Example

### Protocol examples

| Protocol | Main role |
|---|---|
| HTTP | transfers web pages |
| HTTPS | secure web communication |
| DNS | resolves domain names |
| TCP | reliable packet delivery |
| IP | addressing and routing |

---

## 8. Explanation of the Example

TCP and IP are not the same. TCP focuses on reliable delivery and ordering. IP focuses on addressing and routing packets through networks.

---

## 9. Step-by-step Process / Trace

| Step | Layer | Action |
|---|---|---|
| 1 | Application | browser creates web request |
| 2 | Transport | TCP splits/manages data and reliability |
| 3 | Internet | IP adds source/destination addresses |
| 4 | Network access | data sent over Wi-Fi/Ethernet |
| 5 | Receiving side | layers process data in reverse |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying TCP and IP do the same thing | They have different roles | TCP reliability, IP addressing/routing |
| Listing layers without roles | Marks need function | State what each layer does |
| Confusing HTTP and TCP | HTTP is application layer; TCP is transport layer | Use layer table |
| Thinking protocols are hardware | Protocols are rules/software standards | Define as communication rules |
| Ignoring layering benefit | Layering reduces complexity | Mention separation of responsibilities |

---

## 11. Guided Practice

### Practice 1

What does IP mainly do?

<details><summary>Suggested Answer</summary>

IP handles addressing and routing packets between networks.

</details>

### Practice 2

What does TCP mainly do?

<details><summary>Suggested Answer</summary>

TCP helps provide reliable delivery by ordering packets, checking errors, and retransmitting missing data when needed.

</details>

---

## 12. Independent Practice

1. Explain the four TCP/IP layers.
2. Match HTTP, TCP, IP, and Wi-Fi to layers.
3. Explain why protocols are needed.
4. Explain the benefit of a layered model.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

Explain the difference between TCP and IP.

<details><summary>Mark Scheme Style Answer</summary>

IP is responsible for addressing and routing packets across networks. TCP is responsible for reliable delivery, such as ordering packets, detecting missing packets, and requesting retransmission when needed.

</details>

### Question 2 [4 marks]

Explain why network communication uses protocols.

<details><summary>Mark Scheme Style Answer</summary>

Protocols define rules for communication, such as formatting, addressing, error checking, and sequencing. This allows different devices and systems to exchange data correctly even if they are made by different manufacturers.

</details>

---

## 14. Classroom Activity

### Activity: Layer Stack Cards

Students arrange protocol cards into TCP/IP layers and explain data movement from browser to server.

---

## 15. Homework

Create a TCP/IP model table with layers, roles, and two protocol examples. Then write a paragraph explaining why layering is useful.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Protocol | Rules for communication |
| TCP | Reliable delivery |
| IP | Addressing and routing |
| HTTP/HTTPS | Web communication |
| Layering | Separates responsibilities |
| Exam phrase | TCP manages reliable delivery while IP handles addressing and routing. |
