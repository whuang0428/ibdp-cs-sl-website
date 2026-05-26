<template>
  <section class="cm-demo">
    <div class="demo-heading">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Confusion Matrix Visualizer</h3>
        <p class="intro">
          Change TP, FP, TN, and FN values to see how accuracy, precision, recall, and F1 score are calculated.
        </p>
      </div>

      <div class="status-pill">
        Total: {{ total }}
      </div>
    </div>

    <div class="scenario-panel">
      <p class="panel-title">Scenario</p>
      <p>
        A machine learning model predicts whether an email is <strong>phishing</strong> or <strong>not phishing</strong>.
        In this demo, "positive" means the model predicts or identifies phishing.
      </p>

      <div class="scenario-buttons">
        <button type="button" class="secondary-button" @click="scenarioBalanced">
          Balanced model
        </button>
        <button type="button" class="secondary-button" @click="scenarioManyFalsePositives">
          Many false positives
        </button>
        <button type="button" class="secondary-button" @click="scenarioManyFalseNegatives">
          Many false negatives
        </button>
        <button type="button" class="secondary-button" @click="scenarioHighAccuracyTrap">
          High accuracy trap
        </button>
      </div>
    </div>

    <div class="main-grid">
      <article class="panel">
        <p class="panel-title">Input values</p>

        <label>
          True Positive (TP)
          <input v-model.number="tp" type="number" min="0" max="999" />
          <small>Phishing emails correctly predicted as phishing.</small>
        </label>

        <label>
          False Positive (FP)
          <input v-model.number="fp" type="number" min="0" max="999" />
          <small>Safe emails incorrectly predicted as phishing.</small>
        </label>

        <label>
          False Negative (FN)
          <input v-model.number="fn" type="number" min="0" max="999" />
          <small>Phishing emails incorrectly predicted as safe.</small>
        </label>

        <label>
          True Negative (TN)
          <input v-model.number="tn" type="number" min="0" max="999" />
          <small>Safe emails correctly predicted as safe.</small>
        </label>
      </article>

      <article class="panel">
        <p class="panel-title">Confusion matrix</p>

        <table class="matrix-table">
          <thead>
            <tr>
              <th></th>
              <th>Actual phishing</th>
              <th>Actual safe</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th>Predicted phishing</th>
              <td class="good">
                <strong>TP</strong>
                <span>{{ safeTp }}</span>
              </td>
              <td class="bad">
                <strong>FP</strong>
                <span>{{ safeFp }}</span>
              </td>
            </tr>
            <tr>
              <th>Predicted safe</th>
              <td class="bad">
                <strong>FN</strong>
                <span>{{ safeFn }}</span>
              </td>
              <td class="good">
                <strong>TN</strong>
                <span>{{ safeTn }}</span>
              </td>
            </tr>
          </tbody>
        </table>

        <div class="key-box">
          <p><strong>True</strong> means the prediction is correct.</p>
          <p><strong>False</strong> means the prediction is wrong.</p>
          <p><strong>Positive</strong> means phishing in this scenario.</p>
          <p><strong>Negative</strong> means safe in this scenario.</p>
        </div>
      </article>
    </div>

    <div class="metrics-grid">
      <article class="metric-card">
        <p class="metric-name">Accuracy</p>
        <p class="metric-value">{{ formatPercent(accuracy) }}</p>
        <p class="formula">(TP + TN) / total</p>
        <p class="meaning">How many predictions were correct overall.</p>
      </article>

      <article class="metric-card">
        <p class="metric-name">Precision</p>
        <p class="metric-value">{{ formatPercent(precision) }}</p>
        <p class="formula">TP / (TP + FP)</p>
        <p class="meaning">Of the emails predicted as phishing, how many really were phishing.</p>
      </article>

      <article class="metric-card">
        <p class="metric-name">Recall</p>
        <p class="metric-value">{{ formatPercent(recall) }}</p>
        <p class="formula">TP / (TP + FN)</p>
        <p class="meaning">Of all real phishing emails, how many were found by the model.</p>
      </article>

      <article class="metric-card">
        <p class="metric-name">F1 Score</p>
        <p class="metric-value">{{ formatPercent(f1) }}</p>
        <p class="formula">2 × precision × recall / (precision + recall)</p>
        <p class="meaning">A combined score balancing precision and recall.</p>
      </article>
    </div>

    <div class="interpretation-panel">
      <p class="panel-title">Interpretation</p>
      <p>{{ interpretation }}</p>
    </div>

    <div class="worked-panel">
      <p class="panel-title">Step-by-step calculation</p>

      <ol>
        <li>
          Total predictions =
          {{ safeTp }} + {{ safeFp }} + {{ safeFn }} + {{ safeTn }} =
          <strong>{{ total }}</strong>
        </li>
        <li>
          Accuracy =
          ({{ safeTp }} + {{ safeTn }}) / {{ total || 1 }} =
          <strong>{{ formatPercent(accuracy) }}</strong>
        </li>
        <li>
          Precision =
          {{ safeTp }} / ({{ safeTp }} + {{ safeFp }}) =
          <strong>{{ formatPercent(precision) }}</strong>
        </li>
        <li>
          Recall =
          {{ safeTp }} / ({{ safeTp }} + {{ safeFn }}) =
          <strong>{{ formatPercent(recall) }}</strong>
        </li>
      </ol>
    </div>

    <details class="exam-box">
      <summary>Exam-style explanation</summary>
      <p>
        A confusion matrix compares predicted classes with actual classes. True positives and true negatives are correct predictions,
        while false positives and false negatives are incorrect predictions. Accuracy measures the proportion of all predictions that
        are correct. Precision measures how many predicted positives are actually positive. Recall measures how many actual positives
        were correctly identified.
      </p>
    </details>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue'

const tp = ref(42)
const fp = ref(8)
const fn = ref(10)
const tn = ref(40)

const safeTp = computed(() => cleanNumber(tp.value))
const safeFp = computed(() => cleanNumber(fp.value))
const safeFn = computed(() => cleanNumber(fn.value))
const safeTn = computed(() => cleanNumber(tn.value))

const total = computed(() => safeTp.value + safeFp.value + safeFn.value + safeTn.value)

const accuracy = computed(() => safeDivide(safeTp.value + safeTn.value, total.value))
const precision = computed(() => safeDivide(safeTp.value, safeTp.value + safeFp.value))
const recall = computed(() => safeDivide(safeTp.value, safeTp.value + safeFn.value))
const f1 = computed(() => {
  if (precision.value + recall.value === 0) {
    return 0
  }

  return (2 * precision.value * recall.value) / (precision.value + recall.value)
})

const interpretation = computed(() => {
  if (total.value === 0) {
    return 'Enter some values to calculate the model evaluation metrics.'
  }

  if (accuracy.value > 0.9 && recall.value < 0.5) {
    return 'The model has high accuracy, but recall is low. This can happen when most emails are safe and the model misses many phishing emails. Accuracy alone may be misleading.'
  }

  if (precision.value < 0.6 && recall.value >= 0.7) {
    return 'The model catches many phishing emails, but precision is low. This means many safe emails are incorrectly flagged as phishing.'
  }

  if (recall.value < 0.6) {
    return 'Recall is low, so the model misses many real phishing emails. This may be risky in a security context.'
  }

  if (precision.value >= 0.8 && recall.value >= 0.8) {
    return 'Both precision and recall are strong. The model is good at identifying phishing while avoiding many incorrect phishing alerts.'
  }

  return 'Look at precision and recall together. Accuracy gives an overall view, but it may hide false positives or false negatives.'
})

function cleanNumber(value) {
  const number = Number(value)

  if (Number.isNaN(number) || number < 0) {
    return 0
  }

  return Math.floor(number)
}

function safeDivide(numerator, denominator) {
  if (denominator === 0) {
    return 0
  }

  return numerator / denominator
}

function formatPercent(value) {
  return `${(value * 100).toFixed(1)}%`
}

function scenarioBalanced() {
  tp.value = 42
  fp.value = 8
  fn.value = 10
  tn.value = 40
}

function scenarioManyFalsePositives() {
  tp.value = 45
  fp.value = 35
  fn.value = 5
  tn.value = 15
}

function scenarioManyFalseNegatives() {
  tp.value = 15
  fp.value = 5
  fn.value = 35
  tn.value = 45
}

function scenarioHighAccuracyTrap() {
  tp.value = 5
  fp.value = 2
  fn.value = 25
  tn.value = 968
}
</script>

<style scoped>
.cm-demo {
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

.intro {
  margin: 8px 0 0;
  color: var(--vp-c-text-2);
}

.status-pill {
  border: 1px solid var(--vp-c-divider);
  background: var(--vp-c-bg);
  border-radius: 999px;
  padding: 8px 12px;
  font-weight: 800;
  white-space: nowrap;
}

.scenario-panel,
.panel,
.interpretation-panel,
.worked-panel,
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

.scenario-buttons {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
}

.secondary-button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 9px 14px;
  cursor: pointer;
  font-weight: 800;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
}

.main-grid,
.metrics-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

label {
  display: grid;
  gap: 6px;
  margin: 10px 0;
  font-weight: 800;
}

label small {
  color: var(--vp-c-text-2);
  font-weight: 400;
}

input[type='number'] {
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 9px 10px;
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-1);
}

.matrix-table {
  width: 100%;
  border-collapse: collapse;
}

.matrix-table th,
.matrix-table td {
  border: 1px solid var(--vp-c-divider);
  padding: 12px;
  text-align: center;
}

.matrix-table th {
  background: var(--vp-c-bg-soft);
}

.matrix-table td {
  min-width: 110px;
}

.matrix-table td strong,
.matrix-table td span {
  display: block;
}

.matrix-table td span {
  font-size: 1.7rem;
  font-weight: 900;
  margin-top: 6px;
}

.good {
  background: rgba(20, 150, 80, 0.12);
}

.bad {
  background: rgba(210, 55, 55, 0.1);
}

.key-box {
  margin-top: 12px;
  color: var(--vp-c-text-2);
}

.key-box p {
  margin: 4px 0;
}

.metric-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 16px;
  padding: 14px 16px;
  background: var(--vp-c-bg);
}

.metric-name {
  margin: 0;
  color: var(--vp-c-brand-1);
  font-weight: 900;
}

.metric-value {
  margin: 6px 0;
  font-size: 2rem;
  font-weight: 900;
}

.formula {
  font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
  color: var(--vp-c-text-2);
}

.meaning {
  margin-bottom: 0;
}

.worked-panel ol {
  margin: 0;
  padding-left: 22px;
}

.worked-panel li {
  margin: 8px 0;
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
  .metrics-grid {
    display: flex;
    flex-direction: column;
  }
}
</style>
