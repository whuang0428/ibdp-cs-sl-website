# DNS and Web Access

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define DNS
- explain why domain names are used
- describe how DNS resolves a domain name to an IP address
- explain what happens when a user accesses a website
- identify roles of browser, DNS server, web server, and protocols
- write step-by-step web access explanations

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Explaining domain name resolution and browser access |
| Connected units | A1 Computer Fundamentals, A3 Databases, A4 Machine Learning, Social Engineering Awareness |
| Exam relevance | Definitions, process explanation, comparison, security scenarios, network design questions |

::: tip Learning Focus
A2 questions often require students to explain **how data moves across networks** and how systems can be protected from threats.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| DNS | 域名系统 | System that maps domain names to IP addresses |
| Domain name | 域名 | Human-readable website name |
| IP address | IP地址 | Numeric address used to identify a device/server on a network |
| Browser | 浏览器 | Client application used to access websites |
| Web server | 网页服务器 | Server that stores and sends web pages |
| HTTP | 超文本传输协议 | Protocol used to transfer web pages |
| HTTPS | 安全HTTP | Secure version of HTTP using encryption |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

用户通常输入 domain name，例如 `example.com`，但网络设备使用 IP address 来定位服务器。

**DNS（Domain Name System）** 的作用是把 domain name 转换成 IP address。

访问网站的大致过程：

1. 用户在 browser 输入 domain name
2. browser / device 查询 DNS
3. DNS 返回对应 IP address
4. browser 向 web server 发送 HTTP/HTTPS request
5. web server 返回网页数据
6. browser 显示网页

考试中常问“how data is retrieved using web browser”，这个过程必须按顺序写。

</template>

<template #en>

### English Explanation

Users usually enter a domain name such as `example.com`, but network devices use IP addresses to locate servers.

**DNS** maps domain names to IP addresses.

General web access process:

1. user enters a domain name in the browser
2. browser/device queries DNS
3. DNS returns the matching IP address
4. browser sends an HTTP/HTTPS request to the web server
5. web server returns webpage data
6. browser displays the webpage

Exams often ask how data is retrieved using a web browser, so the process must be explained in order.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Opening a school website

| Step | Example |
|---|---|
| Domain entered | `school.edu` |
| DNS result | IP address of school web server |
| Request | browser sends HTTPS request |
| Server response | HTML/CSS/images sent back |
| Display | browser renders webpage |

---

## 6. Web Access Pattern

```text
Enter URL → DNS lookup → IP address returned → browser sends HTTP/HTTPS request → server responds → browser renders page
```

---

## 7. Technical Example

### Key roles

| Component | Role |
|---|---|
| Browser | client requesting webpage |
| DNS server | resolves domain to IP |
| Web server | stores and sends webpage data |
| IP address | identifies server location |
| HTTPS | secures web communication |

---

## 8. Explanation of the Example

DNS is like a directory, but avoid saying it stores every website in one place. DNS is a distributed system. For exam-level answers, focus on mapping domain names to IP addresses.

---

## 9. Step-by-step Process / Trace

| Step | Action |
|---|---|
| 1 | User types URL into browser |
| 2 | Browser checks cache or asks DNS server |
| 3 | DNS returns IP address |
| 4 | Browser opens connection to web server |
| 5 | Browser sends HTTP/HTTPS request |
| 6 | Server returns page resources |
| 7 | Browser renders webpage |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying DNS stores webpages | Web server stores pages; DNS resolves names | Separate DNS and web server roles |
| Forgetting IP address | DNS result is IP address | Mention domain to IP mapping |
| Ignoring browser as client | Browser sends request | Use client-server language |
| Saying HTTP encrypts by default | HTTPS is secure version | Use HTTPS for encrypted web traffic |
| Writing process out of order | Sequence matters | Use step-by-step structure |

---

## 11. Guided Practice

### Practice 1

What does DNS do?

<details><summary>Suggested Answer</summary>

DNS maps a domain name to its corresponding IP address.

</details>

### Practice 2

What is the role of the web server?

<details><summary>Suggested Answer</summary>

The web server stores webpage resources and sends them to the browser when requested.

</details>

---

## 12. Independent Practice

1. Explain web access in seven steps.
2. Explain why domain names are useful.
3. Compare HTTP and HTTPS.
4. Identify client and server in web browsing.

---

## 13. Exam-style Questions

### Question 1 [5 marks]

Describe what happens when a user enters a domain name into a web browser.

<details><summary>Mark Scheme Style Answer</summary>

The browser or device queries DNS to resolve the domain name. DNS returns the IP address of the web server. The browser sends an HTTP or HTTPS request to that IP address. The web server returns the requested webpage data and resources. The browser renders and displays the webpage.

</details>

### Question 2 [2 marks]

State the purpose of DNS.

<details><summary>Mark Scheme Style Answer</summary>

DNS maps human-readable domain names to IP addresses used by network devices.

</details>

---

## 14. Classroom Activity

### Activity: DNS Role-play

Students act as browser, DNS server, router, and web server. They pass request cards and response cards in order.

---

## 15. Homework

Write a step-by-step explanation of accessing an online learning website. Include DNS, IP address, browser, web server, HTTP/HTTPS, and rendering.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| DNS | Maps domain to IP |
| Domain name | Human-readable address |
| IP address | Network address |
| Browser | Client requesting webpage |
| Web server | Sends webpage data |
| Exam phrase | DNS resolves the domain name into an IP address so the browser can contact the correct web server. |
