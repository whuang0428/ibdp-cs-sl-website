# Packet Switching

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what packet switching is
- describe why data is split into packets
- identify common packet contents
- explain how packets may take different routes

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding data transmission |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Packet | A small unit of data sent across a network |
| Packet switching | Splitting data into packets and sending them across a network |
| Header | Control information added to a packet |
| Payload | The actual data being carried |
| Routing | Choosing paths for packets |
| Reassembly | Putting packets back together at the destination |

## 4. Concept Explanation

Packet switching sends data by splitting it into smaller packets.

Each packet may contain:

- source address
- destination address
- sequence number
- payload
- error checking data

Packets can travel across different routes and are reassembled at the destination.

## 5. Step-by-step Example

Sending an image:

1. The image is split into packets.
2. Each packet is given addressing and sequence information.
3. Packets travel across the network.
4. Packets arrive at the destination.
5. The destination reassembles the image.

## 6. Visual Structure

::: info Packet Switching Process
Original data → split into packets → send across network → packets may take different routes → reassemble at destination.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking all packets must take the same route | Packets may travel through different routes |
| Forgetting sequence numbers | Reassembly order may be unclear |
| Confusing packet and file | A packet is only part of the data |
| Ignoring error checking | Data may be corrupted during transmission |

## 8. Exam-style Question

**Explain why data is split into packets before being sent across a network.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- smaller packets are easier to transmit across networks
- packets can be routed independently
- if a packet is lost or damaged, only that packet may need retransmission
- packets can be reassembled at the destination

## 10. Quick Check

1. What is a packet?
2. What is a packet header?
3. Why is a sequence number useful?
