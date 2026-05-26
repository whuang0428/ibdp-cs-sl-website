<template>
  <section class="selection-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Selection Sort Visualizer</h3>
        <p class="intro">
          Step through selection sort and watch how the smallest value is selected from the unsorted part and moved into position.
        </p>
      </div>

      <div :class="['status-pill', currentStepData.complete ? 'complete' : 'sorting']">
        {{ currentStepData.complete ? 'Sorted' : 'Sorting' }}
      </div>
    </div>

    <div class="settings-grid">
      <article class="panel">
        <p class="panel-title">Array data</p>
        <p class="hint">
          Use comma-separated numbers. Example: 8, 3, 6, 2, 9
        </p>

        <label>
          Array
          <input v-model="arrayText" type="text" @input="reset" />
        </label>

        <div class="preset-row">
          <button type="button" class="secondary-button" @click="presetMixed">
            Mixed values
          </button>
          <button type="button" class="secondary-button" @click="presetReverse">
            Reverse order
          </button>
          <button type="button" class="secondary-button" @click="presetAlreadySorted">
            Already sorted
          </button>
        </div>
      </article>

      <article class="panel">
        <p class="panel-title">Current action</p>
        <h4>{{ currentStepData.title }}</h4>
        <p>{{ currentStepData.explanation }}</p>

        <div class="state-grid">
          <div class="state-card">
            <span>position</span>
            <strong>{{ displayValue(currentStepData.position) }}</strong>
          </div>
          <div class="state-card">
            <span>scan index</span>
            <strong>{{ displayValue(currentStepData.scanIndex) }}</strong>
          </div>
          <div class="state-card">
            <span>minIndex</span>
            <strong>{{ displayValue(currentStepData.minIndex) }}</strong>
          </div>
          <div class="state-card">
            <span>swaps</span>
            <strong>{{ currentStepData.swaps }}</strong>
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
          v-for="(value, index) in currentStepData.array"
          :key="index"
          :class="[
            'array-cell',
            {
              position: index === currentStepData.position && !currentStepData.complete,
              scanning: index === currentStepData.scanIndex,
              minimum: index === currentStepData.minIndex && !currentStepData.complete,
              swapped: currentStepData.swapped.includes(index),
              sorted: isSortedCell(index)
            }
          ]"
        >
          <span class="index-label">index {{ index }}</span>
          <strong>{{ value }}</strong>
          <span class="role-label">{{ roleFor(index) }}</span>
        </div>
      </div>
    </div>

    <div class="legend-panel">
      <div class="legend-item">
        <span class="legend-box position"></span>
        <strong>Current position</strong>
      </div>
      <div class="legend-item">
        <span class="legend-box scanning"></span>
        <strong>Scanning value</strong>
      </div>
      <div class="legend-item">
        <span class="legend-box minimum"></span>
        <strong>Current minimum</strong>
      </div>
      <div class="legend-item">
        <span class="legend-box sorted"></span>
        <strong>Sorted prefix</strong>
      </div>
    </div>

    <div class="pseudocode-panel">
      <p class="panel-title">Pseudocode</p>

      <ol class="code-list">
        <li :class="{ active: currentStepData.line === 1 }">
          <span>1</span>
          <code>FOR position ← 0 TO length(array) - 2</code>
        </li>
        <li :class="{ active: currentStepData.line === 2 }">
          <span>2</span>
          <code>minIndex ← position</code>
        </li>
        <li :class="{ active: currentStepData.line === 3 }">
          <span>3</span>
          <code>FOR scanIndex ← position + 1 TO length(array) - 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 4 }">
          <span>4</span>
          <code>IF array[scanIndex] &lt; array[minIndex] THEN</code>
        </li>
        <li :class="{ active: currentStepData.line === 5 }">
          <span>5</span>
          <code>minIndex ← scanIndex</code>
        </li>
        <li :class="{ active: currentStepData.line === 6 }">
          <span>6</span>
          <code>swap array[position] and array[minIndex]</code>
        </li>
        <li :class="{ active: currentStepData.line === 7 }">
          <span>7</span>
          <code>END FOR</code>
        </li>
      </ol>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Trace table</p>
          <p class="hint">
            The trace records how the current minimum is found and swapped into position.
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
              <th>Position</th>
              <th>Scan</th>
              <th>minIndex</th>
              <th>Array</th>
              <th>Action</th>
              <th>Swapped?</th>
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
              <td>{{ displayValue(step.position) }}</td>
              <td>{{ displayValue(step.scanIndex) }}</td>
              <td>{{ displayValue(step.minIndex) }}</td>
              <td>{{ step.array.join(', ') }}</td>
              <td>{{ step.shortAction }}</td>
              <td>{{ step.didSwap ? 'Yes' : 'No' }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="analysis-grid">
      <article class="analysis-card">
        <p class="panel-title">Main idea</p>
        <p>
          Selection sort selects the smallest value from the unsorted part and swaps it into the current position.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Sorted prefix</p>
        <p>
          After each pass, one more value at the start of the array is fixed in its correct position.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Compared with bubble sort</p>
        <p>
          Selection sort usually makes fewer swaps, but it still scans the unsorted part many times.
        </p>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Selection sort divides the list into a sorted part and an unsorted part. It finds the smallest value in the unsorted part
        and swaps it with the value at the current position. This fixes one new position after each pass. The process repeats until
        the list is sorted.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const arrayText = ref('8, 3, 6, 2, 9')
const currentStep = ref(0)
const showFullTrace = ref(false)

const arrayValues = computed(() => {
  return arrayText.value
    .split(',')
    .map((item) => Number(item.trim()))
    .filter((item) => !Number.isNaN(item))
})

const steps = computed(() => {
  const arr = [...arrayValues.value]
  const output = []
  let comparisons = 0
  let swaps = 0
  const n = arr.length

  output.push({
    line: 1,
    title: 'Start selection sort',
    explanation: 'Selection sort begins with the original array. The sorted part is empty at first.',
    array: [...arr],
    position: '-',
    scanIndex: '-',
    minIndex: '-',
    sortedUntil: -1,
    comparisons,
    swaps,
    didSwap: false,
    swapped: [],
    shortAction: 'Start',
    complete: n <= 1,
  })

  if (n <= 1) {
    output.push({
      line: 7,
      title: 'Array already sorted',
      explanation: 'An array with zero or one value is already sorted.',
      array: [...arr],
      position: '-',
      scanIndex: '-',
      minIndex: '-',
      sortedUntil: n - 1,
      comparisons,
      swaps,
      didSwap: false,
      swapped: [],
      shortAction: 'Complete',
      complete: true,
    })

    return output
  }

  for (let position = 0; position < n - 1; position++) {
    let minIndex = position

    output.push({
      line: 2,
      title: `Start pass for position ${position}`,
      explanation: `Assume the smallest value in the unsorted part is currently at index ${position}.`,
      array: [...arr],
      position,
      scanIndex: '-',
      minIndex,
      sortedUntil: position - 1,
      comparisons,
      swaps,
      didSwap: false,
      swapped: [],
      shortAction: `minIndex ← ${position}`,
      complete: false,
    })

    for (let scanIndex = position + 1; scanIndex < n; scanIndex++) {
      comparisons++
      const isNewMin = arr[scanIndex] < arr[minIndex]

      output.push({
        line: 4,
        title: `Compare scanIndex ${scanIndex} with minIndex ${minIndex}`,
        explanation: `Compare ${arr[scanIndex]} with current minimum ${arr[minIndex]}. ${isNewMin ? 'A new smaller value is found.' : 'The current minimum stays the same.'}`,
        array: [...arr],
        position,
        scanIndex,
        minIndex,
        sortedUntil: position - 1,
        comparisons,
        swaps,
        didSwap: false,
        swapped: [],
        shortAction: `${arr[scanIndex]} < ${arr[minIndex]}? ${isNewMin ? 'Yes' : 'No'}`,
        complete: false,
      })

      if (isNewMin) {
        minIndex = scanIndex

        output.push({
          line: 5,
          title: 'Update minIndex',
          explanation: `minIndex becomes ${scanIndex} because this value is the smallest found so far.`,
          array: [...arr],
          position,
          scanIndex,
          minIndex,
          sortedUntil: position - 1,
          comparisons,
          swaps,
          didSwap: false,
          swapped: [],
          shortAction: `minIndex ← ${scanIndex}`,
          complete: false,
        })
      }
    }

    if (minIndex !== position) {
      const left = arr[position]
      const right = arr[minIndex]
      arr[position] = right
      arr[minIndex] = left
      swaps++

      output.push({
        line: 6,
        title: 'Swap smallest value into position',
        explanation: `The smallest value ${right} is swapped into index ${position}.`,
        array: [...arr],
        position,
        scanIndex: '-',
        minIndex,
        sortedUntil: position,
        comparisons,
        swaps,
        didSwap: true,
        swapped: [position, minIndex],
        shortAction: `Swap index ${position} and ${minIndex}`,
        complete: false,
      })
    } else {
      output.push({
        line: 6,
        title: 'No swap needed',
        explanation: `The value at index ${position} is already the smallest value in the unsorted part.`,
        array: [...arr],
        position,
        scanIndex: '-',
        minIndex,
        sortedUntil: position,
        comparisons,
        swaps,
        didSwap: false,
        swapped: [],
        shortAction: 'No swap',
        complete: false,
      })
    }
  }

  output.push({
    line: 7,
    title: 'Array sorted',
    explanation: 'Every position has been fixed. The array is sorted in ascending order.',
    array: [...arr],
    position: '-',
    scanIndex: '-',
    minIndex: '-',
    sortedUntil: n - 1,
    comparisons,
    swaps,
    didSwap: false,
    swapped: [],
    shortAction: 'Complete',
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

function presetMixed() {
  arrayText.value = '8, 3, 6, 2, 9'
  reset()
}

function presetReverse() {
  arrayText.value = '9, 7, 5, 3, 1'
  reset()
}

function presetAlreadySorted() {
  arrayText.value = '1, 2, 3, 4, 5'
  reset()
}

function isSortedCell(index) {
  return index <= currentStepData.value.sortedUntil
}

function roleFor(index) {
  if (currentStepData.value.swapped.includes(index)) return 'swapped'
  if (index === currentStepData.value.position && !currentStepData.value.complete) return 'position'
  if (index === currentStepData.value.scanIndex) return 'scan'
  if (index === currentStepData.value.minIndex && !currentStepData.value.complete) return 'min'
  if (isSortedCell(index)) return 'sorted'
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
.selection-demo {
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

.status-pill.sorting {
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
.legend-panel,
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

.preset-row,
.controls,
.legend-panel {
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

.array-cell.position {
  outline: 3px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.array-cell.scanning {
  outline: 3px solid #d28c1e;
  background: rgba(210, 140, 30, 0.14);
}

.array-cell.minimum {
  outline: 3px solid #14804a;
  background: rgba(20, 150, 80, 0.14);
}

.array-cell.swapped {
  outline: 3px solid #d28c1e;
}

.array-cell.sorted {
  background: rgba(20, 150, 80, 0.14);
}

.legend-item {
  display: flex;
  gap: 8px;
  align-items: center;
}

.legend-box {
  display: inline-block;
  width: 18px;
  height: 18px;
  border-radius: 6px;
  border: 1px solid var(--vp-c-divider);
}

.legend-box.position {
  background: var(--vp-c-brand-soft);
}

.legend-box.scanning {
  background: rgba(210, 140, 30, 0.14);
}

.legend-box.minimum,
.legend-box.sorted {
  background: rgba(20, 150, 80, 0.14);
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
