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
  text: 'B2 Programming',
  items: [
    { text: 'Overview', link: '/b2-programming/' },
    { text: 'Programming Basics', link: '/b2-programming/programming-basics' },
    { text: 'Variables', link: '/b2-programming/variables' },
    { text: 'Data Types', link: '/b2-programming/data-types' },
    { text: 'Input and Output', link: '/b2-programming/input-output' },
    { text: 'Selection', link: '/b2-programming/selection' },
    { text: 'Loops', link: '/b2-programming/loops' },
    { text: 'Arrays', link: '/b2-programming/arrays' },
    { text: 'Searching', link: '/b2-programming/searching' },
    { text: 'Sorting', link: '/b2-programming/sorting' },
    { text: 'File Processing', link: '/b2-programming/file-processing' },
    { text: 'Testing and Debugging', link: '/b2-programming/testing-debugging' }
  ]
},
{
  text: 'B3 OOP',
  items: [
    { text: 'Overview', link: '/b3-oop/' },
    { text: 'Classes and Objects', link: '/b3-oop/classes-objects' },
    { text: 'Attributes and Methods', link: '/b3-oop/attributes-methods' },
    { text: 'Constructors', link: '/b3-oop/constructors' },
    { text: 'Encapsulation', link: '/b3-oop/encapsulation' },
    { text: 'Accessors and Mutators', link: '/b3-oop/accessors-mutators' },
    { text: 'UML Class Diagrams', link: '/b3-oop/uml-class-diagrams' },
    { text: 'HL: Multiple Classes', link: '/b3-oop/hl-multiple-classes' }
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