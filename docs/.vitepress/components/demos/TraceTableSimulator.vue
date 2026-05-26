<template>
  <section class="trace-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Trace Table Simulator</h3>
        <p class="intro">
          Step through pseudocode line by line and watch the trace table update after each instruction.
        </p>
      </div>

      <div class="status-pill">
        Step {{ currentStep + 1 }} / {{ currentProgram.steps.length }}
      </div>
    </div>

    <div class="program-selector">
      <p class="panel-title">Choose a trace example</p>
      <div class="program-buttons">
        <button
          v-for="program in programs"
          :key="program.id"
          type="button"
          :class="['program-button', { active: selectedProgramId === program.id }]"
          @click="selectProgram(program.id)"
        >
          <strong>{{ program.title }}</strong>
          <span>{{ program.skill }}</span>
        </button>
      </div>
    </div>

    <div class="main-grid">
      <article class="panel">
        <p class="panel-title">Pseudocode</p>

        <ol class="code-list">
          <li
            v-for="line in currentProgram.lines"
            :key="line.no"
            :class="{ active: line.no === currentStepData.line }"
          >
            <span class="line-no">{{ line.no }}</span>
            <code>{{ line.text }}</code>
          </li>
        </ol>
      </article>

      <article class="panel">
        <p class="panel-title">Current action</p>
        <h4>{{ currentStepData.action }}</h4>
        <p>{{ currentStepData.explanation }}</p>

        <div class="controls">
          <button type="button" class="secondary-button" :disabled="currentStep === 0" @click="previous">
            Previous
          </button>
          <button
            type="button"
            class="primary-button"
            :disabled="currentStep === currentProgram.steps.length - 1"
            @click="next"
          >
            Next step
          </button>
          <button type="button" class="secondary-button" @click="reset">
            Reset
          </button>
        </div>
      </article>
    </div>

    <div class="state-panel">
      <p class="panel-title">Current variable values</p>
      <div class="variable-grid">
        <div v-for="variable in currentProgram.variables" :key="variable" class="variable-card">
          <span>{{ variable }}</span>
          <strong>{{ displayValue(currentStepData.values[variable]) }}</strong>
        </div>
      </div>

      <div class="output-box">
        <span>Output</span>
        <strong>{{ displayOutput(currentStepData.output) }}</strong>
      </div>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Trace table</p>
          <p class="hint">
            Each row records the values after one meaningful step in the algorithm.
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
              <th v-for="variable in currentProgram.variables" :key="variable">{{ variable }}</th>
              <th>Output</th>
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
              <td v-for="variable in currentProgram.variables" :key="variable">
                {{ displayValue(step.values[variable]) }}
              </td>
              <td>{{ displayOutput(step.output) }}</td>
              <td>{{ step.action }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="practice-panel">
      <p class="panel-title">Student check</p>
      <p>
        Before clicking the next step, predict which variable will change and what the new value will be.
      </p>

      <details>
        <summary>Exam-style trace table advice</summary>
        <p>
          In an exam, update the trace table only after an assignment, loop update, condition check, or output that changes the visible state.
          Read the algorithm line by line and do not skip loop iterations.
        </p>
      </details>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        A trace table is used to dry run an algorithm by recording the value of each variable as the algorithm executes.
        It helps find the final output and can also reveal logic errors. Each row should show how the variables change after each important instruction.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const programs = [
  {
    id: 'sum-loop',
    title: 'Sum loop',
    skill: 'iteration + accumulator',
    variables: ['i', 'total'],
    lines: [
      { no: 1, text: 'total ← 0' },
      { no: 2, text: 'FOR i ← 1 TO 4' },
      { no: 3, text: '    total ← total + i' },
      { no: 4, text: 'END FOR' },
      { no: 5, text: 'OUTPUT total' },
    ],
    steps: [
      {
        line: 1,
        action: 'Initialise total',
        explanation: 'The accumulator total is set to 0 before the loop starts.',
        values: { i: '-', total: 0 },
        output: '',
      },
      {
        line: 2,
        action: 'Start loop with i = 1',
        explanation: 'The loop variable i begins at 1.',
        values: { i: 1, total: 0 },
        output: '',
      },
      {
        line: 3,
        action: 'Add i to total',
        explanation: 'total becomes 0 + 1.',
        values: { i: 1, total: 1 },
        output: '',
      },
      {
        line: 2,
        action: 'Next loop value i = 2',
        explanation: 'The loop continues because i has not reached the final value yet.',
        values: { i: 2, total: 1 },
        output: '',
      },
      {
        line: 3,
        action: 'Add i to total',
        explanation: 'total becomes 1 + 2.',
        values: { i: 2, total: 3 },
        output: '',
      },
      {
        line: 2,
        action: 'Next loop value i = 3',
        explanation: 'The loop continues with the next value.',
        values: { i: 3, total: 3 },
        output: '',
      },
      {
        line: 3,
        action: 'Add i to total',
        explanation: 'total becomes 3 + 3.',
        values: { i: 3, total: 6 },
        output: '',
      },
      {
        line: 2,
        action: 'Next loop value i = 4',
        explanation: 'This is the final loop value.',
        values: { i: 4, total: 6 },
        output: '',
      },
      {
        line: 3,
        action: 'Add i to total',
        explanation: 'total becomes 6 + 4.',
        values: { i: 4, total: 10 },
        output: '',
      },
      {
        line: 5,
        action: 'Output total',
        explanation: 'The final value of total is displayed.',
        values: { i: 4, total: 10 },
        output: '10',
      },
    ],
  },
  {
    id: 'find-max',
    title: 'Find maximum',
    skill: 'array traversal + selection',
    variables: ['index', 'current', 'max'],
    lines: [
      { no: 1, text: 'numbers ← [5, 9, 3, 12, 7]' },
      { no: 2, text: 'max ← numbers[0]' },
      { no: 3, text: 'FOR index ← 1 TO 4' },
      { no: 4, text: '    current ← numbers[index]' },
      { no: 5, text: '    IF current > max THEN' },
      { no: 6, text: '        max ← current' },
      { no: 7, text: '    END IF' },
      { no: 8, text: 'END FOR' },
      { no: 9, text: 'OUTPUT max' },
    ],
    steps: [
      {
        line: 2,
        action: 'Initialise max',
        explanation: 'max is set to the first value in the array.',
        values: { index: '-', current: '-', max: 5 },
        output: '',
      },
      {
        line: 3,
        action: 'Start loop at index 1',
        explanation: 'The next item to check is numbers[1].',
        values: { index: 1, current: '-', max: 5 },
        output: '',
      },
      {
        line: 4,
        action: 'Read current value',
        explanation: 'numbers[1] is 9, so current becomes 9.',
        values: { index: 1, current: 9, max: 5 },
        output: '',
      },
      {
        line: 6,
        action: 'Update max',
        explanation: '9 is greater than 5, so max becomes 9.',
        values: { index: 1, current: 9, max: 9 },
        output: '',
      },
      {
        line: 3,
        action: 'Next index',
        explanation: 'The loop moves to index 2.',
        values: { index: 2, current: 9, max: 9 },
        output: '',
      },
      {
        line: 4,
        action: 'Read current value',
        explanation: 'numbers[2] is 3.',
        values: { index: 2, current: 3, max: 9 },
        output: '',
      },
      {
        line: 5,
        action: 'Compare current and max',
        explanation: '3 is not greater than 9, so max does not change.',
        values: { index: 2, current: 3, max: 9 },
        output: '',
      },
      {
        line: 3,
        action: 'Next index',
        explanation: 'The loop moves to index 3.',
        values: { index: 3, current: 3, max: 9 },
        output: '',
      },
      {
        line: 4,
        action: 'Read current value',
        explanation: 'numbers[3] is 12.',
        values: { index: 3, current: 12, max: 9 },
        output: '',
      },
      {
        line: 6,
        action: 'Update max',
        explanation: '12 is greater than 9, so max becomes 12.',
        values: { index: 3, current: 12, max: 12 },
        output: '',
      },
      {
        line: 3,
        action: 'Next index',
        explanation: 'The loop moves to index 4.',
        values: { index: 4, current: 12, max: 12 },
        output: '',
      },
      {
        line: 4,
        action: 'Read current value',
        explanation: 'numbers[4] is 7.',
        values: { index: 4, current: 7, max: 12 },
        output: '',
      },
      {
        line: 5,
        action: 'Compare current and max',
        explanation: '7 is not greater than 12, so max does not change.',
        values: { index: 4, current: 7, max: 12 },
        output: '',
      },
      {
        line: 9,
        action: 'Output max',
        explanation: 'The largest value found is displayed.',
        values: { index: 4, current: 7, max: 12 },
        output: '12',
      },
    ],
  },
  {
    id: 'count-even',
    title: 'Count even numbers',
    skill: 'condition + counter',
    variables: ['n', 'count'],
    lines: [
      { no: 1, text: 'values ← [2, 5, 8, 11]' },
      { no: 2, text: 'count ← 0' },
      { no: 3, text: 'FOR EACH n IN values' },
      { no: 4, text: '    IF n MOD 2 = 0 THEN' },
      { no: 5, text: '        count ← count + 1' },
      { no: 6, text: '    END IF' },
      { no: 7, text: 'END FOR' },
      { no: 8, text: 'OUTPUT count' },
    ],
    steps: [
      {
        line: 2,
        action: 'Initialise counter',
        explanation: 'count starts at 0.',
        values: { n: '-', count: 0 },
        output: '',
      },
      {
        line: 3,
        action: 'Read first value',
        explanation: 'n becomes 2.',
        values: { n: 2, count: 0 },
        output: '',
      },
      {
        line: 5,
        action: 'Increment count',
        explanation: '2 is even, so count increases by 1.',
        values: { n: 2, count: 1 },
        output: '',
      },
      {
        line: 3,
        action: 'Read next value',
        explanation: 'n becomes 5.',
        values: { n: 5, count: 1 },
        output: '',
      },
      {
        line: 4,
        action: 'Check condition',
        explanation: '5 is not even, so count does not change.',
        values: { n: 5, count: 1 },
        output: '',
      },
      {
        line: 3,
        action: 'Read next value',
        explanation: 'n becomes 8.',
        values: { n: 8, count: 1 },
        output: '',
      },
      {
        line: 5,
        action: 'Increment count',
        explanation: '8 is even, so count increases by 1.',
        values: { n: 8, count: 2 },
        output: '',
      },
      {
        line: 3,
        action: 'Read final value',
        explanation: 'n becomes 11.',
        values: { n: 11, count: 2 },
        output: '',
      },
      {
        line: 4,
        action: 'Check condition',
        explanation: '11 is not even, so count does not change.',
        values: { n: 11, count: 2 },
        output: '',
      },
      {
        line: 8,
        action: 'Output count',
        explanation: 'There are 2 even numbers in the list.',
        values: { n: 11, count: 2 },
        output: '2',
      },
    ],
  },
]

const selectedProgramId = ref('sum-loop')
const currentStep = ref(0)
const showFullTrace = ref(false)

const currentProgram = computed(() => programs.find((program) => program.id === selectedProgramId.value) || programs[0])
const currentStepData = computed(() => currentProgram.value.steps[currentStep.value])

const visibleTraceRows = computed(() => {
  if (showFullTrace.value) {
    return currentProgram.value.steps
  }

  return currentProgram.value.steps.slice(0, currentStep.value + 1)
})

function next() {
  if (currentStep.value < currentProgram.value.steps.length - 1) {
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

function selectProgram(id) {
  selectedProgramId.value = id
  reset()
}

function displayValue(value) {
  if (value === undefined || value === null || value === '') {
    return '-'
  }

  return value
}

function displayOutput(output) {
  return output === '' ? 'No output yet' : output
}
</script>

<style scoped>
.trace-demo {
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
  background: var(--vp-c-bg);
  border-radius: 999px;
  padding: 8px 12px;
  font-weight: 800;
  white-space: nowrap;
}

.program-selector,
.panel,
.state-panel,
.trace-panel,
.practice-panel,
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

.program-buttons {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 10px;
}

.program-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
  cursor: pointer;
  text-align: left;
}

.program-button strong,
.program-button span {
  display: block;
}

.program-button span {
  margin-top: 4px;
  color: var(--vp-c-text-2);
}

.program-button.active {
  outline: 2px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.main-grid {
  display: grid;
  grid-template-columns: minmax(0, 1.1fr) minmax(0, 0.9fr);
  gap: 14px;
}

.code-list {
  list-style: none;
  margin: 0;
  padding: 0;
}

.code-list li {
  display: grid;
  grid-template-columns: 42px 1fr;
  gap: 8px;
  border-radius: 10px;
  padding: 8px;
}

.code-list li.active {
  background: var(--vp-c-brand-soft);
  font-weight: 900;
}

.line-no {
  color: var(--vp-c-text-2);
  font-weight: 900;
}

.controls {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  margin-top: 14px;
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

.variable-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 10px;
}

.variable-card,
.output-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
}

.variable-card span,
.output-box span {
  display: block;
  color: var(--vp-c-text-2);
  font-weight: 700;
}

.variable-card strong,
.output-box strong {
  display: block;
  margin-top: 4px;
  font-size: 1.35rem;
}

.output-box {
  margin-top: 10px;
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

.practice-panel details {
  margin-top: 10px;
}

.practice-panel summary,
.exam-box summary {
  cursor: pointer;
  font-weight: 900;
}

.exam-box p {
  margin-bottom: 0;
}

@media (max-width: 850px) {
  .demo-heading,
  .main-grid,
  .program-buttons,
  .table-header {
    display: flex;
    flex-direction: column;
  }

  .variable-grid {
    grid-template-columns: 1fr;
  }
}
</style>
