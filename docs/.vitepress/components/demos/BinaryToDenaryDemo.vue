<template>
  <section class="demo-card">
    <div class="demo-header">
      <div>
        <p class="eyebrow">Interactive Demo</p>
        <h3>Binary to Denary Visualizer</h3>
        <p class="intro">
          Enter a binary number and step through how each digit contributes to the final denary value.
        </p>
      </div>
      <button class="secondary-button" type="button" @click="useExample">
        Try example
      </button>
    </div>

    <div class="input-grid">
      <label class="input-label" for="binary-input">
        Binary input
      </label>
      <input
        id="binary-input"
        v-model="binaryInput"
        class="binary-input"
        type="text"
        inputmode="numeric"
        maxlength="12"
        placeholder="Example: 101101"
        @input="normaliseInput"
      />
      <p class="hint">
        Use only 0 and 1. Maximum 12 bits for classroom readability.
      </p>
    </div>

    <div v-if="errorMessage" class="error-box">
      {{ errorMessage }}
    </div>

    <div v-else class="work-area">
      <div class="step-box">
        <p class="step-label">Step {{ currentStep + 1 }} of {{ steps.length }}</p>
        <h4>{{ currentStepData.title }}</h4>
        <p>{{ currentStepData.description }}</p>
      </div>

      <div class="table-scroll">
        <table class="conversion-table">
          <thead>
            <tr>
              <th>Place value</th>
              <th
                v-for="(item, index) in conversionRows"
                :key="'place-' + index"
                :class="{ active: isColumnActive(index) }"
              >
                {{ item.placeValue }}
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th>Binary digit</th>
              <td
                v-for="(item, index) in conversionRows"
                :key="'digit-' + index"
                :class="{ active: isColumnActive(index), one: item.digit === 1 }"
              >
                {{ item.digit }}
              </td>
            </tr>
            <tr>
              <th>Contribution</th>
              <td
                v-for="(item, index) in conversionRows"
                :key="'contribution-' + index"
                :class="{ active: isColumnActive(index), nonzero: item.contribution > 0 }"
              >
                {{ item.contribution }}
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="calculation-box">
        <p class="calc-title">Calculation</p>
        <p class="calc-line">
          {{ contributionExpression }}
        </p>
        <p class="answer-line">
          Denary answer:
          <strong>{{ denaryValue }}</strong>
        </p>
      </div>

      <div class="controls">
        <button type="button" class="secondary-button" :disabled="currentStep === 0" @click="previousStep">
          Previous
        </button>
        <button type="button" class="primary-button" :disabled="currentStep === steps.length - 1" @click="nextStep">
          Next step
        </button>
        <button type="button" class="secondary-button" @click="resetStep">
          Reset
        </button>
      </div>

      <details class="exam-tip">
        <summary>Exam-style explanation</summary>
        <p>
          To convert binary to denary, write the place values from right to left as powers of 2.
          Add only the place values where the binary digit is 1.
          For {{ cleanBinary }}, this gives {{ contributionExpression }}, so the denary value is {{ denaryValue }}.
        </p>
      </details>
    </div>
  </section>
</template>

<script setup>
import { computed, ref, watch } from 'vue'

const examples = ['101101', '11001', '100111', '111010', '10000001', '10101010']

const binaryInput = ref('101101')
const currentStep = ref(0)
const exampleIndex = ref(0)

const cleanBinary = computed(() => binaryInput.value.trim())

const errorMessage = computed(() => {
  if (cleanBinary.value.length === 0) {
    return 'Please enter a binary number.'
  }

  if (!/^[01]+$/.test(cleanBinary.value)) {
    return 'Binary numbers can only contain 0 and 1.'
  }

  if (cleanBinary.value.length > 12) {
    return 'Please use 12 bits or fewer for this classroom demo.'
  }

  return ''
})

const conversionRows = computed(() => {
  if (errorMessage.value) {
    return []
  }

  const digits = cleanBinary.value.split('').map(Number)
  const length = digits.length

  return digits.map((digit, index) => {
    const placeValue = 2 ** (length - index - 1)
    return {
      digit,
      placeValue,
      contribution: digit * placeValue,
    }
  })
})

const denaryValue = computed(() => {
  return conversionRows.value.reduce((total, item) => total + item.contribution, 0)
})

const nonZeroContributions = computed(() => {
  return conversionRows.value
    .filter((item) => item.contribution > 0)
    .map((item) => item.contribution)
})

const contributionExpression = computed(() => {
  if (nonZeroContributions.value.length === 0) {
    return '0'
  }

  return `${nonZeroContributions.value.join(' + ')} = ${denaryValue.value}`
})

const steps = computed(() => {
  const binary = cleanBinary.value || 'the binary number'
  return [
    {
      title: 'Read the binary digits',
      description: `Start with ${binary}. Each digit is either 0 or 1.`,
    },
    {
      title: 'Write the place values',
      description: 'From right to left, the place values are powers of 2: 1, 2, 4, 8, 16, and so on.',
    },
    {
      title: 'Multiply each digit by its place value',
      description: 'A digit of 1 contributes its place value. A digit of 0 contributes 0.',
    },
    {
      title: 'Add the non-zero contributions',
      description: `Add the place values where the digit is 1: ${contributionExpression.value}.`,
    },
    {
      title: 'Write the denary answer',
      description: `${binary} in binary is ${denaryValue.value} in denary.`,
    },
  ]
})

const currentStepData = computed(() => steps.value[currentStep.value])

watch(binaryInput, () => {
  currentStep.value = 0
})

function normaliseInput() {
  binaryInput.value = binaryInput.value.replace(/\s+/g, '')
}

function nextStep() {
  if (currentStep.value < steps.value.length - 1) {
    currentStep.value++
  }
}

function previousStep() {
  if (currentStep.value > 0) {
    currentStep.value--
  }
}

function resetStep() {
  currentStep.value = 0
}

function useExample() {
  exampleIndex.value = (exampleIndex.value + 1) % examples.length
  binaryInput.value = examples[exampleIndex.value]
  currentStep.value = 0
}

function isColumnActive(index) {
  if (currentStep.value < 2) {
    return false
  }

  if (currentStep.value === 2) {
    return conversionRows.value[index]?.digit === 1
  }

  return conversionRows.value[index]?.contribution > 0
}
</script>

<style scoped>
.demo-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 18px;
  padding: 20px;
  background: var(--vp-c-bg-soft);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.06);
  margin: 24px 0;
}

.demo-header {
  display: flex;
  gap: 16px;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 20px;
}

.eyebrow {
  margin: 0 0 4px;
  color: var(--vp-c-brand-1);
  font-size: 0.85rem;
  font-weight: 700;
  letter-spacing: 0.04em;
  text-transform: uppercase;
}

.demo-header h3 {
  margin: 0;
  font-size: 1.45rem;
}

.intro {
  margin: 8px 0 0;
  color: var(--vp-c-text-2);
}

.input-grid {
  display: grid;
  gap: 8px;
  margin-bottom: 14px;
}

.input-label {
  font-weight: 700;
}

.binary-input {
  width: 100%;
  box-sizing: border-box;
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  padding: 12px 14px;
  font-size: 1.1rem;
  font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
}

.hint {
  margin: 0;
  color: var(--vp-c-text-2);
  font-size: 0.9rem;
}

.error-box {
  border: 1px solid #f5a3a3;
  border-radius: 12px;
  padding: 12px 14px;
  background: rgba(255, 0, 0, 0.06);
  color: #b42318;
}

.step-box,
.calculation-box,
.exam-tip {
  border: 1px solid var(--vp-c-divider);
  border-radius: 14px;
  background: var(--vp-c-bg);
  padding: 14px 16px;
  margin-top: 16px;
}

.step-label,
.calc-title {
  margin: 0 0 4px;
  color: var(--vp-c-brand-1);
  font-size: 0.85rem;
  font-weight: 700;
}

.step-box h4 {
  margin: 0 0 6px;
}

.step-box p:last-child {
  margin-bottom: 0;
}

.table-scroll {
  overflow-x: auto;
  margin-top: 16px;
}

.conversion-table {
  width: 100%;
  min-width: 560px;
  border-collapse: collapse;
  overflow: hidden;
  border-radius: 14px;
}

.conversion-table th,
.conversion-table td {
  border: 1px solid var(--vp-c-divider);
  padding: 12px;
  text-align: center;
}

.conversion-table th:first-child {
  text-align: left;
  min-width: 150px;
}

.conversion-table th {
  background: var(--vp-c-bg-alt);
}

.conversion-table td.active,
.conversion-table th.active {
  outline: 2px solid var(--vp-c-brand-1);
  outline-offset: -2px;
  font-weight: 800;
}

.conversion-table td.one,
.conversion-table td.nonzero {
  color: var(--vp-c-brand-1);
  font-weight: 800;
}

.calc-line {
  font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
}

.answer-line {
  font-size: 1.1rem;
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
  padding: 9px 16px;
  cursor: pointer;
  font-weight: 700;
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

.exam-tip summary {
  cursor: pointer;
  font-weight: 800;
}

.exam-tip p {
  margin-bottom: 0;
}

@media (max-width: 640px) {
  .demo-header {
    flex-direction: column;
  }

  .demo-card {
    padding: 16px;
  }
}
</style>
