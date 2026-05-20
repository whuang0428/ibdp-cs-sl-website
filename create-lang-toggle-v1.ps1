$themePath = "docs\.vitepress\theme"
$componentsPath = "docs\.vitepress\theme\components"

New-Item -ItemType Directory -Force $themePath | Out-Null
New-Item -ItemType Directory -Force $componentsPath | Out-Null

$indexTs = @'
import DefaultTheme from 'vitepress/theme'
import type { Theme } from 'vitepress'
import LangBlock from './components/LangBlock.vue'
import './style.css'

export default {
  extends: DefaultTheme,
  enhanceApp({ app }) {
    app.component('LangBlock', LangBlock)
  }
} satisfies Theme
'@

$langBlock = @'
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
'@

$styleCss = @'
.lang-block {
  margin: 20px 0;
  padding: 16px 18px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  background: var(--vp-c-bg-soft);
}

.lang-toggle {
  display: flex;
  gap: 8px;
  margin-bottom: 14px;
}

.lang-toggle button {
  border: 1px solid var(--vp-c-divider);
  border-radius: 999px;
  padding: 6px 14px;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
  cursor: pointer;
  font-size: 14px;
  transition: all 0.15s ease;
}

.lang-toggle button:hover {
  border-color: var(--vp-c-brand-1);
  color: var(--vp-c-brand-1);
}

.lang-toggle button.active {
  background: var(--vp-c-brand-1);
  border-color: var(--vp-c-brand-1);
  color: white;
}

.lang-content > :first-child {
  margin-top: 0;
}

.lang-content > :last-child {
  margin-bottom: 0;
}
'@

$testPage = @'
# Language Toggle Test

This page is used to test the bilingual content component.

<LangBlock>
<template #cn>

## 中文版本

这是一个中文讲解示例。

学生可以点击上方按钮，在中文和英文内容之间切换。

- 中文用于帮助理解概念。
- 英文用于熟悉 IB 答题表达。
- 代码和关键词可以保持英文。

</template>

<template #en>

## English Version

This is an English explanation example.

Students can use the buttons above to switch between Chinese and English content.

- Chinese helps students understand the concept.
- English helps students learn IB-style exam wording.
- Code and key terms can remain in English.

</template>
</LangBlock>
'@

Set-Content -Path (Join-Path $themePath "index.ts") -Value $indexTs -Encoding UTF8
Set-Content -Path (Join-Path $componentsPath "LangBlock.vue") -Value $langBlock -Encoding UTF8
Set-Content -Path (Join-Path $themePath "style.css") -Value $styleCss -Encoding UTF8
Set-Content -Path "docs\test-lang.md" -Value $testPage -Encoding UTF8

Write-Host "Bilingual language toggle component created successfully."
Write-Host "Test page created at docs\test-lang.md"
