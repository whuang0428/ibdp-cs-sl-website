<template>
  <section class="dns-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>DNS Lookup + Web Request Visualizer</h3>
        <p class="intro">
          Step through what happens after a user enters a URL: DNS lookup, IP address discovery, request, response, and page rendering.
        </p>
      </div>

      <div class="status-pill">
        Step {{ currentStep + 1 }} / {{ steps.length }}
      </div>
    </div>

    <div class="input-panel">
      <label for="url-input">URL entered by user</label>
      <div class="url-row">
        <input
          id="url-input"
          v-model="urlInput"
          type="text"
          maxlength="48"
          @input="reset"
        />
        <button type="button" class="secondary-button" @click="useExample">
          Try example
        </button>
      </div>
      <p class="hint">
        This demo uses a simplified DNS process for classroom learning.
      </p>
    </div>

    <div class="step-card">
      <p class="step-label">Current step</p>
      <h4>{{ currentStepData.title }}</h4>
      <p>{{ currentStepData.description }}</p>
    </div>

    <div class="diagram-panel" aria-label="DNS lookup and web request diagram">
      <svg viewBox="0 0 980 430" role="img" aria-label="Diagram showing browser, DNS resolver, DNS servers, web server, and returned webpage">
        <defs>
          <marker id="dnsArrow" markerWidth="8" markerHeight="8" refX="6" refY="3" orient="auto">
            <path d="M0,0 L0,6 L7,3 z" class="arrow-head" />
          </marker>
        </defs>

        <line
          v-for="line in activeLines"
          :key="line.id"
          :x1="line.x1"
          :y1="line.y1"
          :x2="line.x2"
          :y2="line.y2"
          :class="['link-line', line.type]"
          marker-end="url(#dnsArrow)"
        />

        <g v-for="node in nodes" :key="node.id" :class="['node', { active: isNodeActive(node.id) }]">
          <rect :x="node.x" :y="node.y" :width="node.w" :height="node.h" rx="18" />
          <text :x="node.x + node.w / 2" :y="node.y + 32" class="node-title">{{ node.title }}</text>
          <text :x="node.x + node.w / 2" :y="node.y + 58" class="node-subtitle">{{ node.subtitle }}</text>
        </g>

        <g v-for="label in activeLabels" :key="label.id">
          <rect :x="label.x - 88" :y="label.y - 20" width="176" height="40" rx="10" class="message-label-bg" />
          <text :x="label.x" :y="label.y + 5" class="message-label">{{ label.text }}</text>
        </g>
      </svg>
    </div>

    <div class="info-grid">
      <article class="info-card">
        <p class="panel-title">URL parts</p>
        <table>
          <tbody>
            <tr>
              <th>Protocol</th>
              <td>{{ protocol }}</td>
            </tr>
            <tr>
              <th>Domain name</th>
              <td>{{ domain }}</td>
            </tr>
            <tr>
              <th>Path</th>
              <td>{{ pathPart }}</td>
            </tr>
          </tbody>
        </table>
      </article>

      <article class="info-card">
        <p class="panel-title">DNS result</p>
        <table>
          <tbody>
            <tr>
              <th>Domain</th>
              <td>{{ domain }}</td>
            </tr>
            <tr>
              <th>Returned IP</th>
              <td>{{ currentStep >= 4 ? fakeIp : "Not known yet" }}</td>
            </tr>
            <tr>
              <th>Used by browser?</th>
              <td>{{ currentStep >= 5 ? "Yes" : "Not yet" }}</td>
            </tr>
          </tbody>
        </table>
      </article>
    </div>

    <div class="request-panel">
      <div class="request-box">
        <p class="panel-title">HTTP / HTTPS request</p>
        <pre>{{ requestText }}</pre>
      </div>

      <div class="request-box">
        <p class="panel-title">Server response</p>
        <pre>{{ responseText }}</pre>
      </div>
    </div>

    <div class="browser-panel">
      <p class="panel-title">Browser output</p>
      <div class="mini-browser">
        <div class="browser-bar">
          <span class="dot"></span>
          <span class="dot"></span>
          <span class="dot"></span>
          <span class="address">{{ displayUrl }}</span>
        </div>
        <div class="browser-content">
          <template v-if="currentStep >= 8">
            <h4>{{ renderedTitle }}</h4>
            <p>The browser uses the returned HTML, CSS, images, and scripts to display the webpage.</p>
          </template>
          <template v-else>
            <p class="placeholder">Page not rendered yet.</p>
          </template>
        </div>
      </div>
    </div>

    <div class="controls">
      <button type="button" class="secondary-button" :disabled="currentStep === 0" @click="previous">
        Previous
      </button>
      <button type="button" class="primary-button" :disabled="currentStep === steps.length - 1" @click="next">
        Next step
      </button>
      <button type="button" class="secondary-button" @click="reset">
        Reset
      </button>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        When a user enters a URL, the browser needs the server's IP address. If the IP address is not already cached,
        a DNS lookup is performed. DNS servers translate the domain name into an IP address. The browser then uses the
        IP address to contact the web server and sends an HTTP or HTTPS request. The server returns the requested resources,
        and the browser renders the webpage for the user.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const examples = [
  'https://school.example/resources',
  'https://cs.example/packet-switching',
  'http://library.example/catalogue',
  'https://revision.example/index.html',
]

const urlInput = ref('https://school.example/resources')
const currentStep = ref(0)
const exampleIndex = ref(0)

const steps = [
  {
    title: 'User enters a URL',
    description: 'The user types a URL into the browser. The browser must find the web server before it can request the page.',
    nodes: ['browser'],
    lines: [],
  },
  {
    title: 'Browser separates the URL',
    description: 'The browser identifies the protocol, domain name, and path. The domain name must be translated into an IP address.',
    nodes: ['browser'],
    lines: [],
  },
  {
    title: 'Browser asks DNS resolver',
    description: 'If the IP address is not cached, the browser asks a DNS resolver to find the IP address for the domain.',
    nodes: ['browser', 'resolver'],
    lines: ['browser-resolver'],
  },
  {
    title: 'DNS resolver queries DNS servers',
    description: 'The resolver may contact root, TLD, and authoritative DNS servers to find the correct IP address.',
    nodes: ['resolver', 'root', 'tld', 'auth'],
    lines: ['resolver-root', 'root-tld', 'tld-auth'],
  },
  {
    title: 'DNS returns an IP address',
    description: 'The authoritative DNS server provides the IP address for the requested domain name.',
    nodes: ['auth', 'resolver', 'browser'],
    lines: ['auth-resolver', 'resolver-browser'],
  },
  {
    title: 'Browser contacts the web server',
    description: 'The browser uses the IP address to contact the web server. If HTTPS is used, a secure connection is established.',
    nodes: ['browser', 'webserver'],
    lines: ['browser-webserver'],
  },
  {
    title: 'Browser sends HTTP/HTTPS request',
    description: 'The browser requests the resource, such as a webpage, image, stylesheet, or script.',
    nodes: ['browser', 'webserver'],
    lines: ['browser-webserver'],
  },
  {
    title: 'Server sends response',
    description: 'The web server sends back a response containing the requested resource or an error status.',
    nodes: ['webserver', 'browser'],
    lines: ['webserver-browser'],
  },
  {
    title: 'Browser renders the webpage',
    description: 'The browser processes the returned resources and displays the final webpage to the user.',
    nodes: ['browser'],
    lines: [],
  },
]

const nodes = [
  { id: 'browser', title: 'Browser', subtitle: 'User device', x: 40, y: 170, w: 150, h: 86 },
  { id: 'resolver', title: 'DNS Resolver', subtitle: 'Recursive lookup', x: 300, y: 170, w: 165, h: 86 },
  { id: 'root', title: 'Root DNS', subtitle: 'Where is .example?', x: 295, y: 40, w: 175, h: 86 },
  { id: 'tld', title: 'TLD DNS', subtitle: 'Find domain zone', x: 565, y: 40, w: 175, h: 86 },
  { id: 'auth', title: 'Authoritative DNS', subtitle: 'Returns IP', x: 700, y: 170, w: 215, h: 86 },
  { id: 'webserver', title: 'Web Server', subtitle: 'Hosts webpage', x: 700, y: 310, w: 215, h: 86 },
]

const lineMap = {
  'browser-resolver': { id: 'browser-resolver', x1: 190, y1: 213, x2: 300, y2: 213, type: 'dns' },
  'resolver-root': { id: 'resolver-root', x1: 382, y1: 170, x2: 382, y2: 126, type: 'dns' },
  'root-tld': { id: 'root-tld', x1: 470, y1: 83, x2: 565, y2: 83, type: 'dns' },
  'tld-auth': { id: 'tld-auth', x1: 655, y1: 126, x2: 755, y2: 170, type: 'dns' },
  'auth-resolver': { id: 'auth-resolver', x1: 700, y1: 213, x2: 465, y2: 213, type: 'return' },
  'resolver-browser': { id: 'resolver-browser', x1: 300, y1: 213, x2: 190, y2: 213, type: 'return' },
  'browser-webserver': { id: 'browser-webserver', x1: 190, y1: 245, x2: 700, y2: 350, type: 'http' },
  'webserver-browser': { id: 'webserver-browser', x1: 700, y1: 370, x2: 190, y2: 245, type: 'return' },
}

const activeLines = computed(() => steps[currentStep.value].lines.map((id) => lineMap[id]))

const activeLabels = computed(() => {
  const labels = {
    2: [{ id: 'dns-query', text: 'DNS query', x: 245, y: 190 }],
    3: [
      { id: 'root-query', text: 'recursive lookup', x: 480, y: 30 },
      { id: 'auth-query', text: 'ask authority', x: 705, y: 132 },
    ],
    4: [
      { id: 'ip-return', text: `IP = ${fakeIp.value}`, x: 590, y: 230 },
      { id: 'browser-cache', text: 'IP returned', x: 245, y: 236 },
    ],
    5: [{ id: 'connect', text: 'connect to IP', x: 440, y: 315 }],
    6: [{ id: 'request', text: 'GET request', x: 440, y: 315 }],
    7: [{ id: 'response', text: 'response', x: 450, y: 385 }],
  }

  return labels[currentStep.value] || []
})

const parsedUrl = computed(() => {
  const raw = urlInput.value.trim() || 'https://school.example/resources'
  let protocol = 'https'
  let rest = raw

  if (raw.includes('://')) {
    const parts = raw.split('://')
    protocol = parts[0] || 'https'
    rest = parts.slice(1).join('://')
  }

  const slashIndex = rest.indexOf('/')
  const domain = slashIndex === -1 ? rest : rest.slice(0, slashIndex)
  const path = slashIndex === -1 ? '/' : rest.slice(slashIndex)

  return {
    protocol: protocol || 'https',
    domain: domain || 'school.example',
    path: path || '/',
  }
})

const protocol = computed(() => parsedUrl.value.protocol)
const domain = computed(() => parsedUrl.value.domain)
const pathPart = computed(() => parsedUrl.value.path)

const displayUrl = computed(() => `${protocol.value}://${domain.value}${pathPart.value}`)

const fakeIp = computed(() => {
  const total = domain.value.split('').reduce((sum, char) => sum + char.charCodeAt(0), 0)
  return `203.0.113.${(total % 180) + 20}`
})

const renderedTitle = computed(() => {
  return domain.value.replace(/^www\./, '').split('.')[0].toUpperCase() + ' page'
})

const requestText = computed(() => {
  if (currentStep.value < 6) {
    return 'Request not sent yet.'
  }

  return [
    `GET ${pathPart.value} HTTP/1.1`,
    `Host: ${domain.value}`,
    `Protocol: ${protocol.value.toUpperCase()}`,
    'Accept: text/html',
  ].join('\n')
})

const responseText = computed(() => {
  if (currentStep.value < 7) {
    return 'Response not received yet.'
  }

  return [
    'HTTP/1.1 200 OK',
    'Content-Type: text/html',
    '',
    '<html>',
    `  <title>${renderedTitle.value}</title>`,
    '</html>',
  ].join('\n')
})

const currentStepData = computed(() => steps[currentStep.value])

function isNodeActive(id) {
  return steps[currentStep.value].nodes.includes(id)
}

function next() {
  if (currentStep.value < steps.length - 1) {
    currentStep.value++
  }
}

function previous() {
  if (currentStep.value > 0) {
    currentStep.value--
  }
}

function reset() {
  currentStep.value = 0
}

function useExample() {
  exampleIndex.value = (exampleIndex.value + 1) % examples.length
  urlInput.value = examples[exampleIndex.value]
  reset()
}
</script>

<style scoped>
.dns-demo {
  border: 1px solid var(--vp-c-divider);
  border-radius: 20px;
  padding: 20px;
  background: var(--vp-c-bg-soft);
  box-shadow: 0 12px 34px rgba(0, 0, 0, 0.06);
  margin: 24px 0;
}

.demo-heading {
  display: flex;
  justify-content: space-between;
  gap: 16px;
  align-items: flex-start;
}

.eyebrow {
  margin: 0 0 4px;
  color: var(--vp-c-brand-1);
  font-size: 0.82rem;
  font-weight: 800;
  letter-spacing: 0.05em;
  text-transform: uppercase;
}

.demo-heading h3 {
  margin: 0;
  font-size: 1.5rem;
}

.intro {
  margin: 8px 0 0;
  color: var(--vp-c-text-2);
}

.status-pill {
  border: 1px solid var(--vp-c-divider);
  background: var(--vp-c-bg);
  border-radius: 999px;
  padding: 8px 12px;
  font-weight: 800;
  white-space: nowrap;
}

.input-panel,
.step-card,
.info-card,
.request-box,
.browser-panel,
.exam-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px 16px;
  background: var(--vp-c-bg);
  margin-top: 16px;
}

.input-panel label,
.step-label,
.panel-title {
  display: block;
  margin: 0 0 6px;
  color: var(--vp-c-brand-1);
  font-weight: 800;
  font-size: 0.9rem;
}

.url-row {
  display: flex;
  gap: 10px;
}

.url-row input {
  flex: 1;
  min-width: 0;
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 10px 12px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
  font-size: 1rem;
}

.hint {
  margin: 8px 0 0;
  color: var(--vp-c-text-2);
  font-size: 0.9rem;
}

.step-card h4 {
  margin: 0 0 6px;
}

.step-card p:last-child {
  margin-bottom: 0;
}

.diagram-panel {
  margin-top: 16px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 18px;
  background:
    radial-gradient(circle at 18% 18%, rgba(100, 108, 255, 0.08), transparent 26%),
    radial-gradient(circle at 85% 70%, rgba(100, 108, 255, 0.08), transparent 24%),
    var(--vp-c-bg);
  overflow-x: auto;
}

.diagram-panel svg {
  min-width: 820px;
  display: block;
}

.link-line {
  stroke-width: 5;
  stroke-linecap: round;
  fill: none;
}

.link-line.dns {
  stroke: var(--vp-c-brand-1);
  stroke-dasharray: 8 7;
}

.link-line.http {
  stroke: var(--vp-c-brand-1);
}

.link-line.return {
  stroke: var(--vp-c-text-2);
  stroke-dasharray: 12 7;
}

.arrow-head {
  fill: var(--vp-c-brand-1);
}

.node rect {
  fill: var(--vp-c-bg-soft);
  stroke: var(--vp-c-divider);
  stroke-width: 2;
}

.node.active rect {
  stroke: var(--vp-c-brand-1);
  stroke-width: 4;
  fill: var(--vp-c-brand-soft);
}

.node-title,
.node-subtitle,
.message-label {
  text-anchor: middle;
  fill: var(--vp-c-text-1);
}

.node-title {
  font-weight: 900;
  font-size: 17px;
}

.node-subtitle {
  fill: var(--vp-c-text-2);
  font-size: 13px;
}

.message-label-bg {
  fill: var(--vp-c-bg);
  stroke: var(--vp-c-brand-1);
}

.message-label {
  font-size: 13px;
  font-weight: 800;
}

.info-grid,
.request-panel {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 12px;
}

.info-card table {
  width: 100%;
  border-collapse: collapse;
}

.info-card th,
.info-card td {
  border-top: 1px solid var(--vp-c-divider);
  padding: 8px 4px;
  text-align: left;
}

.info-card th {
  width: 36%;
  color: var(--vp-c-text-2);
}

.request-box pre {
  margin: 0;
  overflow-x: auto;
  white-space: pre-wrap;
  font-size: 0.9rem;
}

.mini-browser {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  overflow: hidden;
}

.browser-bar {
  display: flex;
  align-items: center;
  gap: 7px;
  background: var(--vp-c-bg-soft);
  border-bottom: 1px solid var(--vp-c-divider);
  padding: 8px;
}

.dot {
  width: 10px;
  height: 10px;
  border-radius: 999px;
  background: var(--vp-c-divider);
}

.address {
  flex: 1;
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 4px 10px;
  margin-left: 8px;
  color: var(--vp-c-text-2);
  font-size: 0.85rem;
}

.browser-content {
  min-height: 130px;
  padding: 18px;
}

.browser-content h4 {
  margin: 0 0 8px;
}

.placeholder {
  color: var(--vp-c-text-2);
}

.controls {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  margin-top: 16px;
}

.primary-button,
.secondary-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 9px 16px;
  cursor: pointer;
  font-weight: 800;
}

.primary-button {
  background: var(--vp-c-brand-1);
  color: white;
  border-color: var(--vp-c-brand-1);
}

.secondary-button {
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
}

.primary-button:disabled,
.secondary-button:disabled {
  opacity: 0.45;
  cursor: not-allowed;
}

.exam-box summary {
  cursor: pointer;
  font-weight: 900;
}

.exam-box p {
  margin-bottom: 0;
}

@media (max-width: 760px) {
  .demo-heading,
  .url-row {
    flex-direction: column;
  }

  .info-grid,
  .request-panel {
    grid-template-columns: 1fr;
  }
}
</style>
