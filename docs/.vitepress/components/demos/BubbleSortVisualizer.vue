<template>
  <section class="bubble-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Bubble Sort Visualizer</h3>
        <p class="intro">
          Step through bubble sort and watch adjacent values being compared and swapped until the array is sorted.
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
            <span>pass</span>
            <strong>{{ displayValue(currentStepData.passLabel) }}</strong>
          </div>
          <div class="state-card">
            <span>index</span>
            <strong>{{ displayValue(currentStepData.index) }}</strong>
          </div>
          <div class="state-card">
            <span>comparisons</span>
            <strong>{{ currentStepData.comparisons }}</strong>
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
              comparing: currentStepData.compare.includes(index),
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
        <span class="legend-box comparing"></span>
        <strong>Comparing adjacent values</strong>
      </div>
      <div class="legend-item">
        <span class="legend-box swapped"></span>
        <strong>Values just swapped</strong>
      </div>
      <div class="legend-item">
        <span class="legend-box sorted"></span>
        <strong>Confirmed sorted position</strong>
      </div>
    </div>

    <div class="pseudocode-panel">
      <p class="panel-title">Pseudocode</p>

      <ol class="code-list">
        <li :class="{ active: currentStepData.line === 1 }">
          <span>1</span>
          <code>FOR pass ← 0 TO length(array) - 2</code>
        </li>
        <li :class="{ active: currentStepData.line === 2 }">
          <span>2</span>
          <code>FOR index ← 0 TO length(array) - pass - 2</code>
        </li>
        <li :class="{ active: currentStepData.line === 3 }">
          <span>3</span>
          <code>IF array[index] &gt; array[index + 1] THEN</code>
        </li>
        <li :class="{ active: currentStepData.line === 4 }">
          <span>4</span>
          <code>swap array[index] and array[index + 1]</code>
        </li>
        <li :class="{ active: currentStepData.line === 5 }">
          <span>5</span>
          <code>END IF</code>
        </li>
        <li :class="{ active: currentStepData.line === 6 }">
          <span>6</span>
          <code>END FOR</code>
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
            The trace records comparisons, swaps, and pass completion.
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
              <th>Pass</th>
              <th>Index</th>
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
              <td>{{ displayValue(step.passLabel) }}</td>
              <td>{{ displayValue(step.index) }}</td>
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
          Bubble sort compares adjacent pairs and swaps them if they are in the wrong order.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Why largest value moves right</p>
        <p>
          During each pass, larger values are repeatedly swapped towards the end of the array.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Efficiency</p>
        <p>
          Bubble sort is simple but inefficient for large arrays because it may require many comparisons and swaps.
        </p>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Bubble sort repeatedly compares adjacent elements in a list. If two adjacent elements are in the wrong order,
        they are swapped. After each pass, the largest unsorted value moves to its correct position at the end of the list.
        The process repeats until the list is sorted.
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
    title: 'Start bubble sort',
    explanation: 'Bubble sort begins with the original array.',
    array: [...arr],
    pass: 0,
    passLabel: 1,
    index: '-',
    compare: [],
    swapped: [],
    sortedFrom: n,
    comparisons,
    swaps,
    didSwap: false,
    shortAction: 'Start',
    complete: n <= 1,
  })

  if (n <= 1) {
    output.push({
      line: 7,
      title: 'Array already sorted',
      explanation: 'An array with zero or one value is already sorted.',
      array: [...arr],
      pass: 0,
      passLabel: '-',
      index: '-',
      compare: [],
      swapped: [],
      sortedFrom: 0,
      comparisons,
      swaps,
      didSwap: false,
      shortAction: 'Complete',
      complete: true,
    })

    return output
  }

  for (let pass = 0; pass < n - 1; pass++) {
    output.push({
      line: 1,
      title: `Start pass ${pass + 1}`,
      explanation: `Pass ${pass + 1} compares adjacent pairs up to index ${n - pass - 2}.`,
      array: [...arr],
      pass,
      passLabel: pass + 1,
      index: '-',
      compare: [],
      swapped: [],
      sortedFrom: n - pass,
      comparisons,
      swaps,
      didSwap: false,
      shortAction: `Start pass ${pass + 1}`,
      complete: false,
    })

    let swappedInPass = false

    for (let index = 0; index < n - pass - 1; index++) {
      comparisons++
      const left = arr[index]
      const right = arr[index + 1]
      const shouldSwap = left > right

      output.push({
        line: 3,
        title: `Compare index ${index} and ${index + 1}`,
        explanation: `Compare ${left} and ${right}. ${shouldSwap ? `${left} is greater than ${right}, so they must be swapped.` : `${left} is not greater than ${right}, so no swap is needed.`}`,
        array: [...arr],
        pass,
        passLabel: pass + 1,
        index,
        compare: [index, index + 1],
        swapped: [],
        sortedFrom: n - pass,
        comparisons,
        swaps,
        didSwap: false,
        shortAction: `${left} > ${right}? ${shouldSwap ? 'Yes' : 'No'}`,
        complete: false,
      })

      if (shouldSwap) {
        arr[index] = right
        arr[index + 1] = left
        swaps++
        swappedInPass = true

        output.push({
          line: 4,
          title: 'Swap adjacent values',
          explanation: `${left} and ${right} are swapped because they were in the wrong order.`,
          array: [...arr],
          pass,
          passLabel: pass + 1,
          index,
          compare: [index, index + 1],
          swapped: [index, index + 1],
          sortedFrom: n - pass,
          comparisons,
          swaps,
          didSwap: true,
          shortAction: 'Swap',
          complete: false,
        })
      } else {
        output.push({
          line: 5,
          title: 'Keep order',
          explanation: 'The adjacent values are already in the correct order.',
          array: [...arr],
          pass,
          passLabel: pass + 1,
          index,
          compare: [index, index + 1],
          swapped: [],
          sortedFrom: n - pass,
          comparisons,
          swaps,
          didSwap: false,
          shortAction: 'No swap',
          complete: false,
        })
      }
    }

    output.push({
      line: 6,
      title: `End pass ${pass + 1}`,
      explanation: `After pass ${pass + 1}, the largest value in the unsorted part is now fixed at index ${n - pass - 1}.`,
      array: [...arr],
      pass,
      passLabel: pass + 1,
      index: '-',
      compare: [],
      swapped: [],
      sortedFrom: n - pass - 1,
      comparisons,
      swaps,
      didSwap: false,
      shortAction: swappedInPass ? 'Pass complete' : 'Pass complete; no swaps',
      complete: false,
    })

    if (!swappedInPass) {
      output.push({
        line: 7,
        title: 'Stop early',
        explanation: 'No swaps were made during this pass, so the array is already sorted.',
        array: [...arr],
        pass,
        passLabel: pass + 1,
        index: '-',
        compare: [],
        swapped: [],
        sortedFrom: 0,
        comparisons,
        swaps,
        didSwap: false,
        shortAction: 'Early stop',
        complete: true,
      })

      return output
    }
  }

  output.push({
    line: 7,
    title: 'Array sorted',
    explanation: 'All passes are complete and the array is sorted in ascending order.',
    array: [...arr],
    pass: n - 1,
    passLabel: n - 1,
    index: '-',
    compare: [],
    swapped: [],
    sortedFrom: 0,
    comparisons,
    swaps,
    didSwap: false,
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
  arrayText.value = '2, 3, 4, 6, 5'
  reset()
}

function isSortedCell(index) {
  return index >= currentStepData.value.sortedFrom
}

function roleFor(index) {
  if (currentStepData.value.swapped.includes(index)) return 'swapped'
  if (currentStepData.value.compare.includes(index)) return 'compare'
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
.bubble-demo {
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

.array-cell.comparing {
  outline: 3px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.array-cell.swapped {
  outline: 3px solid #d28c1e;
  background: rgba(210, 140, 30, 0.14);
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

.legend-box.comparing {
  background: var(--vp-c-brand-soft);
}

.legend-box.swapped {
  background: rgba(210, 140, 30, 0.14);
}

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
