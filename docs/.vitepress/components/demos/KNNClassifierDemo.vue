<template>
  <section class="knn-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>k-Nearest Neighbour Classifier</h3>
        <p class="intro">
          Move the unknown data point and change k to see how nearby training examples decide the predicted class.
        </p>
      </div>

      <div :class="['status-pill', predictedClassClass]">
        Prediction: {{ predictedClass }}
      </div>
    </div>

    <div class="controls-grid">
      <article class="panel">
        <p class="panel-title">Unknown point</p>

        <label>
          Feature 1: study hours = <strong>{{ unknown.x }}</strong>
          <input v-model.number="unknown.x" type="range" min="1" max="9" step="0.5" />
        </label>

        <label>
          Feature 2: practice score = <strong>{{ unknown.y }}</strong>
          <input v-model.number="unknown.y" type="range" min="1" max="9" step="0.5" />
        </label>

        <p class="hint">
          You can also click on the chart to move the unknown point.
        </p>
      </article>

      <article class="panel">
        <p class="panel-title">Choose k</p>

        <div class="k-buttons">
          <button
            v-for="option in kOptions"
            :key="option"
            type="button"
            :class="['k-button', { active: k === option }]"
            @click="k = option"
          >
            k = {{ option }}
          </button>
        </div>

        <p class="hint">
          k means how many nearest training examples are used for the vote.
        </p>

        <button type="button" class="secondary-button" @click="reset">
          Reset example
        </button>
      </article>
    </div>

    <div class="chart-panel">
      <svg
        viewBox="0 0 760 520"
        role="img"
        aria-label="k nearest neighbour scatter plot"
        @click="moveUnknownFromClick"
      >
        <line x1="80" y1="440" x2="690" y2="440" class="axis" />
        <line x1="80" y1="70" x2="80" y2="440" class="axis" />

        <text x="385" y="490" class="axis-label">Feature 1: study hours</text>
        <text x="28" y="255" class="axis-label rotated">Feature 2: practice score</text>

        <g v-for="tick in ticks" :key="'x-' + tick">
          <line :x1="toSvgX(tick)" y1="435" :x2="toSvgX(tick)" y2="445" class="tick" />
          <text :x="toSvgX(tick)" y="465" class="tick-label">{{ tick }}</text>
        </g>

        <g v-for="tick in ticks" :key="'y-' + tick">
          <line x1="75" :y1="toSvgY(tick)" x2="85" :y2="toSvgY(tick)" class="tick" />
          <text x="58" :y="toSvgY(tick) + 5" class="tick-label">{{ tick }}</text>
        </g>

        <circle
          v-for="point in trainingPoints"
          :key="point.id"
          :cx="toSvgX(point.x)"
          :cy="toSvgY(point.y)"
          r="11"
          :class="['training-point', point.label.toLowerCase(), { nearest: isNearest(point.id) }]"
        />

        <line
          v-for="item in nearestNeighbours"
          :key="'line-' + item.id"
          :x1="toSvgX(unknown.x)"
          :y1="toSvgY(unknown.y)"
          :x2="toSvgX(item.x)"
          :y2="toSvgY(item.y)"
          class="distance-line"
        />

        <g class="unknown-point">
          <circle :cx="toSvgX(unknown.x)" :cy="toSvgY(unknown.y)" r="15" />
          <text :x="toSvgX(unknown.x)" :y="toSvgY(unknown.y) + 5">?</text>
        </g>

        <g class="legend">
          <circle cx="545" cy="75" r="8" class="training-point pass" />
          <text x="562" y="80">Pass</text>
          <circle cx="545" cy="102" r="8" class="training-point support" />
          <text x="562" y="107">Needs support</text>
          <circle cx="545" cy="130" r="10" class="unknown-legend" />
          <text x="562" y="135">Unknown point</text>
        </g>
      </svg>
    </div>

    <div class="result-grid">
      <article class="result-card">
        <p class="panel-title">Neighbour vote</p>
        <div class="vote-row">
          <span>Pass</span>
          <strong>{{ passVotes }}</strong>
        </div>
        <div class="vote-row">
          <span>Needs support</span>
          <strong>{{ supportVotes }}</strong>
        </div>
        <p class="decision-text">{{ decisionText }}</p>
      </article>

      <article class="result-card">
        <p class="panel-title">How the prediction is made</p>
        <ol>
          <li>Calculate the distance from the unknown point to each training point.</li>
          <li>Sort the distances from smallest to largest.</li>
          <li>Choose the k nearest neighbours.</li>
          <li>Use majority vote to predict the class.</li>
        </ol>
      </article>
    </div>

    <div class="table-section">
      <p class="panel-title">Nearest distance table</p>
      <p class="hint">The highlighted rows are the k nearest neighbours used for the prediction.</p>

      <div class="table-scroll">
        <table>
          <thead>
            <tr>
              <th>Rank</th>
              <th>Point</th>
              <th>Study hours</th>
              <th>Practice score</th>
              <th>Class</th>
              <th>Distance</th>
              <th>Used?</th>
            </tr>
          </thead>
          <tbody>
            <tr
              v-for="(item, index) in sortedDistances"
              :key="item.id"
              :class="{ used: index < k }"
            >
              <td>{{ index + 1 }}</td>
              <td>{{ item.id }}</td>
              <td>{{ item.x }}</td>
              <td>{{ item.y }}</td>
              <td>{{ item.label }}</td>
              <td>{{ item.distance.toFixed(2) }}</td>
              <td>{{ index < k ? 'Yes' : 'No' }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        k-nearest neighbour is a supervised learning algorithm used for classification. The unknown item is compared with labelled training data.
        The algorithm calculates the distance to training examples, selects the k nearest neighbours, and assigns the class that appears most often
        among those neighbours. Changing k can change the prediction because a different number of neighbours are included in the vote.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, reactive, ref } from 'vue'

const k = ref(3)
const kOptions = [1, 3, 5, 7]

const unknown = reactive({
  x: 5,
  y: 5,
})

const trainingPoints = [
  { id: 'A', x: 2, y: 2.5, label: 'Needs support' },
  { id: 'B', x: 2.7, y: 3.4, label: 'Needs support' },
  { id: 'C', x: 3.2, y: 2.2, label: 'Needs support' },
  { id: 'D', x: 4, y: 3.1, label: 'Needs support' },
  { id: 'E', x: 4.7, y: 4.2, label: 'Needs support' },
  { id: 'F', x: 5.1, y: 5.8, label: 'Pass' },
  { id: 'G', x: 5.7, y: 6.5, label: 'Pass' },
  { id: 'H', x: 6.4, y: 5.7, label: 'Pass' },
  { id: 'I', x: 7.1, y: 7.2, label: 'Pass' },
  { id: 'J', x: 8.2, y: 7.8, label: 'Pass' },
  { id: 'K', x: 7.7, y: 6.4, label: 'Pass' },
  { id: 'L', x: 3.9, y: 5.2, label: 'Needs support' },
]

const ticks = [1, 2, 3, 4, 5, 6, 7, 8, 9]

const sortedDistances = computed(() => {
  return trainingPoints
    .map((point) => ({
      ...point,
      distance: distance(unknown, point),
    }))
    .sort((a, b) => a.distance - b.distance)
})

const nearestNeighbours = computed(() => sortedDistances.value.slice(0, k.value))

const passVotes = computed(() => nearestNeighbours.value.filter((item) => item.label === 'Pass').length)
const supportVotes = computed(() => nearestNeighbours.value.filter((item) => item.label === 'Needs support').length)

const predictedClass = computed(() => {
  if (passVotes.value > supportVotes.value) {
    return 'Pass'
  }

  if (supportVotes.value > passVotes.value) {
    return 'Needs support'
  }

  return nearestNeighbours.value[0]?.label || 'Unknown'
})

const predictedClassClass = computed(() => predictedClass.value === 'Pass' ? 'pass' : 'support')

const decisionText = computed(() => {
  if (passVotes.value === supportVotes.value) {
    return `There is a tie, so this demo uses the closest neighbour as the tie-breaker. The prediction is ${predictedClass.value}.`
  }

  return `The majority of the ${k.value} nearest neighbours are "${predictedClass.value}", so the unknown point is classified as ${predictedClass.value}.`
})

function distance(a, b) {
  return Math.sqrt((a.x - b.x) ** 2 + (a.y - b.y) ** 2)
}

function isNearest(id) {
  return nearestNeighbours.value.some((item) => item.id === id)
}

function toSvgX(value) {
  return 80 + ((value - 1) / 8) * 610
}

function toSvgY(value) {
  return 440 - ((value - 1) / 8) * 370
}

function fromSvgX(svgX) {
  return clamp(1 + ((svgX - 80) / 610) * 8)
}

function fromSvgY(svgY) {
  return clamp(1 + ((440 - svgY) / 370) * 8)
}

function clamp(value) {
  return Math.max(1, Math.min(9, Math.round(value * 2) / 2))
}

function moveUnknownFromClick(event) {
  const svg = event.currentTarget
  const point = svg.createSVGPoint()
  point.x = event.clientX
  point.y = event.clientY

  const svgPoint = point.matrixTransform(svg.getScreenCTM().inverse())

  unknown.x = fromSvgX(svgPoint.x)
  unknown.y = fromSvgY(svgPoint.y)
}

function reset() {
  unknown.x = 5
  unknown.y = 5
  k.value = 3
}
</script>

<style scoped>
.knn-demo {
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
  border-radius: 999px;
  padding: 8px 12px;
  font-weight: 900;
  white-space: nowrap;
}

.status-pill.pass {
  background: rgba(20, 150, 80, 0.14);
  color: #14804a;
}

.status-pill.support {
  background: rgba(210, 140, 30, 0.16);
  color: #9a5a00;
}

.controls-grid,
.result-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

.panel,
.chart-panel,
.result-card,
.table-section,
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

label {
  display: grid;
  gap: 6px;
  margin: 12px 0;
  font-weight: 800;
}

input[type='range'] {
  width: 100%;
}

.k-buttons {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 8px;
}

.k-button,
.secondary-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 9px 14px;
  cursor: pointer;
  font-weight: 800;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
}

.k-button.active {
  background: var(--vp-c-brand-soft);
  border-color: var(--vp-c-brand-1);
}

.chart-panel {
  overflow-x: auto;
}

.chart-panel svg {
  min-width: 720px;
  display: block;
  cursor: crosshair;
}

.axis,
.tick {
  stroke: var(--vp-c-divider);
  stroke-width: 3;
}

.tick {
  stroke-width: 2;
}

.axis-label,
.tick-label,
.legend text {
  fill: var(--vp-c-text-2);
  font-size: 14px;
  text-anchor: middle;
}

.rotated {
  transform: rotate(-90deg);
  transform-origin: 28px 255px;
}

.training-point {
  stroke: var(--vp-c-bg);
  stroke-width: 3;
}

.training-point.pass {
  fill: #14804a;
}

.training-point.support {
  fill: #d28c1e;
}

.training-point.nearest {
  stroke: var(--vp-c-text-1);
  stroke-width: 5;
}

.distance-line {
  stroke: var(--vp-c-brand-1);
  stroke-width: 2;
  stroke-dasharray: 6 6;
  opacity: 0.65;
}

.unknown-point circle,
.unknown-legend {
  fill: var(--vp-c-bg);
  stroke: var(--vp-c-brand-1);
  stroke-width: 4;
}

.unknown-point text {
  fill: var(--vp-c-text-1);
  font-size: 18px;
  font-weight: 900;
  text-anchor: middle;
}

.vote-row {
  display: flex;
  justify-content: space-between;
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 10px;
  margin: 8px 0;
  background: var(--vp-c-bg-soft);
}

.decision-text {
  font-weight: 800;
}

.table-scroll {
  overflow-x: auto;
}

table {
  width: 100%;
  min-width: 680px;
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

tr.used {
  background: var(--vp-c-brand-soft);
  font-weight: 800;
}

.exam-box summary {
  cursor: pointer;
  font-weight: 900;
}

.exam-box p {
  margin-bottom: 0;
}

@media (max-width: 850px) {
  .demo-heading,
  .controls-grid,
  .result-grid {
    display: flex;
    flex-direction: column;
  }

  .k-buttons {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}
</style>
