# A1 and A2 Practice

## 1. Quick Revision

| Topic | Keywords |
|---|---|
| CPU | ALU, CU, registers, buses |
| FDE cycle | fetch, decode, execute |
| Memory | RAM, ROM, cache |
| Storage | HDD, SSD, cloud |
| Networks | LAN, WAN, router, switch |
| Protocols | TCP, IP, HTTP, HTTPS, DNS |
| Security | firewall, encryption, VPN, authentication |

## 2. Computer Fundamentals

### Question 1 [4 marks]

Explain the role of the ALU and control unit.

<details>
<summary>Answer</summary>

The ALU performs arithmetic operations such as addition and logical operations such as comparisons. The control unit coordinates CPU operations, decodes instructions, and sends control signals to other components.

</details>

### Question 2 [6 marks]

Describe the fetch-decode-execute cycle.

<details>
<summary>Answer</summary>

The program counter stores the address of the next instruction. The address is copied to the MAR. The instruction is fetched from memory into the MDR and copied to the instruction register. The control unit decodes the instruction. The CPU executes the instruction using the appropriate component, such as the ALU. The program counter is updated for the next instruction.

</details>

### Question 3 [4 marks]

Compare RAM and ROM.

<details>
<summary>Answer</summary>

RAM is volatile memory used to store currently running programs and data. Its contents are lost when power is off. ROM is non-volatile memory that stores startup instructions and keeps its contents when power is off.

</details>

## 3. Networks

### Question 4 [4 marks]

Compare a switch and a router.

<details>
<summary>Answer</summary>

A switch connects devices within a LAN and forwards data to the correct local device. A router connects different networks and forwards packets between them, such as between a home LAN and the internet.

</details>

### Question 5 [5 marks]

Describe how DNS is used when accessing a website.

<details>
<summary>Answer</summary>

The user enters a domain name into a browser. The browser or device queries DNS to find the corresponding IP address. DNS returns the IP address of the web server. The browser sends an HTTP or HTTPS request to that IP address. The web server returns the webpage data, which the browser displays.

</details>

### Question 6 [5 marks]

Explain how packet switching sends data across a network.

<details>
<summary>Answer</summary>

Data is split into smaller packets. Each packet has a header containing information such as source address, destination address, and sequence number. Packets may travel by different routes through the network. At the destination, packets are checked, reordered using sequence numbers, and reassembled into the original data.

</details>

## 4. Security Scenario

### Question 7 [6 marks]

A teacher works from home and accesses school files. Explain how a VPN and encryption can protect the connection.

<details>
<summary>Answer</summary>

A VPN creates a secure encrypted tunnel over the public internet between the teacher's device and the school network. Encryption converts plaintext data into ciphertext using a key, so intercepted data is difficult to read without the correct key. This helps protect school files and login information when the teacher accesses resources remotely.

</details>
