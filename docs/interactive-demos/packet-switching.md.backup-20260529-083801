<script setup>
import PacketSwitchingDemo from '../.vitepress/components/demos/PacketSwitchingDemo.vue'
</script>

# Packet Switching Interactive Demo

## Learning Goals

By the end of this demo, students should be able to:

- describe how a message is split into packets
- explain why packets include header information
- understand that packets may take different routes
- understand that packets may arrive out of order
- explain how sequence numbers help reassemble the original message
- write an exam-style explanation of packet switching

## Key Idea

Packet switching is a method of sending data across a network by splitting the data into smaller packets.

Each packet normally contains:

```text
part of the data
source / destination information
sequence number
error-checking information
```

The packets may travel across different routes. When they arrive, the receiver uses the sequence numbers to put them back into the correct order.

## Interactive Demo

<PacketSwitchingDemo />

## Exam-style Explanation

A message is split into smaller packets before being sent across the network. Each packet has a header containing information such as the destination address and sequence number. Packets can travel independently through different routes and may arrive out of order. The receiving device uses the sequence numbers to reorder the packets and reassemble the original message.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| packets must all use the same route | packet switching allows independent routing | packets may take different paths |
| packets always arrive in order | network delays can affect different packets | sequence numbers are needed |
| packet header only stores data | header stores control information | header may include address and sequence number |
| receiver guesses the order | order is not guessed | receiver uses sequence numbers |
| packet switching means no errors can occur | errors can still happen | error checking and retransmission may be needed |

## Quick Practice

### Question 1

Explain why sequence numbers are needed in packet switching.

<details>
<summary>Answer</summary>

Sequence numbers are needed because packets may arrive out of order. The receiving device uses the sequence numbers to reorder the packets correctly before reassembling the original message.

</details>

### Question 2

State two pieces of information that may be found in a packet header.

<details>
<summary>Answer</summary>

Possible answers include:

```text
destination address
source address
sequence number
packet number
error-checking information
```

</details>

### Question 3

Explain one advantage of packet switching.

<details>
<summary>Answer</summary>

Packet switching allows packets to travel through different routes, so network traffic can be shared more efficiently and packets can still be routed around busy or failed parts of the network.

</details>
