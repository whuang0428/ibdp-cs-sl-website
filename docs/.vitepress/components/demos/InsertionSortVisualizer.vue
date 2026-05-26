<template>
  <section class="insertion-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Insertion Sort Visualizer</h3>
        <p class="intro">
          Step through insertion sort and watch each key value move left into the correct position in the sorted part.
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
          <button type="button" class="secondary-button" @click="presetAlmostSorted">
            Almost sorted
          </button>
        </div>
      </article>

      <article class="panel">
        <p class="panel-title">Current action</p>
        <h4>{{ currentStepData.title }}</h4>
        <p>{{ currentStepData.explanation }}</p>

        <div class="state-grid">
          <div class="state-card">
            <span>i</span>
            <strong>{{ displayValue(currentStepData.i) }}</strong>
          </div>
          <div class="state-card">
            <span>j</span>
            <strong>{{ displayValue(currentStepData.j) }}</strong>
          </div>
          <div class="state-card">
            <span>key</span>
            <strong>{{ displayValue(currentStepData.keyValue) }}</strong>
          </div>
          <div class="state-card">
            <span>shifts</span>
            <strong>{{ currentStepData.shifts }}</strong>
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
              sorted: isSortedCell(index),
              key: index === currentStepData.i && currentStepData.phase === 'choose',
              comparing: currentStepData.compare.includes(index),
              shifted: currentStepData.shifted.includes(index),
              inserted: currentStepData.insertedIndex === index
            }
          ]"
        >
          <span class="index-label">index {{ index }}</span>
          <strong>{{ value }}</strong>
          <span class="role-label">{{ roleFor(index) }}</span>
        </div>
      </div>

      <div class="key-box">
        <span>Current key value</span>
        <strong>{{ displayValue(currentStepData.keyValue) }}</strong>
      </div>
    </div>

    <div class="legend-panel">
      <div class="legend-item">
        <span class="legend-box sorted"></span>
        <strong>Sorted part</strong>
      </div>
      <div class="legend-item">
        <span class="legend-box key"></span>
        <strong>Key value selected</strong>
      </div>
      <div class="legend-item">
        <span class="legend-box comparing"></span>
        <strong>Comparing with key</strong>
      </div>
      <div class="legend-item">
        <span class="legend-box shifted"></span>
        <strong>Shifted right</strong>
      </div>
      <div class="legend-item">
        <span class="legend-box inserted"></span>
        <strong>Key inserted</strong>
      </div>
    </div>

    <div class="pseudocode-panel">
      <p class="panel-title">Pseudocode</p>

      <ol class="code-list">
        <li :class="{ active: currentStepData.line === 1 }">
          <span>1</span>
          <code>FOR i ← 1 TO length(array) - 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 2 }">
          <span>2</span>
          <code>key ← array[i]</code>
        </li>
        <li :class="{ active: currentStepData.line === 3 }">
          <span>3</span>
          <code>j ← i - 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 4 }">
          <span>4</span>
          <code>WHILE j ≥ 0 AND array[j] &gt; key</code>
        </li>
        <li :class="{ active: currentStepData.line === 5 }">
          <span>5</span>
          <code>array[j + 1] ← array[j]</code>
        </li>
        <li :class="{ active: currentStepData.line === 6 }">
          <span>6</span>
          <code>j ← j - 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 7 }">
          <span>7</span>
          <code>array[j + 1] ← key</code>
        </li>
      </ol>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Trace table</p>
          <p class="hint">
            The trace records how the key value is compared, shifted, and inserted.
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
              <th>i</th>
              <th>j</th>
              <th>key</th>
              <th>Array</th>
              <th>Action</th>
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
              <td>{{ displayValue(step.i) }}</td>
              <td>{{ displayValue(step.j) }}</td>
              <td>{{ displayValue(step.keyValue) }}</td>
              <td>{{ step.array.join(', ') }}</td>
              <td>{{ step.shortAction }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="analysis-grid">
      <article class="analysis-card">
        <p class="panel-title">Main idea</p>
        <p>
          Insertion sort takes one key value and inserts it into the correct position in the already sorted part.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Sorted part</p>
        <p>
          The left side of the array is treated as sorted, and it grows by one item after each pass.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">When it is useful</p>
        <p>
          Insertion sort is often easier to understand and can work well when the data is already almost sorted.
        </p>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Insertion sort builds a sorted part of the list one item at a time. It takes the next unsorted value as the key,
        compares it with values in the sorted part, shifts larger values one position to the right, and inserts the key
        into the correct position. This repeats until all values are in sorted order.
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
  let shifts = 0
  const n = arr.length

  output.push({
    line: 1,
    title: 'Start insertion sort',
    explanation: 'Insertion sort begins with the first value treated as the sorted part.',
    array: [...arr],
    i: '-',
    j: '-',
    keyValue: '-',
    sortedUntil: 0,
    phase: 'start',
    compare: [],
    shifted: [],
    insertedIndex: -1,
    shifts,
    shortAction: 'Start',
    complete: n <= 1,
  })

  if (n <= 1) {
    output.push({
      line: 7,
      title: 'Array already sorted',
      explanation: 'An array with zero or one value is already sorted.',
      array: [...arr],
      i: '-',
      j: '-',
      keyValue: '-',
      sortedUntil: n - 1,
      phase: 'complete',
      compare: [],
      shifted: [],
      insertedIndex: -1,
      shifts,
      shortAction: 'Complete',
      complete: true,
    })

    return output
  }

  for (let i = 1; i < n; i++) {
    const keyValue = arr[i]
    let j = i - 1

    output.push({
      line: 2,
      title: `Choose key at index ${i}`,
      explanation: `The key value is ${keyValue}. It will be inserted into the sorted part on the left.`,
      array: [...arr],
      i,
      j,
      keyValue,
      sortedUntil: i - 1,
      phase: 'choose',
      compare: [i],
      shifted: [],
      insertedIndex: -1,
      shifts,
      shortAction: `key ← ${keyValue}`,
      complete: false,
    })

    output.push({
      line: 3,
      title: 'Set j to the previous index',
      explanation: `j starts at ${i - 1}, so the key can be compared with values in the sorted part.`,
      array: [...arr],
      i,
      j,
      keyValue,
      sortedUntil: i - 1,
      phase: 'compare',
      compare: [j, i],
      shifted: [],
      insertedIndex: -1,
      shifts,
      shortAction: `j ← ${i - 1}`,
      complete: false,
    })

    while (j >= 0 && arr[j] > keyValue) {
      output.push({
        line: 4,
        title: `Compare array[${j}] with key`,
        explanation: `${arr[j]} is greater than key ${keyValue}, so ${arr[j]} must shift right.`,
        array: [...arr],
        i,
        j,
        keyValue,
        sortedUntil: i - 1,
        phase: 'compare',
        compare: [j],
        shifted: [],
        insertedIndex: -1,
        shifts,
        shortAction: `${arr[j]} > ${keyValue}? Yes`,
        complete: false,
      })

      arr[j + 1] = arr[j]
      shifts++

      output.push({
        line: 5,
        title: 'Shift value right',
        explanation: `Move ${arr[j]} from index ${j} to index ${j + 1}.`,
        array: [...arr],
        i,
        j,
        keyValue,
        sortedUntil: i - 1,
        phase: 'shift',
        compare: [j],
        shifted: [j + 1],
        insertedIndex: -1,
        shifts,
        shortAction: `Shift index ${j} to ${j + 1}`,
        complete: false,
      })

      j--

      output.push({
        line: 6,
        title: 'Move j left',
        explanation: `j becomes ${j}. The algorithm continues checking the sorted part.`,
        array: [...arr],
        i,
        j,
        keyValue,
        sortedUntil: i - 1,
        phase: 'compare',
        compare: j >= 0 ? [j] : [],
        shifted: [],
        insertedIndex: -1,
        shifts,
        shortAction: `j ← ${j}`,
        complete: false,
      })
    }

    output.push({
      line: 4,
      title: 'Stop shifting',
      explanation: j >= 0
        ? `${arr[j]} is not greater than key ${keyValue}, so the correct insertion position has been found.`
        : `j is now less than 0, so the key should be inserted at the start.`,
      array: [...arr],
      i,
      j,
      keyValue,
      sortedUntil: i - 1,
      phase: 'compare',
      compare: j >= 0 ? [j] : [],
      shifted: [],
      insertedIndex: -1,
      shifts,
      shortAction: j >= 0 ? `${arr[j]} > ${keyValue}? No` : 'Reached start',
      complete: false,
    })

    arr[j + 1] = keyValue

    output.push({
      line: 7,
      title: 'Insert key',
      explanation: `Insert key ${keyValue} at index ${j + 1}. The sorted part now extends to index ${i}.`,
      array: [...arr],
      i,
      j,
      keyValue,
      sortedUntil: i,
      phase: 'insert',
      compare: [],
      shifted: [],
      insertedIndex: j + 1,
      shifts,
      shortAction: `Insert key at index ${j + 1}`,
      complete: false,
    })
  }

  output.push({
    line: 7,
    title: 'Array sorted',
    explanation: 'All keys have been inserted into the correct positions. The array is sorted.',
    array: [...arr],
    i: '-',
    j: '-',
    keyValue: '-',
    sortedUntil: n - 1,
    phase: 'complete',
    compare: [],
    shifted: [],
    insertedIndex: -1,
    shifts,
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

function presetAlmostSorted() {
  arrayText.value = '1, 2, 4, 3, 5'
  reset()
}

function isSortedCell(index) {
  return index <= currentStepData.value.sortedUntil
}

function roleFor(index) {
  if (currentStepData.value.insertedIndex === index) return 'inserted'
  if (currentStepData.value.shifted.includes(index)) return 'shifted'
  if (currentStepData.value.compare.includes(index)) return 'compare'
  if (index === currentStepData.value.i && currentStepData.value.phase === 'choose') return 'key'
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
.insertion-demo {
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

.array-cell.sorted {
  background: rgba(20, 150, 80, 0.1);
}

.array-cell.key {
  outline: 3px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.array-cell.comparing {
  outline: 3px solid #d28c1e;
  background: rgba(210, 140, 30, 0.14);
}

.array-cell.shifted {
  outline: 3px solid #d28c1e;
}

.array-cell.inserted {
  outline: 3px solid #14804a;
  background: rgba(20, 150, 80, 0.18);
}

.key-box {
  margin-top: 12px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  background: var(--vp-c-bg-soft);
  padding: 12px;
}

.key-box span,
.key-box strong {
  display: block;
}

.key-box span {
  color: var(--vp-c-text-2);
  font-weight: 700;
}

.key-box strong {
  font-size: 1.4rem;
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

.legend-box.sorted {
  background: rgba(20, 150, 80, 0.1);
}

.legend-box.key {
  background: var(--vp-c-brand-soft);
}

.legend-box.comparing,
.legend-box.shifted {
  background: rgba(210, 140, 30, 0.14);
}

.legend-box.inserted {
  background: rgba(20, 150, 80, 0.18);
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
