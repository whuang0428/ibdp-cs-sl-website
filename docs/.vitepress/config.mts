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
  text: 'A3 Databases',
  items: [
    { text: 'Overview', link: '/a3-databases/' },
    { text: 'Database Fundamentals', link: '/a3-databases/database-fundamentals' },
    { text: 'Tables, Records and Fields', link: '/a3-databases/tables-records-fields' },
    { text: 'Primary and Foreign Keys', link: '/a3-databases/primary-foreign-keys' },
    { text: 'Relationships', link: '/a3-databases/relationships' },
    { text: 'ERD Basics', link: '/a3-databases/erd-basics' },
    { text: 'Normalization', link: '/a3-databases/normalization' },
    { text: 'SQL SELECT', link: '/a3-databases/sql-select' },
    { text: 'SQL Conditions and Sorting', link: '/a3-databases/sql-conditions-sorting' },
    { text: 'Database Security and Privacy', link: '/a3-databases/database-security-privacy' },
    { text: 'Transactions and Recovery', link: '/a3-databases/transactions-recovery' }
  ]
},
{
  text: 'A1 Computer Fundamentals',
  items: [
    { text: 'Overview', link: '/a1-computer-fundamentals/' },
    { text: 'Computer Hardware', link: '/a1-computer-fundamentals/computer-hardware' },
    { text: 'CPU Components', link: '/a1-computer-fundamentals/cpu-components' },
    { text: 'Fetch-Decode-Execute Cycle', link: '/a1-computer-fundamentals/fetch-decode-execute' },
    { text: 'Primary Memory', link: '/a1-computer-fundamentals/primary-memory' },
    { text: 'Secondary Storage', link: '/a1-computer-fundamentals/secondary-storage' },
    { text: 'Data Representation', link: '/a1-computer-fundamentals/data-representation' },
    { text: 'Logic Gates', link: '/a1-computer-fundamentals/logic-gates' },
    { text: 'Operating Systems', link: '/a1-computer-fundamentals/operating-systems' },
    { text: 'Control Systems', link: '/a1-computer-fundamentals/control-systems' },
    { text: 'Cloud Computing', link: '/a1-computer-fundamentals/cloud-computing' }
  ]
},
{
  text: 'A2 Networks',
  items: [
    { text: 'Overview', link: '/a2-networks/' },
    { text: 'Network Fundamentals', link: '/a2-networks/network-fundamentals' },
    { text: 'LAN and WAN', link: '/a2-networks/lan-wan' },
    { text: 'Network Devices', link: '/a2-networks/network-devices' },
    { text: 'Client-Server and Peer-to-Peer', link: '/a2-networks/client-server-peer-to-peer' },
    { text: 'TCP/IP Model', link: '/a2-networks/tcp-ip-model' },
    { text: 'Packet Switching', link: '/a2-networks/packet-switching' },
    { text: 'DNS and Web Access', link: '/a2-networks/dns-web-access' },
    { text: 'Wireless and Wired Transmission', link: '/a2-networks/wired-wireless-transmission' },
    { text: 'Network Security', link: '/a2-networks/network-security' },
    { text: 'Encryption, VPN and NAT', link: '/a2-networks/encryption-vpn-nat' }
  ]
},
{
  text: 'A4 Machine Learning',
  items: [
    { text: 'Overview', link: '/a4-machine-learning/' },
    { text: 'Machine Learning Fundamentals', link: '/a4-machine-learning/machine-learning-fundamentals' },
    { text: 'Data, Features and Labels', link: '/a4-machine-learning/data-features-labels' },
    { text: 'Training and Testing Data', link: '/a4-machine-learning/training-testing-data' },
    { text: 'Supervised Learning', link: '/a4-machine-learning/supervised-learning' },
    { text: 'Unsupervised Learning', link: '/a4-machine-learning/unsupervised-learning' },
    { text: 'Reinforcement Learning', link: '/a4-machine-learning/reinforcement-learning' },
    { text: 'Classification and Prediction', link: '/a4-machine-learning/classification-prediction' },
    { text: 'Confusion Matrix and F1 Score', link: '/a4-machine-learning/confusion-matrix-f1-score' },
    { text: 'Ethics and Bias', link: '/a4-machine-learning/ethics-bias' },
    { text: 'Neural Networks and CNNs', link: '/a4-machine-learning/neural-networks-cnns' }
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