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
