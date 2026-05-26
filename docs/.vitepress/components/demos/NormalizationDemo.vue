<template>
  <section class="normalization-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Normalization Demo</h3>
        <p class="intro">
          Step through how one repeated, messy table can be split into related tables using primary and foreign keys.
        </p>
      </div>

      <div class="status-pill">
        Step {{ currentStep + 1 }} / {{ steps.length }}
      </div>
    </div>

    <div class="step-card">
      <p class="step-label">Current step</p>
      <h4>{{ currentStepData.title }}</h4>
      <p>{{ currentStepData.description }}</p>
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
      <button type="button" class="secondary-button" @click="toggleUpdate">
        {{ showUpdateProblem ? 'Hide update problem' : 'Show update problem' }}
      </button>
    </div>

    <div v-if="showUpdateProblem" class="warning-box">
      <strong>Update anomaly:</strong>
      In the unnormalised table, changing a customer's email or a product price may require editing several rows.
      If only one row is updated, the same real-world fact becomes inconsistent.
    </div>

    <div class="diagram-panel">
      <div :class="['entity-card', { active: currentStep >= 2 }]">
        <p class="entity-title">Customers</p>
        <small>CustomerID PK</small>
      </div>
      <div :class="['entity-card', { active: currentStep >= 2 }]">
        <p class="entity-title">Orders</p>
        <small>OrderID PK, CustomerID FK</small>
      </div>
      <div :class="['entity-card', { active: currentStep >= 2 }]">
        <p class="entity-title">Products</p>
        <small>ProductID PK</small>
      </div>
      <div :class="['entity-card', { active: currentStep >= 3 }]">
        <p class="entity-title">OrderItems</p>
        <small>OrderID FK, ProductID FK</small>
      </div>
    </div>

    <div class="view-tabs">
      <button
        type="button"
        :class="['tab-button', { active: activeView === 'raw' }]"
        @click="activeView = 'raw'"
      >
        Unnormalised table
      </button>
      <button
        type="button"
        :class="['tab-button', { active: activeView === 'normalised' }]"
        @click="activeView = 'normalised'"
      >
        Normalised tables
      </button>
      <button
        type="button"
        :class="['tab-button', { active: activeView === 'comparison' }]"
        @click="activeView = 'comparison'"
      >
        Comparison
      </button>
    </div>

    <div v-if="activeView === 'raw'" class="table-section">
      <div class="table-header">
        <div>
          <p class="panel-title">Unnormalised Order Table</p>
          <p class="hint">
            Repeated customer and product data are stored together in one table.
          </p>
        </div>
        <span class="badge danger">High redundancy</span>
      </div>

      <div class="table-scroll">
        <table>
          <thead>
            <tr>
              <th>OrderID</th>
              <th>CustomerName</th>
              <th>CustomerEmail</th>
              <th>OrderDate</th>
              <th>ProductName</th>
              <th>UnitPrice</th>
              <th>Quantity</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="row in rawRows" :key="row.rawID" :class="{ changed: showUpdateProblem && row.customerName === 'Amelia' }">
              <td>{{ row.orderID }}</td>
              <td>{{ row.customerName }}</td>
              <td>{{ displayRawEmail(row) }}</td>
              <td>{{ row.orderDate }}</td>
              <td>{{ row.productName }}</td>
              <td>{{ currency(row.unitPrice) }}</td>
              <td>{{ row.quantity }}</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="note-box">
        <strong>Problem:</strong>
        Customer details and product details are repeated. This can cause redundancy, inconsistency, and update anomalies.
      </div>
    </div>

    <div v-else-if="activeView === 'normalised'" class="normalised-grid">
      <article class="table-card">
        <p class="panel-title">Customers</p>
        <div class="table-scroll">
          <table>
            <thead>
              <tr>
                <th class="pk">CustomerID</th>
                <th>CustomerName</th>
                <th>CustomerEmail</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="customer in customers" :key="customer.customerID">
                <td>{{ customer.customerID }}</td>
                <td>{{ customer.customerName }}</td>
                <td>{{ updatedEmail(customer) }}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </article>

      <article class="table-card">
        <p class="panel-title">Orders</p>
        <div class="table-scroll">
          <table>
            <thead>
              <tr>
                <th class="pk">OrderID</th>
                <th class="fk">CustomerID</th>
                <th>OrderDate</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="order in orders" :key="order.orderID">
                <td>{{ order.orderID }}</td>
                <td>{{ order.customerID }}</td>
                <td>{{ order.orderDate }}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </article>

      <article class="table-card">
        <p class="panel-title">Products</p>
        <div class="table-scroll">
          <table>
            <thead>
              <tr>
                <th class="pk">ProductID</th>
                <th>ProductName</th>
                <th>UnitPrice</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="product in products" :key="product.productID">
                <td>{{ product.productID }}</td>
                <td>{{ product.productName }}</td>
                <td>{{ currency(product.unitPrice) }}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </article>

      <article class="table-card">
        <p class="panel-title">OrderItems</p>
        <div class="table-scroll">
          <table>
            <thead>
              <tr>
                <th class="fk">OrderID</th>
                <th class="fk">ProductID</th>
                <th>Quantity</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="item in orderItems" :key="item.orderID + '-' + item.productID">
                <td>{{ item.orderID }}</td>
                <td>{{ item.productID }}</td>
                <td>{{ item.quantity }}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </article>

      <div class="legend">
        <span><strong class="pk-text">PK</strong> = Primary Key</span>
        <span><strong class="fk-text">FK</strong> = Foreign Key</span>
      </div>
    </div>

    <div v-else class="comparison-grid">
      <article class="comparison-card">
        <p class="panel-title">Before normalization</p>
        <ul>
          <li>One large table stores many facts together.</li>
          <li>Customer details are repeated for each product ordered.</li>
          <li>Product details are repeated across many orders.</li>
          <li>Updating repeated data may create inconsistency.</li>
        </ul>
      </article>

      <article class="comparison-card">
        <p class="panel-title">After normalization</p>
        <ul>
          <li>Each table stores data about one main entity.</li>
          <li>Repeated data is reduced.</li>
          <li>Primary keys uniquely identify records.</li>
          <li>Foreign keys link related tables together.</li>
        </ul>
      </article>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        Normalization organizes data into related tables to reduce redundancy and improve consistency.
        Repeated data is moved into separate tables, and primary and foreign keys are used to link the records.
        This reduces update anomalies because a fact such as a customer's email address or a product price only needs to be stored once.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const currentStep = ref(0)
const activeView = ref('raw')
const showUpdateProblem = ref(false)

const steps = [
  {
    title: 'Start with one large table',
    description: 'All order, customer, and product data are stored together. This is easy to read at first, but it repeats data.',
  },
  {
    title: 'Identify repeated data',
    description: 'Customer details and product details appear multiple times. Repetition can cause redundancy and inconsistency.',
  },
  {
    title: 'Separate main entities',
    description: 'Customer, order, and product data are moved into separate tables. Each table stores one main type of fact.',
  },
  {
    title: 'Use linking table for repeated items',
    description: 'OrderItems links orders to products because one order can contain many products, and one product can appear in many orders.',
  },
  {
    title: 'Use keys to maintain relationships',
    description: 'Primary keys uniquely identify records. Foreign keys link records in different tables.',
  },
]

const currentStepData = computed(() => steps[currentStep.value])

const rawRows = [
  {
    rawID: 1,
    orderID: 'O101',
    customerName: 'Amelia',
    customerEmail: 'amelia@school.example',
    orderDate: '2026-05-12',
    productName: 'Notebook',
    unitPrice: 4,
    quantity: 3,
  },
  {
    rawID: 2,
    orderID: 'O101',
    customerName: 'Amelia',
    customerEmail: 'amelia@school.example',
    orderDate: '2026-05-12',
    productName: 'Pen',
    unitPrice: 2,
    quantity: 5,
  },
  {
    rawID: 3,
    orderID: 'O102',
    customerName: 'Ben',
    customerEmail: 'ben@school.example',
    orderDate: '2026-05-13',
    productName: 'Calculator',
    unitPrice: 25,
    quantity: 1,
  },
  {
    rawID: 4,
    orderID: 'O103',
    customerName: 'Amelia',
    customerEmail: 'amelia@school.example',
    orderDate: '2026-05-14',
    productName: 'Calculator',
    unitPrice: 25,
    quantity: 1,
  },
]

const customers = [
  { customerID: 'C01', customerName: 'Amelia', customerEmail: 'amelia@school.example' },
  { customerID: 'C02', customerName: 'Ben', customerEmail: 'ben@school.example' },
]

const orders = [
  { orderID: 'O101', customerID: 'C01', orderDate: '2026-05-12' },
  { orderID: 'O102', customerID: 'C02', orderDate: '2026-05-13' },
  { orderID: 'O103', customerID: 'C01', orderDate: '2026-05-14' },
]

const products = [
  { productID: 'P01', productName: 'Notebook', unitPrice: 4 },
  { productID: 'P02', productName: 'Pen', unitPrice: 2 },
  { productID: 'P03', productName: 'Calculator', unitPrice: 25 },
]

const orderItems = [
  { orderID: 'O101', productID: 'P01', quantity: 3 },
  { orderID: 'O101', productID: 'P02', quantity: 5 },
  { orderID: 'O102', productID: 'P03', quantity: 1 },
  { orderID: 'O103', productID: 'P03', quantity: 1 },
]

function currency(value) {
  return `$${value}`
}

function displayRawEmail(row) {
  if (!showUpdateProblem || row.customerName !== 'Amelia') {
    return row.customerEmail
  }

  if (row.rawID === 1) {
    return 'amelia.new@school.example'
  }

  return row.customerEmail
}

function updatedEmail(customer) {
  if (showUpdateProblem && customer.customerName === 'Amelia') {
    return 'amelia.new@school.example'
  }

  return customer.customerEmail
}

function next() {
  if (currentStep.value < steps.length - 1) {
    currentStep.value++

    if (currentStep.value >= 2) {
      activeView.value = 'normalised'
    }
  }
}

function previous() {
  if (currentStep.value > 0) {
    currentStep.value--

    if (currentStep.value < 2) {
      activeView.value = 'raw'
    }
  }
}

function reset() {
  currentStep.value = 0
  activeView.value = 'raw'
  showUpdateProblem.value = false
}

function toggleUpdate() {
  showUpdateProblem.value = !showUpdateProblem.value
}
</script>

<style scoped>
.normalization-demo {
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

.step-card,
.table-section,
.table-card,
.comparison-card,
.exam-box,
.warning-box,
.note-box {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px 16px;
  background: var(--vp-c-bg);
  margin-top: 16px;
}

.step-label,
.panel-title {
  margin: 0 0 8px;
  color: var(--vp-c-brand-1);
  font-weight: 900;
}

.step-card h4 {
  margin: 0 0 6px;
}

.controls,
.view-tabs {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  margin-top: 16px;
}

.primary-button,
.secondary-button,
.tab-button {
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

.secondary-button,
.tab-button {
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
}

.primary-button:disabled,
.secondary-button:disabled {
  opacity: 0.45;
  cursor: not-allowed;
}

.tab-button.active {
  background: var(--vp-c-brand-soft);
  border-color: var(--vp-c-brand-1);
}

.warning-box {
  background: rgba(210, 55, 55, 0.08);
  border-color: rgba(210, 55, 55, 0.3);
}

.diagram-panel {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 12px;
  margin-top: 16px;
}

.entity-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px;
  background: var(--vp-c-bg);
  text-align: center;
  opacity: 0.55;
}

.entity-card.active {
  opacity: 1;
  outline: 2px solid var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
}

.entity-title {
  font-weight: 900;
  margin: 0 0 4px;
}

.table-header {
  display: flex;
  justify-content: space-between;
  gap: 12px;
  align-items: flex-start;
}

.badge {
  border-radius: 999px;
  padding: 6px 10px;
  font-weight: 900;
  white-space: nowrap;
}

.badge.danger {
  background: rgba(210, 55, 55, 0.12);
  color: #b42318;
}

.table-scroll {
  overflow-x: auto;
}

table {
  width: 100%;
  min-width: 620px;
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

tr.changed {
  background: rgba(210, 55, 55, 0.08);
}

.pk {
  background: rgba(20, 150, 80, 0.12);
}

.fk {
  background: rgba(100, 108, 255, 0.12);
}

.pk-text {
  color: #14804a;
}

.fk-text {
  color: var(--vp-c-brand-1);
}

.normalised-grid,
.comparison-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

.legend {
  grid-column: 1 / -1;
  display: flex;
  flex-wrap: wrap;
  gap: 16px;
  color: var(--vp-c-text-2);
}

.note-box {
  background: var(--vp-c-bg-soft);
}

.exam-box summary {
  cursor: pointer;
  font-weight: 900;
}

.exam-box p {
  margin-bottom: 0;
}

@media (max-width: 860px) {
  .demo-heading,
  .table-header {
    flex-direction: column;
    display: flex;
  }

  .diagram-panel,
  .normalised-grid,
  .comparison-grid {
    grid-template-columns: 1fr;
  }
}
</style>
