# Network Devices

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- identify common network devices
- explain the roles of router, switch, WAP, modem, firewall, and NIC
- distinguish switch and router
- choose suitable devices for a scenario
- explain how devices support LAN and internet access
- write exam-style device role answers

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding the role of network hardware |
| Connected units | A1 Computer Fundamentals, A3 Databases, A4 Machine Learning, Social Engineering Awareness |
| Exam relevance | Definitions, process explanation, comparison, security scenarios, network design questions |

::: tip Learning Focus
A2 questions often require students to explain **how data moves across networks** and how systems can be protected from threats.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Router | 路由器 | Connects different networks and forwards packets between them |
| Switch | 交换机 | Connects devices within a LAN and forwards data to the correct device |
| Wireless Access Point | 无线接入点 | Allows wireless devices to connect to a wired network |
| Modem | 调制解调器 | Connects a network to an internet service provider connection |
| Firewall | 防火墙 | Filters network traffic based on security rules |
| NIC | 网卡 | Network interface card allowing a device to connect to a network |
| Gateway | 网关 | A device or system connecting different networks or protocols |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

网络需要不同设备来连接、转发和保护数据。

常见设备：

- **Switch**：连接 LAN 内部的设备，例如 classroom computers
- **Router**：连接不同 networks，例如 home LAN 和 internet
- **Wireless Access Point**：让无线设备接入网络
- **Modem**：连接 ISP 提供的 internet service
- **Firewall**：根据规则过滤进出网络的数据
- **NIC**：让设备具备网络连接能力

考试中最常见错误是把 switch 和 router 混淆。

</template>

<template #en>

### English Explanation

Networks use different devices to connect, forward, and protect data.

Common devices:

- **Switch**: connects devices inside a LAN, such as classroom computers
- **Router**: connects different networks, such as a home LAN and the internet
- **Wireless Access Point**: allows wireless devices to join a network
- **Modem**: connects to an ISP internet service
- **Firewall**: filters incoming and outgoing traffic based on rules
- **NIC**: allows a device to connect to a network

A very common exam mistake is confusing switches and routers.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Home Network

| Device | Role |
|---|---|
| Laptop NIC | connects laptop to Wi-Fi |
| Wireless access point | provides Wi-Fi connection |
| Switch | connects wired devices in LAN |
| Router | forwards data between home network and internet |
| Modem | connects to ISP line |
| Firewall | blocks unwanted traffic |

::: info Scenario Link
Many home routers combine router, switch, WAP, modem, and firewall functions in one physical device, but the roles are still different.
:::

---

## 6. Device Role Pattern

```text
Device wants to communicate → NIC sends data → switch/WAP handles LAN connection → router forwards to other network → firewall filters traffic → modem/ISP connects to internet
```

---

## 7. Technical Example

### Switch vs Router

| Feature | Switch | Router |
|---|---|---|
| Main role | connects devices in LAN | connects different networks |
| Example | PC to printer in school | school LAN to internet |
| Uses | local forwarding | packet routing between networks |

---

## 8. Explanation of the Example

Even if a single physical box performs several roles, students should explain the logical role. For example, the router function connects networks, while the wireless access point function provides Wi-Fi access.

---

## 9. Step-by-step Process / Trace

| Step | Action | Device |
|---|---|---|
| 1 | Laptop sends request | NIC |
| 2 | Wireless signal joins LAN | WAP |
| 3 | Local traffic is forwarded | switch |
| 4 | Traffic to internet is routed | router |
| 5 | Traffic is checked | firewall |
| 6 | Connection to ISP is used | modem |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying switch connects networks | Switch connects devices within LAN | Router connects different networks |
| Saying firewall removes all threats | Firewall filters traffic but is not complete protection | Mention rules and layered security |
| Ignoring WAP role | Wireless clients need access point | WAP connects wireless devices |
| Confusing modem and router | They have different roles | Modem connects to ISP; router routes between networks |
| Only naming device without function | Exam marks require explanation | State role in scenario |

---

## 11. Guided Practice

### Practice 1

Which device connects devices inside a LAN?

<details><summary>Suggested Answer</summary>

A switch connects devices inside a LAN.

</details>

### Practice 2

Which device connects a LAN to another network such as the internet?

<details><summary>Suggested Answer</summary>

A router connects different networks.

</details>

---

## 12. Independent Practice

1. Compare switch and router.
2. Explain the role of a wireless access point in a school.
3. Explain why a firewall is used.
4. Identify devices needed for a small office network.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

Describe the role of a router and a switch.

<details><summary>Mark Scheme Style Answer</summary>

A router connects different networks and forwards packets between them, such as between a LAN and the internet. A switch connects devices within a LAN and forwards data to the correct local device.

</details>

### Question 2 [3 marks]

Explain why a school may use wireless access points.

<details><summary>Mark Scheme Style Answer</summary>

Wireless access points allow laptops, tablets, and phones to connect to the school network without cables. This supports mobility and allows devices in classrooms to access network resources and internet services.

</details>

---

## 14. Classroom Activity

### Activity: Build a Network

Students are given device cards and must build a school network diagram. They annotate each device role and explain data movement from laptop to internet.

---

## 15. Homework

Design a small office network. Include at least router, switch, WAP, firewall, server, and clients. Explain each device role.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Switch | Connects devices in a LAN |
| Router | Connects different networks |
| WAP | Provides wireless access |
| Firewall | Filters traffic |
| NIC | Allows device network connection |
| Exam phrase | The router forwards packets between the LAN and external networks such as the internet. |
