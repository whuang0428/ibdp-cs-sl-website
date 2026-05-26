<template>
  <section class="ref-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Object Reference Demo</h3>
        <p class="intro">
          Explore how object variables can store references, and why two variables may point to the same object.
        </p>
      </div>

      <div :class="['status-pill', sameReference ? 'same' : 'different']">
        {{ sameReference ? 'Same object' : 'Different objects' }}
      </div>
    </div>

    <div class="scenario-panel">
      <p class="panel-title">Choose scenario</p>

      <div class="scenario-buttons">
        <button
          v-for="scenario in scenarios"
          :key="scenario.id"
          type="button"
          :class="['scenario-button', { active: currentScenario === scenario.id }]"
          @click="setScenario(scenario.id)"
        >
          <strong>{{ scenario.title }}</strong>
          <span>{{ scenario.description }}</span>
        </button>
      </div>
    </div>

    <div class="main-grid">
      <article class="panel">
        <p class="panel-title">Reference variables</p>

        <div class="reference-list">
          <div class="reference-card">
            <strong>studentA</strong>
            <span>points to {{ studentARef }}</span>
          </div>

          <div class="reference-card">
            <strong>studentB</strong>
            <span>points to {{ studentBRef }}</span>
          </div>
        </div>

        <div class="comparison-box">
          <span>studentA == studentB?</span>
          <strong>{{ sameReference ? 'true' : 'false' }}</strong>
          <p>
            {{ sameReference
              ? 'Both variables reference the same object in memory.'
              : 'The variables reference different objects, even if some values may look similar.'
            }}
          </p>
        </div>
      </article>

      <article class="panel">
        <p class="panel-title">Call method through a reference</p>

        <label>
          Reference variable
          <select v-model="selectedReference">
            <option value="studentA">studentA</option>
            <option value="studentB">studentB</option>
          </select>
        </label>

        <label>
          Method
          <select v-model="methodName">
            <option value="setName">setName(newName)</option>
            <option value="addScore">addScore(amount)</option>
            <option value="setScore">setScore(newScore)</option>
            <option value="display">display()</option>
          </select>
        </label>

        <label v-if="methodName === 'setName'">
          newName
          <input v-model="methodText" type="text" />
        </label>

        <label v-if="methodName === 'addScore' || methodName === 'setScore'">
          value
          <input v-model.number="methodValue" type="number" />
        </label>

        <button type="button" class="primary-button" @click="callMethod">
          Call method
        </button>

        <button type="button" class="secondary-button" @click="resetCurrentScenario">
          Reset scenario
        </button>
      </article>
    </div>

    <div class="memory-panel">
      <p class="panel-title">Memory model</p>
      <p class="hint">
        The arrows show which object each variable references.
      </p>

      <div class="memory-layout">
        <div class="reference-column">
          <div :class="['ref-node', { active: selectedReference === 'studentA' }]">
            <strong>studentA</strong>
            <span>{{ studentARef }}</span>
          </div>

          <div :class="['ref-node', { active: selectedReference === 'studentB' }]">
            <strong>studentB</strong>
            <span>{{ studentBRef }}</span>
          </div>
        </div>

        <div class="arrow-column">
          <div class="arrow">→</div>
          <div class="arrow">→</div>
        </div>

        <div class="object-column">
          <article
            v-for="object in objects"
            :key="object.objectID"
            :class="['object-node', { active: object.objectID === activeObjectID }]"
          >
            <p class="object-title">{{ object.objectID }}</p>
            <div class="attribute-row">
              <span>name</span>
              <strong>{{ object.name }}</strong>
            </div>
            <div class="attribute-row">
              <span>score</span>
              <strong>{{ object.score }}</strong>
            </div>
          </article>
        </div>
      </div>
    </div>

    <div class="result-panel">
      <p class="panel-title">Latest action</p>

      <div class="call-box">
        <span>Code</span>
        <code>{{ latestCall }}</code>
      </div>

      <div class="message-box">
        <strong>Effect</strong>
        <p>{{ latestMessage }}</p>
      </div>
    </div>

    <div class="code-panel">
      <p class="panel-title">Reference idea in pseudocode</p>

      <pre><code>studentA ← NEW Student("Amelia", 80)
studentB ← studentA

studentB.setScore(95)

OUTPUT studentA.getScore()
// Output is 95 because studentA and studentB
// both refer to the same object.</code></pre>
    </div>

    <div class="concept-grid">
      <article class="concept-card">
        <strong>Object</strong>
        <p>The actual data stored in memory.</p>
      </article>

      <article class="concept-card">
        <strong>Reference</strong>
        <p>A variable that points to an object.</p>
      </article>

      <article class="concept-card">
        <strong>Aliasing</strong>
        <p>Two variables point to the same object.</p>
      </article>

      <article class="concept-card">
        <strong>Mutation</strong>
        <p>Changing the object through one reference affects all references to that object.</p>
      </article>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Reference trace</p>
          <p class="hint">
            This records assignments and method calls.
          </p>
        </div>
        <button type="button" class="secondary-button" @click="clearTrace">
          Clear trace
        </button>
      </div>

      <div class="table-scroll">
        <table>
          <thead>
            <tr>
              <th>Step</th>
              <th>Code</th>
              <th>studentA points to</th>
              <th>studentB points to</th>
              <th>Effect</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(entry, index) in trace" :key="entry.id">
              <td>{{ index + 1 }}</td>
              <td><code>{{ entry.code }}</code></td>
              <td>{{ entry.studentARef }}</td>
              <td>{{ entry.studentBRef }}</td>
              <td>{{ entry.effect }}</td>
            </tr>
            <tr v-if="trace.length === 0">
              <td colspan="5" class="empty-cell">No actions yet.</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        An object variable may store a reference to an object rather than storing the whole object directly.
        If two variables reference the same object, changing the object through one variable will also be visible through the other variable.
        This is because both variables point to the same object in memory. If two variables reference separate objects, changing one object does
        not change the other object.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const scenarios = [
  {
    id: 'same',
    title: 'Same reference',
    description: 'studentB points to the same object as studentA.',
  },
  {
    id: 'different',
    title: 'Different objects',
    description: 'studentA and studentB point to separate objects.',
  },
  {
    id: 'same-values',
    title: 'Same values, different objects',
    description: 'The objects have identical values but are still separate objects.',
  },
]

const currentScenario = ref('same')
const selectedReference = ref('studentB')
const methodName = ref('setScore')
const methodText = ref('Chloe')
const methodValue = ref(95)
const objects = ref([])
const refs = ref({ studentA: 'OBJ1', studentB: 'OBJ1' })
const latestCall = ref('No method called yet.')
const latestMessage = ref('Choose a scenario, then call a method through studentA or studentB.')
const trace = ref([])
let nextTraceID = 1

resetCurrentScenario()

const studentARef = computed(() => refs.value.studentA)
const studentBRef = computed(() => refs.value.studentB)
const sameReference = computed(() => studentARef.value === studentBRef.value)

const activeObjectID = computed(() => {
  return refs.value[selectedReference.value]
})

function setScenario(id) {
  currentScenario.value = id
  resetCurrentScenario()
}

function resetCurrentScenario() {
  if (currentScenario.value === 'same') {
    objects.value = [
      { objectID: 'OBJ1', name: 'Amelia', score: 80 },
    ]
    refs.value = {
      studentA: 'OBJ1',
      studentB: 'OBJ1',
    }
    selectedReference.value = 'studentB'
    methodName.value = 'setScore'
    methodValue.value = 95
    methodText.value = 'Chloe'
    latestCall.value = 'studentB ← studentA'
    latestMessage.value = 'studentA and studentB now point to the same Student object.'
  } else if (currentScenario.value === 'different') {
    objects.value = [
      { objectID: 'OBJ1', name: 'Amelia', score: 80 },
      { objectID: 'OBJ2', name: 'Ben', score: 70 },
    ]
    refs.value = {
      studentA: 'OBJ1',
      studentB: 'OBJ2',
    }
    selectedReference.value = 'studentB'
    methodName.value = 'setScore'
    methodValue.value = 95
    methodText.value = 'Chloe'
    latestCall.value = 'studentB ← NEW Student("Ben", 70)'
    latestMessage.value = 'studentA and studentB point to different Student objects.'
  } else {
    objects.value = [
      { objectID: 'OBJ1', name: 'Amelia', score: 80 },
      { objectID: 'OBJ2', name: 'Amelia', score: 80 },
    ]
    refs.value = {
      studentA: 'OBJ1',
      studentB: 'OBJ2',
    }
    selectedReference.value = 'studentB'
    methodName.value = 'setScore'
    methodValue.value = 95
    methodText.value = 'Chloe'
    latestCall.value = 'studentB ← NEW Student("Amelia", 80)'
    latestMessage.value = 'The objects have the same attribute values, but they are still separate objects.'
  }

  trace.value = []
  addTrace({
    code: latestCall.value,
    effect: latestMessage.value,
  })
}

function callMethod() {
  const objectID = refs.value[selectedReference.value]
  const object = objects.value.find((item) => item.objectID === objectID)

  if (!object) {
    latestMessage.value = 'The selected reference does not point to an object.'
    return
  }

  if (methodName.value === 'display') {
    latestCall.value = `${selectedReference.value}.display()`
    latestMessage.value = `${selectedReference.value} points to ${object.objectID}: name = ${object.name}, score = ${object.score}.`

    addTrace({
      code: latestCall.value,
      effect: latestMessage.value,
    })
    return
  }

  if (methodName.value === 'setName') {
    const newName = methodText.value.trim() || 'Unnamed'
    const before = object.name
    object.name = newName

    latestCall.value = `${selectedReference.value}.setName("${newName}")`
    latestMessage.value = `${object.objectID} name changed from ${before} to ${newName}. ${referenceEffectText()}`

    addTrace({
      code: latestCall.value,
      effect: latestMessage.value,
    })
    return
  }

  if (methodName.value === 'setScore') {
    const newScore = cleanNumber(methodValue.value)
    const before = object.score
    object.score = newScore

    latestCall.value = `${selectedReference.value}.setScore(${newScore})`
    latestMessage.value = `${object.objectID} score changed from ${before} to ${newScore}. ${referenceEffectText()}`

    addTrace({
      code: latestCall.value,
      effect: latestMessage.value,
    })
    return
  }

  if (methodName.value === 'addScore') {
    const amount = cleanNumber(methodValue.value)
    const before = object.score
    object.score += amount

    latestCall.value = `${selectedReference.value}.addScore(${amount})`
    latestMessage.value = `${object.objectID} score changed from ${before} to ${object.score}. ${referenceEffectText()}`

    addTrace({
      code: latestCall.value,
      effect: latestMessage.value,
    })
  }
}

function referenceEffectText() {
  if (sameReference.value) {
    return 'Because studentA and studentB reference the same object, both variables see the change.'
  }

  return 'Because studentA and studentB reference different objects, only the selected object changes.'
}

function cleanNumber(value) {
  const number = Number(value)

  if (Number.isNaN(number)) {
    return 0
  }

  return Math.round(number)
}

function addTrace(entry) {
  trace.value.unshift({
    id: nextTraceID++,
    studentARef: refs.value.studentA,
    studentBRef: refs.value.studentB,
    ...entry,
  })
}

function clearTrace() {
  trace.value = []
}
</script>

<style scoped>
.ref-demo {
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

.status-pill.same {
  background: rgba(210, 140, 30, 0.14);
  color: #9a5a00;
}

.status-pill.different {
  background: rgba(20, 150, 80, 0.14);
  color: #14804a;
}

.scenario-panel,
.panel,
.memory-panel,
.result-panel,
.code-panel,
.trace-panel,
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

.scenario-buttons,
.main-grid,
.concept-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 12px;
}

.main-grid {
  grid-template-columns: repeat(2, minmax(0, 1fr));
}

.concept-grid {
  grid-template-columns: repeat(4, minmax(0, 1fr));
  margin-top: 16px;
}

.scenario-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
  cursor: pointer;
  text-align: left;
}

.scenario-button.active {
  outline: 3px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.scenario-button strong,
.scenario-button span {
  display: block;
}

.scenario-button span {
  margin-top: 4px;
  color: var(--vp-c-text-2);
}

.reference-list {
  display: grid;
  gap: 10px;
}

.reference-card,
.comparison-box,
.ref-node,
.object-node,
.call-box,
.message-box,
.concept-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px;
  background: var(--vp-c-bg-soft);
}

.reference-card strong,
.reference-card span,
.comparison-box span,
.comparison-box strong,
.ref-node strong,
.ref-node span,
.call-box span,
.call-box code {
  display: block;
}

.reference-card span,
.comparison-box span,
.ref-node span,
.call-box span {
  color: var(--vp-c-text-2);
}

.comparison-box {
  margin-top: 12px;
}

.comparison-box strong {
  font-size: 1.3rem;
  color: var(--vp-c-brand-1);
}

label {
  display: grid;
  gap: 6px;
  margin: 12px 0;
  font-weight: 800;
}

input,
select {
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 9px 10px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
}

.primary-button,
.secondary-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 9px 14px;
  cursor: pointer;
  font-weight: 800;
  margin: 4px 6px 4px 0;
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

.memory-layout {
  display: grid;
  grid-template-columns: 180px 60px 1fr;
  gap: 12px;
  align-items: center;
}

.reference-column,
.arrow-column,
.object-column {
  display: grid;
  gap: 12px;
}

.arrow {
  font-size: 2rem;
  font-weight: 900;
  color: var(--vp-c-brand-1);
  text-align: center;
}

.ref-node.active,
.object-node.active {
  outline: 3px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.object-title {
  margin: 0 0 8px;
  color: var(--vp-c-brand-1);
  font-weight: 900;
}

.attribute-row {
  display: flex;
  justify-content: space-between;
  gap: 10px;
  border-top: 1px solid var(--vp-c-divider);
  padding: 8px 0;
}

.call-box {
  margin-bottom: 10px;
}

.message-box p,
.concept-card p {
  margin-bottom: 0;
}

.concept-card strong {
  color: var(--vp-c-brand-1);
}

.code-panel pre {
  margin: 0;
  white-space: pre-wrap;
  overflow-x: auto;
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

@media (max-width: 900px) {
  .demo-heading,
  .scenario-buttons,
  .main-grid,
  .concept-grid,
  .memory-layout,
  .table-header {
    display: flex;
    flex-direction: column;
  }

  .arrow {
    transform: rotate(90deg);
  }
}
</style>
