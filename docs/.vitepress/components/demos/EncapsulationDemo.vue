<template>
  <section class="encap-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Encapsulation Demo</h3>
        <p class="intro">
          Try changing object data directly or through methods, and see why encapsulation protects object state.
        </p>
      </div>

      <div :class="['status-pill', latestSuccess ? 'success' : 'blocked']">
        {{ latestStatus }}
      </div>
    </div>

    <div class="main-grid">
      <article class="panel class-panel">
        <p class="panel-title">Class design</p>

        <div class="class-card">
          <p class="class-name">class StudentRecord</p>

          <div class="class-section">
            <strong>Private attributes</strong>
            <code>private studentID</code>
            <code>private name</code>
            <code>private score</code>
          </div>

          <div class="class-section">
            <strong>Public methods</strong>
            <code>getScore()</code>
            <code>setScore(newScore)</code>
            <code>addMarks(amount)</code>
            <code>getGrade()</code>
          </div>
        </div>

        <p class="hint">
          Encapsulation means object data is protected and should be accessed through controlled methods.
        </p>
      </article>

      <article class="panel">
        <p class="panel-title">Choose an object</p>

        <div class="student-list">
          <button
            v-for="student in students"
            :key="student.studentID"
            type="button"
            :class="['student-button', { active: selectedStudentID === student.studentID }]"
            @click="selectedStudentID = student.studentID"
          >
            <strong>{{ student.studentID }}</strong>
            <span>{{ student.name }}</span>
          </button>
        </div>

        <button type="button" class="secondary-button" @click="resetDemo">
          Reset demo
        </button>
      </article>
    </div>

    <div class="object-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Selected object state</p>
          <p class="hint">
            The private data is shown here for learning, but real code should access it through methods.
          </p>
        </div>
      </div>

      <div v-if="selectedStudent" class="state-grid">
        <div class="state-card">
          <span>studentID</span>
          <strong>{{ selectedStudent.studentID }}</strong>
        </div>
        <div class="state-card">
          <span>name</span>
          <strong>{{ selectedStudent.name }}</strong>
        </div>
        <div class="state-card protected">
          <span>private score</span>
          <strong>{{ selectedStudent.score }}</strong>
        </div>
        <div class="state-card">
          <span>grade</span>
          <strong>{{ gradeFor(selectedStudent.score) }}</strong>
        </div>
      </div>
    </div>

    <div class="interaction-grid">
      <article class="panel">
        <p class="panel-title">Attempt direct access</p>

        <label>
          Directly set score to
          <input v-model.number="directScore" type="number" />
        </label>

        <button type="button" class="danger-button" @click="tryDirectAccess">
          Try: student.score = {{ directScore }}
        </button>

        <p class="hint">
          This represents unsafe direct access to a private attribute.
        </p>
      </article>

      <article class="panel">
        <p class="panel-title">Use public method</p>

        <label>
          Method
          <select v-model="methodName">
            <option value="setScore">setScore(newScore)</option>
            <option value="addMarks">addMarks(amount)</option>
            <option value="getScore">getScore()</option>
            <option value="getGrade">getGrade()</option>
          </select>
        </label>

        <label v-if="methodName === 'setScore'">
          newScore
          <input v-model.number="methodValue" type="number" />
        </label>

        <label v-if="methodName === 'addMarks'">
          amount
          <input v-model.number="methodValue" type="number" />
        </label>

        <button type="button" class="primary-button" @click="callMethod">
          Call method
        </button>
      </article>
    </div>

    <div class="result-panel">
      <p class="panel-title">Latest action</p>

      <div class="call-box">
        <span>Call</span>
        <code>{{ latestCall }}</code>
      </div>

      <div :class="['message-box', latestSuccess ? 'success' : 'blocked']">
        <strong>{{ latestStatus }}</strong>
        <p>{{ latestMessage }}</p>
      </div>
    </div>

    <div class="concept-grid">
      <article class="concept-card">
        <strong>Private data</strong>
        <p>Attributes should not be changed directly from outside the object.</p>
      </article>
      <article class="concept-card">
        <strong>Public methods</strong>
        <p>Methods provide controlled access to object data.</p>
      </article>
      <article class="concept-card">
        <strong>Validation</strong>
        <p>Methods can reject invalid values before changing the object state.</p>
      </article>
      <article class="concept-card">
        <strong>Data integrity</strong>
        <p>Encapsulation helps keep the object in a valid and consistent state.</p>
      </article>
    </div>

    <div class="code-panel">
      <p class="panel-title">Encapsulation idea in pseudocode</p>

      <pre><code>CLASS StudentRecord
    PRIVATE studentID
    PRIVATE name
    PRIVATE score

    PUBLIC PROCEDURE setScore(newScore)
        IF newScore &gt;= 0 AND newScore &lt;= 100 THEN
            score ← newScore
        END IF
    END PROCEDURE

    PUBLIC FUNCTION getScore()
        RETURN score
    END FUNCTION
END CLASS</code></pre>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Encapsulation trace</p>
          <p class="hint">
            This shows which actions were allowed or blocked.
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
              <th>Object</th>
              <th>Action</th>
              <th>Before score</th>
              <th>After score</th>
              <th>Allowed?</th>
              <th>Reason</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(entry, index) in trace" :key="entry.id">
              <td>{{ index + 1 }}</td>
              <td>{{ entry.object }}</td>
              <td><code>{{ entry.action }}</code></td>
              <td>{{ entry.before }}</td>
              <td>{{ entry.after }}</td>
              <td>{{ entry.allowed ? 'Yes' : 'No' }}</td>
              <td>{{ entry.reason }}</td>
            </tr>
            <tr v-if="trace.length === 0">
              <td colspan="7" class="empty-cell">No actions yet.</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Encapsulation means keeping an object's data private and controlling access through public methods.
        This prevents other parts of the program from directly changing attributes to invalid values.
        Public methods can validate data before updating private attributes, helping maintain data integrity.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const students = ref([
  { studentID: 'S001', name: 'Amelia', score: 82 },
  { studentID: 'S002', name: 'Ben', score: 64 },
  { studentID: 'S003', name: 'Chloe', score: 91 },
])

const selectedStudentID = ref('S001')
const directScore = ref(150)
const methodName = ref('setScore')
const methodValue = ref(95)

const latestCall = ref('No method called yet.')
const latestStatus = ref('Ready')
const latestMessage = ref('Select an object, then try direct access or call a public method.')
const latestSuccess = ref(true)
const trace = ref([])
let nextTraceID = 1

const selectedStudent = computed(() => {
  return students.value.find((student) => student.studentID === selectedStudentID.value)
})

function tryDirectAccess() {
  const student = selectedStudent.value
  if (!student) return

  const before = student.score
  latestCall.value = `${student.studentID}.score = ${directScore.value}`
  latestStatus.value = 'Blocked'
  latestSuccess.value = false
  latestMessage.value = 'Direct access is blocked because score is a private attribute. Use setScore(newScore) instead.'

  addTrace({
    object: student.studentID,
    action: latestCall.value,
    before,
    after: student.score,
    allowed: false,
    reason: 'Private attributes should not be changed directly from outside the object.',
  })
}

function callMethod() {
  const student = selectedStudent.value
  if (!student) return

  const before = student.score

  if (methodName.value === 'getScore') {
    latestCall.value = `${student.studentID}.getScore()`
    latestStatus.value = 'Allowed'
    latestSuccess.value = true
    latestMessage.value = `The method returns the private score value: ${student.score}.`

    addTrace({
      object: student.studentID,
      action: latestCall.value,
      before,
      after: student.score,
      allowed: true,
      reason: 'A getter method can safely read private data.',
    })
    return
  }

  if (methodName.value === 'getGrade') {
    latestCall.value = `${student.studentID}.getGrade()`
    latestStatus.value = 'Allowed'
    latestSuccess.value = true
    latestMessage.value = `The method returns grade ${gradeFor(student.score)} based on the private score.`

    addTrace({
      object: student.studentID,
      action: latestCall.value,
      before,
      after: student.score,
      allowed: true,
      reason: 'A public method can calculate a result using private data.',
    })
    return
  }

  const value = Number(methodValue.value)

  if (Number.isNaN(value)) {
    latestCall.value = `${student.studentID}.${methodName.value}(invalid)`
    latestStatus.value = 'Blocked'
    latestSuccess.value = false
    latestMessage.value = 'The method rejected the value because it is not a number.'

    addTrace({
      object: student.studentID,
      action: latestCall.value,
      before,
      after: student.score,
      allowed: false,
      reason: 'Validation rejects non-numeric input.',
    })
    return
  }

  if (methodName.value === 'setScore') {
    latestCall.value = `${student.studentID}.setScore(${value})`

    if (value < 0 || value > 100) {
      latestStatus.value = 'Blocked'
      latestSuccess.value = false
      latestMessage.value = 'setScore rejected the value because a score must be between 0 and 100.'

      addTrace({
        object: student.studentID,
        action: latestCall.value,
        before,
        after: student.score,
        allowed: false,
        reason: 'Validation protects the object from invalid score values.',
      })
      return
    }

    student.score = Math.round(value)
    latestStatus.value = 'Allowed'
    latestSuccess.value = true
    latestMessage.value = `setScore updated the private score to ${student.score}.`

    addTrace({
      object: student.studentID,
      action: latestCall.value,
      before,
      after: student.score,
      allowed: true,
      reason: 'The public method validated the value before changing the private attribute.',
    })
    return
  }

  if (methodName.value === 'addMarks') {
    latestCall.value = `${student.studentID}.addMarks(${value})`
    const newScore = student.score + value

    if (value < 0) {
      latestStatus.value = 'Blocked'
      latestSuccess.value = false
      latestMessage.value = 'addMarks rejected the value because added marks cannot be negative.'

      addTrace({
        object: student.studentID,
        action: latestCall.value,
        before,
        after: student.score,
        allowed: false,
        reason: 'The method prevents an invalid update.',
      })
      return
    }

    if (newScore > 100) {
      latestStatus.value = 'Blocked'
      latestSuccess.value = false
      latestMessage.value = 'addMarks rejected the value because the score cannot go above 100.'

      addTrace({
        object: student.studentID,
        action: latestCall.value,
        before,
        after: student.score,
        allowed: false,
        reason: 'Validation keeps the score within the valid range.',
      })
      return
    }

    student.score = Math.round(newScore)
    latestStatus.value = 'Allowed'
    latestSuccess.value = true
    latestMessage.value = `addMarks increased the private score to ${student.score}.`

    addTrace({
      object: student.studentID,
      action: latestCall.value,
      before,
      after: student.score,
      allowed: true,
      reason: 'The method safely updates the private attribute.',
    })
  }
}

function gradeFor(score) {
  if (score >= 80) return 'A'
  if (score >= 70) return 'B'
  if (score >= 60) return 'C'
  if (score >= 50) return 'D'
  return 'E'
}

function addTrace(entry) {
  trace.value.unshift({
    id: nextTraceID++,
    ...entry,
  })
}

function clearTrace() {
  trace.value = []
}

function resetDemo() {
  students.value = [
    { studentID: 'S001', name: 'Amelia', score: 82 },
    { studentID: 'S002', name: 'Ben', score: 64 },
    { studentID: 'S003', name: 'Chloe', score: 91 },
  ]
  selectedStudentID.value = 'S001'
  directScore.value = 150
  methodName.value = 'setScore'
  methodValue.value = 95
  latestCall.value = 'No method called yet.'
  latestStatus.value = 'Ready'
  latestMessage.value = 'Select an object, then try direct access or call a public method.'
  latestSuccess.value = true
  trace.value = []
}
</script>

<style scoped>
.encap-demo {
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

.status-pill.success {
  background: rgba(20, 150, 80, 0.14);
  color: #14804a;
}

.status-pill.blocked {
  background: rgba(210, 55, 55, 0.12);
  color: #b42318;
}

.main-grid,
.interaction-grid,
.concept-grid,
.state-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

.concept-grid {
  grid-template-columns: repeat(4, minmax(0, 1fr));
}

.state-grid {
  grid-template-columns: repeat(4, minmax(0, 1fr));
}

.panel,
.object-panel,
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

.class-card,
.state-card,
.concept-card,
.call-box,
.message-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px;
  background: var(--vp-c-bg-soft);
}

.class-name {
  margin: 0 0 10px;
  font-weight: 900;
  color: var(--vp-c-brand-1);
}

.class-section {
  display: grid;
  gap: 6px;
  margin-top: 10px;
}

.class-section code {
  display: block;
  padding: 6px 8px;
  border-radius: 8px;
  background: var(--vp-c-bg);
}

.student-list {
  display: grid;
  gap: 8px;
}

.student-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  padding: 10px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
  cursor: pointer;
  text-align: left;
}

.student-button.active {
  outline: 3px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.student-button strong,
.student-button span,
.state-card span,
.state-card strong,
.call-box span,
.call-box code {
  display: block;
}

.student-button span,
.state-card span,
.call-box span {
  color: var(--vp-c-text-2);
}

.state-card.protected {
  outline: 2px dashed var(--vp-c-brand-1);
}

.state-card strong {
  margin-top: 4px;
  font-size: 1.2rem;
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
.secondary-button,
.danger-button {
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

.danger-button {
  background: rgba(210, 55, 55, 0.12);
  color: #b42318;
  border-color: rgba(210, 55, 55, 0.3);
}

.message-box {
  margin-top: 10px;
}

.message-box.success {
  background: rgba(20, 150, 80, 0.12);
}

.message-box.blocked {
  background: rgba(210, 55, 55, 0.1);
}

.concept-card {
  margin-top: 16px;
}

.concept-card strong {
  color: var(--vp-c-brand-1);
}

.concept-card p {
  margin-bottom: 0;
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
  min-width: 900px;
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
  .main-grid,
  .interaction-grid,
  .concept-grid,
  .state-grid,
  .table-header {
    display: flex;
    flex-direction: column;
  }
}
</style>
