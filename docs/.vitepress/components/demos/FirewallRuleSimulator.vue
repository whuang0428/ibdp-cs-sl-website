<template>
  <section class="firewall-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Firewall Rule Simulator</h3>
        <p class="intro">
          Change packet details and firewall rules to see whether traffic is allowed or blocked.
        </p>
      </div>

      <div :class="['decision-pill', decision.allowed ? 'allow' : 'block']">
        {{ decision.allowed ? 'ALLOW' : 'BLOCK' }}
      </div>
    </div>

    <div class="main-grid">
      <article class="panel">
        <p class="panel-title">Packet details</p>

        <label>
          Source
          <select v-model="packet.source">
            <option value="student-device">student-device</option>
            <option value="teacher-device">teacher-device</option>
            <option value="external-internet">external-internet</option>
            <option value="unknown-device">unknown-device</option>
          </select>
        </label>

        <label>
          Destination
          <select v-model="packet.destination">
            <option value="school-web-server">school-web-server</option>
            <option value="student-records-server">student-records-server</option>
            <option value="email-server">email-server</option>
            <option value="blocked-site">blocked-site</option>
          </select>
        </label>

        <label>
          Protocol
          <select v-model="packet.protocol">
            <option value="HTTPS">HTTPS</option>
            <option value="HTTP">HTTP</option>
            <option value="DNS">DNS</option>
            <option value="SSH">SSH</option>
            <option value="FTP">FTP</option>
          </select>
        </label>

        <label>
          Port
          <select v-model.number="packet.port">
            <option :value="443">443</option>
            <option :value="80">80</option>
            <option :value="53">53</option>
            <option :value="22">22</option>
            <option :value="21">21</option>
          </select>
        </label>

        <button type="button" class="secondary-button" @click="tryScenario">
          Try scenario
        </button>
      </article>

      <article class="panel">
        <p class="panel-title">Firewall rules</p>

        <div class="rule-list">
          <label v-for="rule in rules" :key="rule.id" class="rule-item">
            <input type="checkbox" v-model="rule.enabled" />
            <span>
              <strong>{{ rule.name }}</strong>
              <small>{{ rule.description }}</small>
            </span>
          </label>
        </div>

        <div class="default-policy">
          <span>Default policy</span>
          <button
            type="button"
            :class="['policy-toggle', defaultAllow ? 'allow' : 'block']"
            @click="defaultAllow = !defaultAllow"
          >
            {{ defaultAllow ? 'Allow if no rule matches' : 'Block if no rule matches' }}
          </button>
        </div>
      </article>
    </div>

    <div class="network-visual">
      <div class="zone external">
        <p>External / User Side</p>
        <strong>{{ packet.source }}</strong>
      </div>

      <div :class="['packet', decision.allowed ? 'allow' : 'block']">
        <span>{{ packet.protocol }}</span>
        <small>port {{ packet.port }}</small>
      </div>

      <div :class="['wall', decision.allowed ? 'allow' : 'block']">
        <span>Firewall</span>
      </div>

      <div class="zone internal">
        <p>Destination</p>
        <strong>{{ packet.destination }}</strong>
      </div>
    </div>

    <div class="decision-panel">
      <p class="panel-title">Decision explanation</p>
      <p class="decision-text">
        {{ decision.reason }}
      </p>

      <table>
        <thead>
          <tr>
            <th>Rule checked</th>
            <th>Enabled?</th>
            <th>Matched?</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="row in ruleTrace" :key="row.id" :class="{ matched: row.matched }">
            <td>{{ row.name }}</td>
            <td>{{ row.enabled ? 'Yes' : 'No' }}</td>
            <td>{{ row.matched ? 'Yes' : 'No' }}</td>
            <td>{{ row.action }}</td>
          </tr>
        </tbody>
      </table>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        A firewall monitors incoming and outgoing network traffic and compares each packet with a set of security rules.
        A rule may allow or block traffic based on information such as source, destination, protocol, or port number.
        This reduces unauthorized access because traffic that does not match the security policy can be blocked before it reaches the internal network.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, reactive, ref } from 'vue'

const scenarios = [
  { source: 'student-device', destination: 'school-web-server', protocol: 'HTTPS', port: 443 },
  { source: 'external-internet', destination: 'student-records-server', protocol: 'SSH', port: 22 },
  { source: 'teacher-device', destination: 'student-records-server', protocol: 'HTTPS', port: 443 },
  { source: 'unknown-device', destination: 'blocked-site', protocol: 'HTTP', port: 80 },
  { source: 'student-device', destination: 'email-server', protocol: 'DNS', port: 53 },
  { source: 'external-internet', destination: 'school-web-server', protocol: 'FTP', port: 21 },
]

const scenarioIndex = ref(0)

const packet = reactive({
  source: 'student-device',
  destination: 'school-web-server',
  protocol: 'HTTPS',
  port: 443,
})

const defaultAllow = ref(false)

const rules = reactive([
  {
    id: 'allow-https-web',
    name: 'Allow HTTPS to school web server',
    description: 'Allows HTTPS traffic to the public school web server.',
    enabled: true,
    action: 'ALLOW',
    match: (p) => p.destination === 'school-web-server' && p.protocol === 'HTTPS' && p.port === 443,
  },
  {
    id: 'allow-dns',
    name: 'Allow DNS queries',
    description: 'Allows DNS traffic on port 53.',
    enabled: true,
    action: 'ALLOW',
    match: (p) => p.protocol === 'DNS' && p.port === 53,
  },
  {
    id: 'block-student-records-external',
    name: 'Block external access to student records',
    description: 'Blocks external or unknown devices from accessing student records.',
    enabled: true,
    action: 'BLOCK',
    match: (p) =>
      p.destination === 'student-records-server' &&
      (p.source === 'external-internet' || p.source === 'unknown-device'),
  },
  {
    id: 'allow-teacher-records',
    name: 'Allow teachers to access records over HTTPS',
    description: 'Allows teacher devices to access student records using HTTPS.',
    enabled: true,
    action: 'ALLOW',
    match: (p) => p.source === 'teacher-device' && p.destination === 'student-records-server' && p.protocol === 'HTTPS',
  },
  {
    id: 'block-insecure-services',
    name: 'Block insecure services',
    description: 'Blocks HTTP, FTP, and SSH in this simplified school network policy.',
    enabled: true,
    action: 'BLOCK',
    match: (p) => ['HTTP', 'FTP', 'SSH'].includes(p.protocol),
  },
  {
    id: 'block-blocked-site',
    name: 'Block blocked-site destination',
    description: 'Blocks access to a destination marked as blocked-site.',
    enabled: true,
    action: 'BLOCK',
    match: (p) => p.destination === 'blocked-site',
  },
])

const ruleTrace = computed(() => {
  let alreadyMatched = false

  return rules.map((rule) => {
    const matched = !alreadyMatched && rule.enabled && rule.match(packet)

    if (matched) {
      alreadyMatched = true
    }

    return {
      id: rule.id,
      name: rule.name,
      enabled: rule.enabled,
      matched,
      action: matched ? rule.action : '-',
    }
  })
})

const decision = computed(() => {
  const matchedRule = ruleTrace.value.find((row) => row.matched)

  if (matchedRule) {
    return {
      allowed: matchedRule.action === 'ALLOW',
      reason: `The packet matches the rule "${matchedRule.name}", so the firewall decision is ${matchedRule.action}.`,
    }
  }

  return {
    allowed: defaultAllow.value,
    reason: `No enabled rule matches this packet, so the firewall uses the default policy: ${defaultAllow.value ? 'ALLOW' : 'BLOCK'}.`,
  }
})

function tryScenario() {
  scenarioIndex.value = (scenarioIndex.value + 1) % scenarios.length
  Object.assign(packet, scenarios[scenarioIndex.value])
}
</script>

<style scoped>
.firewall-demo {
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

.decision-pill {
  border-radius: 999px;
  padding: 9px 16px;
  font-weight: 900;
  white-space: nowrap;
  border: 1px solid var(--vp-c-divider);
}

.decision-pill.allow {
  background: rgba(20, 150, 80, 0.14);
  color: #14804a;
}

.decision-pill.block {
  background: rgba(210, 55, 55, 0.12);
  color: #b42318;
}

.main-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
  margin-top: 16px;
}

.panel,
.decision-panel,
.exam-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px 16px;
  background: var(--vp-c-bg);
}

.panel-title {
  margin: 0 0 10px;
  color: var(--vp-c-brand-1);
  font-weight: 900;
}

label {
  display: grid;
  gap: 6px;
  margin: 10px 0;
  font-weight: 700;
}

select {
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 9px 10px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
}

.rule-list {
  display: grid;
  gap: 10px;
}

.rule-item {
  display: grid;
  grid-template-columns: auto 1fr;
  gap: 10px;
  align-items: flex-start;
  margin: 0;
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 10px;
  background: var(--vp-c-bg-soft);
}

.rule-item small {
  display: block;
  margin-top: 3px;
  color: var(--vp-c-text-2);
  font-weight: 400;
}

.default-policy {
  margin-top: 14px;
  display: grid;
  gap: 8px;
}

.policy-toggle,
.secondary-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 9px 14px;
  cursor: pointer;
  font-weight: 800;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
}

.policy-toggle.allow {
  background: rgba(20, 150, 80, 0.14);
}

.policy-toggle.block {
  background: rgba(210, 55, 55, 0.12);
}

.network-visual {
  margin: 16px 0;
  display: grid;
  grid-template-columns: 1fr auto auto 1fr;
  align-items: center;
  gap: 12px;
}

.zone,
.packet,
.wall {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px;
  background: var(--vp-c-bg);
  text-align: center;
  min-height: 74px;
  display: grid;
  align-content: center;
}

.zone p {
  margin: 0 0 6px;
  color: var(--vp-c-text-2);
}

.packet {
  min-width: 90px;
  border-width: 3px;
  font-weight: 900;
}

.packet small {
  color: var(--vp-c-text-2);
}

.packet.allow {
  border-color: #14804a;
}

.packet.block {
  border-color: #b42318;
}

.wall {
  min-width: 96px;
  font-weight: 900;
}

.wall.allow {
  background: rgba(20, 150, 80, 0.12);
}

.wall.block {
  background: rgba(210, 55, 55, 0.12);
}

.decision-text {
  margin-top: 0;
}

table {
  width: 100%;
  border-collapse: collapse;
  overflow-x: auto;
}

th,
td {
  border: 1px solid var(--vp-c-divider);
  padding: 9px;
  text-align: left;
}

tr.matched {
  background: var(--vp-c-brand-soft);
  font-weight: 800;
}

.exam-box {
  margin-top: 16px;
}

.exam-box summary {
  cursor: pointer;
  font-weight: 900;
}

.exam-box p {
  margin-bottom: 0;
}

@media (max-width: 820px) {
  .demo-heading,
  .main-grid,
  .network-visual {
    grid-template-columns: 1fr;
    display: grid;
  }

  .demo-heading {
    display: flex;
    flex-direction: column;
  }
}
</style>
