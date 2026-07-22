# Core Vocabulary CN-EN

## Page map

- [Lesson goals](#1-lesson-goals)
- [How to use this page](#2-how-to-use-this-page)
- [Bilingual explanation](#3-bilingual-explanation)
- [Core answer formula](#4-core-answer-formula)

---

## 1. Lesson Goals

By the end of this page, students should be able to:

- recognize important IBDP Computer Science SL vocabulary
- translate key terms between Chinese and English
- write clear definitions for common CS terms
- use mark scheme-style phrases in exam answers
- distinguish commonly confused terms
- connect vocabulary to syllabus modules
- revise vocabulary by topic rather than by random word lists
- improve vague answers using precise technical wording
- prepare for written questions, IA documentation, and programming explanations

::: tip Learning Focus
Do not only memorize translations. For each term, learn the **English term**, **Chinese meaning**, **definition**, and **exam-style sentence**.
:::

---

## 2. How to Use This Page

Use this pattern for each term:

```text
English term → 中文意思 → simple definition → exam sentence → example
```

### Example

```text
Validation
数据验证
Checking whether input data follows required rules before it is accepted.
Validation reduces input errors by rejecting data that does not match the required format or range.
Example: checking that a mark is between 0 and 100.
```

This helps students move from understanding the idea to writing a strong exam answer.

---

## 3. Bilingual Explanation

<LangBlock>
<template #cn>

### 中文说明

这一页不是普通单词表，而是 CS 考试和写作常用词汇表。

很多学生会出现这个问题：

```text
中文概念懂
英文词不会写
英文定义写得太模糊
考试答案不像 mark scheme
```

比如：

```text
validation = 数据验证
verification = 数据核对 / 验证准确性
```

这两个词很容易混。  
validation 不是“证明数据是真的”，它只是检查输入是否符合规则。  
verification 更强调和原始来源核对是否输入准确。

所以复习时不要只背：

```text
validation = 验证
```

而要背成：

```text
Validation checks whether input data is reasonable or follows required rules before it is accepted.
```

这样考试时才能写出更准确的答案。

</template>

<template #en>

### English Explanation

This page is not just a normal word list. It is a Computer Science exam and writing vocabulary list.

Many students have this problem:

```text
they understand the concept in Chinese
but do not know the English term
or write definitions too vaguely
or do not use mark scheme-style wording
```

For example:

```text
validation = checking data rules
verification = checking accuracy against source
```

These two terms are often confused.  
Validation does not prove that data is true. It checks whether input follows rules.  
Verification focuses more on checking whether data was entered or copied accurately from the original source.

So do not only memorize:

```text
validation = 验证
```

Memorize a full exam sentence:

```text
Validation checks whether input data is reasonable or follows required rules before it is accepted.
```

This helps students write more accurate exam answers.

</template>
</LangBlock>

---

## 4. Core Answer Formula

For most vocabulary questions, use:

```text
term + meaning + purpose/effect + scenario link
```

### Example

Weak:

```text
A firewall protects the computer.
```

Strong:

```text
A firewall monitors incoming and outgoing network traffic and blocks traffic that does not match security rules, reducing unauthorized access to the network.
```

---

# A1 Computer Fundamentals

## 5. Hardware and Software

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Hardware | 硬件 | physical parts of a computer system | Hardware refers to the physical components of a computer system. |
| Software | 软件 | programs/instructions run by hardware | Software is a set of instructions that tells hardware what to do. |
| Input device | 输入设备 | device used to enter data | An input device allows data or commands to be entered into a computer. |
| Output device | 输出设备 | device used to present results | An output device presents processed data to the user. |
| Processor / CPU | 处理器 / 中央处理器 | executes instructions | The CPU fetches, decodes, and executes instructions. |
| Memory | 内存 | stores data/instructions currently used | Memory stores data and instructions needed during processing. |
| Storage | 存储 | keeps data long-term | Secondary storage keeps data even when power is off. |
| Peripheral | 外围设备 | external device connected to computer | A peripheral is an external device connected to a computer system. |
| Embedded system | 嵌入式系统 | computer built into a larger device | An embedded system is a dedicated computer system inside a larger device. |
| Firmware | 固件 | permanent/low-level software in hardware | Firmware is software stored in hardware that controls basic device functions. |

---

## 6. CPU and Memory

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Fetch-decode-execute cycle | 取指-译码-执行周期 | CPU instruction cycle | The CPU repeatedly fetches instructions, decodes them, and executes them. |
| Control unit | 控制单元 | coordinates CPU operations | The control unit directs operations inside the CPU. |
| ALU | 算术逻辑单元 | performs arithmetic and logic | The ALU performs arithmetic and logical operations. |
| Register | 寄存器 | small fast CPU storage | Registers are small high-speed storage locations inside the CPU. |
| Cache | 高速缓存 | fast memory near CPU | Cache stores frequently used data to reduce access time. |
| RAM | 随机存取存储器 | volatile working memory | RAM temporarily stores data and instructions currently in use. |
| ROM | 只读存储器 | non-volatile memory | ROM stores permanent instructions that are not lost when power is off. |
| Volatile memory | 易失性存储器 | loses data without power | Volatile memory loses its contents when power is removed. |
| Non-volatile memory | 非易失性存储器 | keeps data without power | Non-volatile memory keeps data even when power is turned off. |
| Clock speed | 时钟速度 | CPU cycles per second | Clock speed affects how many cycles the CPU can perform per second. |

---

## 7. Data Representation

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Binary | 二进制 | base-2 number system | Binary uses only 0 and 1 to represent data. |
| Denary / Decimal | 十进制 | base-10 number system | Denary uses digits 0 to 9. |
| Bit | 位 | single 0 or 1 | A bit is the smallest unit of data, either 0 or 1. |
| Byte | 字节 | 8 bits | A byte is a group of 8 bits. |
| Character set | 字符集 | maps characters to binary codes | A character set assigns binary codes to characters. |
| ASCII | ASCII 编码 | character encoding standard | ASCII represents characters using numeric codes. |
| Unicode | Unicode 编码 | larger character set | Unicode supports characters from many languages. |
| Pixel | 像素 | smallest image element | A pixel is the smallest addressable element in a digital image. |
| Resolution | 分辨率 | number of pixels | Resolution is the number of pixels in an image or display. |
| Colour depth | 色深 | bits used for each pixel | Colour depth determines the number of colours available for each pixel. |
| Sampling | 采样 | measuring sound at intervals | Sampling records sound amplitude at regular intervals. |
| Sample rate | 采样率 | samples per second | Sample rate is the number of sound samples taken per second. |

---

## 8. Logic Gates

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Logic gate | 逻辑门 | circuit performing logic operation | A logic gate performs a Boolean operation on one or more inputs. |
| AND gate | 与门 | output 1 if all inputs 1 | AND outputs 1 only when all inputs are 1. |
| OR gate | 或门 | output 1 if at least one input 1 | OR outputs 1 if at least one input is 1. |
| NOT gate | 非门 | reverses input | NOT outputs the opposite of the input. |
| XOR gate | 异或门 | output 1 if inputs are different | XOR outputs 1 when the inputs are different. |
| NAND gate | 与非门 | opposite of AND | NAND outputs the opposite of AND. |
| NOR gate | 或非门 | opposite of OR | NOR outputs the opposite of OR. |
| Truth table | 真值表 | table of all input/output combinations | A truth table shows every possible input combination and the resulting output. |
| Boolean expression | 布尔表达式 | logic expression using true/false | A Boolean expression represents logic using operators such as AND, OR, and NOT. |

---

# A2 Networks

## 9. Network Basics

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Network | 网络 | connected devices sharing data/resources | A network connects devices so they can share data and resources. |
| LAN | 局域网 | network in small area | A LAN covers a small geographical area such as a school or home. |
| WAN | 广域网 | network over large area | A WAN connects networks over a large geographical area. |
| Client | 客户端 | requests services/resources | A client requests services or resources from a server. |
| Server | 服务器 | provides services/resources | A server provides services or resources to clients. |
| Router | 路由器 | forwards data between networks | A router forwards packets between networks. |
| Switch | 交换机 | connects devices within a LAN | A switch forwards data to the correct device within a LAN. |
| Access point | 无线接入点 | allows wireless connection | A wireless access point allows devices to connect to a network wirelessly. |
| Bandwidth | 带宽 | data transfer capacity | Bandwidth is the maximum amount of data that can be transmitted per second. |
| Latency | 延迟 | delay in transmission | Latency is the time delay before data begins to transfer or is received. |

---

## 10. Internet and Protocols

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Internet | 互联网 | global network of networks | The internet is a global network of interconnected networks. |
| IP address | IP 地址 | identifies device on network | An IP address identifies a device on a network. |
| MAC address | MAC 地址 | hardware network address | A MAC address is a unique hardware address assigned to a network interface. |
| Packet | 数据包 | small unit of transmitted data | Data is split into packets for transmission across a network. |
| Packet switching | 分组交换 | sending data as packets | Packet switching sends data in separate packets that may take different routes. |
| Protocol | 协议 | rules for communication | A protocol is a set of rules for data communication. |
| TCP/IP | TCP/IP 协议 | internet communication protocol suite | TCP/IP defines how data is addressed, transmitted, and received over networks. |
| HTTP | 超文本传输协议 | web page transfer protocol | HTTP is used to transfer web pages and web resources. |
| HTTPS | 安全超文本传输协议 | encrypted HTTP | HTTPS uses encryption to secure data sent between browser and server. |
| DNS | 域名系统 | converts domain to IP address | DNS translates domain names into IP addresses. |
| URL | 统一资源定位符 | web address | A URL identifies the location of a web resource. |

---

## 11. Network Security

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Cybersecurity | 网络安全 | protection of systems/data/networks | Cybersecurity protects systems, networks, and data from unauthorized access or attack. |
| Confidentiality | 机密性 | only authorized access | Confidentiality ensures data is only accessed by authorized users. |
| Integrity | 完整性 | data remains accurate/unchanged | Integrity ensures data is not changed without authorization. |
| Availability | 可用性 | systems/data available when needed | Availability ensures systems and data can be accessed when needed. |
| Firewall | 防火墙 | filters network traffic | A firewall filters incoming and outgoing traffic based on security rules. |
| Encryption | 加密 | converts plaintext to ciphertext | Encryption converts readable data into unreadable ciphertext using a key. |
| Decryption | 解密 | converts ciphertext back | Decryption converts ciphertext back into readable plaintext using a key. |
| Authentication | 身份认证 | checks identity | Authentication verifies the identity of a user or device. |
| Authorization | 授权 | checks permission | Authorization determines what an authenticated user is allowed to access. |
| Malware | 恶意软件 | harmful software | Malware is software designed to damage, disrupt, or gain unauthorized access. |
| Phishing | 网络钓鱼 | deceptive message attack | Phishing uses deceptive messages to trick users into revealing information or taking unsafe action. |
| Social engineering | 社会工程学 | manipulating people | Social engineering manipulates people into revealing information or bypassing security. |
| MFA | 多因素认证 | more than one authentication factor | MFA requires more than one factor to verify identity. |
| Access control | 访问控制 | restricts access | Access control limits access to data, systems, or physical areas. |

---

# A3 Databases

## 12. Database Fundamentals

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Database | 数据库 | organized collection of data | A database is an organized collection of related data. |
| DBMS | 数据库管理系统 | software managing database | A DBMS is software used to create, manage, and query databases. |
| Table | 表 | stores related records | A table stores data about one type of entity in rows and columns. |
| Record | 记录 | one row in table | A record is one complete set of data about one item or entity. |
| Field | 字段 | one column/attribute | A field stores one type of data for each record. |
| Entity | 实体 | object represented in database | An entity is something about which data is stored. |
| Attribute | 属性 | property of an entity | An attribute is a characteristic or property of an entity. |
| Data type | 数据类型 | kind of data stored | A data type defines the kind of data a field can store. |
| Query | 查询 | request for data | A query retrieves or manipulates data from a database. |
| Form | 表单 | interface for data entry | A form provides a user-friendly way to enter or edit data. |
| Report | 报表 | formatted output | A report presents database information in a structured format. |

---

## 13. Keys and Relationships

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Primary key | 主键 | uniquely identifies record | A primary key uniquely identifies each record in a table. |
| Foreign key | 外键 | links to primary key in another table | A foreign key creates a relationship by referencing a primary key in another table. |
| Composite key | 复合键 | multiple fields as key | A composite key uses more than one field to uniquely identify a record. |
| Relationship | 关系 | link between tables | A relationship links data stored in different tables. |
| One-to-one | 一对一 | one record linked to one record | In a one-to-one relationship, one record in a table links to one record in another table. |
| One-to-many | 一对多 | one record linked to many | In a one-to-many relationship, one record links to multiple records in another table. |
| Many-to-many | 多对多 | many linked to many | A many-to-many relationship is usually resolved using a junction table. |
| Referential integrity | 参照完整性 | valid links between tables | Referential integrity ensures foreign keys refer to valid primary keys. |
| Redundancy | 冗余 | unnecessary repeated data | Data redundancy means the same data is stored unnecessarily in multiple places. |
| Inconsistency | 不一致 | conflicting data values | Data inconsistency occurs when duplicated data has different values. |

---

## 14. SQL and Normalization

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| SQL | 结构化查询语言 | database query language | SQL is used to query and manage relational databases. |
| SELECT | 选择查询 | choose fields to display | SELECT specifies which fields are returned in a query. |
| FROM | 从哪个表 | specifies table | FROM specifies the table being queried. |
| WHERE | 条件 | filters records | WHERE filters records based on a condition. |
| ORDER BY | 排序 | sorts results | ORDER BY sorts query results by one or more fields. |
| INSERT | 插入 | add new record | INSERT adds new data to a table. |
| UPDATE | 更新 | modify existing data | UPDATE changes existing data in a table. |
| DELETE | 删除 | remove data | DELETE removes records from a table. |
| Normalization | 规范化 | organizing data to reduce redundancy | Normalization organizes tables to reduce redundancy and improve consistency. |
| First normal form | 第一范式 | no repeating groups | First normal form removes repeating groups and ensures fields contain atomic values. |
| Transaction | 事务 | group of database operations | A transaction is a group of operations treated as a single unit. |
| Backup | 备份 | copy for recovery | A backup is a copy of data that can be restored after loss or damage. |

---

# A4 Machine Learning

## 15. Machine Learning Basics

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Artificial intelligence | 人工智能 | systems performing intelligent tasks | AI refers to systems that perform tasks normally requiring human intelligence. |
| Machine learning | 机器学习 | model learns patterns from data | Machine learning allows systems to learn patterns from data rather than being explicitly programmed for every rule. |
| Model | 模型 | trained system making predictions | A model is trained on data and used to make predictions or classifications. |
| Dataset | 数据集 | collection of data examples | A dataset is a collection of examples used for training, validation, or testing. |
| Data point | 数据点 | one example/item of data | A data point is one individual example in a dataset. |
| Feature | 特征 | input variable | A feature is an input variable used by a machine learning model. |
| Label | 标签 | known output/category | A label is the known output or category used in supervised learning. |
| Training | 训练 | model learns from data | Training is the process where a model learns patterns from training data. |
| Testing | 测试 | check model performance | Testing checks how well the trained model performs on unseen data. |
| Validation | 验证集调参 | tuning/checking model during development | Validation data is used to tune or compare models during development. |
| Prediction | 预测 | model output | A prediction is the output produced by a trained model. |

---

## 16. Types and Evaluation

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Supervised learning | 监督学习 | learns from labelled data | Supervised learning trains a model using labelled examples. |
| Unsupervised learning | 无监督学习 | finds patterns without labels | Unsupervised learning finds patterns or groups in unlabelled data. |
| Classification | 分类 | predicts category | Classification predicts a discrete category or class. |
| Regression | 回归 | predicts number | Regression predicts a continuous numerical value. |
| Clustering | 聚类 | groups similar data | Clustering groups similar data points without predefined labels. |
| Accuracy | 准确率 | proportion correct | Accuracy measures the proportion of correct predictions. |
| Precision | 精确率 | correct positive predictions proportion | Precision measures how many predicted positives are actually positive. |
| Recall | 召回率 | found actual positives proportion | Recall measures how many actual positives were correctly identified. |
| Overfitting | 过拟合 | too fitted to training data | Overfitting occurs when a model performs well on training data but poorly on new data. |
| Underfitting | 欠拟合 | too simple to capture patterns | Underfitting occurs when a model is too simple to learn important patterns. |
| Bias | 偏差 / 偏见 | unfair or systematic error | Bias can cause unfair or inaccurate model outcomes. |
| Training data | 训练数据 | data used to train model | Training data is used to build the model. |
| Test data | 测试数据 | data used to assess model | Test data is used to evaluate performance on unseen examples. |

---

# B1 Computational Thinking

## 17. Problem Solving and Algorithms

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Computational thinking | 计算思维 | solving problems using CS ideas | Computational thinking uses concepts such as decomposition, abstraction, pattern recognition, and algorithms to solve problems. |
| Decomposition | 分解 | breaking problem into parts | Decomposition breaks a complex problem into smaller manageable parts. |
| Abstraction | 抽象 | removing unnecessary detail | Abstraction focuses on important details and ignores irrelevant information. |
| Pattern recognition | 模式识别 | finding similarities | Pattern recognition identifies similarities or repeated structures in problems. |
| Algorithm | 算法 | step-by-step method | An algorithm is a step-by-step method for solving a problem. |
| Sequence | 顺序结构 | steps in order | Sequence means instructions are executed in order. |
| Selection | 选择结构 | decision / if | Selection chooses different actions based on a condition. |
| Iteration | 迭代 / 循环 | repetition | Iteration repeats instructions while or until a condition is met. |
| Condition | 条件 | true/false expression | A condition is an expression that evaluates to true or false. |
| Trace table | 跟踪表 | records variable changes | A trace table records the values of variables as an algorithm runs. |
| Flowchart | 流程图 | diagram of algorithm | A flowchart represents an algorithm using standard symbols. |
| Pseudocode | 伪代码 | language-independent algorithm | Pseudocode describes an algorithm in a structured but language-independent way. |

---

## 18. Algorithm Quality

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Efficiency | 效率 | resource/time use | Efficiency describes how well an algorithm uses time or memory. |
| Correctness | 正确性 | produces expected output | Correctness means an algorithm gives the expected result for valid inputs. |
| Robustness | 健壮性 | handles errors/unexpected input | Robustness is the ability to handle invalid or unexpected input without failing. |
| Readability | 可读性 | easy to understand | Readability makes code or algorithms easier to understand and maintain. |
| Maintainability | 可维护性 | easy to modify/fix | Maintainability means code can be updated or fixed easily. |
| Testing | 测试 | checking expected vs actual | Testing checks whether actual results match expected results. |
| Dry run | 手动运行 | manually tracing algorithm | A dry run manually follows an algorithm to check its behaviour. |
| Boundary case | 边界情况 | value at edge of range | Boundary cases test values at the edge of valid ranges. |
| Error | 错误 | problem in program/logic | An error causes incorrect behaviour or prevents execution. |
| Debugging | 调试 | finding and fixing errors | Debugging is the process of finding and correcting errors. |

---

# B2 Programming

## 19. Programming Basics

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Program | 程序 | set of instructions | A program is a set of instructions executed by a computer. |
| Variable | 变量 | named value that can change | A variable stores a value that may change during program execution. |
| Constant | 常量 | named value that does not change | A constant stores a value that should not change while the program runs. |
| Data type | 数据类型 | kind of value | A data type defines what kind of value can be stored and what operations are allowed. |
| Integer | 整数 | whole number | An integer stores whole numbers. |
| Real / Float | 实数 / 浮点数 | decimal number | A real or float stores numbers with decimal points. |
| Boolean | 布尔值 | true/false value | A Boolean stores either true or false. |
| String | 字符串 | text | A string stores a sequence of characters. |
| Character | 字符 | single symbol | A character stores one letter, digit, or symbol. |
| Assignment | 赋值 | store value in variable | Assignment gives a value to a variable. |
| Expression | 表达式 | combination producing value | An expression combines values, variables, and operators to produce a result. |
| Operator | 运算符 | symbol performing operation | An operator performs an operation such as addition or comparison. |

---

## 20. Control Structures

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| If statement | if 条件语句 | selection structure | An if statement executes code only if a condition is true. |
| Else | 否则 | alternative branch | Else provides an alternative action when the if condition is false. |
| Switch / case | 多分支选择 | selects from multiple cases | A switch statement chooses a branch based on a value. |
| For loop | for 循环 | counted loop | A for loop repeats instructions a known number of times. |
| While loop | while 循环 | condition-controlled loop | A while loop repeats while a condition remains true. |
| Do while loop | do while 循环 | runs at least once | A do while loop executes once before checking the condition. |
| Nested loop | 嵌套循环 | loop inside loop | A nested loop is a loop placed inside another loop. |
| Break | 跳出循环 | exits loop/switch | Break exits the nearest loop or switch. |
| Continue | 跳过本次循环 | skips to next iteration | Continue skips the rest of the current loop iteration. |
| Infinite loop | 无限循环 | loop never ends | An infinite loop occurs when the loop condition never becomes false. |

---

## 21. Data Structures and Modular Programming

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Array | 数组 | fixed-size indexed collection | An array stores multiple values of the same type using indexes. |
| List | 列表 | ordered collection | A list stores ordered items and may allow dynamic size depending on language. |
| Index | 索引 | position in collection | An index identifies the position of an element in an array or list. |
| Element | 元素 | one item in collection | An element is one value stored in an array or list. |
| 2D array | 二维数组 | table-like array | A 2D array stores data in rows and columns. |
| Function | 函数 | subprogram returning value | A function is a reusable block of code that returns a value. |
| Procedure | 过程 | subprogram not returning value | A procedure is a reusable block of code that performs a task without returning a value. |
| Parameter | 参数 | input to subprogram | A parameter passes information into a function or procedure. |
| Argument | 实参 | actual value passed | An argument is the actual value supplied to a parameter. |
| Return value | 返回值 | output from function | A return value is the result sent back by a function. |
| Scope | 作用域 | where variable can be accessed | Scope defines where a variable can be used in a program. |
| Local variable | 局部变量 | variable inside subprogram/block | A local variable can only be accessed within its defined block or subprogram. |
| Global variable | 全局变量 | variable accessible widely | A global variable can be accessed from different parts of a program. |

---

## 22. Errors and Testing

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Syntax error | 语法错误 | breaks language rules | A syntax error occurs when code breaks the grammar rules of the programming language. |
| Logic error | 逻辑错误 | runs but wrong result | A logic error occurs when a program runs but produces an incorrect result. |
| Runtime error | 运行时错误 | error while program runs | A runtime error occurs while the program is executing. |
| Exception | 异常 | event disrupting normal flow | An exception is an unexpected event that disrupts normal program execution. |
| Exception handling | 异常处理 | handling runtime problems | Exception handling allows a program to respond to errors without crashing. |
| Test data | 测试数据 | input used for testing | Test data is used to check whether a program behaves as expected. |
| Normal data | 正常数据 | typical valid input | Normal data is valid input that the system should accept. |
| Boundary data | 边界数据 | edge value | Boundary data tests values at the edge of a valid range. |
| Invalid data | 无效数据 | input that should be rejected | Invalid data should be rejected or handled safely. |
| Expected result | 预期结果 | what should happen | The expected result is what should happen if the system works correctly. |
| Actual result | 实际结果 | what happened | The actual result is what happened when the test was run. |

---

# IA and Exam Writing Vocabulary

## 23. IA Vocabulary

| English Term | 中文 | Simple Meaning | Exam-style Phrase |
|---|---|---|---|
| Client | 客户 / 委托人 | person/group with problem | The client is the person or group that needs the solution. |
| User | 用户 | person using product | The user is the person who interacts with the final product. |
| Requirement | 需求 | what system must do | A requirement describes what the client or user needs the system to do. |
| Success criterion | 成功标准 | measurable success condition | A success criterion is a measurable condition used to judge whether the product is successful. |
| Design | 设计 | plan before building | Design explains how the product will work before development. |
| Development | 开发 | building product | Development documents how the product was built. |
| Testing | 测试 | checking product works | Testing checks whether actual results match expected results. |
| Evaluation | 评价 | judging success | Evaluation judges the final product against success criteria. |
| Limitation | 局限 | weakness or missing feature | A limitation is a remaining weakness or restriction in the final product. |
| Improvement | 改进 | future change | An improvement is a realistic future change that addresses a limitation. |
| Evidence | 证据 | proof/support | Evidence supports claims made in the IA documentation. |
| Feedback | 反馈 | user/client comments | Feedback helps judge whether the product meets user needs. |

---

## 24. Exam Writing Connectors

| Purpose | Useful English Phrases |
|---|---|
| Give reason | because, since, as a result |
| Show effect | therefore, so, this means that |
| Compare | both, whereas, while, however |
| Add point | also, another reason is, in addition |
| Give example | for example, such as, this could include |
| Show limitation | however, although, a limitation is |
| Evaluate | overall, this is suitable because, this may not be suitable because |
| Scenario link | in this school, for this user, in this database, for this network |
| Avoid overclaim | reduces the risk of, helps to, may prevent, makes it harder to |

### Good Habit

Avoid absolute claims unless they are really true.

Weak:

```text
A firewall stops all attacks.
```

Better:

```text
A firewall reduces unauthorized access by blocking traffic that does not match security rules.
```

---

# Confusing Terms

## 25. Common Confusing Pair Table

| Pair | Difference |
|---|---|
| Validation vs verification | validation checks data rules; verification checks accuracy against source |
| Authentication vs authorization | authentication checks identity; authorization checks permission |
| Encryption vs hashing | encryption is reversible with key; hashing is one-way |
| RAM vs storage | RAM is volatile working memory; storage is non-volatile long-term storage |
| Compiler vs interpreter | compiler translates whole program; interpreter translates/executes line by line |
| Primary key vs foreign key | primary key uniquely identifies a record; foreign key links to another table |
| Classification vs regression | classification predicts categories; regression predicts numerical values |
| Training data vs test data | training data builds model; test data evaluates model |
| Syntax error vs logic error | syntax error breaks grammar rules; logic error runs but gives wrong output |
| Data vs information | data is raw facts; information is processed data with meaning |
| Internet vs World Wide Web | internet is network infrastructure; web is a service using the internet |
| Backup vs archive | backup is for recovery; archive is for long-term storage/reference |
| Privacy vs security | privacy controls personal data use; security protects systems/data from threats |

---

## 26. Quick Definition Bank

### A1

```text
Hardware: physical components of a computer system.
Software: programs that tell hardware what to do.
RAM: volatile memory storing data currently used by the CPU.
ROM: non-volatile memory storing permanent instructions.
Binary: base-2 number system using 0 and 1.
```

### A2

```text
Network: connected devices that share data and resources.
Protocol: rules for communication between devices.
Packet: small unit of data transmitted across a network.
Encryption: converting plaintext into ciphertext using a key.
Firewall: system that filters network traffic based on rules.
```

### A3

```text
Database: organized collection of related data.
Table: database structure storing records in rows and fields in columns.
Primary key: field that uniquely identifies each record.
Foreign key: field that links to a primary key in another table.
Normalization: organizing data to reduce redundancy and improve consistency.
```

### A4

```text
Machine learning: systems learning patterns from data.
Feature: input variable used by a model.
Label: known output used in supervised learning.
Classification: predicting categories.
Regression: predicting numerical values.
```

### B1/B2

```text
Algorithm: step-by-step method for solving a problem.
Decomposition: breaking a problem into smaller parts.
Abstraction: focusing on important details and ignoring unnecessary details.
Variable: named storage location for a value that may change.
Function: reusable block of code that returns a value.
```

---

## 27. Weak to Strong Vocabulary Answers

### Example 1

Weak:

```text
Validation makes sure data is correct.
```

Strong:

```text
Validation checks whether input data is reasonable or follows required rules before it is accepted.
```

---

### Example 2

Weak:

```text
A database stores things.
```

Strong:

```text
A database is an organized collection of related data that can be searched, updated, and managed efficiently.
```

---

### Example 3

Weak:

```text
Machine learning is when AI learns.
```

Strong:

```text
Machine learning allows a system to learn patterns from data and use those patterns to make predictions or classifications.
```

---

### Example 4

Weak:

```text
A primary key is an ID.
```

Strong:

```text
A primary key is a field that uniquely identifies each record in a table.
```

---

### Example 5

Weak:

```text
Encryption makes data safe.
```

Strong:

```text
Encryption converts plaintext into ciphertext using a key, so unauthorized users cannot understand the data if it is intercepted.
```

---

## 28. Independent Practice

### Question 1

Write definitions for these terms:

```text
algorithm
database
encryption
validation
machine learning
primary key
packet
RAM
function
trace table
```

### Question 2

Translate into English:

```text
主键
外键
数据验证
身份认证
授权
分解
抽象
训练数据
过拟合
异常处理
```

### Question 3

Distinguish these pairs:

```text
validation vs verification
authentication vs authorization
primary key vs foreign key
classification vs regression
RAM vs storage
```

### Question 4

Upgrade these weak answers:

```text
A router sends stuff.
SQL is database.
RAM saves things.
Testing checks code.
A model is smart.
```

### Question 5

For each topic, write three exam-style sentences:

```text
A1 Computer Fundamentals
A2 Networks
A3 Databases
A4 Machine Learning
B1 Computational Thinking
B2 Programming
```

---

## 29. Practice task
### Activity 1: CN to EN Fast Recall

Students translate terms quickly:

```text
算法 → algorithm
主键 → primary key
网络钓鱼 → phishing
过拟合 → overfitting
变量 → variable
```

Then they must write one full sentence using each English term.

---

### Activity 2: Definition Upgrade

Students improve weak definitions into mark scheme-style definitions.

Example:

```text
Weak: A firewall protects.
Strong: A firewall filters incoming and outgoing network traffic based on security rules.
```

---

### Activity 3: Confusing Pair Explanation

Students choose one pair and explain:

```text
term 1 meaning
term 2 meaning
main difference
one example for each
```

---

## 30. Independent practice
### Independent practice part A

Create a personal vocabulary table with:

```text
English term
Chinese meaning
definition
example
exam sentence
```

Use at least 30 terms.

### Independent practice part B

Choose 10 confusing pairs and write the difference in one sentence each.

### Independent practice part C

Rewrite these vague answers:

```text
Encryption protects data.
A database is useful.
An algorithm is code.
A model learns from data.
A firewall stops hackers.
```

### Independent practice part D

Answer:

```text
1. Why should students learn exam-style sentences, not only translations?
2. Why is validation not the same as verification?
3. Why is authorization not the same as authentication?
4. Why should answers avoid overclaiming?
5. Why does precise vocabulary help gain marks?
```

---

## 32. One-page Core Vocabulary Sheet

| Area | Must-know Terms |
|---|---|
| A1 | hardware, software, CPU, RAM, ROM, binary, logic gate |
| A2 | network, packet, protocol, IP address, DNS, firewall, encryption |
| A3 | database, table, record, field, primary key, foreign key, SQL |
| A4 | machine learning, dataset, feature, label, training, testing, bias |
| B1 | decomposition, abstraction, algorithm, flowchart, trace table |
| B2 | variable, data type, array, function, parameter, loop, validation |
| IA | client, requirement, success criterion, design, testing, evaluation |
| Security | authentication, authorization, phishing, malware, access control |
| Best study method | term → definition → example → exam sentence |
| Best phrase | Precise technical vocabulary helps turn understanding into exam marks. |
