# LAN and WAN

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define LAN and WAN
- compare LAN and WAN by scale, ownership, speed, and cost
- identify examples of LANs and WANs
- explain why organizations use both LAN and WAN
- choose suitable network type for a scenario
- write exam-style comparison answers

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A2 Networks |
| Label | SL Core |
| Main skill | Comparing local and wide area networks |
| Connected units | A1 Computer Fundamentals, A3 Databases, A4 Machine Learning, Social Engineering Awareness |
| Exam relevance | Definitions, process explanation, comparison, security scenarios, network design questions |

::: tip Learning Focus
A2 questions often require students to explain **how data moves across networks** and how systems can be protected from threats.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| LAN | 局域网 | A network over a small geographical area, often owned by one organization |
| WAN | 广域网 | A network over a large geographical area, often using third-party infrastructure |
| Geographical area | 地理范围 | The physical area covered by a network |
| Ownership | 所有权 | Who controls or owns the network infrastructure |
| Leased line | 租用线路 | Dedicated connection rented from a provider |
| Internet | 互联网 | A global network of interconnected networks |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**LAN（Local Area Network）** 覆盖较小地理范围，例如 classroom、school building、office 或 home。LAN 通常由一个人或一个 organization 管理。

**WAN（Wide Area Network）** 覆盖较大地理范围，例如连接不同城市、国家或 campus。WAN 通常使用第三方通信基础设施，例如 telecom provider。

比较 LAN 和 WAN 时，可以从以下角度写：

- geographical area
- ownership
- speed
- cost
- security/control
- reliability

</template>

<template #en>

### English Explanation

A **LAN** covers a small geographical area, such as a classroom, school building, office, or home. A LAN is usually managed by one person or one organization.

A **WAN** covers a large geographical area, such as connections between cities, countries, or campuses. A WAN often uses third-party communication infrastructure, such as a telecom provider.

When comparing LAN and WAN, consider:

- geographical area
- ownership
- speed
- cost
- security/control
- reliability

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: International School

| Need | Network Type |
|---|---|
| Connect computers inside one campus | LAN |
| Connect campuses in different cities | WAN |
| Connect to cloud services | WAN / Internet |
| Share printer in one building | LAN |

::: info Scenario Link
A school may use a LAN for local resources and a WAN or internet connection to communicate with external services.
:::

---

## 6. Comparison Pattern

```text
LAN → small area → usually privately owned/managed → local resource sharing
WAN → large area → often uses third-party infrastructure → connects distant sites
```

---

## 7. Technical Example

### LAN vs WAN table

| Feature | LAN | WAN |
|---|---|---|
| Area | small | large |
| Example | school building | connection between campuses |
| Ownership | often one organization | often uses telecom provider |
| Cost | lower for local setup | higher for long-distance links |
| Control | more direct control | less direct control |

---

## 8. Explanation of the Example

A LAN and WAN are not competing answers in every scenario. Many organizations use both. For example, each campus has a LAN, and the campuses are connected by a WAN.

---

## 9. Step-by-step Process / Trace

| Step | Scenario | Network type |
|---|---|---|
| 1 | Student prints in same building | LAN |
| 2 | Staff access school server in same campus | LAN |
| 3 | Branch office connects to head office | WAN |
| 4 | School accesses online exam portal | WAN/Internet |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Saying LAN means wireless only | LAN can be wired or wireless | LAN is about geographical area |
| Saying WAN is always the internet | The internet is an example of a WAN-like global network, but WAN can be private | Use scale and infrastructure |
| Only saying LAN is small and WAN is big | Answer may be too shallow | Add ownership, cost, control, examples |
| Confusing LAN with client-server | Different concepts | LAN is network scale; client-server is network model |
| Ignoring scenario | Choice depends on location and organization needs | Link comparison to use case |

---

## 11. Guided Practice

### Practice 1

A company has computers in one office building. LAN or WAN?

<details><summary>Suggested Answer</summary>

LAN, because the devices are connected over a small local area.

</details>

### Practice 2

A bank connects branches in different cities. LAN or WAN?

<details><summary>Suggested Answer</summary>

WAN, because it connects sites over a large geographical area.

</details>

---

## 12. Independent Practice

1. Compare LAN and WAN using four features.
2. Give two LAN examples and two WAN examples.
3. Explain why a company may need both LAN and WAN.
4. Explain one security issue in WAN communication.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

Compare a LAN and a WAN.

<details><summary>Mark Scheme Style Answer</summary>

A LAN covers a small geographical area such as a school or office and is usually owned or managed by one organization. A WAN covers a large geographical area such as between cities or countries and often uses third-party communication infrastructure. A LAN is usually easier to control locally, while a WAN may cost more and depend on external providers.

</details>

### Question 2 [3 marks]

A school has two campuses in different cities. Explain why a WAN may be needed.

<details><summary>Mark Scheme Style Answer</summary>

A WAN is needed because the campuses are far apart. It can connect the separate campus networks so staff and students can share data, communicate, and access centralized services across locations.

</details>

---

## 14. Classroom Activity

### Activity: LAN or WAN Scenario Sort

Students classify network scenarios as LAN, WAN, or both. They must justify using geographical area and ownership/control.

---

## 15. Homework

Create a comparison poster for LAN and WAN. Include definition, examples, ownership, speed/cost considerations, and one exam-style paragraph.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| LAN | Small geographical area |
| WAN | Large geographical area |
| Ownership | LAN often controlled by one organization |
| Infrastructure | WAN often uses third-party infrastructure |
| Exam phrase | A WAN is suitable because it connects geographically distant sites. |
