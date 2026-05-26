<template>
  <section class="sql-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>SQL SELECT Visualizer</h3>
        <p class="intro">
          Build a simple SQL query and see how SELECT, FROM, WHERE, and ORDER BY change the result table.
        </p>
      </div>

      <div class="status-pill">
        {{ resultRows.length }} result{{ resultRows.length === 1 ? '' : 's' }}
      </div>
    </div>

    <div class="main-grid">
      <article class="panel">
        <p class="panel-title">1. SELECT fields</p>
        <p class="hint">Choose which fields should appear in the result.</p>

        <div class="checkbox-grid">
          <label v-for="field in fields" :key="field.key" class="check-item">
            <input type="checkbox" :value="field.key" v-model="selectedFields" />
            <span>{{ field.label }}</span>
          </label>
        </div>

        <button type="button" class="secondary-button" @click="selectAllFields">
          Select all fields
        </button>
      </article>

      <article class="panel">
        <p class="panel-title">2. WHERE condition</p>
        <p class="hint">Filter records using one condition.</p>

        <label>
          Field
          <select v-model="whereField">
            <option value="">No WHERE condition</option>
            <option v-for="field in filterableFields" :key="field.key" :value="field.key">
              {{ field.label }}
            </option>
          </select>
        </label>

        <template v-if="whereField">
          <label>
            Operator
            <select v-model="whereOperator">
              <option v-for="operator in availableOperators" :key="operator" :value="operator">
                {{ operator }}
              </option>
            </select>
          </label>

          <label>
            Value
            <input v-model="whereValue" type="text" />
          </label>
        </template>

        <button type="button" class="secondary-button" @click="clearWhere">
          Clear WHERE
        </button>
      </article>

      <article class="panel">
        <p class="panel-title">3. ORDER BY</p>
        <p class="hint">Sort the filtered result.</p>

        <label>
          Sort field
          <select v-model="orderField">
            <option value="">No sorting</option>
            <option v-for="field in fields" :key="field.key" :value="field.key">
              {{ field.label }}
            </option>
          </select>
        </label>

        <label>
          Direction
          <select v-model="orderDirection" :disabled="!orderField">
            <option value="ASC">ASC</option>
            <option value="DESC">DESC</option>
          </select>
        </label>
      </article>

      <article class="panel">
        <p class="panel-title">Try a scenario</p>
        <p class="hint">Use preset queries to see common exam examples.</p>

        <button type="button" class="scenario-button" @click="scenarioHighScores">
          Students with score ≥ 80
        </button>
        <button type="button" class="scenario-button" @click="scenarioYear12">
          Year 12 names sorted by score
        </button>
        <button type="button" class="scenario-button" @click="scenarioRobotics">
          Robotics club list
        </button>
        <button type="button" class="scenario-button" @click="resetQuery">
          Reset query
        </button>
      </article>
    </div>

    <div class="query-panel">
      <p class="panel-title">Generated SQL</p>
      <pre><code>{{ generatedSql }}</code></pre>
    </div>

    <div class="step-panel">
      <p class="panel-title">How the query is processed</p>
      <ol>
        <li :class="{ active: currentStep === 0 }">
          <strong>FROM Students</strong>: start with the Students table.
        </li>
        <li :class="{ active: currentStep === 1 }">
          <strong>WHERE</strong>: filter records that match the condition.
        </li>
        <li :class="{ active: currentStep === 2 }">
          <strong>SELECT</strong>: show only the selected fields.
        </li>
        <li :class="{ active: currentStep === 3 }">
          <strong>ORDER BY</strong>: sort the final result if sorting is selected.
        </li>
      </ol>

      <div class="controls">
        <button type="button" class="secondary-button" :disabled="currentStep === 0" @click="previousStep">
          Previous step
        </button>
        <button type="button" class="primary-button" :disabled="currentStep === 3" @click="nextStep">
          Next step
        </button>
        <button type="button" class="secondary-button" @click="currentStep = 0">
          Reset steps
        </button>
      </div>
    </div>

    <div class="table-section">
      <div class="table-header">
        <p class="panel-title">Original Students table</p>
        <p class="hint">The query reads from this table.</p>
      </div>

      <div class="table-scroll">
        <table>
          <thead>
            <tr>
              <th v-for="field in fields" :key="field.key">{{ field.label }}</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="row in students" :key="row.studentID">
              <td v-for="field in fields" :key="field.key">{{ row[field.key] }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="table-section result">
      <div class="table-header">
        <p class="panel-title">Query result</p>
        <p class="hint">This is the output after filtering, selecting, and sorting.</p>
      </div>

      <div class="table-scroll">
        <table>
          <thead>
            <tr>
              <th v-for="field in visibleResultFields" :key="field.key">{{ field.label }}</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="row in projectedRows" :key="row.studentID">
              <td v-for="field in visibleResultFields" :key="field.key">{{ row[field.key] }}</td>
            </tr>
            <tr v-if="projectedRows.length === 0">
              <td :colspan="visibleResultFields.length" class="empty-cell">
                No records match the query.
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        The SELECT clause specifies which fields are displayed in the result. The FROM clause specifies the table being queried.
        The WHERE clause filters records based on a condition, and ORDER BY sorts the output. SQL queries should use exact field
        names and appropriate conditions for the scenario.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref, watch } from 'vue'

const fields = [
  { key: 'studentID', label: 'StudentID', type: 'text' },
  { key: 'name', label: 'Name', type: 'text' },
  { key: 'yearGroup', label: 'YearGroup', type: 'number' },
  { key: 'house', label: 'House', type: 'text' },
  { key: 'score', label: 'Score', type: 'number' },
  { key: 'club', label: 'Club', type: 'text' },
]

const students = [
  { studentID: 'S001', name: 'Amelia', yearGroup: 11, house: 'Red', score: 86, club: 'Robotics' },
  { studentID: 'S002', name: 'Ben', yearGroup: 12, house: 'Blue', score: 74, club: 'Music' },
  { studentID: 'S003', name: 'Chloe', yearGroup: 11, house: 'Green', score: 91, club: 'Debate' },
  { studentID: 'S004', name: 'Daniel', yearGroup: 12, house: 'Red', score: 68, club: 'Robotics' },
  { studentID: 'S005', name: 'Eva', yearGroup: 10, house: 'Blue', score: 82, club: 'Art' },
  { studentID: 'S006', name: 'Farah', yearGroup: 12, house: 'Green', score: 95, club: 'Robotics' },
  { studentID: 'S007', name: 'George', yearGroup: 10, house: 'Red', score: 59, club: 'Music' },
  { studentID: 'S008', name: 'Hana', yearGroup: 11, house: 'Blue', score: 77, club: 'Debate' },
]

const selectedFields = ref(['studentID', 'name', 'score'])
const whereField = ref('score')
const whereOperator = ref('>=')
const whereValue = ref('80')
const orderField = ref('score')
const orderDirection = ref('DESC')
const currentStep = ref(0)

const filterableFields = computed(() => fields)

const whereFieldInfo = computed(() => fields.find((field) => field.key === whereField.value))

const availableOperators = computed(() => {
  if (!whereFieldInfo.value) {
    return ['=']
  }

  if (whereFieldInfo.value.type === 'number') {
    return ['=', '>', '>=', '<', '<=']
  }

  return ['=', 'contains']
})

watch(whereField, () => {
  whereOperator.value = availableOperators.value[0] || '='
  whereValue.value = ''
})

const visibleResultFields = computed(() => {
  const selected = fields.filter((field) => selectedFields.value.includes(field.key))
  return selected.length > 0 ? selected : [{ key: 'studentID', label: 'StudentID' }]
})

const filteredRows = computed(() => {
  if (!whereField.value || whereValue.value.trim() === '') {
    return [...students]
  }

  return students.filter((row) => matchesWhere(row))
})

const resultRows = computed(() => {
  const rows = [...filteredRows.value]

  if (!orderField.value) {
    return rows
  }

  rows.sort((a, b) => {
    const left = a[orderField.value]
    const right = b[orderField.value]

    if (typeof left === 'number' && typeof right === 'number') {
      return orderDirection.value === 'ASC' ? left - right : right - left
    }

    return orderDirection.value === 'ASC'
      ? String(left).localeCompare(String(right))
      : String(right).localeCompare(String(left))
  })

  return rows
})

const projectedRows = computed(() => {
  return resultRows.value.map((row) => {
    const output = {}

    for (const field of visibleResultFields.value) {
      output[field.key] = row[field.key]
    }

    // Keep ID as stable Vue key even if not selected.
    output.studentID = row.studentID
    return output
  })
})

const generatedSql = computed(() => {
  const selectClause = selectedFields.value.length
    ? selectedFields.value.map((key) => fieldLabel(key)).join(', ')
    : '*'

  const lines = [`SELECT ${selectClause}`, 'FROM Students']

  if (whereField.value && whereValue.value.trim() !== '') {
    const value = formatSqlValue(whereField.value, whereValue.value.trim())
    lines.push(`WHERE ${fieldLabel(whereField.value)} ${whereOperator.value} ${value}`)
  }

  if (orderField.value) {
    lines.push(`ORDER BY ${fieldLabel(orderField.value)} ${orderDirection.value}`)
  }

  return lines.join('\n') + ';'
})

function matchesWhere(row) {
  const field = whereField.value
  const fieldInfo = whereFieldInfo.value
  const rawValue = whereValue.value.trim()
  const actual = row[field]

  if (!fieldInfo || rawValue === '') {
    return true
  }

  if (fieldInfo.type === 'number') {
    const expected = Number(rawValue)

    if (Number.isNaN(expected)) {
      return false
    }

    if (whereOperator.value === '=') return actual === expected
    if (whereOperator.value === '>') return actual > expected
    if (whereOperator.value === '>=') return actual >= expected
    if (whereOperator.value === '<') return actual < expected
    if (whereOperator.value === '<=') return actual <= expected
  }

  if (whereOperator.value === 'contains') {
    return String(actual).toLowerCase().includes(rawValue.toLowerCase())
  }

  return String(actual).toLowerCase() === rawValue.toLowerCase()
}

function fieldLabel(key) {
  return fields.find((field) => field.key === key)?.label || key
}

function formatSqlValue(field, value) {
  const info = fields.find((item) => item.key === field)

  if (info?.type === 'number') {
    return value
  }

  if (whereOperator.value === 'contains') {
    return `'%${value}%'`
  }

  return `'${value}'`
}

function clearWhere() {
  whereField.value = ''
  whereValue.value = ''
}

function selectAllFields() {
  selectedFields.value = fields.map((field) => field.key)
}

function resetQuery() {
  selectedFields.value = ['studentID', 'name', 'score']
  whereField.value = 'score'
  whereOperator.value = '>='
  whereValue.value = '80'
  orderField.value = 'score'
  orderDirection.value = 'DESC'
  currentStep.value = 0
}

function scenarioHighScores() {
  selectedFields.value = ['studentID', 'name', 'score']
  whereField.value = 'score'
  whereOperator.value = '>='
  whereValue.value = '80'
  orderField.value = 'score'
  orderDirection.value = 'DESC'
  currentStep.value = 0
}

function scenarioYear12() {
  selectedFields.value = ['name', 'yearGroup', 'score']
  whereField.value = 'yearGroup'
  whereOperator.value = '='
  whereValue.value = '12'
  orderField.value = 'score'
  orderDirection.value = 'DESC'
  currentStep.value = 0
}

function scenarioRobotics() {
  selectedFields.value = ['studentID', 'name', 'club']
  whereField.value = 'club'
  whereOperator.value = '='
  whereValue.value = 'Robotics'
  orderField.value = 'name'
  orderDirection.value = 'ASC'
  currentStep.value = 0
}

function nextStep() {
  if (currentStep.value < 3) {
    currentStep.value++
  }
}

function previousStep() {
  if (currentStep.value > 0) {
    currentStep.value--
  }
}
</script>

<style scoped>
.sql-demo {
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

.hint {
  margin: 0 0 10px;
  font-size: 0.9rem;
}

.status-pill {
  border: 1px solid var(--vp-c-divider);
  background: var(--vp-c-bg);
  border-radius: 999px;
  padding: 8px 12px;
  font-weight: 800;
  white-space: nowrap;
}

.main-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
  margin-top: 16px;
}

.panel,
.query-panel,
.step-panel,
.table-section,
.exam-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px 16px;
  background: var(--vp-c-bg);
}

.panel-title {
  margin: 0 0 10px;
  color: var(--vp-c-brand-1);
  font-weight: 900;
}

.checkbox-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 8px;
  margin-bottom: 12px;
}

.check-item {
  display: flex;
  gap: 8px;
  align-items: center;
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 8px;
  background: var(--vp-c-bg-soft);
  font-weight: 700;
}

label {
  display: grid;
  gap: 6px;
  margin: 10px 0;
  font-weight: 700;
}

select,
input[type='text'] {
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 9px 10px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
}

.secondary-button,
.primary-button,
.scenario-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 9px 14px;
  cursor: pointer;
  font-weight: 800;
}

.secondary-button,
.scenario-button {
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
}

.scenario-button {
  display: block;
  width: 100%;
  margin: 8px 0;
  text-align: left;
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

.query-panel,
.step-panel,
.table-section,
.exam-box {
  margin-top: 16px;
}

.query-panel pre {
  margin: 0;
  white-space: pre-wrap;
  overflow-x: auto;
}

.step-panel ol {
  margin: 0;
  padding-left: 22px;
}

.step-panel li {
  padding: 6px 8px;
  border-radius: 10px;
}

.step-panel li.active {
  background: var(--vp-c-brand-soft);
  font-weight: 800;
}

.controls {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  margin-top: 12px;
}

.table-header {
  display: flex;
  justify-content: space-between;
  gap: 12px;
  align-items: baseline;
}

.table-scroll {
  overflow-x: auto;
}

table {
  width: 100%;
  border-collapse: collapse;
  min-width: 640px;
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

.result {
  outline: 2px solid var(--vp-c-brand-soft);
}

.empty-cell {
  text-align: center;
  color: var(--vp-c-text-2);
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
  .main-grid,
  .table-header {
    display: flex;
    flex-direction: column;
  }

  .checkbox-grid {
    grid-template-columns: 1fr;
  }
}
</style>
