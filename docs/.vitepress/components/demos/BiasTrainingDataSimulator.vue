<template>
  <section class="bias-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Bias in Training Data Simulator</h3>
        <p class="intro">
          Change the training data balance and see how an ML model can perform well for one condition but poorly for another.
        </p>
      </div>

      <div :class="['status-pill', biasLevelClass]">
        {{ biasLevel }}
      </div>
    </div>

    <div class="scenario-panel">
      <p class="panel-title">Scenario</p>
      <p>
        A school builds a simple image model to detect whether a recycling bin is <strong>full</strong> or <strong>not full</strong>.
        Most training images are taken in bright lighting. Fewer images are taken in dim lighting.
      </p>
      <p>
        The model may look accurate overall, but it may work worse in the under-represented condition.
      </p>
    </div>

    <div class="controls-grid">
      <article class="panel">
        <p class="panel-title">Training data balance</p>

        <label>
          Bright-light training images: <strong>{{ brightImages }}</strong>
          <input v-model.number="brightImages" type="range" min="20" max="200" step="10" />
        </label>

        <label>
          Dim-light training images: <strong>{{ dimImages }}</strong>
          <input v-model.number="dimImages" type="range" min="5" max="200" step="5" />
        </label>

        <div class="preset-row">
          <button type="button" class="secondary-button" @click="presetBiased">
            Biased dataset
          </button>
          <button type="button" class="secondary-button" @click="presetBalanced">
            Balanced dataset
          </button>
          <button type="button" class="secondary-button" @click="presetVeryBiased">
            Very biased dataset
          </button>
        </div>
      </article>

      <article class="panel">
        <p class="panel-title">Data quality</p>

        <label>
          Dim-light variety: <strong>{{ dimVarietyLabel }}</strong>
          <input v-model.number="dimVariety" type="range" min="1" max="5" step="1" />
        </label>

        <label>
          Label noise: <strong>{{ labelNoise }}%</strong>
          <input v-model.number="labelNoise" type="range" min="0" max="30" step="5" />
        </label>

        <p class="hint">
          More variety helps the model learn different real-world cases. More label noise reduces model reliability.
        </p>
      </article>
    </div>

    <div class="dataset-panel">
      <p class="panel-title">Training dataset composition</p>

      <div class="bar-row">
        <span>Bright lighting</span>
        <div class="bar-track">
          <div class="bar-fill bright" :style="{ width: brightPercent + '%' }"></div>
        </div>
        <strong>{{ brightPercent.toFixed(1) }}%</strong>
      </div>

      <div class="bar-row">
        <span>Dim lighting</span>
        <div class="bar-track">
          <div class="bar-fill dim" :style="{ width: dimPercent + '%' }"></div>
        </div>
        <strong>{{ dimPercent.toFixed(1) }}%</strong>
      </div>
    </div>

    <div class="model-panel">
      <p class="panel-title">Model performance by condition</p>

      <div class="performance-grid">
        <article class="performance-card">
          <p class="condition-name">Bright-light test images</p>
          <p class="score">{{ brightAccuracy }}%</p>
          <div class="accuracy-track">
            <div class="accuracy-fill" :style="{ width: brightAccuracy + '%' }"></div>
          </div>
          <p>{{ brightInterpretation }}</p>
        </article>

        <article class="performance-card">
          <p class="condition-name">Dim-light test images</p>
          <p class="score">{{ dimAccuracy }}%</p>
          <div class="accuracy-track">
            <div class="accuracy-fill" :style="{ width: dimAccuracy + '%' }"></div>
          </div>
          <p>{{ dimInterpretation }}</p>
        </article>

        <article class="performance-card">
          <p class="condition-name">Overall test accuracy</p>
          <p class="score">{{ overallAccuracy }}%</p>
          <div class="accuracy-track">
            <div class="accuracy-fill" :style="{ width: overallAccuracy + '%' }"></div>
          </div>
          <p>
            Overall accuracy can hide poor performance for under-represented conditions.
          </p>
        </article>
      </div>
    </div>

    <div class="prediction-panel">
      <p class="panel-title">Try test cases</p>

      <div class="test-buttons">
        <button
          v-for="testCase in testCases"
          :key="testCase.id"
          type="button"
          :class="['test-button', { active: selectedCase === testCase.id }]"
          @click="selectedCase = testCase.id"
        >
          {{ testCase.label }}
        </button>
      </div>

      <div class="prediction-result">
        <p>
          <strong>Test case:</strong>
          {{ activeCase.description }}
        </p>
        <p>
          <strong>Model confidence:</strong>
          {{ activeCaseConfidence }}%
        </p>
        <p>
          <strong>Risk:</strong>
          {{ activeCaseRisk }}
        </p>
      </div>
    </div>

    <div class="interpretation-panel">
      <p class="panel-title">Interpretation</p>
      <p>{{ interpretation }}</p>
    </div>

    <div class="improvement-grid">
      <article class="improvement-card">
        <p class="panel-title">Problem</p>
        <ul>
          <li>Training data is not representative of all real conditions.</li>
          <li>The model learns patterns mainly from the majority condition.</li>
          <li>Overall accuracy may look acceptable while one condition performs poorly.</li>
        </ul>
      </article>

      <article class="improvement-card">
        <p class="panel-title">Improvement</p>
        <ul>
          <li>Collect more examples from under-represented conditions.</li>
          <li>Improve data variety and label quality.</li>
          <li>Evaluate performance separately for different conditions.</li>
        </ul>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Bias in training data occurs when the training data is not representative of the real data the model will face.
        If one condition is under-represented, the model may learn patterns that work well for the majority condition but poorly
        for the minority condition. This can lead to unfair or unreliable predictions. The problem can be reduced by collecting
        more representative data and evaluating model performance across different groups or conditions.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const brightImages = ref(160)
const dimImages = ref(30)
const dimVariety = ref(2)
const labelNoise = ref(10)
const selectedCase = ref('bright-full')

const totalImages = computed(() => brightImages.value + dimImages.value)
const brightPercent = computed(() => (brightImages.value / totalImages.value) * 100)
const dimPercent = computed(() => (dimImages.value / totalImages.value) * 100)

const dimVarietyLabel = computed(() => {
  const labels = {
    1: 'very low',
    2: 'low',
    3: 'medium',
    4: 'high',
    5: 'very high',
  }

  return labels[dimVariety.value]
})

const brightAccuracy = computed(() => {
  const base = 62 + brightImages.value * 0.16 - labelNoise.value * 0.45
  return clampPercent(Math.round(base))
})

const dimAccuracy = computed(() => {
  const representationScore = dimImages.value * 0.18
  const varietyScore = dimVariety.value * 6
  const imbalancePenalty = Math.max(0, brightImages.value - dimImages.value) * 0.07
  const noisePenalty = labelNoise.value * 0.6
  const base = 40 + representationScore + varietyScore - imbalancePenalty - noisePenalty

  return clampPercent(Math.round(base))
})

const overallAccuracy = computed(() => {
  const weighted = (brightAccuracy.value * brightImages.value + dimAccuracy.value * dimImages.value) / totalImages.value
  return clampPercent(Math.round(weighted))
})

const gap = computed(() => Math.abs(brightAccuracy.value - dimAccuracy.value))

const biasLevel = computed(() => {
  if (gap.value >= 30) return 'High bias risk'
  if (gap.value >= 15) return 'Medium bias risk'
  return 'Lower bias risk'
})

const biasLevelClass = computed(() => {
  if (gap.value >= 30) return 'high'
  if (gap.value >= 15) return 'medium'
  return 'low'
})

const brightInterpretation = computed(() => {
  if (brightAccuracy.value >= 85) {
    return 'The model performs strongly on bright-light images because they are well represented.'
  }

  return 'The model has some errors even in bright lighting, possibly because of label noise or insufficient examples.'
})

const dimInterpretation = computed(() => {
  if (dimAccuracy.value < 60) {
    return 'The model performs poorly in dim lighting because this condition is under-represented or lacks variety.'
  }

  if (dimAccuracy.value < 80) {
    return 'The model is improving in dim lighting, but performance is still weaker than the majority condition.'
  }

  return 'The model performs well in dim lighting because the dataset is more representative.'
})

const interpretation = computed(() => {
  if (gap.value >= 30) {
    return 'There is a large performance gap between bright-light and dim-light images. This suggests the training data is biased toward bright-light cases, so the model may be unreliable in dim-light conditions.'
  }

  if (gap.value >= 15) {
    return 'There is a moderate performance gap. The model is better for one condition than the other, so more balanced and varied training data would help.'
  }

  return 'The performance gap is smaller. The training data is more representative, so the model is more likely to generalize across conditions.'
})

const testCases = [
  {
    id: 'bright-full',
    label: 'Bright + full bin',
    description: 'A full recycling bin photographed in bright lighting.',
    condition: 'bright',
  },
  {
    id: 'bright-empty',
    label: 'Bright + not full',
    description: 'A not-full recycling bin photographed in bright lighting.',
    condition: 'bright',
  },
  {
    id: 'dim-full',
    label: 'Dim + full bin',
    description: 'A full recycling bin photographed in dim lighting.',
    condition: 'dim',
  },
  {
    id: 'dim-empty',
    label: 'Dim + not full',
    description: 'A not-full recycling bin photographed in dim lighting.',
    condition: 'dim',
  },
]

const activeCase = computed(() => testCases.find((item) => item.id === selectedCase.value) || testCases[0])

const activeCaseConfidence = computed(() => {
  const base = activeCase.value.condition === 'bright' ? brightAccuracy.value : dimAccuracy.value
  return clampPercent(base - (activeCase.value.id.includes('empty') ? 4 : 0))
})

const activeCaseRisk = computed(() => {
  if (activeCase.value.condition === 'dim' && dimAccuracy.value < brightAccuracy.value - 20) {
    return 'Higher risk of wrong prediction because dim-light cases are under-represented.'
  }

  if (activeCaseConfidence.value >= 80) {
    return 'Lower risk because the model has seen enough similar training examples.'
  }

  return 'Medium risk. The model may need more representative examples.'
})

function clampPercent(value) {
  return Math.max(0, Math.min(99, value))
}

function presetBiased() {
  brightImages.value = 160
  dimImages.value = 30
  dimVariety.value = 2
  labelNoise.value = 10
}

function presetBalanced() {
  brightImages.value = 120
  dimImages.value = 120
  dimVariety.value = 4
  labelNoise.value = 5
}

function presetVeryBiased() {
  brightImages.value = 190
  dimImages.value = 10
  dimVariety.value = 1
  labelNoise.value = 15
}
</script>

<style scoped>
.bias-demo {
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

.status-pill.low {
  background: rgba(20, 150, 80, 0.14);
}

.status-pill.medium {
  background: rgba(210, 140, 30, 0.14);
}

.status-pill.high {
  background: rgba(210, 55, 55, 0.12);
}

.scenario-panel,
.panel,
.dataset-panel,
.model-panel,
.prediction-panel,
.interpretation-panel,
.improvement-card,
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

.controls-grid,
.performance-grid,
.improvement-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

.performance-grid {
  grid-template-columns: repeat(3, minmax(0, 1fr));
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

.preset-row,
.test-buttons {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
}

.secondary-button,
.test-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 9px 14px;
  cursor: pointer;
  font-weight: 800;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
}

.test-button.active {
  background: var(--vp-c-brand-soft);
  border-color: var(--vp-c-brand-1);
}

.bar-row {
  display: grid;
  grid-template-columns: 130px 1fr 72px;
  gap: 12px;
  align-items: center;
  margin: 12px 0;
}

.bar-track,
.accuracy-track {
  height: 18px;
  border-radius: 999px;
  background: var(--vp-c-bg-soft);
  overflow: hidden;
  border: 1px solid var(--vp-c-divider);
}

.bar-fill,
.accuracy-fill {
  height: 100%;
  background: var(--vp-c-brand-1);
}

.bar-fill.dim {
  opacity: 0.65;
}

.performance-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px 16px;
  background: var(--vp-c-bg-soft);
}

.condition-name {
  margin: 0;
  font-weight: 900;
  color: var(--vp-c-brand-1);
}

.score {
  margin: 6px 0;
  font-size: 2rem;
  font-weight: 900;
}

.prediction-result {
  margin-top: 12px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
}

.improvement-card ul {
  margin-bottom: 0;
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
  .performance-grid,
  .improvement-grid {
    display: flex;
    flex-direction: column;
  }

  .bar-row {
    grid-template-columns: 1fr;
  }
}
</style>
