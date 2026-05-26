<template>
  <section class="maxmin-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Find Maximum / Minimum Visualizer</h3>
        <p class="intro">
          Step through an array traversal and watch how the current best value changes as each element is checked.
        </p>
      </div>

      <div :class="['status-pill', currentStepData.complete ? 'complete' : 'running']">
        {{ currentStepData.complete ? finalLabel : 'Traversing' }}
      </div>
    </div>

    <div class="settings-grid">
      <article class="panel">
        <p class="panel-title">Array and mode</p>
        <p class="hint">
          Use comma-separated numbers. Example: 12, 7, 25, 4, 18
        </p>

        <label>
          Array
          <input v-model="arrayText" type="text" @input="reset" />
        </label>

        <div class="mode-row">
          <button
            type="button"
            :class="['mode-button', { active: mode === 'max' }]"
            @click="setMode('max')"
          >
            Find maximum
          </button>
          <button
            type="button"
            :class="['mode-button', { active: mode === 'min' }]"
            @click="setMode('min')"
          >
            Find minimum
          </button>
        </div>

        <div class="preset-row">
          <button type="button" class="secondary-button" @click="presetMixed">
            Mixed values
          </button>
          <button type="button" class="secondary-button" @click="presetNegative">
            Include negatives
          </button>
          <button type="button" class="secondary-button" @click="presetDuplicates">
            Duplicates
          </button>
        </div>
      </article>

      <article class="panel">
        <p class="panel-title">Current action</p>
        <h4>{{ currentStepData.title }}</h4>
        <p>{{ currentStepData.explanation }}</p>

        <div class="state-grid">
          <div class="state-card">
            <span>index</span>
            <strong>{{ displayValue(currentStepData.index) }}</strong>
          </div>
          <div class="state-card">
            <span>current value</span>
            <strong>{{ displayValue(currentStepData.currentValue) }}</strong>
          </div>
          <div class="state-card">
            <span>{{ bestLabel }}</span>
            <strong>{{ displayValue(currentStepData.bestValue) }}</strong>
          </div>
          <div class="state-card">
            <span>{{ bestIndexLabel }}</span>
            <strong>{{ displayValue(currentStepData.bestIndex) }}</strong>
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
      </article>
    </div>

    <div class="array-panel">
      <p class="panel-title">Array visualization</p>

      <div class="array-row">
        <div
          v-for="(value, index) in arrayValues"
          :key="index"
          :class="[
            'array-cell',
            {
              current: index === currentStepData.index && !currentStepData.complete,
              best: index === currentStepData.bestIndex,
              checked: checkedIndexes.includes(index),
              updated: currentStepData.updated && index === currentStepData.bestIndex
            }
          ]"
        >
          <span class="index-label">index {{ index }}</span>
          <strong>{{ value }}</strong>
          <span class="role-label">{{ roleFor(index) }}</span>
        </div>
      </div>
    </div>

    <div class="comparison-panel">
      <p class="panel-title">Comparison rule</p>
      <div class="rule-box">
        <template v-if="mode === 'max'">
          If <strong>current value &gt; maxValue</strong>, update maxValue and maxIndex.
        </template>
        <template v-else>
          If <strong>current value &lt; minValue</strong>, update minValue and minIndex.
        </template>
      </div>
    </div>

    <div class="pseudocode-panel">
      <p class="panel-title">Pseudocode</p>

      <ol class="code-list">
        <li :class="{ active: currentStepData.line === 1 }">
          <span>1</span>
          <code>{{ bestVariable }} ← array[0]</code>
        </li>
        <li :class="{ active: currentStepData.line === 2 }">
          <span>2</span>
          <code>{{ bestIndexVariable }} ← 0</code>
        </li>
        <li :class="{ active: currentStepData.line === 3 }">
          <span>3</span>
          <code>FOR index ← 1 TO length(array) - 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 4 }">
          <span>4</span>
          <code>current ← array[index]</code>
        </li>
        <li :class="{ active: currentStepData.line === 5 }">
          <span>5</span>
          <code>IF current {{ comparisonSymbol }} {{ bestVariable }} THEN</code>
        </li>
        <li :class="{ active: currentStepData.line === 6 }">
          <span>6</span>
          <code>{{ bestVariable }} ← current</code>
        </li>
        <li :class="{ active: currentStepData.line === 7 }">
          <span>7</span>
          <code>{{ bestIndexVariable }} ← index</code>
        </li>
        <li :class="{ active: currentStepData.line === 8 }">
          <span>8</span>
          <code>OUTPUT {{ bestVariable }}</code>
        </li>
      </ol>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Trace table</p>
          <p class="hint">
            The trace records each comparison and whether the current best value changes.
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
              <th>Line</th>
              <th>index</th>
              <th>current</th>
              <th>{{ bestVariable }}</th>
              <th>{{ bestIndexVariable }}</th>
              <th>comparison</th>
              <th>updated?</th>
            </tr>
          </thead>
          <tbody>
            <tr
              v-for="(step, index) in visibleTraceRows"
              :key="index"
              :class="{ active: index === currentStep }"
            >
              <td>{{ index + 1 }}</td>
              <td>{{ step.line }}</td>
              <td>{{ displayValue(step.index) }}</td>
              <td>{{ displayValue(step.currentValue) }}</td>
              <td>{{ displayValue(step.bestValue) }}</td>
              <td>{{ displayValue(step.bestIndex) }}</td>
              <td>{{ step.comparison }}</td>
              <td>{{ step.updated ? 'Yes' : 'No' }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="analysis-grid">
      <article class="analysis-card">
        <p class="panel-title">Main idea</p>
        <p>
          The algorithm stores the first value as the current best, then checks the remaining values one by one.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Why start at array[0]?</p>
        <p>
          Starting with the first value avoids using an unrealistic starting value and works even with negative numbers.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Array traversal</p>
        <p>
          Every element may need to be checked, so this is a common example of traversing an array with a loop.
        </p>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        To find the maximum or minimum value in an array, the first element can be stored as the current best value.
        The algorithm then traverses the rest of the array. Each value is compared with the current best value.
        If the new value is better, the best value and its index are updated. After the loop ends, the best value is output.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const arrayText = ref('12, 7, 25, 4, 18')
const mode = ref('max')
const currentStep = ref(0)
const showFullTrace = ref(false)

const arrayValues = computed(() => {
  return arrayText.value
    .split(',')
    .map((item) => Number(item.trim()))
    .filter((item) => !Number.isNaN(item))
})

const bestVariable = computed(() => mode.value === 'max' ? 'maxValue' : 'minValue')
const bestIndexVariable = computed(() => mode.value === 'max' ? 'maxIndex' : 'minIndex')
const bestLabel = computed(() => mode.value === 'max' ? 'maxValue' : 'minValue')
const bestIndexLabel = computed(() => mode.value === 'max' ? 'maxIndex' : 'minIndex')
const comparisonSymbol = computed(() => mode.value === 'max' ? '>' : '<')
const finalLabel = computed(() => mode.value === 'max' ? 'Maximum found' : 'Minimum found')

const steps = computed(() => {
  const values = arrayValues.value
  const output = []

  if (values.length === 0) {
    return [
      {
        line: 1,
        title: 'No valid values',
        explanation: 'Enter at least one number in the array.',
        index: '-',
        currentValue: '-',
        bestValue: '-',
        bestIndex: '-',
        comparison: 'No data',
        updated: false,
        complete: true,
      },
    ]
  }

  let bestValue = values[0]
  let bestIndex = 0

  output.push({
    line: 1,
    title: `Initialise ${bestVariable.value}`,
    explanation: `Set ${bestVariable.value} to the first value in the array: ${values[0]}.`,
    index: 0,
    currentValue: values[0],
    bestValue,
    bestIndex,
    comparison: 'Initial value',
    updated: true,
    complete: values.length === 1,
  })

  output.push({
    line: 2,
    title: `Initialise ${bestIndexVariable.value}`,
    explanation: `Set ${bestIndexVariable.value} to 0 because the current best value is at index 0.`,
    index: 0,
    currentValue: values[0],
    bestValue,
    bestIndex,
    comparison: 'Initial index',
    updated: false,
    complete: values.length === 1,
  })

  for (let index = 1; index < values.length; index++) {
    const currentValue = values[index]
    const isBetter = mode.value === 'max'
      ? currentValue > bestValue
      : currentValue < bestValue

    output.push({
      line: 4,
      title: `Read value at index ${index}`,
      explanation: `current becomes array[${index}], which is ${currentValue}.`,
      index,
      currentValue,
      bestValue,
      bestIndex,
      comparison: 'Read current value',
      updated: false,
      complete: false,
    })

    output.push({
      line: 5,
      title: 'Compare with current best',
      explanation: `${currentValue} ${comparisonSymbol.value} ${bestValue}? ${isBetter ? 'Yes, update the current best.' : 'No, keep the current best.'}`,
      index,
      currentValue,
      bestValue,
      bestIndex,
      comparison: `${currentValue} ${comparisonSymbol.value} ${bestValue}? ${isBetter ? 'Yes' : 'No'}`,
      updated: false,
      complete: false,
    })

    if (isBetter) {
      bestValue = currentValue
      bestIndex = index

      output.push({
        line: 6,
        title: `Update ${bestVariable.value}`,
        explanation: `${bestVariable.value} becomes ${currentValue}.`,
        index,
        currentValue,
        bestValue,
        bestIndex,
        comparison: 'New best value found',
        updated: true,
        complete: false,
      })

      output.push({
        line: 7,
        title: `Update ${bestIndexVariable.value}`,
        explanation: `${bestIndexVariable.value} becomes ${index}.`,
        index,
        currentValue,
        bestValue,
        bestIndex,
        comparison: 'New best index stored',
        updated: true,
        complete: false,
      })
    }
  }

  output.push({
    line: 8,
    title: `Output ${bestVariable.value}`,
    explanation: `The final ${bestVariable.value} is ${bestValue}, found at index ${bestIndex}.`,
    index: '-',
    currentValue: '-',
    bestValue,
    bestIndex,
    comparison: 'Traversal complete',
    updated: false,
    complete: true,
  })

  return output
})

const currentStepData = computed(() => {
  return steps.value[Math.min(currentStep.value, steps.value.length - 1)]
})

const visibleTraceRows = computed(() => {
  if (showFullTrace.value) {
    return steps.value
  }

  return steps.value.slice(0, currentStep.value + 1)
})

const checkedIndexes = computed(() => {
  const checked = []

  for (const step of steps.value.slice(0, currentStep.value + 1)) {
    if (typeof step.index === 'number') {
      checked.push(step.index)
    }
  }

  return [...new Set(checked)]
})

function next() {
  if (currentStep.value < steps.value.length - 1) {
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

function setMode(newMode) {
  mode.value = newMode
  reset()
}

function presetMixed() {
  arrayText.value = '12, 7, 25, 4, 18'
  reset()
}

function presetNegative() {
  arrayText.value = '-8, -3, -15, -1, -12'
  reset()
}

function presetDuplicates() {
  arrayText.value = '6, 12, 12, 4, 9, 12'
  reset()
}

function roleFor(index) {
  if (index === currentStepData.value.bestIndex) {
    return mode.value === 'max' ? 'current max' : 'current min'
  }

  if (index === currentStepData.value.index && !currentStepData.value.complete) {
    return 'current'
  }

  if (checkedIndexes.value.includes(index)) {
    return 'checked'
  }

  return ''
}

function displayValue(value) {
  if (value === undefined || value === null || value === '') {
    return '-'
  }

  return value
}
</script>

<style scoped>
.maxmin-demo {
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

.status-pill.running {
  background: var(--vp-c-bg);
}

.status-pill.complete {
  background: rgba(20, 150, 80, 0.14);
  color: #14804a;
}

.settings-grid,
.analysis-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

.analysis-grid {
  grid-template-columns: repeat(3, minmax(0, 1fr));
}

.panel,
.array-panel,
.comparison-panel,
.pseudocode-panel,
.trace-panel,
.analysis-card,
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

input[type='text'] {
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 9px 10px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
}

.mode-row,
.preset-row,
.controls {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
}

.mode-button,
.primary-button,
.secondary-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 9px 14px;
  cursor: pointer;
  font-weight: 800;
}

.mode-button,
.secondary-button {
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
}

.mode-button.active {
  background: var(--vp-c-brand-soft);
  border-color: var(--vp-c-brand-1);
}

.primary-button {
  background: var(--vp-c-brand-1);
  color: white;
  border-color: var(--vp-c-brand-1);
}

.primary-button:disabled,
.secondary-button:disabled {
  opacity: 0.45;
  cursor: not-allowed;
}

.state-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 8px;
  margin-top: 12px;
}

.state-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  background: var(--vp-c-bg-soft);
  padding: 10px;
}

.state-card span {
  display: block;
  color: var(--vp-c-text-2);
  font-weight: 700;
}

.state-card strong {
  display: block;
  margin-top: 4px;
  font-size: 1.2rem;
}

.array-row {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
}

.array-cell {
  min-width: 92px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  background: var(--vp-c-bg-soft);
  padding: 10px;
  text-align: center;
  transition: 0.15s ease;
}

.array-cell strong,
.index-label,
.role-label {
  display: block;
}

.index-label,
.role-label {
  color: var(--vp-c-text-2);
  font-size: 0.82rem;
}

.array-cell.current {
  outline: 3px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.array-cell.best {
  outline: 3px solid #14804a;
  background: rgba(20, 150, 80, 0.14);
}

.array-cell.checked {
  opacity: 0.9;
}

.array-cell.updated {
  outline: 3px solid #d28c1e;
}

.rule-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
}

.code-list {
  list-style: none;
  margin: 0;
  padding: 0;
}

.code-list li {
  display: grid;
  grid-template-columns: 38px 1fr;
  gap: 8px;
  border-radius: 10px;
  padding: 8px;
}

.code-list li.active {
  background: var(--vp-c-brand-soft);
  font-weight: 900;
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
  min-width: 820px;
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

.exam-box summary {
  cursor: pointer;
  font-weight: 900;
}

.exam-box p {
  margin-bottom: 0;
}

@media (max-width: 850px) {
  .demo-heading,
  .settings-grid,
  .analysis-grid,
  .table-header {
    display: flex;
    flex-direction: column;
  }

  .state-grid {
    grid-template-columns: 1fr;
  }
}
</style>
