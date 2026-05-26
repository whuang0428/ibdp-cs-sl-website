<template>
  <section class="csa-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Count / Sum / Average Visualizer</h3>
        <p class="intro">
          Step through an array traversal and watch how count, sum, and average are calculated.
        </p>
      </div>

      <div :class="['status-pill', currentStepData.complete ? 'complete' : 'running']">
        {{ currentStepData.complete ? 'Complete' : 'Traversing' }}
      </div>
    </div>

    <div class="settings-grid">
      <article class="panel">
        <p class="panel-title">Array and condition</p>
        <p class="hint">
          Use comma-separated numbers. Example: 12, 7, 25, 4, 18
        </p>

        <label>
          Array
          <input v-model="arrayText" type="text" @input="reset" />
        </label>

        <label>
          Count / sum values that are
          <select v-model="condition" @change="reset">
            <option value="all">all values</option>
            <option value="greater">greater than threshold</option>
            <option value="less">less than threshold</option>
            <option value="even">even numbers</option>
            <option value="odd">odd numbers</option>
          </select>
        </label>

        <label v-if="condition === 'greater' || condition === 'less'">
          Threshold
          <input v-model.number="threshold" type="number" @input="reset" />
        </label>

        <div class="preset-row">
          <button type="button" class="secondary-button" @click="presetAll">
            All values
          </button>
          <button type="button" class="secondary-button" @click="presetAboveTen">
            Values > 10
          </button>
          <button type="button" class="secondary-button" @click="presetEven">
            Even numbers
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
            <span>current</span>
            <strong>{{ displayValue(currentStepData.currentValue) }}</strong>
          </div>
          <div class="state-card">
            <span>count</span>
            <strong>{{ currentStepData.count }}</strong>
          </div>
          <div class="state-card">
            <span>sum</span>
            <strong>{{ currentStepData.sum }}</strong>
          </div>
          <div class="state-card">
            <span>average</span>
            <strong>{{ displayAverage(currentStepData.average) }}</strong>
          </div>
          <div class="state-card">
            <span>included?</span>
            <strong>{{ currentStepData.includedText }}</strong>
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
              included: includedIndexes.includes(index),
              skipped: checkedIndexes.includes(index) && !includedIndexes.includes(index)
            }
          ]"
        >
          <span class="index-label">index {{ index }}</span>
          <strong>{{ value }}</strong>
          <span class="role-label">{{ roleFor(index) }}</span>
        </div>
      </div>
    </div>

    <div class="rule-panel">
      <p class="panel-title">Condition rule</p>
      <div class="rule-box">
        {{ conditionText }}
      </div>
    </div>

    <div class="pseudocode-panel">
      <p class="panel-title">Pseudocode</p>

      <ol class="code-list">
        <li :class="{ active: currentStepData.line === 1 }">
          <span>1</span>
          <code>count ← 0</code>
        </li>
        <li :class="{ active: currentStepData.line === 2 }">
          <span>2</span>
          <code>sum ← 0</code>
        </li>
        <li :class="{ active: currentStepData.line === 3 }">
          <span>3</span>
          <code>FOR index ← 0 TO length(array) - 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 4 }">
          <span>4</span>
          <code>current ← array[index]</code>
        </li>
        <li :class="{ active: currentStepData.line === 5 }">
          <span>5</span>
          <code>IF current matches condition THEN</code>
        </li>
        <li :class="{ active: currentStepData.line === 6 }">
          <span>6</span>
          <code>count ← count + 1</code>
        </li>
        <li :class="{ active: currentStepData.line === 7 }">
          <span>7</span>
          <code>sum ← sum + current</code>
        </li>
        <li :class="{ active: currentStepData.line === 8 }">
          <span>8</span>
          <code>average ← sum / count</code>
        </li>
      </ol>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Trace table</p>
          <p class="hint">
            The trace records each checked value and how count, sum, and average change.
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
              <th>included?</th>
              <th>count</th>
              <th>sum</th>
              <th>average</th>
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
              <td>{{ displayValue(step.index) }}</td>
              <td>{{ displayValue(step.currentValue) }}</td>
              <td>{{ step.includedText }}</td>
              <td>{{ step.count }}</td>
              <td>{{ step.sum }}</td>
              <td>{{ displayAverage(step.average) }}</td>
              <td>{{ step.shortAction }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="analysis-grid">
      <article class="analysis-card">
        <p class="panel-title">Counter</p>
        <p>
          count increases when a value should be included.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Accumulator</p>
        <p>
          sum is an accumulator because it stores a running total.
        </p>
      </article>

      <article class="analysis-card">
        <p class="panel-title">Average</p>
        <p>
          average should be calculated using the included values only: sum / count.
        </p>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        An array can be traversed using a loop. A counter can be used to count how many values meet a condition,
        and an accumulator can be used to keep a running total. After the traversal, the average can be calculated
        by dividing the sum by the count. The algorithm should avoid division by zero if no values meet the condition.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const arrayText = ref('12, 7, 25, 4, 18')
const condition = ref('all')
const threshold = ref(10)
const currentStep = ref(0)
const showFullTrace = ref(false)

const arrayValues = computed(() => {
  return arrayText.value
    .split(',')
    .map((item) => Number(item.trim()))
    .filter((item) => !Number.isNaN(item))
})

const conditionText = computed(() => {
  if (condition.value === 'all') return 'Include every value in the array.'
  if (condition.value === 'greater') return `Include values greater than ${threshold.value}.`
  if (condition.value === 'less') return `Include values less than ${threshold.value}.`
  if (condition.value === 'even') return 'Include values where value MOD 2 = 0.'
  return 'Include values where value MOD 2 ≠ 0.'
})

const steps = computed(() => {
  const values = arrayValues.value
  const output = []
  let count = 0
  let sum = 0
  let average = null

  output.push({
    line: 1,
    title: 'Initialise count',
    explanation: 'count starts at 0 because no values have been included yet.',
    index: '-',
    currentValue: '-',
    count,
    sum,
    average,
    included: false,
    includedText: '-',
    shortAction: 'count ← 0',
    complete: false,
  })

  output.push({
    line: 2,
    title: 'Initialise sum',
    explanation: 'sum starts at 0 because the running total is empty.',
    index: '-',
    currentValue: '-',
    count,
    sum,
    average,
    included: false,
    includedText: '-',
    shortAction: 'sum ← 0',
    complete: values.length === 0,
  })

  for (let index = 0; index < values.length; index++) {
    const currentValue = values[index]
    const included = matchesCondition(currentValue)

    output.push({
      line: 4,
      title: `Read value at index ${index}`,
      explanation: `current becomes array[${index}], which is ${currentValue}.`,
      index,
      currentValue,
      count,
      sum,
      average,
      included,
      includedText: included ? 'Yes' : 'No',
      shortAction: `Read ${currentValue}`,
      complete: false,
    })

    output.push({
      line: 5,
      title: 'Check condition',
      explanation: included
        ? `${currentValue} matches the condition, so it will be counted and added.`
        : `${currentValue} does not match the condition, so it is skipped.`,
      index,
      currentValue,
      count,
      sum,
      average,
      included,
      includedText: included ? 'Yes' : 'No',
      shortAction: included ? 'Condition true' : 'Condition false',
      complete: false,
    })

    if (included) {
      count++

      output.push({
        line: 6,
        title: 'Increment count',
        explanation: `count increases to ${count}.`,
        index,
        currentValue,
        count,
        sum,
        average,
        included,
        includedText: 'Yes',
        shortAction: 'count ← count + 1',
        complete: false,
      })

      sum += currentValue

      output.push({
        line: 7,
        title: 'Add to sum',
        explanation: `sum becomes ${sum}.`,
        index,
        currentValue,
        count,
        sum,
        average,
        included,
        includedText: 'Yes',
        shortAction: 'sum ← sum + current',
        complete: false,
      })
    }
  }

  average = count > 0 ? sum / count : null

  output.push({
    line: 8,
    title: 'Calculate average',
    explanation: count > 0
      ? `average is sum / count = ${sum} / ${count}.`
      : 'No values were included, so average cannot be calculated without dividing by zero.',
    index: '-',
    currentValue: '-',
    count,
    sum,
    average,
    included: false,
    includedText: '-',
    shortAction: count > 0 ? 'average ← sum / count' : 'avoid division by zero',
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

const includedIndexes = computed(() => {
  const included = []

  for (const step of steps.value.slice(0, currentStep.value + 1)) {
    if (typeof step.index === 'number' && step.included) {
      included.push(step.index)
    }
  }

  return [...new Set(included)]
})

function matchesCondition(value) {
  if (condition.value === 'all') return true
  if (condition.value === 'greater') return value > threshold.value
  if (condition.value === 'less') return value < threshold.value
  if (condition.value === 'even') return value % 2 === 0
  return Math.abs(value % 2) === 1
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

function presetAll() {
  arrayText.value = '12, 7, 25, 4, 18'
  condition.value = 'all'
  threshold.value = 10
  reset()
}

function presetAboveTen() {
  arrayText.value = '12, 7, 25, 4, 18'
  condition.value = 'greater'
  threshold.value = 10
  reset()
}

function presetEven() {
  arrayText.value = '3, 8, 10, 15, 22, 7'
  condition.value = 'even'
  threshold.value = 10
  reset()
}

function roleFor(index) {
  if (index === currentStepData.value.index && !currentStepData.value.complete) return 'current'
  if (includedIndexes.value.includes(index)) return 'included'
  if (checkedIndexes.value.includes(index)) return 'skipped'
  return ''
}

function displayValue(value) {
  if (value === undefined || value === null || value === '') {
    return '-'
  }

  return value
}

function displayAverage(value) {
  if (value === null || value === undefined) {
    return '-'
  }

  return Number.isInteger(value) ? value : value.toFixed(2)
}
</script>

<style scoped>
.csa-demo {
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
.rule-panel,
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
input[type='number'],
select {
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

.array-cell.included {
  background: rgba(20, 150, 80, 0.14);
}

.array-cell.skipped {
  opacity: 0.55;
}

.rule-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
  font-weight: 800;
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
  min-width: 880px;
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
