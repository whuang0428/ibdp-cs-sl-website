<template>
  <section class="join-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>SQL JOIN Visualizer</h3>
        <p class="intro">
          See how primary keys and foreign keys are used to combine records from two related tables.
        </p>
      </div>

      <div class="status-pill">
        {{ joinedRows.length }} joined row{{ joinedRows.length === 1 ? '' : 's' }}
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
    </div>

    <div class="settings-grid">
      <article class="panel">
        <p class="panel-title">JOIN condition</p>
        <p class="hint">
          This demo joins Orders to Customers using the shared CustomerID field.
        </p>

        <div class="join-condition">
          <span>Orders.CustomerID</span>
          <strong>=</strong>
          <span>Customers.CustomerID</span>
        </div>
      </article>

      <article class="panel">
        <p class="panel-title">Output fields</p>
        <label class="check-item">
          <input type="checkbox" v-model="showCustomerEmail" />
          <span>Show CustomerEmail</span>
        </label>
        <label class="check-item">
          <input type="checkbox" v-model="showOrderStatus" />
          <span>Show Status</span>
        </label>
      </article>
    </div>

    <div class="query-panel">
      <p class="panel-title">SQL query</p>
      <pre><code>{{ generatedSql }}</code></pre>
    </div>

    <div class="relationship-panel">
      <div class="table-mini">
        <p class="mini-title">Customers</p>
        <span class="key pk">CustomerID PK</span>
      </div>
      <div class="join-arrow">
        <span>matched with</span>
        <strong>CustomerID</strong>
      </div>
      <div class="table-mini">
        <p class="mini-title">Orders</p>
        <span class="key fk">CustomerID FK</span>
      </div>
    </div>

    <div class="tables-grid">
      <article class="table-section">
        <div class="table-header">
          <p class="panel-title">Customers table</p>
          <span class="badge pk">Primary key: CustomerID</span>
        </div>

        <div class="table-scroll">
          <table>
            <thead>
              <tr>
                <th>CustomerID</th>
                <th>CustomerName</th>
                <th>CustomerEmail</th>
              </tr>
            </thead>
            <tbody>
              <tr
                v-for="customer in customers"
                :key="customer.customerID"
                :class="{ active: isCustomerActive(customer.customerID) }"
              >
                <td>{{ customer.customerID }}</td>
                <td>{{ customer.customerName }}</td>
                <td>{{ customer.customerEmail }}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </article>

      <article class="table-section">
        <div class="table-header">
          <p class="panel-title">Orders table</p>
          <span class="badge fk">Foreign key: CustomerID</span>
        </div>

        <div class="table-scroll">
          <table>
            <thead>
              <tr>
                <th>OrderID</th>
                <th>CustomerID</th>
                <th>OrderDate</th>
                <th>Total</th>
                <th>Status</th>
              </tr>
            </thead>
            <tbody>
              <tr
                v-for="order in orders"
                :key="order.orderID"
                :class="{ active: isOrderActive(order.orderID), orphan: isOrphanOrder(order) }"
              >
                <td>{{ order.orderID }}</td>
                <td>{{ order.customerID }}</td>
                <td>{{ order.orderDate }}</td>
                <td>{{ currency(order.total) }}</td>
                <td>{{ order.status }}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </article>
    </div>

    <div class="match-panel">
      <p class="panel-title">Match explanation</p>

      <div class="match-grid">
        <article
          v-for="order in orders"
          :key="order.orderID"
          :class="['match-card', { matched: matchingCustomer(order), orphan: !matchingCustomer(order) }]"
        >
          <p>
            <strong>{{ order.orderID }}</strong>
            has CustomerID
            <strong>{{ order.customerID }}</strong>
          </p>
          <p v-if="matchingCustomer(order)">
            Matches customer:
            <strong>{{ matchingCustomer(order).customerName }}</strong>
          </p>
          <p v-else>
            No matching customer record. This order is not included in an INNER JOIN result.
          </p>
        </article>
      </div>
    </div>

    <div class="table-section result">
      <div class="table-header">
        <p class="panel-title">INNER JOIN result</p>
        <p class="hint">
          Only orders with a matching CustomerID in the Customers table are shown.
        </p>
      </div>

      <div class="table-scroll">
        <table>
          <thead>
            <tr>
              <th>OrderID</th>
              <th>CustomerName</th>
              <th v-if="showCustomerEmail">CustomerEmail</th>
              <th>OrderDate</th>
              <th>Total</th>
              <th v-if="showOrderStatus">Status</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="row in joinedRows" :key="row.orderID">
              <td>{{ row.orderID }}</td>
              <td>{{ row.customerName }}</td>
              <td v-if="showCustomerEmail">{{ row.customerEmail }}</td>
              <td>{{ row.orderDate }}</td>
              <td>{{ currency(row.total) }}</td>
              <td v-if="showOrderStatus">{{ row.status }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        A JOIN combines records from related tables using a matching field. In this example,
        Customers.CustomerID is the primary key in the Customers table, and Orders.CustomerID is a foreign key in the Orders table.
        The INNER JOIN returns only records where the CustomerID appears in both tables.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const currentStep = ref(0)
const showCustomerEmail = ref(false)
const showOrderStatus = ref(true)

const steps = [
  {
    title: 'Start with two related tables',
    description: 'Customers stores customer details. Orders stores order details. CustomerID connects the two tables.',
  },
  {
    title: 'Identify the primary key',
    description: 'Customers.CustomerID is a primary key because it uniquely identifies each customer record.',
  },
  {
    title: 'Identify the foreign key',
    description: 'Orders.CustomerID is a foreign key because it refers to CustomerID in the Customers table.',
  },
  {
    title: 'Match records using CustomerID',
    description: 'Each order is matched with the customer record that has the same CustomerID.',
  },
  {
    title: 'Create the joined result',
    description: 'Fields from both tables are combined into one result table for easier reading.',
  },
]

const currentStepData = computed(() => steps[currentStep.value])

const customers = [
  { customerID: 'C01', customerName: 'Amelia', customerEmail: 'amelia@school.example' },
  { customerID: 'C02', customerName: 'Ben', customerEmail: 'ben@school.example' },
  { customerID: 'C03', customerName: 'Chloe', customerEmail: 'chloe@school.example' },
  { customerID: 'C04', customerName: 'Daniel', customerEmail: 'daniel@school.example' },
]

const orders = [
  { orderID: 'O101', customerID: 'C01', orderDate: '2026-05-12', total: 34, status: 'Paid' },
  { orderID: 'O102', customerID: 'C03', orderDate: '2026-05-13', total: 18, status: 'Pending' },
  { orderID: 'O103', customerID: 'C02', orderDate: '2026-05-13', total: 52, status: 'Paid' },
  { orderID: 'O104', customerID: 'C99', orderDate: '2026-05-14', total: 20, status: 'Pending' },
  { orderID: 'O105', customerID: 'C01', orderDate: '2026-05-15', total: 12, status: 'Paid' },
]

const joinedRows = computed(() => {
  return orders
    .map((order) => {
      const customer = matchingCustomer(order)

      if (!customer) {
        return null
      }

      return {
        orderID: order.orderID,
        customerName: customer.customerName,
        customerEmail: customer.customerEmail,
        orderDate: order.orderDate,
        total: order.total,
        status: order.status,
      }
    })
    .filter(Boolean)
})

const generatedSql = computed(() => {
  const fields = [
    'Orders.OrderID',
    'Customers.CustomerName',
  ]

  if (showCustomerEmail.value) {
    fields.push('Customers.CustomerEmail')
  }

  fields.push('Orders.OrderDate')
  fields.push('Orders.Total')

  if (showOrderStatus.value) {
    fields.push('Orders.Status')
  }

  return [
    `SELECT ${fields.join(', ')}`,
    'FROM Orders',
    'INNER JOIN Customers',
    'ON Orders.CustomerID = Customers.CustomerID;'
  ].join('\n')
})

function matchingCustomer(order) {
  return customers.find((customer) => customer.customerID === order.customerID)
}

function isCustomerActive(customerID) {
  if (currentStep.value < 1) {
    return false
  }

  if (currentStep.value >= 3) {
    return orders.some((order) => order.customerID === customerID)
  }

  return true
}

function isOrderActive(orderID) {
  if (currentStep.value < 2) {
    return false
  }

  if (currentStep.value >= 3) {
    const order = orders.find((item) => item.orderID === orderID)
    return Boolean(order && matchingCustomer(order))
  }

  return true
}

function isOrphanOrder(order) {
  return currentStep.value >= 3 && !matchingCustomer(order)
}

function currency(value) {
  return `$${value}`
}

function next() {
  if (currentStep.value < steps.length - 1) {
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
}
</script>

<style scoped>
.join-demo {
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
.panel,
.query-panel,
.table-section,
.match-panel,
.exam-box {
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

.controls {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  margin-top: 16px;
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

.settings-grid,
.tables-grid,
.comparison-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

.join-condition {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  align-items: center;
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
  font-weight: 900;
}

.check-item {
  display: flex;
  gap: 8px;
  align-items: center;
  margin: 8px 0;
  font-weight: 700;
}

.query-panel pre {
  margin: 0;
  white-space: pre-wrap;
  overflow-x: auto;
}

.relationship-panel {
  display: grid;
  grid-template-columns: 1fr auto 1fr;
  gap: 12px;
  align-items: center;
  margin-top: 16px;
}

.table-mini,
.join-arrow {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px;
  background: var(--vp-c-bg);
  text-align: center;
}

.join-arrow {
  background: var(--vp-c-brand-soft);
}

.mini-title {
  margin: 0 0 8px;
  font-weight: 900;
}

.key,
.badge {
  border-radius: 999px;
  padding: 5px 9px;
  font-size: 0.84rem;
  font-weight: 900;
}

.pk {
  background: rgba(20, 150, 80, 0.12);
  color: #14804a;
}

.fk {
  background: rgba(100, 108, 255, 0.12);
  color: var(--vp-c-brand-1);
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
  min-width: 560px;
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
  font-weight: 800;
}

tr.orphan {
  background: rgba(210, 55, 55, 0.08);
  color: var(--vp-c-text-2);
}

.match-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 10px;
}

.match-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  padding: 12px;
  background: var(--vp-c-bg-soft);
}

.match-card.matched {
  outline: 2px solid var(--vp-c-brand-1);
}

.match-card.orphan {
  border-color: rgba(210, 55, 55, 0.3);
  background: rgba(210, 55, 55, 0.08);
}

.result {
  outline: 2px solid var(--vp-c-brand-soft);
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
  .tables-grid,
  .match-grid,
  .relationship-panel,
  .table-header {
    display: flex;
    flex-direction: column;
  }
}
</style>
