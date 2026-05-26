<template>
  <section class="flow-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Flowchart Execution Demo</h3>
        <p class="intro">
          Step through a flowchart and watch how decisions, loops, variables, and output change during execution.
        </p>
      </div>

      <div class="status-pill">
        Step {{ currentStep + 1 }} / {{ currentProgram.steps.length }}
      </div>
    </div>

    <div class="program-selector">
      <p class="panel-title">Choose a flowchart example</p>
      <div class="program-buttons">
        <button
          v-for="program in programs"
          :key="program.id"
          type="button"
          :class="['program-button', { active: selectedProgramId === program.id }]"
          @click="selectProgram(program.id)"
        >
          <strong>{{ program.title }}</strong>
          <span>{{ program.skill }}</span>
        </button>
      </div>
    </div>

    <div class="main-grid">
      <article class="flowchart-panel">
        <p class="panel-title">Flowchart</p>

        <svg viewBox="0 0 760 720" role="img" aria-label="Interactive flowchart">
          <defs>
            <marker id="flowArrow" markerWidth="8" markerHeight="8" refX="6" refY="3" orient="auto">
              <path d="M0,0 L0,6 L7,3 z" class="arrow-head" />
            </marker>
          </defs>

          <line
            v-for="edge in currentProgram.edges"
            :key="edge.id"
            :x1="edge.x1"
            :y1="edge.y1"
            :x2="edge.x2"
            :y2="edge.y2"
            :class="['edge', { active: currentStepData.edge === edge.id }]"
            marker-end="url(#flowArrow)"
          />

          <text
            v-for="label in currentProgram.edgeLabels"
            :key="label.id"
            :x="label.x"
            :y="label.y"
            class="edge-label"
          >
            {{ label.text }}
          </text>

          <g
            v-for="node in currentProgram.nodes"
            :key="node.id"
            :class="['node', node.type, { active: currentStepData.node === node.id }]"
          >
            <rect
              v-if="node.type !== 'decision' && node.type !== 'terminator'"
              :x="node.x"
              :y="node.y"
              :width="node.w"
              :height="node.h"
              rx="14"
            />
            <rect
              v-else-if="node.type === 'terminator'"
              :x="node.x"
              :y="node.y"
              :width="node.w"
              :height="node.h"
              rx="32"
            />
            <polygon
              v-else
              :points="diamondPoints(node)"
            />
            <text
              v-for="(line, index) in node.text"
              :key="node.id + '-' + index"
              :x="node.x + node.w / 2"
              :y="node.y + node.h / 2 + (index - (node.text.length - 1) / 2) * 18 + 5"
            >
              {{ line }}
            </text>
          </g>
        </svg>
      </article>

      <article class="panel">
        <p class="panel-title">Current action</p>
        <h4>{{ currentStepData.title }}</h4>
        <p>{{ currentStepData.explanation }}</p>

        <div class="state-box">
          <p class="state-title">Variables</p>
          <div class="variable-grid">
            <div v-for="variable in currentProgram.variables" :key="variable" class="variable-card">
              <span>{{ variable }}</span>
              <strong>{{ displayValue(currentStepData.values[variable]) }}</strong>
            </div>
          </div>

          <div class="output-box">
            <span>Output</span>
            <strong>{{ currentStepData.output || 'No output yet' }}</strong>
          </div>
        </div>

        <div class="controls">
          <button type="button" class="secondary-button" :disabled="currentStep === 0" @click="previous">
            Previous
          </button>
          <button
            type="button"
            class="primary-button"
            :disabled="currentStep === currentProgram.steps.length - 1"
            @click="next"
          >
            Next step
          </button>
          <button type="button" class="secondary-button" @click="reset">
            Reset
          </button>
        </div>
      </article>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Execution trace</p>
          <p class="hint">
            This records the path taken through the flowchart.
          </p>
        </div>
        <button type="button" class="secondary-button" @click="showFullTrace = !showFullTrace">
          {{ showFullTrace ? 'Show up to current step' : 'Show full trace' }}
        </button>
      </div>

      <div class="table-scroll">
        <table>
          <thead>
            <tr>
              <th>Step</th>
              <th>Shape</th>
              <th>Action</th>
              <th v-for="variable in currentProgram.variables" :key="variable">{{ variable }}</th>
              <th>Output</th>
            </tr>
          </thead>
          <tbody>
            <tr
              v-for="(step, index) in visibleTraceRows"
              :key="index"
              :class="{ active: index === currentStep }"
            >
              <td>{{ index + 1 }}</td>
              <td>{{ nodeLabel(step.node) }}</td>
              <td>{{ step.title }}</td>
              <td v-for="variable in currentProgram.variables" :key="variable">
                {{ displayValue(step.values[variable]) }}
              </td>
              <td>{{ step.output || '-' }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="symbol-panel">
      <p class="panel-title">Flowchart symbols used</p>
      <div class="symbol-grid">
        <article class="symbol-card">
          <strong>Terminator</strong>
          <span>Start / End</span>
        </article>
        <article class="symbol-card">
          <strong>Process</strong>
          <span>Assignment or calculation</span>
        </article>
        <article class="symbol-card">
          <strong>Input / Output</strong>
          <span>Read or display data</span>
        </article>
        <article class="symbol-card">
          <strong>Decision</strong>
          <span>Yes / No branch</span>
        </article>
      </div>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        A flowchart represents an algorithm using standard symbols and arrows to show the order of execution.
        Decision symbols create branches based on conditions, while process symbols show calculations or assignments.
        When tracing a flowchart, follow the arrows step by step, update variables in order, and take the correct branch for each decision.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const selectedProgramId = ref('password-check')
const currentStep = ref(0)
const showFullTrace = ref(false)

const programs = [
  {
    id: 'password-check',
    title: 'Password attempt check',
    skill: 'selection + counter',
    variables: ['attempts', 'passwordOK'],
    nodes: [
      { id: 'start', type: 'terminator', x: 300, y: 20, w: 160, h: 60, text: ['Start'] },
      { id: 'init', type: 'process', x: 270, y: 110, w: 220, h: 70, text: ['attempts ← 0', 'passwordOK ← false'] },
      { id: 'input', type: 'io', x: 270, y: 215, w: 220, h: 70, text: ['INPUT password'] },
      { id: 'check', type: 'decision', x: 285, y: 320, w: 190, h: 120, text: ['password', '= correct?'] },
      { id: 'success', type: 'process', x: 500, y: 345, w: 190, h: 70, text: ['passwordOK ← true'] },
      { id: 'count', type: 'process', x: 75, y: 345, w: 180, h: 70, text: ['attempts ←', 'attempts + 1'] },
      { id: 'again', type: 'decision', x: 95, y: 465, w: 150, h: 100, text: ['attempts', '< 3?'] },
      { id: 'output1', type: 'io', x: 500, y: 485, w: 190, h: 70, text: ['OUTPUT', '"Access granted"'] },
      { id: 'output2', type: 'io', x: 60, y: 600, w: 220, h: 70, text: ['OUTPUT', '"Access denied"'] },
      { id: 'end', type: 'terminator', x: 500, y: 615, w: 160, h: 60, text: ['End'] },
    ],
    edges: [
      { id: 'start-init', x1: 380, y1: 80, x2: 380, y2: 110 },
      { id: 'init-input', x1: 380, y1: 180, x2: 380, y2: 215 },
      { id: 'input-check', x1: 380, y1: 285, x2: 380, y2: 320 },
      { id: 'check-success', x1: 475, y1: 380, x2: 500, y2: 380 },
      { id: 'check-count', x1: 285, y1: 380, x2: 255, y2: 380 },
      { id: 'count-again', x1: 165, y1: 415, x2: 165, y2: 465 },
      { id: 'again-input', x1: 245, y1: 515, x2: 270, y2: 250 },
      { id: 'success-output', x1: 595, y1: 415, x2: 595, y2: 485 },
      { id: 'output-end', x1: 595, y1: 555, x2: 595, y2: 615 },
      { id: 'again-denied', x1: 165, y1: 565, x2: 165, y2: 600 },
      { id: 'denied-end', x1: 280, y1: 635, x2: 500, y2: 645 },
    ],
    edgeLabels: [
      { id: 'yes1', x: 488, y: 365, text: 'Yes' },
      { id: 'no1', x: 268, y: 365, text: 'No' },
      { id: 'yes2', x: 250, y: 500, text: 'Yes' },
      { id: 'no2', x: 130, y: 585, text: 'No' },
    ],
    steps: [
      {
        node: 'start',
        edge: 'start-init',
        title: 'Start the algorithm',
        explanation: 'Execution begins at the Start symbol.',
        values: { attempts: '-', passwordOK: '-' },
        output: '',
      },
      {
        node: 'init',
        edge: 'init-input',
        title: 'Initialise variables',
        explanation: 'attempts starts at 0 and passwordOK starts as false.',
        values: { attempts: 0, passwordOK: 'false' },
        output: '',
      },
      {
        node: 'input',
        edge: 'input-check',
        title: 'Input first password',
        explanation: 'The first entered password is incorrect in this trace.',
        values: { attempts: 0, passwordOK: 'false' },
        output: '',
      },
      {
        node: 'check',
        edge: 'check-count',
        title: 'Decision: password is incorrect',
        explanation: 'The condition password = correct is false, so the No branch is followed.',
        values: { attempts: 0, passwordOK: 'false' },
        output: '',
      },
      {
        node: 'count',
        edge: 'count-again',
        title: 'Increase attempts',
        explanation: 'attempts becomes 0 + 1.',
        values: { attempts: 1, passwordOK: 'false' },
        output: '',
      },
      {
        node: 'again',
        edge: 'again-input',
        title: 'Decision: attempts < 3',
        explanation: '1 is less than 3, so the algorithm allows another input.',
        values: { attempts: 1, passwordOK: 'false' },
        output: '',
      },
      {
        node: 'input',
        edge: 'input-check',
        title: 'Input second password',
        explanation: 'The second entered password is correct in this trace.',
        values: { attempts: 1, passwordOK: 'false' },
        output: '',
      },
      {
        node: 'check',
        edge: 'check-success',
        title: 'Decision: password is correct',
        explanation: 'The condition password = correct is true, so the Yes branch is followed.',
        values: { attempts: 1, passwordOK: 'false' },
        output: '',
      },
      {
        node: 'success',
        edge: 'success-output',
        title: 'Set success flag',
        explanation: 'passwordOK becomes true.',
        values: { attempts: 1, passwordOK: 'true' },
        output: '',
      },
      {
        node: 'output1',
        edge: 'output-end',
        title: 'Output access granted',
        explanation: 'The user is allowed access.',
        values: { attempts: 1, passwordOK: 'true' },
        output: 'Access granted',
      },
      {
        node: 'end',
        edge: '',
        title: 'End the algorithm',
        explanation: 'Execution stops.',
        values: { attempts: 1, passwordOK: 'true' },
        output: 'Access granted',
      },
    ],
  },
  {
    id: 'sum-until',
    title: 'Sum until limit',
    skill: 'loop + accumulator',
    variables: ['n', 'total'],
    nodes: [
      { id: 'start', type: 'terminator', x: 300, y: 25, w: 160, h: 60, text: ['Start'] },
      { id: 'init', type: 'process', x: 270, y: 115, w: 220, h: 70, text: ['n ← 1', 'total ← 0'] },
      { id: 'check', type: 'decision', x: 285, y: 225, w: 190, h: 120, text: ['n ≤ 4?'] },
      { id: 'add', type: 'process', x: 285, y: 390, w: 190, h: 70, text: ['total ←', 'total + n'] },
      { id: 'inc', type: 'process', x: 285, y: 500, w: 190, h: 70, text: ['n ← n + 1'] },
      { id: 'out', type: 'io', x: 510, y: 250, w: 190, h: 70, text: ['OUTPUT total'] },
      { id: 'end', type: 'terminator', x: 525, y: 380, w: 160, h: 60, text: ['End'] },
    ],
    edges: [
      { id: 'start-init', x1: 380, y1: 85, x2: 380, y2: 115 },
      { id: 'init-check', x1: 380, y1: 185, x2: 380, y2: 225 },
      { id: 'check-add', x1: 380, y1: 345, x2: 380, y2: 390 },
      { id: 'add-inc', x1: 380, y1: 460, x2: 380, y2: 500 },
      { id: 'inc-check', x1: 285, y1: 535, x2: 210, y2: 285 },
      { id: 'check-out', x1: 475, y1: 285, x2: 510, y2: 285 },
      { id: 'out-end', x1: 605, y1: 320, x2: 605, y2: 380 },
    ],
    edgeLabels: [
      { id: 'yes', x: 395, y: 368, text: 'Yes' },
      { id: 'no', x: 490, y: 270, text: 'No' },
    ],
    steps: [
      {
        node: 'start',
        edge: 'start-init',
        title: 'Start the algorithm',
        explanation: 'Execution begins at Start.',
        values: { n: '-', total: '-' },
        output: '',
      },
      {
        node: 'init',
        edge: 'init-check',
        title: 'Initialise variables',
        explanation: 'n starts at 1 and total starts at 0.',
        values: { n: 1, total: 0 },
        output: '',
      },
      {
        node: 'check',
        edge: 'check-add',
        title: 'Check n ≤ 4',
        explanation: '1 ≤ 4 is true, so enter the loop body.',
        values: { n: 1, total: 0 },
        output: '',
      },
      {
        node: 'add',
        edge: 'add-inc',
        title: 'Add n to total',
        explanation: 'total becomes 0 + 1.',
        values: { n: 1, total: 1 },
        output: '',
      },
      {
        node: 'inc',
        edge: 'inc-check',
        title: 'Increase n',
        explanation: 'n becomes 2.',
        values: { n: 2, total: 1 },
        output: '',
      },
      {
        node: 'check',
        edge: 'check-add',
        title: 'Check n ≤ 4',
        explanation: '2 ≤ 4 is true.',
        values: { n: 2, total: 1 },
        output: '',
      },
      {
        node: 'add',
        edge: 'add-inc',
        title: 'Add n to total',
        explanation: 'total becomes 1 + 2.',
        values: { n: 2, total: 3 },
        output: '',
      },
      {
        node: 'inc',
        edge: 'inc-check',
        title: 'Increase n',
        explanation: 'n becomes 3.',
        values: { n: 3, total: 3 },
        output: '',
      },
      {
        node: 'check',
        edge: 'check-add',
        title: 'Check n ≤ 4',
        explanation: '3 ≤ 4 is true.',
        values: { n: 3, total: 3 },
        output: '',
      },
      {
        node: 'add',
        edge: 'add-inc',
        title: 'Add n to total',
        explanation: 'total becomes 3 + 3.',
        values: { n: 3, total: 6 },
        output: '',
      },
      {
        node: 'inc',
        edge: 'inc-check',
        title: 'Increase n',
        explanation: 'n becomes 4.',
        values: { n: 4, total: 6 },
        output: '',
      },
      {
        node: 'check',
        edge: 'check-add',
        title: 'Check n ≤ 4',
        explanation: '4 ≤ 4 is true.',
        values: { n: 4, total: 6 },
        output: '',
      },
      {
        node: 'add',
        edge: 'add-inc',
        title: 'Add n to total',
        explanation: 'total becomes 6 + 4.',
        values: { n: 4, total: 10 },
        output: '',
      },
      {
        node: 'inc',
        edge: 'inc-check',
        title: 'Increase n',
        explanation: 'n becomes 5.',
        values: { n: 5, total: 10 },
        output: '',
      },
      {
        node: 'check',
        edge: 'check-out',
        title: 'Check n ≤ 4',
        explanation: '5 ≤ 4 is false, so leave the loop.',
        values: { n: 5, total: 10 },
        output: '',
      },
      {
        node: 'out',
        edge: 'out-end',
        title: 'Output total',
        explanation: 'The final total is displayed.',
        values: { n: 5, total: 10 },
        output: '10',
      },
      {
        node: 'end',
        edge: '',
        title: 'End the algorithm',
        explanation: 'Execution stops.',
        values: { n: 5, total: 10 },
        output: '10',
      },
    ],
  },
]

const currentProgram = computed(() => programs.find((program) => program.id === selectedProgramId.value) || programs[0])
const currentStepData = computed(() => currentProgram.value.steps[currentStep.value])

const visibleTraceRows = computed(() => {
  if (showFullTrace.value) {
    return currentProgram.value.steps
  }

  return currentProgram.value.steps.slice(0, currentStep.value + 1)
})

function diamondPoints(node) {
  const cx = node.x + node.w / 2
  const cy = node.y + node.h / 2

  return `${cx},${node.y} ${node.x + node.w},${cy} ${cx},${node.y + node.h} ${node.x},${cy}`
}

function next() {
  if (currentStep.value < currentProgram.value.steps.length - 1) {
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
  showFullTrace.value = false
}

function selectProgram(id) {
  selectedProgramId.value = id
  reset()
}

function displayValue(value) {
  if (value === undefined || value === null || value === '') {
    return '-'
  }

  return value
}

function nodeLabel(nodeId) {
  const node = currentProgram.value.nodes.find((item) => item.id === nodeId)
  if (!node) return '-'
  if (node.type === 'io') return 'Input / Output'
  if (node.type === 'terminator') return 'Start / End'
  return node.type.charAt(0).toUpperCase() + node.type.slice(1)
}
</script>

<style scoped>
.flow-demo {
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

.intro,
.hint {
  color: var(--vp-c-text-2);
}

.intro {
  margin: 8px 0 0;
}

.status-pill {
  border: 1px solid var(--vp-c-divider);
  background: var(--vp-c-bg);
  border-radius: 999px;
  padding: 8px 12px;
  font-weight: 800;
  white-space: nowrap;
}

.program-selector,
.panel,
.flowchart-panel,
.state-panel,
.trace-panel,
.symbol-panel,
.exam-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px 16px;
  background: var(--vp-c-bg);
  margin-top: 16px;
}

.panel-title {
  margin: 0 0 10px;
  color: var(--vp-c-brand-1);
  font-weight: 900;
}

.program-buttons {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 10px;
}

.program-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
  cursor: pointer;
  text-align: left;
}

.program-button strong,
.program-button span {
  display: block;
}

.program-button span {
  margin-top: 4px;
  color: var(--vp-c-text-2);
}

.program-button.active {
  outline: 2px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.main-grid {
  display: grid;
  grid-template-columns: minmax(0, 1.2fr) minmax(0, 0.8fr);
  gap: 14px;
}

.flowchart-panel {
  overflow-x: auto;
}

.flowchart-panel svg {
  min-width: 680px;
  display: block;
}

.edge {
  stroke: var(--vp-c-divider);
  stroke-width: 4;
}

.edge.active {
  stroke: var(--vp-c-brand-1);
  stroke-width: 6;
}

.arrow-head {
  fill: var(--vp-c-divider);
}

.node rect,
.node polygon {
  fill: var(--vp-c-bg-soft);
  stroke: var(--vp-c-divider);
  stroke-width: 3;
}

.node.active rect,
.node.active polygon {
  fill: var(--vp-c-brand-soft);
  stroke: var(--vp-c-brand-1);
  stroke-width: 5;
}

.node.io rect {
  transform: skewX(-10deg);
  transform-box: fill-box;
  transform-origin: center;
}

.node text,
.edge-label {
  fill: var(--vp-c-text-1);
  font-weight: 800;
  text-anchor: middle;
  font-size: 14px;
}

.edge-label {
  fill: var(--vp-c-brand-1);
}

.state-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  background: var(--vp-c-bg-soft);
  padding: 12px;
  margin-top: 12px;
}

.state-title {
  margin: 0 0 8px;
  font-weight: 900;
  color: var(--vp-c-brand-1);
}

.variable-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 8px;
}

.variable-card,
.output-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  background: var(--vp-c-bg);
  padding: 10px;
}

.variable-card span,
.output-box span {
  display: block;
  color: var(--vp-c-text-2);
  font-weight: 700;
}

.variable-card strong,
.output-box strong {
  display: block;
  margin-top: 4px;
  font-size: 1.2rem;
}

.output-box {
  margin-top: 8px;
}

.controls {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  margin-top: 14px;
}

.primary-button,
.secondary-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 9px 14px;
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

.table-header {
  display: flex;
  justify-content: space-between;
  gap: 12px;
  align-items: flex-start;
}

.table-scroll {
  overflow-x: auto;
}

table {
  width: 100%;
  min-width: 760px;
  border-collapse: collapse;
}

th,
td {
  border: 1px solid var(--vp-c-divider);
  padding: 9px;
  text-align: left;
}

th {
  background: var(--vp-c-bg-soft);
}

tr.active {
  background: var(--vp-c-brand-soft);
  font-weight: 900;
}

.symbol-grid {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 10px;
}

.symbol-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  background: var(--vp-c-bg-soft);
  padding: 12px;
}

.symbol-card strong,
.symbol-card span {
  display: block;
}

.symbol-card span {
  margin-top: 4px;
  color: var(--vp-c-text-2);
}

.exam-box summary {
  cursor: pointer;
  font-weight: 900;
}

.exam-box p {
  margin-bottom: 0;
}

@media (max-width: 900px) {
  .demo-heading,
  .main-grid,
  .program-buttons,
  .table-header,
  .symbol-grid {
    display: flex;
    flex-direction: column;
  }
}
</style>
