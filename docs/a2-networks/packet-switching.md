# Packet Switching

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define packet switching
- explain why data is split into packets
- describe packet headers and payloads
- explain how packets may take different routes
- explain reassembly at the destination
- discuss advantages and possible issues of packet switching

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Explaining how data is split, routed, and reassembled |
| Connected units | A1 Computer Fundamentals, A3 Databases, A4 Machine Learning, Social Engineering Awareness |
| Exam relevance | Definitions, process explanation, comparison, security scenarios, network design questions |

::: tip Learning Focus
A2 questions often require students to explain **how data moves across networks** and how systems can be protected from threats.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Packet | 数据包 | A small unit of data sent across a network |
| Packet switching | 分组交换 | Sending data by splitting it into packets that may travel independently |
| Header | 包头 | Packet information such as addresses and sequence number |
| Payload | 有效载荷 | The actual data carried by the packet |
| Sequence number | 序列号 | Used to put packets back in order |
| Routing | 路由 | Choosing paths for packets through networks |
| Reassembly | 重组 | Putting packets back together at the destination |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Packet switching（分组交换）** 是网络传输数据的重要方法。大型数据不会一次性整体发送，而是被拆分成多个 packets。

每个 packet 通常包含：

- header：源地址、目的地址、序号、错误检查等控制信息
- payload：真正要传输的数据

Packets 可以通过不同路径到达目的地，到达后根据序号重新排列和重组。

这样做可以更有效地使用网络资源，也可以在部分路径拥堵或失败时选择其他路径。

</template>

<template #en>

### English Explanation

**Packet switching** is an important method of sending data across networks. Large data is not sent as one whole block; it is split into smaller packets.

Each packet usually contains:

- header: control information such as source address, destination address, sequence number, and error checking
- payload: the actual data being transmitted

Packets may take different routes to the destination. When they arrive, they are reordered and reassembled using sequence numbers.

This allows network resources to be used more efficiently and can allow packets to use alternative routes if some paths are congested or unavailable.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Sending an image

An image file is split into packets:

| Packet | Header | Payload |
|---|---|---|
| 1 | destination, sequence 1 | image data part 1 |
| 2 | destination, sequence 2 | image data part 2 |
| 3 | destination, sequence 3 | image data part 3 |

The destination uses sequence numbers to rebuild the original file.

---

## 6. Packet Switching Pattern

```text
Large data → split into packets → add headers → route independently → receive packets → reorder → reassemble original data
```

---

## 7. Technical Example

### Packet contents

| Part | Example |
|---|---|
| Source address | sender IP |
| Destination address | receiver IP |
| Sequence number | packet order |
| Error check | detect corruption |
| Payload | actual data part |

---

## 8. Explanation of the Example

Packet switching is different from sending an entire message along one fixed route. Packets are smaller, easier to route, and can share network links with packets from other users.

---

## 9. Step-by-step Process / Trace

| Step | Action |
|---|---|
| 1 | File is divided into packets |
| 2 | Header information is added |
| 3 | Packets are sent into network |
| 4 | Routers forward packets along available routes |
| 5 | Packets arrive, possibly out of order |
| 6 | Destination checks and reorders packets |
| 7 | Original data is reassembled |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying packets always take the same route | Packets may take different routes | Use 'may' and mention routing |
| Forgetting headers | Packets need control information | Mention address and sequence number |
| Confusing header and payload | They have different roles | Header controls; payload carries data |
| Ignoring reassembly | Destination must rebuild data | Mention sequence numbers |
| Saying packet switching prevents all data loss | Packets can still be lost/corrupted | Mention retransmission/error checks where relevant |

---

## 11. Guided Practice

### Practice 1

Why does a packet need a sequence number?

<details><summary>Suggested Answer</summary>

A sequence number helps the destination put packets back in the correct order.

</details>

### Practice 2

What is the payload?

<details><summary>Suggested Answer</summary>

The payload is the actual data being carried by the packet.

</details>

---

## 12. Independent Practice

1. Explain packet switching in six steps.
2. Draw a packet with header and payload.
3. Explain why packets may arrive out of order.
4. Explain one advantage of packet switching.

---

## 13. Exam-style Questions

### Question 1 [6 marks]

Describe how packet switching is used to send a file across a network.

<details><summary>Mark Scheme Style Answer</summary>

The file is split into smaller packets. Header information such as source address, destination address, and sequence number is added to each packet. Packets are routed independently across the network and may take different paths. At the destination, packets are checked, reordered using sequence numbers, and reassembled into the original file.

</details>

### Question 2 [3 marks]

Explain why packets contain header information.

<details><summary>Mark Scheme Style Answer</summary>

Header information is needed so packets can be routed to the correct destination, identified as part of the correct message, checked for errors, and reordered during reassembly.

</details>

---

## 14. Classroom Activity

### Activity: Packet Relay

Students split a message into paper packets, add destination and sequence numbers, pass them through different routes, then reassemble the message.

---

## 15. Homework

Choose a file type such as image, video, or document. Explain how it is sent using packet switching, including header, payload, routing, and reassembly.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Packet | Small unit of transmitted data |
| Header | Address/control information |
| Payload | Actual data |
| Sequence number | Used for ordering |
| Exam phrase | The destination reorders packets using sequence numbers and reassembles the original data. |
