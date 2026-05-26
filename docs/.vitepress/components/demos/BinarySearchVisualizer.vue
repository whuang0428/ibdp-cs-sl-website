<template>
  <section class="binary-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Binary Search Visualizer</h3>
        <p class="intro">
          Step through binary search and watch how low, mid, and high narrow the search range.
        </p>
      </div>

      <div :class="['status-pill', resultClass]">
        {{ resultText }}
      </div>
    </div>

    <div class="settings-grid">
      <article class="panel">
        <p class="panel-title">Sorted array data</p>
        <p class="hint">
          Binary search requires sorted data. Use comma-separated values in ascending order.
        </p>

        <label>
          Sorted array
          <input v-model="arrayText" type="text" @input="reset" />
        </label>

        <label>
          Target value
          <input v-model.number="target" type="number" @input="reset" />
        </label>

        <div v-if="!isSorted" class="warning-box">
          This array is not sorted. Binary search only works correctly on sorted data.
        </div>

        <div class="preset-row">
          <button type="button" class="secondary-button" @click="presetFound">
            Found example
          </button>
          <button type="button" class="secondary-button" @click="presetNotFound">
            Not found example
          </button>
          <button type="button" class="secondary-button" @click="presetLong">
            Longer array
          </button>
        </div>
      </article>

      <article class="panel">
        <p class="panel-title">Current action</p>
        <h4>{{ currentStepData.title }}</h4>
        <p>{{ currentStepData.explanation }}</p>

        <div class="state-grid">
          <div class="state-card">
            <span>low</span>
            <strong>{{ displayValue(currentStepData.low) }}</strong>
          </div>
          <div class="state-card">
            <span>mid</span>
            <strong>{{ displayValue(currentStepData.mid) }}</strong>
          </div>
          <div class="state-card">
            <span>high</span>
            <strong>{{ displayValue(currentStepData.high) }}</strong>
          </div>
          <div class="state-card">
            <span>comparisons</span>
            <strong>{{ currentStepData.comparisons }}</strong>
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
              activeRange: isInActiveRange(index),
              low: index === currentStepData.low,
              mid: index === currentStepData.mid,
              high: index === currentStepData.high,
              eliminated: isEliminated(index),
              match: currentStepData.matchIndex === index
            }
          ]"
        >
          <span class="index-label">index {{ index }}</span>
          <strong>{{ value }}</strong>
          <span class="role-label">{{ roleFor(index) }}</span>
        </div>
      </div>
    </div>

    <div class="pseudocode-panel">
      <p class="panel-title">Pseudocode</p>

      <ol class="code-list">
        <li :class="{ active: currentStepData.line === 1 }">
          <span>1</span>
          <code>low ← 0</code>
        </li>
        <li :class="{ active: currentStepData.line === 2 }">
          <span>2</span>
          <code>high ← length(array) - 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 3 }">
          <span>3</span>
          <code>WHILE low ≤ high</code>
        </li>
        <li :class="{ active: currentStepData.line === 4 }">
          <span>4</span>
          <code>mid ← (low + high) DIV 2</code>
        </li>
        <li :class="{ active: currentStepData.line === 5 }">
          <span>5</span>
          <code>IF array[mid] = target THEN found</code>
        </li>
        <li :class="{ active: currentStepData.line === 6 }">
          <span>6</span>
          <code>ELSE IF array[mid] &lt; target THEN low ← mid + 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 7 }">
          <span>7</span>
          <code>ELSE high ← mid - 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 8 }">
          <span>8</span>
          <code>OUTPUT result</code>
        </li>
      </ol>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Trace table</p>
          <p class="hint">
            Each row shows how the search range changes after comparing the middle value.
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
              <th>low</th>
              <th>mid</th>
              <th>high</th>
              <th>array[mid]</th>
              <th>comparison</th>
              <th>result</th>
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
              <td>{{ displayValue(step.low) }}</td>
              <td>{{ displayValue(step.mid) }}</td>
              <td>{{ displayValue(step.high) }}</td>
              <td>{{ displayValue(step.midValue) }}</td>
              <td>{{ step.comparison }}</td>
              <td>{{ step.result }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="analysis-grid">
      <article class="analysis-card">
        <p class="panel-title">Main idea</p>
        <p>
          Binary search compares the target with the middle value and eliminates half of the remaining search range.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Requirement</p>
        <p>
          The array must be sorted. Without sorted data, deciding which half to eliminate is not reliable.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Efficiency</p>
        <p>
          Binary search is faster than linear search for long sorted arrays because it reduces the search range quickly.
        </p>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Binary search is used on sorted data. It compares the target value with the middle element of the current search range.
        If the middle value equals the target, the item is found. If the middle value is less than the target, the lower half is discarded.
        If the middle value is greater than the target, the upper half is discarded. This repeats until the target is found or the search range is empty.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const arrayText = ref('3, 7, 12, 18, 25, 31, 44, 59')
const target = ref(25)
const currentStep = ref(0)
const showFullTrace = ref(false)

const arrayValues = computed(() => {
  return arrayText.value
    .split(',')
    .map((item) => Number(item.trim()))
    .filter((item) => !Number.isNaN(item))
})

const isSorted = computed(() => {
  const values = arrayValues.value
  return values.every((value, index) => index === 0 || value >= values[index - 1])
})

const steps = computed(() => {
  const values = arrayValues.value
  const output = [
    {
      line: 1,
      title: 'Initialise low',
      explanation: 'low starts at index 0, the first position in the array.',
      low: 0,
      mid: '-',
      high: '-',
      midValue: '-',
      comparisons: 0,
      comparison: 'No comparison yet',
      result: 'Searching',
      matchIndex: -1,
      eliminatedLow: -1,
      eliminatedHigh: values.length,
      complete: false,
    },
    {
      line: 2,
      title: 'Initialise high',
      explanation: 'high starts at the last index in the array.',
      low: 0,
      mid: '-',
      high: values.length - 1,
      midValue: '-',
      comparisons: 0,
      comparison: 'No comparison yet',
      result: 'Searching',
      matchIndex: -1,
      eliminatedLow: -1,
      eliminatedHigh: values.length,
      complete: false,
    },
  ]

  let low = 0
  let high = values.length - 1
  let comparisons = 0
  let foundIndex = -1

  while (low <= high && values.length > 0) {
    output.push({
      line: 3,
      title: 'Check search range',
      explanation: `Check whether low (${low}) is less than or equal to high (${high}). The search can continue.`,
      low,
      mid: '-',
      high,
      midValue: '-',
      comparisons,
      comparison: 'low ≤ high',
      result: 'Searching',
      matchIndex: -1,
      eliminatedLow: low - 1,
      eliminatedHigh: high + 1,
      complete: false,
    })

    const mid = Math.floor((low + high) / 2)
    const midValue = values[mid]
    comparisons++

    output.push({
      line: 4,
      title: 'Calculate middle index',
      explanation: `mid is calculated as (${low} + ${high}) DIV 2 = ${mid}.`,
      low,
      mid,
      high,
      midValue,
      comparisons,
      comparison: `array[${mid}] = ${midValue}`,
      result: 'Searching',
      matchIndex: -1,
      eliminatedLow: low - 1,
      eliminatedHigh: high + 1,
      complete: false,
    })

    if (midValue === target.value) {
      foundIndex = mid
      output.push({
        line: 5,
        title: 'Target found',
        explanation: `array[${mid}] equals the target ${target.value}, so the search stops.`,
        low,
        mid,
        high,
        midValue,
        comparisons,
        comparison: `${midValue} = ${target.value}`,
        result: `Found at index ${mid}`,
        matchIndex: mid,
        eliminatedLow: low - 1,
        eliminatedHigh: high + 1,
        complete: true,
      })
      break
    }

    if (midValue < target.value) {
      output.push({
        line: 6,
        title: 'Discard lower half',
        explanation: `${midValue} is less than ${target.value}, so the target must be to the right. low becomes mid + 1.`,
        low: mid + 1,
        mid,
        high,
        midValue,
        comparisons,
        comparison: `${midValue} < ${target.value}`,
        result: 'Searching',
        matchIndex: -1,
        eliminatedLow: mid,
        eliminatedHigh: high + 1,
        complete: false,
      })
      low = mid + 1
    } else {
      output.push({
        line: 7,
        title: 'Discard upper half',
        explanation: `${midValue} is greater than ${target.value}, so the target must be to the left. high becomes mid - 1.`,
        low,
        mid,
        high: mid - 1,
        midValue,
        comparisons,
        comparison: `${midValue} > ${target.value}`,
        result: 'Searching',
        matchIndex: -1,
        eliminatedLow: low - 1,
        eliminatedHigh: mid,
        complete: false,
      })
      high = mid - 1
    }
  }

  if (foundIndex === -1) {
    output.push({
      line: 8,
      title: 'Target not found',
      explanation: 'The search range is empty, so the target is not in the array.',
      low,
      mid: '-',
      high,
      midValue: '-',
      comparisons,
      comparison: 'low > high',
      result: 'Not found',
      matchIndex: -1,
      eliminatedLow: low - 1,
      eliminatedHigh: high + 1,
      complete: true,
    })
  } else {
    output.push({
      line: 8,
      title: 'Output result',
      explanation: `The algorithm outputs the found index: ${foundIndex}.`,
      low,
      mid: foundIndex,
      high,
      midValue: values[foundIndex],
      comparisons,
      comparison: 'Output index',
      result: `Found at index ${foundIndex}`,
      matchIndex: foundIndex,
      eliminatedLow: -1,
      eliminatedHigh: values.length,
      complete: true,
    })
  }

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

const resultText = computed(() => {
  if (!currentStepData.value.complete) {
    return 'Searching'
  }

  return currentStepData.value.matchIndex >= 0 ? 'Found' : 'Not found'
})

const resultClass = computed(() => {
  if (!currentStepData.value.complete) {
    return 'searching'
  }

  return currentStepData.value.matchIndex >= 0 ? 'found' : 'not-found'
})

function isInActiveRange(index) {
  const step = currentStepData.value
  return typeof step.low === 'number' && typeof step.high === 'number' && index >= step.low && index <= step.high
}

function isEliminated(index) {
  const step = currentStepData.value

  if (step.matchIndex === index) return false
  if (typeof step.eliminatedLow === 'number' && index <= step.eliminatedLow) return true
  if (typeof step.eliminatedHigh === 'number' && index >= step.eliminatedHigh) return true

  return false
}

function roleFor(index) {
  const roles = []

  if (index === currentStepData.value.low) roles.push('low')
  if (index === currentStepData.value.mid) roles.push('mid')
  if (index === currentStepData.value.high) roles.push('high')

  return roles.join(' / ')
}

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

function presetFound() {
  arrayText.value = '3, 7, 12, 18, 25, 31, 44, 59'
  target.value = 25
  reset()
}

function presetNotFound() {
  arrayText.value = '2, 5, 9, 14, 20, 27, 33, 41'
  target.value = 21
  reset()
}

function presetLong() {
  arrayText.value = '1, 4, 8, 11, 16, 19, 23, 28, 35, 42, 56, 63, 70'
  target.value = 56
  reset()
}

function displayValue(value) {
  if (value === undefined || value === null || value === '') {
    return '-'
  }

  return value
}
</script>

<style scoped>
.binary-demo {
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

.status-pill.searching {
  background: var(--vp-c-bg);
}

.status-pill.found {
  background: rgba(20, 150, 80, 0.14);
  color: #14804a;
}

.status-pill.not-found {
  background: rgba(210, 55, 55, 0.12);
  color: #b42318;
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

input[type='text'],
input[type='number'] {
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 9px 10px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
}

.warning-box {
  border: 1px solid rgba(210, 55, 55, 0.35);
  border-radius: 12px;
  padding: 10px;
  background: rgba(210, 55, 55, 0.1);
  color: #b42318;
}

.preset-row,
.controls {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
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
  min-width: 84px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  background: var(--vp-c-bg-soft);
  padding: 10px;
  text-align: center;
  opacity: 0.9;
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

.array-cell.activeRange {
  background: var(--vp-c-bg);
}

.array-cell.low,
.array-cell.high {
  outline: 2px dashed var(--vp-c-brand-1);
}

.array-cell.mid {
  outline: 3px solid var(--vp-c-brand-1);
  font-weight: 900;
}

.array-cell.eliminated {
  opacity: 0.35;
}

.array-cell.match {
  background: rgba(20, 150, 80, 0.14);
  outline: 3px solid #14804a;
  opacity: 1;
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
