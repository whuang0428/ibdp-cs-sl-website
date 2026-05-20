$basePath = "docs\a2-networks"
New-Item -ItemType Directory -Force $basePath | Out-Null

$pages = @{
"index.md" = @'
# A2 Networks

## Unit Overview

This unit introduces how computers and devices communicate over networks.

Students will learn about network types, network devices, network models, data transmission, packet switching, DNS, web access, security, encryption, VPNs, and common network threats.

For this first framework version, each page gives a short learning structure. Later, each page can be expanded into a full teaching page with diagrams, packet-flow examples, exam-style questions, and classroom activities.

## Topics

| Topic | Main Focus | Label |
|---|---|---|
| Network Fundamentals | Understand why networks are used | SL Core |
| LAN and WAN | Compare local and wide area networks | SL Core |
| Network Devices | Understand routers, switches, firewalls, and access points | SL Core |
| Client-Server and Peer-to-Peer | Compare common network architectures | SL Core |
| TCP/IP Model | Understand layered network communication | SL Core |
| Packet Switching | Understand how data is split and routed | SL Core |
| DNS and Web Access | Understand how domain names and web requests work | SL Core |
| Wireless and Wired Transmission | Compare common transmission media | SL Core |
| Network Security | Understand threats and protection methods | SL Core |
| Encryption, VPN and NAT | Understand key network security and addressing concepts | SL Core |

## How to Study This Unit

1. Learn the key network vocabulary.
2. Understand how data moves through a network.
3. Practise explaining processes step by step.
4. Compare technologies using advantages and disadvantages.
5. Apply security ideas to realistic scenarios.

::: tip SL Core
A2 questions often use real-world scenarios such as schools, hospitals, homes, companies, or cloud services. Students should practise explaining networks in context.
:::
'@

"network-fundamentals.md" = @'
# Network Fundamentals

## 1. Learning Objectives

By the end of this page, students should be able to:

- define a computer network
- explain why networks are used
- identify advantages and disadvantages of networks
- apply network ideas to real-world examples

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding network purpose |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Network | A group of connected devices that can communicate and share resources |
| Node | A device connected to a network |
| Resource sharing | Sharing hardware, software, or data across a network |
| Communication | Sending and receiving data between devices |
| Bandwidth | The amount of data that can be transmitted in a given time |

## 4. Concept Explanation

A network allows devices to communicate and share resources.

Examples of shared resources include:

- files
- printers
- internet connection
- cloud services
- databases
- applications

Networks are useful, but they also create risks such as unauthorized access, malware spreading, and dependency on network availability.

## 5. Step-by-step Example

A school network may allow:

| Use | Example |
|---|---|
| Communication | Students access learning platforms |
| Resource sharing | Teachers print to a shared printer |
| Data access | Staff access student records |
| Internet access | Devices connect through the school router |

## 6. Visual Structure

::: info Network Purpose
Connect devices → share data → share resources → communicate → access services.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying a network is only the internet | Networks can be local or wide area |
| Ignoring security risks | Networks also introduce vulnerabilities |
| Confusing node and server | A node is any connected device |
| Only listing advantages | Exam questions may ask for disadvantages too |

## 8. Exam-style Question

A school connects its computers to a network.

**Explain two advantages of using a network in this school.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- students and staff can share files or resources
- printers and internet access can be shared
- data can be stored centrally and accessed by authorized users
- communication between users is easier

## 10. Quick Check

1. What is a network?
2. What is a node?
3. Give one advantage and one disadvantage of using a network.
'@

"lan-wan.md" = @'
# LAN and WAN

## 1. Learning Objectives

By the end of this page, students should be able to:

- define LAN
- define WAN
- compare LANs and WANs
- choose a suitable network type for a scenario

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Comparing network types |

## 3. Key Terms

| Term | Meaning |
|---|---|
| LAN | Local Area Network; a network over a small geographical area |
| WAN | Wide Area Network; a network over a large geographical area |
| Geographical area | The physical area covered by the network |
| Internet | A global network of networks |
| Private network | A network controlled by an organization or individual |

## 4. Concept Explanation

A LAN covers a small area, such as a home, classroom, or school building.

A WAN covers a large area, such as a city, country, or global organization.

| Feature | LAN | WAN |
|---|---|---|
| Area | Small | Large |
| Ownership | Usually owned by one organization/person | Often uses third-party infrastructure |
| Speed | Usually faster | Often slower than LAN |
| Cost | Usually lower | Usually higher |
| Example | School network | Bank branches connected across countries |

## 5. Step-by-step Example

Scenario: A school building with 50 computers.

Suitable network type: LAN

Reason:

- devices are in one local area
- the school can manage the network
- resources such as printers and files can be shared locally

## 6. Visual Structure

::: info LAN vs WAN
LAN → small area, local control, usually faster.  
WAN → large area, connects distant locations, often uses external providers.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying WAN means wireless area network | WAN means Wide Area Network |
| Thinking the internet is a LAN | The internet is a global WAN-like network |
| Only comparing size | Ownership, speed, and cost can also matter |
| Assuming all LANs are wired | LANs can use wired and wireless connections |

## 8. Exam-style Question

A company has offices in Tokyo and Melbourne and wants both offices to share data.

**Identify the suitable network type and justify your answer.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- a WAN is suitable
- the offices are geographically far apart
- a WAN can connect networks across large distances

## 10. Quick Check

1. What does LAN stand for?
2. What does WAN stand for?
3. Give one example of a LAN.
'@

"network-devices.md" = @'
# Network Devices

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify common network devices
- explain the role of routers, switches, firewalls, and access points
- distinguish between switching and routing
- apply device functions to network scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding network hardware |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Router | Connects different networks and forwards data between them |
| Switch | Connects devices within a LAN and forwards data to the correct device |
| Firewall | Monitors and filters network traffic based on rules |
| Wireless access point | Allows wireless devices to connect to a network |
| Modem | Converts signals for internet connection in some networks |

## 4. Concept Explanation

Network devices help data move correctly and securely.

| Device | Main Role |
|---|---|
| Router | Sends data between networks |
| Switch | Sends data within a LAN |
| Firewall | Blocks or allows traffic using rules |
| Wireless access point | Provides Wi-Fi access |
| Modem | Connects to an ISP using a suitable signal format |

## 5. Step-by-step Example

A hospital LAN connects to the internet.

Possible devices:

- switches connect hospital computers inside the LAN
- a router connects the LAN to the internet
- a firewall filters traffic
- wireless access points allow mobile devices to connect

## 6. Visual Structure

::: info Device Roles
Switch → inside a LAN  
Router → between networks  
Firewall → filters traffic  
Access point → wireless connection
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Confusing router and switch | They work at different network scopes |
| Saying firewall only blocks everything | Firewalls filter based on rules |
| Thinking Wi-Fi means internet | Wi-Fi is local wireless access |
| Ignoring the scenario | Different networks need different devices |

## 8. Exam-style Question

A school LAN needs to connect to the internet.

**State one network device used to connect the LAN to the internet and outline its role.** [2]

## 9. Mark Scheme Style Answer

Award marks for:

- router
- connects the LAN to another network / internet and forwards packets between networks

## 10. Quick Check

1. What does a switch do?
2. What does a router do?
3. What is the purpose of a firewall?
'@

"client-server-peer-to-peer.md" = @'
# Client-Server and Peer-to-Peer

## 1. Learning Objectives

By the end of this page, students should be able to:

- describe client-server networks
- describe peer-to-peer networks
- compare advantages and disadvantages
- choose a suitable architecture for a scenario

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Comparing network architecture |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Client | A device or program that requests a service |
| Server | A device or program that provides a service |
| Client-server | Network model where clients request services from servers |
| Peer-to-peer | Network model where devices share directly with each other |
| Centralized | Managed from a central point |

## 4. Concept Explanation

In a client-server network, clients request services from servers.

Examples:

- web browser requests a web page from a web server
- school computers access files from a file server
- email clients connect to mail servers

In a peer-to-peer network, devices communicate and share resources directly.

## 5. Step-by-step Example

School network:

| Role | Example |
|---|---|
| Client | Student computer |
| Server | File server storing student work |
| Service | File access, authentication, printing |

## 6. Visual Structure

::: info Network Architecture
Client-server → central servers provide services.  
Peer-to-peer → devices share resources directly.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying client-server means only one computer | Many clients can connect to one or more servers |
| Thinking peer-to-peer has no network | It is still a network |
| Ignoring management and security | Client-server is often easier to control centrally |
| Assuming one model is always better | It depends on the scenario |

## 8. Exam-style Question

A school wants centralized user accounts and file storage.

**Explain why a client-server network may be suitable.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- a server can store user accounts centrally
- files can be stored and backed up centrally
- access rights can be managed by administrators
- students can access services from client computers

## 10. Quick Check

1. What is a client?
2. What is a server?
3. Give one advantage of client-server networks.
'@

"tcp-ip-model.md" = @'
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
'@

"packet-switching.md" = @'
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
'@

"dns-web-access.md" = @'
# DNS and Web Access

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the role of DNS
- describe how a domain name is translated into an IP address
- outline the basic process of accessing a web page
- distinguish between domain names and IP addresses

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Understanding web communication |

## 3. Key Terms

| Term | Meaning |
|---|---|
| DNS | Domain Name System |
| Domain name | Human-readable website name |
| IP address | Numerical address used to identify a device on a network |
| Web server | Server that stores and delivers web pages |
| Browser | Application used to access web pages |
| HTTP/HTTPS | Protocols used for web communication |

## 4. Concept Explanation

Humans use domain names because they are easier to remember.

Computers use IP addresses to locate devices.

DNS translates domain names into IP addresses.

## 5. Step-by-step Example

Accessing a website:

1. User enters a domain name in the browser.
2. The browser asks DNS for the matching IP address.
3. DNS returns the IP address.
4. The browser sends a request to the web server.
5. The web server sends back the web page.
6. The browser displays the page.

## 6. Visual Structure

::: info Web Access Process
Domain name → DNS lookup → IP address → request web server → receive web page → browser displays page.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying DNS stores every web page | DNS maps domain names to IP addresses |
| Confusing domain name and IP address | They are different forms of addressing |
| Forgetting the web server | The page is delivered by a server |
| Thinking HTTPS and DNS are the same | They have different roles |

## 8. Exam-style Question

**Describe the role of a DNS server when a user accesses a website.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- DNS receives the domain name
- DNS finds the matching IP address
- the IP address is returned so the browser can contact the web server

## 10. Quick Check

1. What does DNS stand for?
2. Why are domain names used?
3. What does a web server do?
'@

"wired-wireless-transmission.md" = @'
# Wireless and Wired Transmission

## 1. Learning Objectives

By the end of this page, students should be able to:

- compare wired and wireless transmission
- identify common transmission media
- explain advantages and disadvantages of each method
- apply transmission choices to real-world scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Comparing transmission media |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Transmission medium | The path used to send data |
| Twisted-pair cable | Copper cable commonly used in LANs |
| Fibre-optic cable | Cable that transmits data using light |
| Wireless | Data transmission without physical cables |
| Interference | Disturbance that affects signal quality |
| Latency | Delay in data transmission |

## 4. Concept Explanation

Networks can use wired or wireless transmission.

| Method | Advantages | Disadvantages |
|---|---|---|
| Twisted-pair cable | Low cost, common | Limited distance, possible interference |
| Fibre-optic cable | High speed, long distance, low interference | More expensive, harder to install |
| Wireless | Convenient and flexible | Can be affected by interference and security risks |

## 5. Step-by-step Example

A hospital connects a router directly to an ISP.

Fibre-optic cable may be suitable because:

- it supports high bandwidth
- it can transmit over long distances
- it is less affected by electromagnetic interference

## 6. Visual Structure

::: info Transmission Choice
Need speed and long distance? Consider fibre.  
Need low-cost local cabling? Consider twisted-pair.  
Need mobility? Consider wireless.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying wireless is always faster | Wired connections may be faster and more stable |
| Ignoring interference | Wireless and copper cables can be affected |
| Confusing fibre with copper cable | Fibre uses light, not electrical signals |
| Only listing cost | Speed, security, distance, and reliability also matter |

## 8. Exam-style Question

**List three advantages of using fibre-optic cable instead of twisted-pair cable.** [3]

## 9. Mark Scheme Style Answer

Possible answers:

- higher bandwidth / faster data transmission
- longer transmission distance
- less affected by electromagnetic interference
- more secure because it is harder to tap
- lower signal attenuation over distance

## 10. Quick Check

1. What does fibre-optic cable use to transmit data?
2. Give one advantage of wireless transmission.
3. Give one disadvantage of wireless transmission.
'@

"network-security.md" = @'
# Network Security

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify common network threats
- explain methods used to protect networks
- distinguish between prevention and detection
- apply security methods to realistic scenarios

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Protecting networks |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Malware | Malicious software |
| Phishing | Tricking users into giving sensitive information |
| Firewall | System that filters network traffic |
| Authentication | Checking user identity |
| Access control | Limiting what users can access |
| Intrusion detection | Monitoring for suspicious activity |

## 4. Concept Explanation

Network security protects data, devices, and services.

Common threats include:

- malware
- phishing
- unauthorized access
- denial-of-service attacks
- data interception
- weak passwords

Common protection methods include:

- firewalls
- strong authentication
- access rights
- encryption
- security updates
- user training

## 5. Step-by-step Example

A school network may use:

| Protection | Purpose |
|---|---|
| Firewall | Filter traffic entering and leaving the network |
| User accounts | Identify users |
| Access rights | Control which files users can access |
| Backups | Recover data after loss |
| Training | Help users identify phishing |

## 6. Visual Structure

::: info Network Protection
Prevent attacks → detect suspicious activity → respond to incidents → recover data and services.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking one method is enough | Security needs multiple layers |
| Ignoring human users | Users can be targeted by phishing |
| Confusing firewall and antivirus | They protect in different ways |
| Only discussing attacks | Exam answers often need protection methods too |

## 8. Exam-style Question

A company network stores confidential customer data.

**Explain two methods that can be used to protect the network.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- a firewall can filter unauthorized traffic
- authentication can stop unknown users accessing the network
- access rights can limit users to required data only
- encryption can protect data during transmission
- staff training can reduce phishing risk

## 10. Quick Check

1. What is malware?
2. What is phishing?
3. Why are access rights important?
'@

"encryption-vpn-nat.md" = @'
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
'@
}

foreach ($file in $pages.Keys) {
    $fullPath = Join-Path $basePath $file
    Set-Content -Path $fullPath -Value $pages[$file] -Encoding UTF8
}
Write-Host "A2 Networks framework pages created successfully."
