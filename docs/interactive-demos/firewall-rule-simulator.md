<script setup>
import FirewallRuleSimulator from '../.vitepress/components/demos/FirewallRuleSimulator.vue'
</script>

# Firewall Rule Simulator

## Learning Goals

By the end of this demo, students should be able to:

- explain the purpose of a firewall
- describe how firewall rules are used to allow or block traffic
- understand that rules may use source, destination, protocol, and port
- explain why rule order and default policy matter
- write an exam-style explanation of how a firewall reduces security risks

## Key Idea

A firewall checks network traffic against a set of rules.

A rule may use information such as:

```text
source
destination
protocol
port number
```

The firewall can then decide:

```text
ALLOW the packet
BLOCK the packet
use the default policy if no rule matches
```

## Interactive Demo

<FirewallRuleSimulator />

## Exam-style Explanation

A firewall monitors incoming and outgoing network traffic. It compares packets against security rules and allows or blocks them based on information such as source, destination, protocol, or port number. This helps reduce unauthorized access because traffic that does not match the organization's security policy can be blocked before it reaches the internal network.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| firewall stops all attacks | no single control stops every attack | firewall reduces risk by filtering traffic |
| firewall only checks websites | firewalls can check protocols, ports, addresses, and rules | it filters network traffic |
| allowed traffic is always safe | allowed traffic can still contain threats | other security measures are also needed |
| rule order does not matter | first matching rule may decide the result | order can change the decision |
| default policy is not important | unmatched traffic still needs a decision | default allow/block affects security |

## Quick Practice

### Question 1

Explain why a school may block external access to a student records server.

<details>
<summary>Answer</summary>

The school may block external access to reduce the risk of unauthorized users viewing, changing, or deleting private student data.

</details>

### Question 2

State two packet details a firewall rule may check.

<details>
<summary>Answer</summary>

Possible answers include:

```text
source address/device
destination address/server
protocol
port number
```

</details>

### Question 3

Explain why a default block policy is usually safer than a default allow policy.

<details>
<summary>Answer</summary>

A default block policy blocks traffic that does not match an allowed rule. This is safer because unknown or unexpected traffic is denied instead of being allowed into the network.

</details>

