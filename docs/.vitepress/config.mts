import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'IBDP CS SL',
  description: 'IBDP Computer Science SL Course Website',

  // 后面如果 GitHub 仓库名不是 ibdp-cs-sl-website，这里要改
  base: '/ibdp-cs-sl-website/',

  themeConfig: {
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Roadmap', link: '/roadmap' },
      { text: 'Glossary', link: '/glossary/' },
      { text: 'Exam Practice', link: '/exam-practice/' }
    ],

    sidebar: [
      {
        text: 'Start',
        items: [
          { text: 'Start Here', link: '/start-here' },
          { text: 'Course Roadmap', link: '/roadmap' }
        ]
      },
{
  text: 'B1 Computational Thinking',
  items: [
    { text: 'Overview', link: '/b1-computational-thinking/' },
    { text: 'Decomposition', link: '/b1-computational-thinking/decomposition' },
    { text: 'Abstraction', link: '/b1-computational-thinking/abstraction' },
    { text: 'Algorithms', link: '/b1-computational-thinking/algorithms' },
    { text: 'Flowcharts', link: '/b1-computational-thinking/flowcharts' },
    { text: 'Trace Tables', link: '/b1-computational-thinking/trace-tables' }
  ]
},
{
  text: 'B2 and B3',
  items: [
    { text: 'B2 Programming', link: '/b2-programming/' },
    { text: 'B3 OOP', link: '/b3-oop/' }
  ]
},
      {
        text: 'A Theme',
        items: [
          { text: 'A3 Databases', link: '/a3-databases/' },
          { text: 'A1 Computer Fundamentals', link: '/a1-computer-fundamentals/' },
          { text: 'A2 Networks', link: '/a2-networks/' },
          { text: 'A4 Machine Learning', link: '/a4-machine-learning/' }
        ]
      },
      {
        text: 'Extensions',
        items: [
          { text: 'HL Programming', link: '/extension-hl-programming/' },
          { text: 'Social Engineering Awareness', link: '/extension-social-engineering/' }
        ]
      },
      {
        text: 'Assessment',
        items: [
          { text: 'Exam Practice', link: '/exam-practice/' },
          { text: 'IA Support', link: '/ia-support/' },
          { text: 'Glossary', link: '/glossary/' }
        ]
      }
    ],

    search: {
      provider: 'local'
    }
  }
})