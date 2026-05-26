<template>
  <section class="fit-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Overfitting vs Underfitting Visualizer</h3>
        <p class="intro">
          Change the model complexity and compare how well the model performs on training data and unseen test data.
        </p>
      </div>

      <div :class="['status-pill', selectedMode]">
        {{ currentMode.label }}
      </div>
    </div>

    <div class="controls-panel">
      <p class="panel-title">Choose model complexity</p>

      <div class="mode-buttons">
        <button
          v-for="mode in modes"
          :key="mode.id"
          type="button"
          :class="['mode-button', { active: selectedMode === mode.id }]"
          @click="selectedMode = mode.id"
        >
          <strong>{{ mode.label }}</strong>
          <span>{{ mode.short }}</span>
        </button>
      </div>

      <div class="toggle-row">
        <label>
          <input type="checkbox" v-model="showTrainingPoints" />
          Show training data
        </label>
        <label>
          <input type="checkbox" v-model="showTestPoints" />
          Show test data
        </label>
      </div>
    </div>

    <div class="chart-panel">
      <svg viewBox="0 0 920 420" role="img" aria-label="Model fitting chart">
        <line x1="70" y1="350" x2="860" y2="350" class="axis" />
        <line x1="70" y1="40" x2="70" y2="350" class="axis" />

        <text x="465" y="395" class="axis-label">Feature value</text>
        <text x="20" y="205" class="axis-label rotated">Target value</text>

        <path :d="currentMode.path" class="model-line" />

        <g v-if="showTrainingPoints">
          <circle
            v-for="point in trainingPoints"
            :key="'train-' + point.id"
            :cx="point.x"
            :cy="point.y"
            r="8"
            class="point training"
          />
        </g>

        <g v-if="showTestPoints">
          <rect
            v-for="point in testPoints"
            :key="'test-' + point.id"
            :x="point.x - 8"
            :y="point.y - 8"
            width="16"
            height="16"
            rx="4"
            class="point test"
          />
        </g>

        <g class="legend">
          <circle cx="685" cy="55" r="7" class="point training" />
          <text x="700" y="60">training data</text>
          <rect x="675" y="76" width="14" height="14" rx="4" class="point test" />
          <text x="700" y="88">test data</text>
          <line x1="675" y1="110" x2="690" y2="110" class="model-line legend-line" />
          <text x="700" y="115">model prediction</text>
        </g>
      </svg>
    </div>

    <div class="metrics-grid">
      <article class="metric-card">
        <p class="metric-name">Training error</p>
        <p class="metric-value">{{ currentMode.trainingError }}</p>
        <p>{{ currentMode.trainingMeaning }}</p>
      </article>

      <article class="metric-card">
        <p class="metric-name">Test error</p>
        <p class="metric-value">{{ currentMode.testError }}</p>
        <p>{{ currentMode.testMeaning }}</p>
      </article>

      <article class="metric-card">
        <p class="metric-name">Model complexity</p>
        <p class="metric-value">{{ currentMode.complexity }}</p>
        <p>{{ currentMode.complexityMeaning }}</p>
      </article>
    </div>

    <div class="interpretation-panel">
      <p class="panel-title">Interpretation</p>
      <p>{{ currentMode.interpretation }}</p>
    </div>

    <div class="comparison-grid">
      <article class="comparison-card">
        <p class="panel-title">What the model is doing</p>
        <ul>
          <li v-for="item in currentMode.behaviour" :key="item">{{ item }}</li>
        </ul>
      </article>

      <article class="comparison-card">
        <p class="panel-title">Exam phrase to remember</p>
        <p class="exam-phrase">{{ currentMode.examPhrase }}</p>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Underfitting occurs when a model is too simple to capture the pattern in the data, so it performs poorly on both training and test data.
        Overfitting occurs when a model learns the training data too closely, including noise, so it has very low training error but higher test error.
        A better model should generalize well, meaning it performs well on unseen test data as well as training data.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const selectedMode = ref('balanced')
const showTrainingPoints = ref(true)
const showTestPoints = ref(true)

const trainingPoints = [
  { id: 1, x: 100, y: 295 },
  { id: 2, x: 180, y: 245 },
  { id: 3, x: 250, y: 220 },
  { id: 4, x: 320, y: 160 },
  { id: 5, x: 405, y: 155 },
  { id: 6, x: 500, y: 125 },
  { id: 7, x: 590, y: 135 },
  { id: 8, x: 680, y: 95 },
  { id: 9, x: 770, y: 105 },
  { id: 10, x: 835, y: 80 },
]

const testPoints = [
  { id: 1, x: 140, y: 265 },
  { id: 2, x: 285, y: 185 },
  { id: 3, x: 455, y: 140 },
  { id: 4, x: 635, y: 115 },
  { id: 5, x: 805, y: 92 },
]

const modes = [
  {
    id: 'underfit',
    label: 'Underfitting',
    short: 'too simple',
    path: 'M90 275 C210 260, 350 242, 500 222 C650 202, 760 190, 850 175',
    trainingError: 'High',
    testError: 'High',
    complexity: 'Low',
    trainingMeaning: 'The model does not fit the training points well.',
    testMeaning: 'The model also performs poorly on unseen data.',
    complexityMeaning: 'The model is too simple to learn the real pattern.',
    interpretation:
      'This model is underfitting. It is too simple, so it misses the pattern in both the training data and the test data.',
    behaviour: [
      'It ignores much of the real trend.',
      'It has high bias.',
      'It performs badly on training data and test data.',
    ],
    examPhrase:
      'The model is underfitting because it is too simple and cannot capture the pattern in the data.',
  },
  {
    id: 'balanced',
    label: 'Good fit',
    short: 'generalizes well',
    path: 'M90 300 C180 245, 270 200, 365 165 C475 124, 575 125, 675 105 C760 88, 815 85, 850 78',
    trainingError: 'Low',
    testError: 'Low',
    complexity: 'Suitable',
    trainingMeaning: 'The model fits the training data reasonably well.',
    testMeaning: 'The model also works well on unseen data.',
    complexityMeaning: 'The model is complex enough but not too complex.',
    interpretation:
      'This model is a better fit. It captures the main pattern without following every small noise point.',
    behaviour: [
      'It captures the general trend.',
      'It avoids memorising every training point.',
      'It generalizes better to unseen data.',
    ],
    examPhrase:
      'The model generalizes well because it performs well on both training data and unseen test data.',
  },
  {
    id: 'overfit',
    label: 'Overfitting',
    short: 'too complex',
    path: 'M90 298 C120 210, 155 340, 180 245 C220 95, 255 300, 320 160 C380 40, 430 260, 500 125 C555 40, 600 230, 680 95 C720 30, 770 175, 835 80',
    trainingError: 'Very low',
    testError: 'High',
    complexity: 'High',
    trainingMeaning: 'The model follows the training points very closely.',
    testMeaning: 'The model performs worse on unseen data because it has learned noise.',
    complexityMeaning: 'The model is too complex and reacts to small random variation.',
    interpretation:
      'This model is overfitting. It memorises the training data too closely, including noise, so it does not generalize well.',
    behaviour: [
      'It follows almost every training point.',
      'It has high variance.',
      'It performs well on training data but poorly on test data.',
    ],
    examPhrase:
      'The model is overfitting because it learns the training data too closely and performs poorly on unseen test data.',
  },
]

const currentMode = computed(() => modes.find((mode) => mode.id === selectedMode.value) || modes[1])
</script>

<style scoped>
.fit-demo {
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
  border-radius: 999px;
  padding: 8px 12px;
  font-weight: 900;
  white-space: nowrap;
}

.status-pill.underfit {
  background: rgba(210, 140, 30, 0.14);
}

.status-pill.balanced {
  background: rgba(20, 150, 80, 0.14);
}

.status-pill.overfit {
  background: rgba(210, 55, 55, 0.12);
}

.controls-panel,
.chart-panel,
.interpretation-panel,
.comparison-card,
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

.mode-buttons {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 10px;
}

.mode-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
  cursor: pointer;
  text-align: left;
}

.mode-button strong,
.mode-button span {
  display: block;
}

.mode-button span {
  margin-top: 4px;
  color: var(--vp-c-text-2);
}

.mode-button.active {
  outline: 2px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.toggle-row {
  display: flex;
  flex-wrap: wrap;
  gap: 14px;
  margin-top: 14px;
  font-weight: 700;
}

.chart-panel {
  overflow-x: auto;
}

.chart-panel svg {
  min-width: 720px;
  display: block;
}

.axis {
  stroke: var(--vp-c-divider);
  stroke-width: 4;
}

.axis-label {
  fill: var(--vp-c-text-2);
  font-size: 15px;
  text-anchor: middle;
}

.rotated {
  transform: rotate(-90deg);
  transform-origin: 20px 205px;
}

.model-line {
  fill: none;
  stroke: var(--vp-c-brand-1);
  stroke-width: 5;
  stroke-linecap: round;
}

.legend-line {
  stroke-width: 4;
}

.point.training {
  fill: var(--vp-c-brand-1);
}

.point.test {
  fill: var(--vp-c-bg);
  stroke: var(--vp-c-brand-1);
  stroke-width: 3;
}

.legend text {
  fill: var(--vp-c-text-2);
  font-size: 14px;
}

.metrics-grid,
.comparison-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 14px;
  margin-top: 16px;
}

.comparison-grid {
  grid-template-columns: repeat(2, minmax(0, 1fr));
}

.metric-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px 16px;
  background: var(--vp-c-bg);
}

.metric-name {
  margin: 0;
  color: var(--vp-c-brand-1);
  font-weight: 900;
}

.metric-value {
  margin: 6px 0;
  font-size: 1.6rem;
  font-weight: 900;
}

.exam-phrase {
  font-weight: 800;
  background: var(--vp-c-bg-soft);
  border-radius: 12px;
  padding: 12px;
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
  .mode-buttons,
  .metrics-grid,
  .comparison-grid {
    display: flex;
    flex-direction: column;
  }
}
</style>
