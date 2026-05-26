<template>
  <section class="search-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Linear Search Visualizer</h3>
        <p class="intro">
          Step through a linear search and watch how each array element is checked one by one.
        </p>
      </div>

      <div :class="['status-pill', resultClass]">
        {{ resultText }}
      </div>
    </div>

    <div class="settings-grid">
      <article class="panel">
        <p class="panel-title">Array data</p>
        <p class="hint">
          Use comma-separated values. Example: 14, 7, 23, 9, 5
        </p>

        <label>
          Array
          <input v-model="arrayText" type="text" @input="reset" />
        </label>

        <label>
          Target value
          <input v-model.number="target" type="number" @input="reset" />
        </label>

        <div class="preset-row">
          <button type="button" class="secondary-button" @click="presetFoundMiddle">
            Found in middle
          </button>
          <button type="button" class="secondary-button" @click="presetFoundLast">
            Found last
          </button>
          <button type="button" class="secondary-button" @click="presetNotFound">
            Not found
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
            <span>found</span>
            <strong>{{ currentStepData.found ? 'true' : 'false' }}</strong>
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
              current: index === currentStepData.index && !currentStepData.complete,
              checked: checkedIndexes.includes(index),
              match: currentStepData.matchIndex === index,
              missed: checkedIndexes.includes(index) && currentStepData.matchIndex !== index
            }
          ]"
        >
          <span class="index-label">index {{ index }}</span>
          <strong>{{ value }}</strong>
        </div>
      </div>
    </div>

    <div class="pseudocode-panel">
      <p class="panel-title">Pseudocode</p>

      <ol class="code-list">
        <li :class="{ active: currentStepData.line === 1 }">
          <span>1</span>
          <code>found ← false</code>
        </li>
        <li :class="{ active: currentStepData.line === 2 }">
          <span>2</span>
          <code>index ← 0</code>
        </li>
        <li :class="{ active: currentStepData.line === 3 }">
          <span>3</span>
          <code>WHILE index &lt; length(array) AND found = false</code>
        </li>
        <li :class="{ active: currentStepData.line === 4 }">
          <span>4</span>
          <code>IF array[index] = target THEN</code>
        </li>
        <li :class="{ active: currentStepData.line === 5 }">
          <span>5</span>
          <code>found ← true</code>
        </li>
        <li :class="{ active: currentStepData.line === 6 }">
          <span>6</span>
          <code>ELSE index ← index + 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 7 }">
          <span>7</span>
          <code>OUTPUT found</code>
        </li>
      </ol>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Trace table</p>
          <p class="hint">
            The trace shows each comparison made during the search.
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
              <th>array[index]</th>
              <th>target</th>
              <th>found</th>
              <th>comparison</th>
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
              <td>{{ target }}</td>
              <td>{{ step.found ? 'true' : 'false' }}</td>
              <td>{{ step.comparison }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="analysis-grid">
      <article class="analysis-card">
        <p class="panel-title">Best case</p>
        <p>
          The target is at the first index, so only one comparison is needed.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Worst case</p>
        <p>
          The target is at the last index or not in the array, so every element may need to be checked.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Key property</p>
        <p>
          Linear search works on unsorted arrays because it checks each element in order.
        </p>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Linear search checks each element in a list one at a time, starting from the first element.
        Each element is compared with the target value. If a match is found, the search can stop.
        If the end of the list is reached without a match, the target is not in the list.
        Linear search can be used on unsorted data, but it may be inefficient for long lists because every item may need to be checked.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const arrayText = ref('14, 7, 23, 9, 5, 18')
const target = ref(9)
const currentStep = ref(0)
const showFullTrace = ref(false)

const arrayValues = computed(() => {
  return arrayText.value
    .split(',')
    .map((item) => Number(item.trim()))
    .filter((item) => !Number.isNaN(item))
})

const steps = computed(() => {
  const values = arrayValues.value
  const output = [
    {
      line: 1,
      title: 'Initialise found',
      explanation: 'The search starts with found set to false because the target has not been found yet.',
      index: '-',
      currentValue: '-',
      found: false,
      comparisons: 0,
      comparison: 'No comparison yet',
      matchIndex: -1,
      complete: false,
    },
    {
      line: 2,
      title: 'Start at index 0',
      explanation: 'Linear search begins at the first element in the array.',
      index: 0,
      currentValue: values[0] ?? '-',
      found: false,
      comparisons: 0,
      comparison: 'Ready to compare first item',
      matchIndex: -1,
      complete: false,
    },
  ]

  let found = false
  let comparisons = 0
  let matchIndex = -1

  for (let index = 0; index < values.length; index++) {
    if (found) break

    comparisons++
    const currentValue = values[index]
    const isMatch = currentValue === target.value

    output.push({
      line: 4,
      title: `Compare index ${index}`,
      explanation: `Compare array[${index}] (${currentValue}) with target (${target.value}).`,
      index,
      currentValue,
      found,
      comparisons,
      comparison: `${currentValue} = ${target.value}? ${isMatch ? 'Yes' : 'No'}`,
      matchIndex: isMatch ? index : -1,
      complete: false,
    })

    if (isMatch) {
      found = true
      matchIndex = index

      output.push({
        line: 5,
        title: 'Target found',
        explanation: `The value at index ${index} matches the target, so found becomes true and the search stops.`,
        index,
        currentValue,
        found: true,
        comparisons,
        comparison: 'Match found',
        matchIndex,
        complete: true,
      })

      break
    }

    output.push({
      line: 6,
      title: 'Move to next index',
      explanation: `No match at index ${index}, so the search moves to the next element.`,
      index: index + 1 < values.length ? index + 1 : index,
      currentValue: index + 1 < values.length ? values[index + 1] : '-',
      found: false,
      comparisons,
      comparison: 'No match; continue',
      matchIndex: -1,
      complete: false,
    })
  }

  if (!found) {
    output.push({
      line: 7,
      title: 'Target not found',
      explanation: 'Every element has been checked and no match was found.',
      index: values.length - 1,
      currentValue: '-',
      found: false,
      comparisons,
      comparison: 'End of array reached',
      matchIndex: -1,
      complete: true,
    })
  } else {
    output.push({
      line: 7,
      title: 'Output result',
      explanation: `The algorithm outputs true because the target was found at index ${matchIndex}.`,
      index: matchIndex,
      currentValue: values[matchIndex],
      found: true,
      comparisons,
      comparison: 'Output true',
      matchIndex,
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

const checkedIndexes = computed(() => {
  const checked = []

  for (const step of steps.value.slice(0, currentStep.value + 1)) {
    if (typeof step.index === 'number' && step.line >= 4 && step.comparisons > 0) {
      checked.push(step.index)
    }
  }

  return [...new Set(checked)]
})

const resultText = computed(() => {
  if (!currentStepData.value.complete) {
    return 'Searching'
  }

  return currentStepData.value.found ? 'Found' : 'Not found'
})

const resultClass = computed(() => {
  if (!currentStepData.value.complete) {
    return 'searching'
  }

  return currentStepData.value.found ? 'found' : 'not-found'
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

function presetFoundMiddle() {
  arrayText.value = '14, 7, 23, 9, 5, 18'
  target.value = 9
  reset()
}

function presetFoundLast() {
  arrayText.value = '4, 12, 8, 19, 3, 25'
  target.value = 25
  reset()
}

function presetNotFound() {
  arrayText.value = '6, 11, 2, 17, 10, 24'
  target.value = 9
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
.search-demo {
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
  min-width: 82px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  background: var(--vp-c-bg-soft);
  padding: 10px;
  text-align: center;
}

.array-cell strong,
.index-label {
  display: block;
}

.index-label {
  color: var(--vp-c-text-2);
  font-size: 0.82rem;
}

.array-cell.current {
  outline: 3px solid var(--vp-c-brand-1);
}

.array-cell.checked {
  background: var(--vp-c-bg);
}

.array-cell.match {
  background: rgba(20, 150, 80, 0.14);
  outline: 3px solid #14804a;
}

.array-cell.missed {
  opacity: 0.65;
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
