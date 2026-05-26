<template>
  <section class="oop-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>OOP Object Interaction Demo</h3>
        <p class="intro">
          Create objects from a class blueprint, call methods, and watch how each object keeps its own attribute values.
        </p>
      </div>

      <div class="status-pill">
        {{ accounts.length }} object{{ accounts.length === 1 ? '' : 's' }}
      </div>
    </div>

    <div class="main-grid">
      <article class="panel class-panel">
        <p class="panel-title">Class blueprint</p>

        <div class="class-card">
          <p class="class-name">class BankAccount</p>

          <div class="class-section">
            <strong>Attributes</strong>
            <code>accountID</code>
            <code>ownerName</code>
            <code>balance</code>
          </div>

          <div class="class-section">
            <strong>Methods</strong>
            <code>deposit(amount)</code>
            <code>withdraw(amount)</code>
            <code>displayBalance()</code>
          </div>
        </div>

        <p class="hint">
          A class is a blueprint. Objects are actual instances created from the class.
        </p>
      </article>

      <article class="panel">
        <p class="panel-title">Create object</p>

        <label>
          Owner name
          <input v-model="newOwner" type="text" />
        </label>

        <label>
          Starting balance
          <input v-model.number="newBalance" type="number" min="0" />
        </label>

        <button type="button" class="primary-button" @click="createAccount">
          Create BankAccount object
        </button>

        <button type="button" class="secondary-button" @click="resetDemo">
          Reset demo
        </button>
      </article>
    </div>

    <div class="object-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Objects created from the class</p>
          <p class="hint">
            Each object has the same attributes and methods, but its own attribute values.
          </p>
        </div>
      </div>

      <div class="object-grid">
        <article
          v-for="account in accounts"
          :key="account.accountID"
          :class="['object-card', { active: selectedAccountID === account.accountID }]"
          @click="selectedAccountID = account.accountID"
        >
          <p class="object-title">{{ account.accountID }}</p>
          <div class="attribute-row">
            <span>ownerName</span>
            <strong>{{ account.ownerName }}</strong>
          </div>
          <div class="attribute-row">
            <span>balance</span>
            <strong>${{ account.balance }}</strong>
          </div>
          <p class="object-note">
            Instance of <strong>BankAccount</strong>
          </p>
        </article>
      </div>
    </div>

    <div class="method-panel">
      <p class="panel-title">Call a method</p>

      <div v-if="selectedAccount" class="method-grid">
        <article class="method-card">
          <p>
            Selected object:
            <strong>{{ selectedAccount.accountID }} / {{ selectedAccount.ownerName }}</strong>
          </p>

          <label>
            Method
            <select v-model="methodName">
              <option value="deposit">deposit(amount)</option>
              <option value="withdraw">withdraw(amount)</option>
              <option value="displayBalance">displayBalance()</option>
            </select>
          </label>

          <label v-if="methodName !== 'displayBalance'">
            amount
            <input v-model.number="amount" type="number" min="0" />
          </label>

          <button type="button" class="primary-button" @click="callMethod">
            Call method
          </button>
        </article>

        <article class="method-card">
          <p class="panel-title">Generated method call</p>
          <pre><code>{{ generatedCall }}</code></pre>

          <p class="panel-title">Output / effect</p>
          <p>{{ latestMessage }}</p>
        </article>
      </div>

      <p v-else class="hint">
        Create or select an object first.
      </p>
    </div>

    <div class="state-panel">
      <p class="panel-title">Why object state matters</p>

      <div class="concept-grid">
        <article class="concept-card">
          <strong>Class</strong>
          <p>A template that defines attributes and methods.</p>
        </article>
        <article class="concept-card">
          <strong>Object</strong>
          <p>An instance created from a class.</p>
        </article>
        <article class="concept-card">
          <strong>Attribute</strong>
          <p>Data stored inside an object.</p>
        </article>
        <article class="concept-card">
          <strong>Method</strong>
          <p>A procedure or function that belongs to a class.</p>
        </article>
      </div>
    </div>

    <div class="trace-panel">
      <div class="table-header">
        <div>
          <p class="panel-title">Object interaction trace</p>
          <p class="hint">
            This records constructor calls and method calls.
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
              <th>Before balance</th>
              <th>After balance</th>
              <th>Explanation</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(entry, index) in trace" :key="entry.id">
              <td>{{ index + 1 }}</td>
              <td>{{ entry.object }}</td>
              <td><code>{{ entry.call }}</code></td>
              <td>{{ entry.before }}</td>
              <td>{{ entry.after }}</td>
              <td>{{ entry.explanation }}</td>
            </tr>
            <tr v-if="trace.length === 0">
              <td colspan="6" class="empty-cell">No interactions yet.</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        A class defines the attributes and methods that its objects will have. An object is an instance of a class.
        Each object has its own attribute values, so changing the balance of one BankAccount object does not change the balance
        of another BankAccount object. Methods are called on objects and can access or update that object's attributes.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const accounts = ref([
  { accountID: 'A001', ownerName: 'Amelia', balance: 120 },
  { accountID: 'A002', ownerName: 'Ben', balance: 80 },
])

const selectedAccountID = ref('A001')
const newOwner = ref('Chloe')
const newBalance = ref(50)
const methodName = ref('deposit')
const amount = ref(20)
const latestMessage = ref('Select an object and call a method.')
const trace = ref([])
let nextAccountNumber = 3
let nextTraceID = 1

const selectedAccount = computed(() => {
  return accounts.value.find((account) => account.accountID === selectedAccountID.value)
})

const generatedCall = computed(() => {
  if (!selectedAccount.value) {
    return ''
  }

  if (methodName.value === 'displayBalance') {
    return `${selectedAccount.value.accountID}.displayBalance()`
  }

  return `${selectedAccount.value.accountID}.${methodName.value}(${amount.value})`
})

function createAccount() {
  const safeOwner = newOwner.value.trim() || 'NewOwner'
  const safeBalance = cleanAmount(newBalance.value)
  const accountID = `A${String(nextAccountNumber).padStart(3, '0')}`

  accounts.value.push({
    accountID,
    ownerName: safeOwner,
    balance: safeBalance,
  })

  selectedAccountID.value = accountID
  nextAccountNumber++

  addTrace({
    object: accountID,
    call: `new BankAccount("${safeOwner}", ${safeBalance})`,
    before: '-',
    after: `$${safeBalance}`,
    explanation: 'The constructor creates a new object with its own attribute values.',
  })

  latestMessage.value = `${accountID} was created for ${safeOwner}.`
}

function callMethod() {
  const account = selectedAccount.value

  if (!account) {
    latestMessage.value = 'No object selected.'
    return
  }

  const before = account.balance

  if (methodName.value === 'displayBalance') {
    latestMessage.value = `${account.ownerName}'s balance is $${account.balance}.`

    addTrace({
      object: account.accountID,
      call: `${account.accountID}.displayBalance()`,
      before: `$${before}`,
      after: `$${account.balance}`,
      explanation: 'The method reads the balance attribute but does not change it.',
    })

    return
  }

  const safeAmount = cleanAmount(amount.value)

  if (methodName.value === 'deposit') {
    account.balance += safeAmount
    latestMessage.value = `$${safeAmount} deposited into ${account.accountID}.`

    addTrace({
      object: account.accountID,
      call: `${account.accountID}.deposit(${safeAmount})`,
      before: `$${before}`,
      after: `$${account.balance}`,
      explanation: 'The deposit method increases this object’s balance attribute.',
    })

    return
  }

  if (safeAmount > account.balance) {
    latestMessage.value = `Withdraw failed: ${account.accountID} does not have enough balance.`

    addTrace({
      object: account.accountID,
      call: `${account.accountID}.withdraw(${safeAmount})`,
      before: `$${before}`,
      after: `$${account.balance}`,
      explanation: 'The method checks the attribute value and rejects the withdrawal.',
    })

    return
  }

  account.balance -= safeAmount
  latestMessage.value = `$${safeAmount} withdrawn from ${account.accountID}.`

  addTrace({
    object: account.accountID,
    call: `${account.accountID}.withdraw(${safeAmount})`,
    before: `$${before}`,
    after: `$${account.balance}`,
    explanation: 'The withdraw method decreases this object’s balance attribute.',
  })
}

function cleanAmount(value) {
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
  accounts.value = [
    { accountID: 'A001', ownerName: 'Amelia', balance: 120 },
    { accountID: 'A002', ownerName: 'Ben', balance: 80 },
  ]
  selectedAccountID.value = 'A001'
  newOwner.value = 'Chloe'
  newBalance.value = 50
  methodName.value = 'deposit'
  amount.value = 20
  latestMessage.value = 'Select an object and call a method.'
  trace.value = []
  nextAccountNumber = 3
}
</script>

<style scoped>
.oop-demo {
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

.main-grid,
.method-grid,
.concept-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

.concept-grid {
  grid-template-columns: repeat(4, minmax(0, 1fr));
}

.panel,
.object-panel,
.method-panel,
.state-panel,
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

.class-card {
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

.object-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 12px;
}

.object-card,
.method-card,
.concept-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px;
  background: var(--vp-c-bg-soft);
}

.object-card {
  cursor: pointer;
}

.object-card.active {
  outline: 3px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.object-title {
  margin: 0 0 8px;
  font-weight: 900;
  color: var(--vp-c-brand-1);
}

.attribute-row {
  display: flex;
  justify-content: space-between;
  gap: 10px;
  border-top: 1px solid var(--vp-c-divider);
  padding: 8px 0;
}

.object-note {
  margin-bottom: 0;
  color: var(--vp-c-text-2);
}

.method-card pre {
  white-space: pre-wrap;
  overflow-x: auto;
  margin: 0 0 12px;
}

.concept-card strong {
  color: var(--vp-c-brand-1);
}

.concept-card p {
  margin-bottom: 0;
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
  .main-grid,
  .method-grid,
  .concept-grid,
  .table-header {
    display: flex;
    flex-direction: column;
  }

  .object-grid {
    grid-template-columns: 1fr;
  }
}
</style>
