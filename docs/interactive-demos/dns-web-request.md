<script setup>
import DNSWebRequestDemo from '../.vitepress/components/demos/DNSWebRequestDemo.vue'
</script>

# DNS Lookup and Web Request Interactive Demo

## Learning Goals

By the end of this demo, students should be able to:

- explain why a browser needs an IP address
- describe how DNS translates a domain name into an IP address
- describe the role of DNS resolver and DNS servers
- explain how a browser sends an HTTP or HTTPS request
- explain how the server response is used to render a webpage
- write an exam-style explanation of how a webpage is retrieved

## Key Idea

A user normally enters a URL, such as:

```text
https://school.example/resources
```

However, computers communicate using IP addresses. DNS is used to translate the domain name into an IP address.

After the IP address is found, the browser can contact the web server and request the webpage.

## Interactive Demo

<DNSWebRequestDemo />

## Exam-style Explanation

When a user enters a URL, the browser identifies the domain name. If the IP address is not already cached, the browser uses DNS to resolve the domain name into an IP address. A DNS resolver may query other DNS servers to find the authoritative result. The browser then uses the IP address to contact the web server and sends an HTTP or HTTPS request. The server returns the requested resources, and the browser renders the webpage.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| DNS sends the webpage | DNS only resolves domain names | the web server sends the webpage |
| URL and IP address are the same | URL is human-readable; IP identifies a device/server | DNS connects them |
| browser can always use domain directly | network communication needs an IP address | domain must be resolved |
| HTTP and DNS do the same job | DNS resolves names; HTTP requests resources | they are different protocols/processes |
| webpage appears after DNS only | DNS is only one stage | browser still needs to request resources |

## Quick Practice

### Question 1

Explain why DNS is needed when retrieving a webpage.

<details>
<summary>Answer</summary>

DNS is needed because users enter human-readable domain names, but computers need IP addresses to locate servers on a network. DNS translates the domain name into the corresponding IP address.

</details>

### Question 2

Describe what happens after the browser receives the IP address.

<details>
<summary>Answer</summary>

The browser uses the IP address to contact the web server. It sends an HTTP or HTTPS request for the required resource. The server sends back a response, and the browser renders the returned webpage.

</details>

### Question 3

State the difference between DNS and HTTP.

<details>
<summary>Answer</summary>

DNS translates a domain name into an IP address. HTTP or HTTPS is used by the browser to request web resources from the server.

</details>
