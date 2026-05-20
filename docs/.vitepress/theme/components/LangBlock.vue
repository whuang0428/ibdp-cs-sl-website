<script setup lang="ts">
import { onMounted, ref, watch } from 'vue'

type Lang = 'cn' | 'en'

const currentLang = ref<Lang>('cn')

onMounted(() => {
  const savedLang = window.localStorage.getItem('ibdp-cs-lang')
  if (savedLang === 'cn' || savedLang === 'en') {
    currentLang.value = savedLang
  }
})

watch(currentLang, (newLang) => {
  window.localStorage.setItem('ibdp-cs-lang', newLang)
})
</script>

<template>
  <div class="lang-block">
    <div class="lang-toggle">
      <button
        type="button"
        :class="{ active: currentLang === 'cn' }"
        @click="currentLang = 'cn'"
      >
        中文
      </button>
      <button
        type="button"
        :class="{ active: currentLang === 'en' }"
        @click="currentLang = 'en'"
      >
        English
      </button>
    </div>

    <div v-show="currentLang === 'cn'" class="lang-content">
      <slot name="cn" />
    </div>

    <div v-show="currentLang === 'en'" class="lang-content">
      <slot name="en" />
    </div>
  </div>
</template>
