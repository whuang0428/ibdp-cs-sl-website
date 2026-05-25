<template>
  <section class="packet-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Packet Switching Visualizer</h3>
        <p class="intro">
          Step through how a message is split into packets, sent along different routes, received out of order, and reassembled.
        </p>
      </div>

      <div class="status-pill">
        Step {{ currentStep + 1 }} / {{ steps.length }}
      </div>
    </div>

    <div class="message-panel">
      <label for="message-input">Message</label>
      <div class="message-row">
        <input
          id="message-input"
          v-model="message"
          type="text"
          maxlength="36"
          @input="reset"
        />
        <button type="button" class="secondary-button" @click="useExample">
          Try example
        </button>
      </div>
      <p class="hint">
        The demo splits the message into 4 packets for classroom readability.
      </p>
    </div>

    <div class="step-card">
      <p class="step-label">Current step</p>
      <h4>{{ currentStepData.title }}</h4>
      <p>{{ currentStepData.description }}</p>
    </div>

    <div class="network-layout" aria-label="Packet switching network diagram">
      <svg viewBox="0 0 900 340" role="img" aria-label="Network diagram showing sender, routers, and receiver">
        <defs>
          <marker id="arrowHead" markerWidth="8" markerHeight="8" refX="6" refY="3" orient="auto">
            <path d="M0,0 L0,6 L7,3 z" class="arrow-head" />
          </marker>
        </defs>

        <path class="route route-top" d="M145 170 C260 40, 450 45, 575 95 C650 125, 700 150, 760 170" />
        <path class="route route-mid" d="M145 170 C280 165, 410 165, 520 170 C630 175, 690 175, 760 170" />
        <path class="route route-bottom" d="M145 170 C265 300, 455 300, 580 250 C655 220, 705 190, 760 170" />

        <g v-for="node in nodes" :key="node.id" class="node">
          <circle :cx="node.x" :cy="node.y" r="34" />
          <text :x="node.x" :y="node.y + 5">{{ node.label }}</text>
        </g>

        <text x="95" y="235" class="node-caption">Sender</text>
        <text x="805" y="235" class="node-caption">Receiver</text>
        <text x="330" y="68" class="route-caption">Route A</text>
        <text x="455" y="155" class="route-caption">Route B</text>
        <text x="330" y="292" class="route-caption">Route C</text>

        <g v-for="packet in visiblePackets" :key="packet.id" class="svg-packet">
          <rect
            :x="packet.position.x - 28"
            :y="packet.position.y - 16"
            width="56"
            height="32"
            rx="8"
            :class="['packet-box', { arrived: packet.stage === 'arrived', reordered: packet.stage === 'reordered' }]"
          />
          <text :x="packet.position.x" :y="packet.position.y + 5">
            P{{ packet.seq }}
          </text>
        </g>
      </svg>
    </div>

    <div class="packet-grid">
      <article
        v-for="packet in packets"
        :key="packet.id"
        :class="['packet-card', { active: currentStep >= 1 }]"
      >
        <p class="packet-title">Packet {{ packet.seq }}</p>
        <p><strong>Data:</strong> {{ packet.chunk }}</p>
        <p><strong>Header:</strong> seq={{ packet.seq }}, total=4, destination=receiver</p>
        <p><strong>Route:</strong> {{ packet.routeName }}</p>
        <p><strong>Status:</strong> {{ statusFor(packet) }}</p>
      </article>
    </div>

    <div class="reassembly-panel">
      <p class="panel-title">Receiver buffer</p>
      <div class="buffer-row">
        <span
          v-for="slot in receiverSlots"
          :key="slot.key"
          :class="['buffer-slot', { filled: slot.chunk, correct: currentStep >= 6 }]"
        >
          {{ slot.chunk || slot.label }}
        </span>
      </div>
      <p class="result-line">
        <strong>Reassembled message:</strong>
        <span>{{ reassembledMessage }}</span>
      </p>
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
        In packet switching, the message is split into smaller packets. Each packet contains part of the data and header
        information such as its sequence number and destination address. Packets may travel through different routes and may
        arrive out of order. The receiving device uses the sequence numbers to reorder the packets and reassemble the original
        message.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const examples = [
  'SEND HOMEWORK REPORT',
  'NETWORK DATA TRANSFER',
  'HELLO FROM CLIENT',
  'DATABASE QUERY RESULT',
]

const message = ref('SEND HOMEWORK REPORT')
const currentStep = ref(0)
const exampleIndex = ref(0)

const nodes = [
  { id: 'sender', label: 'S', x: 95, y: 170 },
  { id: 'router-a', label: 'R1', x: 310, y: 100 },
  { id: 'router-b', label: 'R2', x: 450, y: 170 },
  { id: 'router-c', label: 'R3', x: 310, y: 240 },
  { id: 'router-d', label: 'R4', x: 600, y: 100 },
  { id: 'router-e', label: 'R5', x: 600, y: 240 },
  { id: 'receiver', label: 'D', x: 805, y: 170 },
]

const routePositions = {
  sender: [
    { x: 78, y: 118 },
    { x: 112, y: 118 },
    { x: 78, y: 222 },
    { x: 112, y: 222 },
  ],
  routed: [
    { x: 285, y: 82 },
    { x: 455, y: 170 },
    { x: 285, y: 258 },
    { x: 595, y: 82 },
  ],
  transit: [
    { x: 520, y: 82 },
    { x: 580, y: 170 },
    { x: 520, y: 258 },
    { x: 690, y: 130 },
  ],
  arrivedOutOfOrder: [
    { x: 800, y: 112 },
    { x: 760, y: 112 },
    { x: 840, y: 112 },
    { x: 800, y: 228 },
  ],
  reordered: [
    { x: 700, y: 285 },
    { x: 760, y: 285 },
    { x: 820, y: 285 },
    { x: 880, y: 285 },
  ],
}

const steps = [
  {
    title: 'Original message at the sender',
    description: 'The sender has one complete message. Sending it as one large block would be inefficient and less reliable.',
  },
  {
    title: 'Message is split into packets',
    description: 'The message is divided into smaller packets. Each packet carries only part of the original data.',
  },
  {
    title: 'Headers are added',
    description: 'Each packet receives header information such as sequence number, total packets, and destination address.',
  },
  {
    title: 'Packets choose different routes',
    description: 'Routers forward packets independently. Packets do not all need to follow the same path.',
  },
  {
    title: 'Packets travel across the network',
    description: 'Some packets may take longer routes or experience delays, so arrival order is not guaranteed.',
  },
  {
    title: 'Packets arrive out of order',
    description: 'The receiver may receive packet 2 before packet 1. This is normal in packet switching.',
  },
  {
    title: 'Receiver reorders packets',
    description: 'The receiver uses sequence numbers in the packet headers to put the packets back into the correct order.',
  },
  {
    title: 'Original message is reassembled',
    description: 'After all packets are received and ordered correctly, the receiver rebuilds the original message.',
  },
]

const currentStepData = computed(() => steps[currentStep.value])

const chunks = computed(() => {
  const clean = message.value.trim() || 'MESSAGE'
  const size = Math.ceil(clean.length / 4)
  const result = []

  for (let i = 0; i < 4; i++) {
    result.push(clean.slice(i * size, (i + 1) * size) || ' ')
  }

  return result
})

const packets = computed(() => {
  const routes = [
    { routeName: 'Route A', routeClass: 'route-a' },
    { routeName: 'Route B', routeClass: 'route-b' },
    { routeName: 'Route C', routeClass: 'route-c' },
    { routeName: 'Route A then B', routeClass: 'route-a' },
  ]

  return chunks.value.map((chunk, index) => ({
    id: `packet-${index + 1}`,
    seq: index + 1,
    chunk,
    ...routes[index],
  }))
})

const arrivalOrder = [2, 1, 4, 3]

const visiblePackets = computed(() => {
  if (currentStep.value === 0) {
    return []
  }

  let positionSet = 'sender'
  let stage = 'sender'

  if (currentStep.value === 3) {
    positionSet = 'routed'
    stage = 'routed'
  } else if (currentStep.value === 4) {
    positionSet = 'transit'
    stage = 'transit'
  } else if (currentStep.value === 5) {
    positionSet = 'arrivedOutOfOrder'
    stage = 'arrived'
  } else if (currentStep.value >= 6) {
    positionSet = 'reordered'
    stage = 'reordered'
  }

  return packets.value.map((packet, index) => {
    let positionIndex = index

    if (currentStep.value === 5) {
      positionIndex = arrivalOrder.indexOf(packet.seq)
    }

    return {
      ...packet,
      stage,
      position: routePositions[positionSet][positionIndex],
    }
  })
})

const receiverSlots = computed(() => {
  if (currentStep.value < 5) {
    return [
      { key: 'slot-1', label: 'slot 1', chunk: '' },
      { key: 'slot-2', label: 'slot 2', chunk: '' },
      { key: 'slot-3', label: 'slot 3', chunk: '' },
      { key: 'slot-4', label: 'slot 4', chunk: '' },
    ]
  }

  if (currentStep.value === 5) {
    return arrivalOrder.map((seq, index) => ({
      key: `arrival-${index}`,
      label: `P${seq}`,
      chunk: packets.value[seq - 1].chunk,
    }))
  }

  return packets.value.map((packet) => ({
    key: `ordered-${packet.seq}`,
    label: `P${packet.seq}`,
    chunk: packet.chunk,
  }))
})

const reassembledMessage = computed(() => {
  if (currentStep.value < 7) {
    return 'Not complete yet'
  }

  return chunks.value.join('')
})

function statusFor(packet) {
  if (currentStep.value === 0) {
    return 'Not created yet'
  }

  if (currentStep.value <= 2) {
    return 'Created at sender'
  }

  if (currentStep.value === 3) {
    return `Forwarded using ${packet.routeName}`
  }

  if (currentStep.value === 4) {
    return 'In transit'
  }

  if (currentStep.value === 5) {
    return `Arrived position ${arrivalOrder.indexOf(packet.seq) + 1}`
  }

  if (currentStep.value === 6) {
    return 'Reordered by sequence number'
  }

  return 'Reassembled'
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
  message.value = examples[exampleIndex.value]
  reset()
}
</script>

<style scoped>
.packet-demo {
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

.message-panel,
.step-card,
.reassembly-panel,
.exam-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px 16px;
  background: var(--vp-c-bg);
  margin-top: 16px;
}

.message-panel label,
.step-label,
.panel-title {
  display: block;
  margin: 0 0 6px;
  color: var(--vp-c-brand-1);
  font-weight: 800;
  font-size: 0.9rem;
}

.message-row {
  display: flex;
  gap: 10px;
}

.message-row input {
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

.network-layout {
  margin-top: 16px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 18px;
  background:
    radial-gradient(circle at 20% 20%, rgba(100, 108, 255, 0.08), transparent 26%),
    radial-gradient(circle at 80% 75%, rgba(100, 108, 255, 0.08), transparent 24%),
    var(--vp-c-bg);
  overflow-x: auto;
}

.network-layout svg {
  min-width: 760px;
  display: block;
}

.route {
  fill: none;
  stroke: var(--vp-c-divider);
  stroke-width: 5;
  stroke-linecap: round;
  marker-end: url(#arrowHead);
}

.route-top {
  stroke-dasharray: 10 8;
}

.route-mid {
  stroke-dasharray: 4 8;
}

.route-bottom {
  stroke-dasharray: 14 8;
}

.arrow-head {
  fill: var(--vp-c-divider);
}

.node circle {
  fill: var(--vp-c-bg-soft);
  stroke: var(--vp-c-brand-1);
  stroke-width: 3;
}

.node text,
.svg-packet text {
  text-anchor: middle;
  font-weight: 800;
  fill: var(--vp-c-text-1);
}

.node-caption,
.route-caption {
  fill: var(--vp-c-text-2);
  font-size: 16px;
  text-anchor: middle;
}

.packet-box {
  fill: var(--vp-c-bg-soft);
  stroke: var(--vp-c-brand-1);
  stroke-width: 3;
}

.packet-box.arrived {
  stroke-dasharray: 5 4;
}

.packet-box.reordered {
  fill: var(--vp-c-brand-soft);
}

.packet-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 12px;
  margin-top: 16px;
}

.packet-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  background: var(--vp-c-bg);
  padding: 12px;
  opacity: 0.75;
}

.packet-card.active {
  opacity: 1;
  outline: 2px solid var(--vp-c-brand-1);
  outline-offset: -2px;
}

.packet-card p {
  margin: 5px 0;
}

.packet-title {
  font-weight: 900;
  color: var(--vp-c-brand-1);
}

.buffer-row {
  display: grid;
  grid-template-columns: repeat(4, minmax(80px, 1fr));
  gap: 8px;
}

.buffer-slot {
  display: inline-flex;
  justify-content: center;
  align-items: center;
  min-height: 46px;
  border: 1px dashed var(--vp-c-divider);
  border-radius: 12px;
  color: var(--vp-c-text-2);
  font-weight: 800;
  text-align: center;
  padding: 6px;
}

.buffer-slot.filled {
  border-style: solid;
  color: var(--vp-c-text-1);
  background: var(--vp-c-bg-soft);
}

.buffer-slot.correct {
  background: var(--vp-c-brand-soft);
}

.result-line {
  margin-bottom: 0;
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

@media (max-width: 720px) {
  .demo-heading,
  .message-row {
    flex-direction: column;
  }

  .packet-grid {
    grid-template-columns: 1fr;
  }

  .buffer-row {
    grid-template-columns: repeat(2, minmax(80px, 1fr));
  }
}
</style>
