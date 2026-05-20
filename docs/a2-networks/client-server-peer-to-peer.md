# Client-Server and Peer-to-Peer

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define client-server network model
- define peer-to-peer network model
- compare centralization, control, cost, reliability, and scalability
- identify suitable model for a scenario
- explain advantages and disadvantages of both models
- write exam-style comparison answers

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Comparing network organization models |
| Connected units | A1 Computer Fundamentals, A3 Databases, A4 Machine Learning, Social Engineering Awareness |
| Exam relevance | Definitions, process explanation, comparison, security scenarios, network design questions |

::: tip Learning Focus
A2 questions often require students to explain **how data moves across networks** and how systems can be protected from threats.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Client | 客户端 | A device or program that requests services or resources |
| Server | 服务器 | A device or program that provides services or resources |
| Client-server | 客户端-服务器 | A model where clients request services from central servers |
| Peer-to-peer | 点对点 | A model where devices share resources directly with each other |
| Centralized management | 集中管理 | Resources and permissions managed from a central point |
| Scalability | 可扩展性 | Ability to handle growth in users or demand |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Client-server model** 中，clients 向 server 请求资源或服务。Server 可以提供 files、web pages、authentication、database access 等。

优点：集中管理、安全控制更强、备份更容易、适合大型组织。缺点：server 成本高，server 故障可能影响很多 users。

**Peer-to-peer model** 中，设备之间直接共享资源，没有专门的中心 server。

优点：便宜、简单、小规模容易设置。缺点：管理困难、安全性较弱、备份不集中、不适合大量用户。

</template>

<template #en>

### English Explanation

In the **client-server model**, clients request resources or services from a server. The server may provide files, web pages, authentication, database access, and other services.

Advantages include centralized management, stronger security control, easier backup, and suitability for large organizations. Disadvantages include server cost and the risk that server failure affects many users.

In the **peer-to-peer model**, devices share resources directly with each other without a dedicated central server.

Advantages include lower cost, simplicity, and easy small-scale setup. Disadvantages include weaker management, weaker security, decentralized backup, and poor suitability for many users.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: School vs Small Home Sharing

| Scenario | Suitable Model | Reason |
|---|---|---|
| School network with many users | Client-server | central accounts, permissions, backups |
| Two home computers sharing files | Peer-to-peer | simple and low cost |
| Online shopping website | Client-server | clients request pages/data from server |
| Small temporary group project | Peer-to-peer | direct sharing may be enough |

---

## 6. Model Decision Pattern

```text
Many users + need security/central management → client-server
Small group + simple sharing + low budget → peer-to-peer
```

---

## 7. Technical Example

### Comparison table

| Feature | Client-server | Peer-to-peer |
|---|---|---|
| Control | centralized | decentralized |
| Cost | higher server cost | lower setup cost |
| Security | easier to manage centrally | harder to control |
| Backup | centralized backup possible | each peer responsible |
| Scale | better for large systems | better for small groups |

---

## 8. Explanation of the Example

Client-server and peer-to-peer are models of organization, not physical network size. A LAN can use client-server services, and peer-to-peer can also exist on a LAN.

---

## 9. Step-by-step Process / Trace

| Step | Client-server web access |
|---|---|
| 1 | Browser acts as client |
| 2 | Client sends request to web server |
| 3 | Server processes request |
| 4 | Server sends web page/data back |
| 5 | Client displays result |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Thinking client always means user | Client is device/program requesting service | Use technical definition |
| Saying peer-to-peer has no network | Peers are still networked devices | It means no dedicated central server |
| Ignoring server failure risk | Centralization has trade-offs | Mention single point of failure if not redundant |
| Only saying client-server is better | Depends on scenario | Compare requirements |
| Confusing model with LAN/WAN | Different classification | Model = organization, LAN/WAN = scale |

---

## 11. Guided Practice

### Practice 1

Which model is better for a school with 800 students? Why?

<details><summary>Suggested Answer</summary>

Client-server, because accounts, permissions, files, and backups can be managed centrally for many users.

</details>

### Practice 2

Give one advantage of peer-to-peer.

<details><summary>Suggested Answer</summary>

It can be cheaper and simpler to set up for a small number of devices because no dedicated server is required.

</details>

---

## 12. Independent Practice

1. Compare client-server and peer-to-peer using four features.
2. Explain why a hospital should not rely only on peer-to-peer sharing.
3. Give two examples of client-server systems.
4. Give two disadvantages of client-server networks.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

Compare client-server and peer-to-peer networks.

<details><summary>Mark Scheme Style Answer</summary>

In a client-server network, clients request services from a central server. This allows centralized management, security, and backups, but requires server hardware and may be affected by server failure. In a peer-to-peer network, devices share resources directly. It is cheaper and simpler for small groups but harder to manage and secure.

</details>

### Question 2 [3 marks]

Explain why client-server is suitable for an online shop.

<details><summary>Mark Scheme Style Answer</summary>

Customers' browsers act as clients and request web pages or product data from a web server. The server can manage the database, authentication, orders, and payments centrally, which supports many users and consistent data.

</details>

---

## 14. Classroom Activity

### Activity: Model Debate

Half the class argues for client-server and half for peer-to-peer for given scenarios. They must use cost, security, management, backup, and scale.

---

## 15. Homework

Create a table comparing client-server and peer-to-peer. Then choose the better model for school, home, hospital, and small game club scenarios.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Client | Requests service |
| Server | Provides service |
| Client-server | Centralized services |
| Peer-to-peer | Direct sharing between peers |
| Exam phrase | Client-server is suitable because resources, access rights, and backups can be managed centrally. |
