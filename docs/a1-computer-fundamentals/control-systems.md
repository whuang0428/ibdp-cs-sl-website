# Control Systems

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define control system
- identify sensors, processors, and actuators
- explain input-process-output in a control system
- describe feedback
- distinguish monitoring and control
- apply control systems to real scenarios

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding automated monitoring and control |
| Connected units | B1 Computational Thinking, A2 Networks, A3 Databases, A4 Machine Learning |
| Exam relevance | Definitions, process explanation, comparison, scenario-based questions |

::: tip Learning Focus
A1 questions often ask students to explain **how a computer system works** and to apply technical vocabulary to a real scenario.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Control system | 控制系统 | A system that monitors and controls a process |
| Sensor | 传感器 | Device that detects data from the environment |
| Actuator | 执行器 | Device that causes physical action |
| Input | 输入 | Sensor data entering the system |
| Process | 处理 | Decision-making based on input |
| Output | 输出 | Signal or action produced |
| Feedback | 反馈 | Information used to adjust system behaviour |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Control system（控制系统）** 使用 sensors 收集环境数据，processor 根据规则进行判断，然后通过 actuators 产生物理动作。

常见例子：

- 自动门
- 温控系统
- 温室控制
- 洗衣机
- 交通灯

关键结构是：sensor input → processing → actuator output → feedback。

不要把所有自动系统都说成 AI。很多 control systems 只是根据规则运行。

</template>

<template #en>

### English Explanation

A **control system** uses sensors to collect environmental data, a processor to make decisions based on rules, and actuators to produce physical actions.

Common examples:

- automatic doors
- heating systems
- greenhouse control
- washing machines
- traffic lights

The key structure is: sensor input → processing → actuator output → feedback.

Do not call every automated system AI. Many control systems operate using simple rules.

</template>
</LangBlock>

---

## 5. Real-life Example

### Example: Greenhouse temperature control

| Component | Example |
|---|---|
| Sensor | temperature sensor |
| Processor | compares temperature to target |
| Actuator | fan or heater |
| Output | fan turns on/off |
| Feedback | new temperature is measured again |

---

## 6. Control System Pattern

```text
Sensor measures environment → processor compares with set value → actuator performs action → sensor checks again
```

---

## 7. Technical Example

### Pseudocode-style control logic

```text
INPUT temperature

IF temperature > targetTemperature THEN
    turn fan ON
ELSE
    turn fan OFF
END IF
```

---

## 8. Explanation of the Example

The system receives real-world data, processes it using a rule, and changes the physical environment. Feedback allows continuous adjustment.

---

## 9. Step-by-step Process / Trace

| Step | Action |
|---|---|
| 1 | Temperature sensor measures 32°C |
| 2 | Processor compares 32°C with target 25°C |
| 3 | 32°C is too high |
| 4 | Fan actuator turns on |
| 5 | Sensor keeps measuring temperature |
| 6 | Fan turns off when temperature returns to target range |

---

## 10. Common Mistakes

| Mistake | Why it is a problem | Better habit |
|---|---|---|
| Confusing sensor and actuator | Sensors detect; actuators act | Use detect vs act |
| Forgetting processor decision | Control requires processing | Mention comparison with set value |
| Ignoring feedback | Many systems adjust repeatedly | Explain continuous monitoring |
| Calling every control system AI | Rule-based control is not necessarily AI | Say automated rule-based system when appropriate |
| No scenario detail | Answers become vague | Name specific sensor and actuator |

---

## 11. Guided Practice

### Practice 1

In an automatic door, identify sensor and actuator.

<details><summary>Suggested Answer</summary>

Sensor: motion/proximity sensor. Actuator: motor that opens the door.

</details>

### Practice 2

Why is feedback useful?

<details><summary>Suggested Answer</summary>

Feedback allows the system to monitor changes and adjust output based on the latest sensor data.

</details>

---

## 12. Independent Practice

1. Explain a heating control system.
2. Identify sensors and actuators in a washing machine.
3. Explain how feedback works in greenhouse control.
4. Compare monitoring-only and control systems.

---

## 13. Exam-style Questions

### Question 1 [4 marks]

A greenhouse uses a temperature sensor and fan. Describe how the system controls temperature.

<details><summary>Mark Scheme Style Answer</summary>

The temperature sensor measures the current temperature. The processor compares it with a set target value. If the temperature is too high, the fan actuator is switched on. The sensor continues to measure temperature as feedback, allowing the system to turn the fan off when appropriate.

</details>

---

## 14. Classroom Activity

### Activity: Control System Design

Groups design a control system for one scenario: fish tank, greenhouse, automatic door, smart home lighting. They identify sensor, processing rule, actuator, and feedback.

---

## 15. Homework

Design a control system for a smart classroom. Include at least two sensors, two actuators, and step-by-step control logic.

---

## 16. One-page Revision Summary

| Point | Summary |
|---|---|
| Sensor | Detects environmental data |
| Actuator | Performs physical action |
| Feedback | New data used for adjustment |
| Control system | Monitors and controls process |
| Exam phrase | The processor compares sensor data with a set value and sends a signal to the actuator. |
