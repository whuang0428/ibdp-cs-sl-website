<template>
  <section class="inheritance-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Inheritance Demo</h3>
        <p class="intro">
          Explore how subclasses inherit attributes and methods from a superclass, then add or override their own behaviour.
        </p>
      </div>

      <div class="status-pill">
        {{ selectedObject?.type || 'No object' }}
      </div>
    </div>

    <div class="hierarchy-panel">
      <p class="panel-title">Class hierarchy</p>

      <div class="hierarchy">
        <div class="class-box superclass">
          <strong>Vehicle</strong>
          <span>Superclass / Parent class</span>
          <code>brand</code>
          <code>speed</code>
          <code>accelerate()</code>
          <code>describe()</code>
        </div>

        <div class="connector-row">
          <span></span>
          <div class="connector"></div>
          <span></span>
        </div>

        <div class="subclass-row">
          <div class="class-box">
            <strong>Car</strong>
            <span>Subclass / Child class</span>
            <code>doors</code>
            <code>openBoot()</code>
            <code>describe() override</code>
          </div>

          <div class="class-box">
            <strong>Bike</strong>
            <span>Subclass / Child class</span>
            <code>hasBell</code>
            <code>ringBell()</code>
            <code>describe() override</code>
          </div>
        </div>
      </div>
    </div>

    <div class="main-grid">
      <article class="panel">
        <p class="panel-title">Create object</p>

        <label>
          Object type
          <select v-model="newType">
            <option value="Car">Car</option>
            <option value="Bike">Bike</option>
          </select>
        </label>

        <label>
          Brand
          <input v-model="newBrand" type="text" />
        </label>

        <label>
          Starting speed
          <input v-model.number="newSpeed" type="number" min="0" />
        </label>

        <label v-if="newType === 'Car'">
          Doors
          <input v-model.number="newDoors" type="number" min="2" max="6" />
        </label>

        <label v-if="newType === 'Bike'">
          Has bell?
          <select v-model="newHasBell">
            <option :value="true">true</option>
            <option :value="false">false</option>
          </select>
        </label>

        <button type="button" class="primary-button" @click="createObject">
          Create {{ newType }} object
        </button>
        <button type="button" class="secondary-button" @click="resetDemo">
          Reset demo
        </button>
      </article>

      <article class="panel">
        <p class="panel-title">Select object</p>

        <div class="object-list">
          <button
            v-for="object in objects"
            :key="object.id"
            type="button"
            :class="['object-button', { active: selectedObjectID === object.id }]"
            @click="selectedObjectID = object.id"
          >
            <strong>{{ object.id }}: {{ object.type }}</strong>
            <span>{{ object.brand }} / speed {{ object.speed }}</span>
          </button>
        </div>
      </article>
    </div>

    <div class="object-panel">
      <p class="panel-title">Selected object attributes</p>

      <div v-if="selectedObject" class="attribute-grid">
        <div class="attribute-card inherited">
          <span>brand</span>
          <strong>{{ selectedObject.brand }}</strong>
          <small>inherited from Vehicle</small>
        </div>

        <div class="attribute-card inherited">
          <span>speed</span>
          <strong>{{ selectedObject.speed }}</strong>
          <small>inherited from Vehicle</small>
        </div>

        <div v-if="selectedObject.type === 'Car'" class="attribute-card own">
          <span>doors</span>
          <strong>{{ selectedObject.doors }}</strong>
          <small>defined in Car</small>
        </div>

        <div v-if="selectedObject.type === 'Bike'" class="attribute-card own">
          <span>hasBell</span>
          <strong>{{ selectedObject.hasBell }}</strong>
          <small>defined in Bike</small>
        </div>
      </div>
    </div>

    <div class="method-panel">
      <p class="panel-title">Call method</p>

      <div v-if="selectedObject" class="method-grid">
        <article class="method-card">
          <label>
            Method
            <select v-model="methodName">
              <option value="accelerate">accelerate(amount)</option>
              <option value="describe">describe()</option>
              <option v-if="selectedObject.type === 'Car'" value="openBoot">openBoot()</option>
              <option v-if="selectedObject.type === 'Bike'" value="ringBell">ringBell()</option>
            </select>
          </label>

          <label v-if="methodName === 'accelerate'">
            amount
            <input v-model.number="methodAmount" type="number" min="0" />
          </label>

          <button type="button" class="primary-button" @click="callMethod">
            Call method
          </button>
        </article>

        <article class="method-card">
          <p class="panel-title">Method resolution</p>
          <div class="resolution-box">
            <span>Call</span>
            <code>{{ generatedCall }}</code>
          </div>

          <div class="resolution-box">
            <span>Where method is found</span>
            <strong>{{ methodSource }}</strong>
          </div>

          <div class="message-box">
            <strong>Output / effect</strong>
            <p>{{ latestMessage }}</p>
          </div>
        </article>
      </div>

      <p v-else class="hint">Create or select an object first.</p>
    </div>

    <div class="concept-grid">
      <article class="concept-card">
        <strong>Inheritance</strong>
        <p>A subclass receives attributes and methods from a superclass.</p>
      </article>
      <article class="concept-card">
        <strong>Superclass</strong>
        <p>The parent class that provides shared features.</p>
      </article>
      <article class="concept-card">
        <strong>Subclass</strong>
        <p>The child class that inherits and can add extra features.</p>
      </article>
      <article class="concept-card">
        <strong>Overriding</strong>
        <p>A subclass gives its own version of an inherited method.</p>
      </article>
    </div>

    <div class="code-panel">
      <p class="panel-title">Inheritance idea in pseudocode</p>

      <pre><code>CLASS Vehicle
    PRIVATE brand
    PRIVATE speed

    PUBLIC PROCEDURE accelerate(amount)
        speed ← speed + amount
    END PROCEDURE

    PUBLIC FUNCTION describe()
        RETURN "Vehicle: " + brand
    END FUNCTION
END CLASS

CLASS Car INHERITS Vehicle
    PRIVATE doors

    PUBLIC FUNCTION describe()
        RETURN "Car: " + brand + ", doors: " + doors
    END FUNCTION
END CLASS</code></pre>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Inheritance trace</p>
          <p class="hint">
            This records object creation and method calls.
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
              <th>Call</th>
              <th>Method source</th>
              <th>Effect / output</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(entry, index) in trace" :key="entry.id">
              <td>{{ index + 1 }}</td>
              <td>{{ entry.object }}</td>
              <td><code>{{ entry.call }}</code></td>
              <td>{{ entry.source }}</td>
              <td>{{ entry.effect }}</td>
            </tr>
            <tr v-if="trace.length === 0">
              <td colspan="5" class="empty-cell">No interactions yet.</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Inheritance allows a subclass to reuse attributes and methods from a superclass. This reduces duplicated code because shared features
        can be written once in the superclass. A subclass can also define extra attributes and methods, or override inherited methods to provide
        specialised behaviour.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref, watch } from 'vue'

const objects = ref([
  { id: 'V001', type: 'Car', brand: 'Toyota', speed: 40, doors: 4 },
  { id: 'V002', type: 'Bike', brand: 'Giant', speed: 15, hasBell: true },
])

const selectedObjectID = ref('V001')
const newType = ref('Car')
const newBrand = ref('Honda')
const newSpeed = ref(20)
const newDoors = ref(4)
const newHasBell = ref(true)
const methodName = ref('accelerate')
const methodAmount = ref(10)
const latestMessage = ref('Select an object and call a method.')
const trace = ref([])
let nextObjectNumber = 3
let nextTraceID = 1

const selectedObject = computed(() => {
  return objects.value.find((object) => object.id === selectedObjectID.value)
})

const generatedCall = computed(() => {
  if (!selectedObject.value) return ''

  if (methodName.value === 'accelerate') {
    return `${selectedObject.value.id}.accelerate(${methodAmount.value})`
  }

  return `${selectedObject.value.id}.${methodName.value}()`
})

const methodSource = computed(() => {
  const object = selectedObject.value
  if (!object) return '-'

  if (methodName.value === 'accelerate') {
    return 'Vehicle superclass'
  }

  if (methodName.value === 'describe') {
    return `${object.type} subclass override`
  }

  return `${object.type} subclass`
})

watch(selectedObject, (object) => {
  if (!object) return

  if (object.type === 'Car' && methodName.value === 'ringBell') {
    methodName.value = 'accelerate'
  }

  if (object.type === 'Bike' && methodName.value === 'openBoot') {
    methodName.value = 'accelerate'
  }
})

function createObject() {
  const objectID = `V${String(nextObjectNumber).padStart(3, '0')}`
  const baseObject = {
    id: objectID,
    type: newType.value,
    brand: newBrand.value.trim() || newType.value,
    speed: cleanNumber(newSpeed.value),
  }

  if (newType.value === 'Car') {
    objects.value.push({
      ...baseObject,
      doors: Math.max(2, Math.min(6, cleanNumber(newDoors.value))),
    })
  } else {
    objects.value.push({
      ...baseObject,
      hasBell: Boolean(newHasBell.value),
    })
  }

  selectedObjectID.value = objectID
  nextObjectNumber++

  addTrace({
    object: objectID,
    call: `new ${baseObject.type}()`,
    source: `${baseObject.type} constructor + Vehicle inherited attributes`,
    effect: `${baseObject.type} object created with inherited brand and speed attributes.`,
  })

  latestMessage.value = `${objectID} was created as a ${baseObject.type} object.`
}

function callMethod() {
  const object = selectedObject.value
  if (!object) return

  if (methodName.value === 'accelerate') {
    const amount = cleanNumber(methodAmount.value)
    const before = object.speed
    object.speed += amount

    latestMessage.value = `${object.id} used inherited accelerate(). Speed changed from ${before} to ${object.speed}.`

    addTrace({
      object: object.id,
      call: `${object.id}.accelerate(${amount})`,
      source: 'Vehicle superclass',
      effect: `speed changed from ${before} to ${object.speed}`,
    })
    return
  }

  if (methodName.value === 'describe') {
    const output = describeObject(object)
    latestMessage.value = output

    addTrace({
      object: object.id,
      call: `${object.id}.describe()`,
      source: `${object.type} subclass override`,
      effect: output,
    })
    return
  }

  if (methodName.value === 'openBoot') {
    latestMessage.value = `${object.id}: The car boot is opened.`

    addTrace({
      object: object.id,
      call: `${object.id}.openBoot()`,
      source: 'Car subclass',
      effect: 'Car-specific method executed.',
    })
    return
  }

  if (methodName.value === 'ringBell') {
    const output = object.hasBell
      ? `${object.id}: Ring ring!`
      : `${object.id}: This bike has no bell.`

    latestMessage.value = output

    addTrace({
      object: object.id,
      call: `${object.id}.ringBell()`,
      source: 'Bike subclass',
      effect: output,
    })
  }
}

function describeObject(object) {
  if (object.type === 'Car') {
    return `Car ${object.brand}, speed ${object.speed}, doors ${object.doors}.`
  }

  return `Bike ${object.brand}, speed ${object.speed}, hasBell ${object.hasBell}.`
}

function cleanNumber(value) {
  const number = Number(value)

  if (Number.isNaN(number) || number < 0) {
    return 0
  }

  return Math.floor(number)
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
  objects.value = [
    { id: 'V001', type: 'Car', brand: 'Toyota', speed: 40, doors: 4 },
    { id: 'V002', type: 'Bike', brand: 'Giant', speed: 15, hasBell: true },
  ]
  selectedObjectID.value = 'V001'
  newType.value = 'Car'
  newBrand.value = 'Honda'
  newSpeed.value = 20
  newDoors.value = 4
  newHasBell.value = true
  methodName.value = 'accelerate'
  methodAmount.value = 10
  latestMessage.value = 'Select an object and call a method.'
  trace.value = []
  nextObjectNumber = 3
}
</script>

<style scoped>
.inheritance-demo {
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
  font-weight: 900;
  white-space: nowrap;
}

.hierarchy-panel,
.panel,
.object-panel,
.method-panel,
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

.hierarchy {
  display: grid;
  gap: 8px;
}

.class-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px;
  background: var(--vp-c-bg-soft);
  text-align: center;
}

.class-box.superclass {
  max-width: 360px;
  margin: 0 auto;
  outline: 3px solid var(--vp-c-brand-soft);
}

.class-box strong,
.class-box span,
.class-box code {
  display: block;
}

.class-box strong {
  color: var(--vp-c-brand-1);
  font-size: 1.1rem;
}

.class-box span {
  color: var(--vp-c-text-2);
  margin: 4px 0 8px;
}

.class-box code {
  margin: 4px auto;
  padding: 4px 8px;
  border-radius: 8px;
  background: var(--vp-c-bg);
  max-width: 230px;
}

.connector-row {
  display: grid;
  grid-template-columns: 1fr 80px 1fr;
  align-items: center;
}

.connector {
  height: 35px;
  border-left: 4px solid var(--vp-c-divider);
  border-bottom: 4px solid var(--vp-c-divider);
  border-right: 4px solid var(--vp-c-divider);
}

.subclass-row,
.main-grid,
.method-grid,
.concept-grid,
.attribute-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

.concept-grid,
.attribute-grid {
  grid-template-columns: repeat(4, minmax(0, 1fr));
  margin-top: 16px;
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

.object-list {
  display: grid;
  gap: 8px;
}

.object-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  padding: 10px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
  cursor: pointer;
  text-align: left;
}

.object-button.active {
  outline: 3px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.object-button strong,
.object-button span {
  display: block;
}

.object-button span {
  color: var(--vp-c-text-2);
}

.attribute-card,
.method-card,
.concept-card,
.resolution-box,
.message-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px;
  background: var(--vp-c-bg-soft);
}

.attribute-card.inherited {
  outline: 2px dashed var(--vp-c-brand-1);
}

.attribute-card.own {
  outline: 2px solid rgba(20, 150, 80, 0.35);
}

.attribute-card span,
.attribute-card strong,
.attribute-card small,
.resolution-box span,
.resolution-box code,
.resolution-box strong {
  display: block;
}

.attribute-card span,
.attribute-card small,
.resolution-box span {
  color: var(--vp-c-text-2);
}

.attribute-card strong {
  font-size: 1.2rem;
  margin: 4px 0;
}

.resolution-box {
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
  .subclass-row,
  .main-grid,
  .method-grid,
  .concept-grid,
  .attribute-grid,
  .table-header {
    display: flex;
    flex-direction: column;
  }
}
</style>
