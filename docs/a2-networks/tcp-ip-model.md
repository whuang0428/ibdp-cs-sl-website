# TCP/IP Model

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify the layers of the TCP/IP model
- describe the role of each layer
- explain why layered models are useful
- connect TCP/IP layers to network communication examples

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding layered communication |

## 3. Key Terms

| Term | Meaning |
|---|---|
| TCP/IP | A set of protocols used for communication over networks |
| Protocol | A set of rules for communication |
| Application layer | Provides network services to applications |
| Transport layer | Manages end-to-end communication |
| Internet layer | Handles addressing and routing |
| Network interface layer | Handles data transfer over physical network hardware |

## 4. Concept Explanation

The TCP/IP model divides network communication into layers.

Each layer has a different responsibility.

| Layer | Main Role |
|---|---|
| Application | Services such as web, email, DNS |
| Transport | Reliable delivery, ports, segmentation |
| Internet | IP addressing and routing |
| Network interface | Physical transmission over network media |

Layering helps make networks easier to design, understand, and troubleshoot.

## 5. Step-by-step Example

When accessing a website:

1. Application layer creates an HTTP/HTTPS request.
2. Transport layer manages communication between devices.
3. Internet layer handles IP addressing and routing.
4. Network interface layer sends data over the local network.

## 6. Visual Structure

::: info TCP/IP Layers
Application → Transport → Internet → Network Interface
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Mixing TCP/IP with OSI layers | They are different models |
| Saying one layer does everything | Each layer has its own responsibility |
| Forgetting the network interface layer | It handles actual local transmission |
| Confusing IP address and MAC address | They are used at different levels |

## 8. Exam-style Question

**Describe the function of the network interface layer in the TCP/IP model.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- it handles communication with the physical network hardware
- it manages data transfer over the local network medium
- it may involve frames and MAC addressing

## 10. Quick Check

1. Name the four TCP/IP layers.
2. Which layer handles IP addressing?
3. Which layer provides services such as HTTP?
