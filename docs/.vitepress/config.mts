import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'IBDP CS SL',
  description: 'Static learning portal for IBDP Computer Science SL',

  // GitHub Pages repo name:
  // https://<username>.github.io/ibdp-cs-sl-website/
  base: '/ibdp-cs-sl-website/',

  cleanUrls: true,
  lastUpdated: true,

  themeConfig: {
    siteTitle: 'IBDP CS SL',

    nav: [
      { text: 'Home', link: '/' },
      { text: 'Interactive Demos', link: '/interactive-demos/' },
      { text: 'Roadmap', link: '/roadmap' },
      {
        text: 'B Theme',
        items: [
          { text: 'B1 Computational Thinking', link: '/b1-computational-thinking/' },
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

    sidebar: [
      {
        text: 'Start',
        collapsed: false,
        items: [
          { text: 'Start Here', link: '/' },
          { text: 'Course Roadmap', link: '/roadmap' }
        ]
      },

      {
        text: 'Interactive Demos',
        collapsed: true,
        items: [
          { text: 'Overview', link: '/interactive-demos/' },
          { text: 'Packet Switching', link: '/interactive-demos/packet-switching' },
          { text: 'DNS Lookup and Web Request', link: '/interactive-demos/dns-web-request' },
          { text: 'Firewall Rule Simulator', link: '/interactive-demos/firewall-rule-simulator' },
          { text: 'SQL SELECT Visualizer', link: '/interactive-demos/sql-select-visualizer' },
          { text: 'Normalization Demo', link: '/interactive-demos/normalization-demo' },
          { text: 'SQL JOIN Visualizer', link: '/interactive-demos/sql-join-visualizer' },
          { text: 'Confusion Matrix Visualizer', link: '/interactive-demos/confusion-matrix-visualizer' },
          { text: 'Overfitting vs Underfitting', link: '/interactive-demos/overfitting-underfitting-visualizer' },
          { text: 'Bias in Training Data', link: '/interactive-demos/bias-training-data-simulator' },
          { text: 'k-Nearest Neighbour Classifier', link: '/interactive-demos/knn-classifier-demo' },
          { text: 'Trace Table Simulator', link: '/interactive-demos/trace-table-simulator' },
          { text: 'Flowchart Execution Demo', link: '/interactive-demos/flowchart-execution-demo' },
          { text: 'Linear Search Visualizer', link: '/interactive-demos/linear-search-visualizer' },
          { text: 'Binary Search Visualizer', link: '/interactive-demos/binary-search-visualizer' },
          { text: 'Bubble Sort Visualizer', link: '/interactive-demos/bubble-sort-visualizer' },
          { text: 'Selection Sort Visualizer', link: '/interactive-demos/selection-sort-visualizer' },
          { text: 'Insertion Sort Visualizer', link: '/interactive-demos/insertion-sort-visualizer' },
          { text: 'Find Maximum / Minimum', link: '/interactive-demos/find-max-min-visualizer' },
          { text: 'Count / Sum / Average', link: '/interactive-demos/count-sum-average-visualizer' },
          { text: 'OOP Object Interaction Demo', link: '/interactive-demos/oop-object-interaction-demo' }
        ]
      },

      {
        text: 'B1 Computational Thinking',
        collapsed: true,
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
        collapsed: true,
        items: [
          { text: 'Overview', link: '/b2-programming/' },
          { text: 'Programming Basics', link: '/b2-programming/programming-basics' },
          { text: 'Input and Output', link: '/b2-programming/input-output' },
          { text: 'Variables', link: '/b2-programming/variables' },
          { text: 'Data Types', link: '/b2-programming/data-types' },
          { text: 'Selection', link: '/b2-programming/selection' },
          { text: 'Loops', link: '/b2-programming/loops' },
          { text: 'Arrays', link: '/b2-programming/arrays' },
          { text: 'Searching', link: '/b2-programming/searching' },
          { text: 'Sorting', link: '/b2-programming/sorting' },
          { text: 'Testing and Debugging', link: '/b2-programming/testing-debugging' },
          { text: 'File Processing', link: '/b2-programming/file-processing' }
        ]
      },

      {
        text: 'B3 Object-Oriented Programming',
        collapsed: true,
        items: [
          { text: 'Overview', link: '/b3-oop/' },
          { text: 'Classes and Objects', link: '/b3-oop/classes-objects' },
          { text: 'Attributes and Methods', link: '/b3-oop/attributes-methods' },
          { text: 'Constructors', link: '/b3-oop/constructors' },
          { text: 'Encapsulation', link: '/b3-oop/encapsulation' },
          { text: 'Accessors and Mutators', link: '/b3-oop/accessors-mutators' },
          { text: 'UML Class Diagrams', link: '/b3-oop/uml-class-diagrams' },
          { text: 'HL Multiple Classes', link: '/b3-oop/hl-multiple-classes' }
        ]
      },

      {
        text: 'A3 Databases',
        collapsed: true,
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
        collapsed: true,
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
        collapsed: true,
        items: [
          { text: 'Overview', link: '/a2-networks/' },
          { text: 'Network Fundamentals', link: '/a2-networks/network-fundamentals' },
          { text: 'LAN and WAN', link: '/a2-networks/lan-wan' },
          { text: 'Network Devices', link: '/a2-networks/network-devices' },
          { text: 'Client-Server and Peer-to-Peer', link: '/a2-networks/client-server-peer-to-peer' },
          { text: 'TCP/IP Model', link: '/a2-networks/tcp-ip-model' },
          { text: 'Packet Switching', link: '/a2-networks/packet-switching' },
          { text: 'DNS and Web Access', link: '/a2-networks/dns-web-access' },
          { text: 'Wired and Wireless Transmission', link: '/a2-networks/wired-wireless-transmission' },
          { text: 'Network Security', link: '/a2-networks/network-security' },
          { text: 'Encryption, VPN and NAT', link: '/a2-networks/encryption-vpn-nat' }
        ]
      },

      {
        text: 'A4 Machine Learning',
        collapsed: true,
        items: [
          { text: 'Overview', link: '/a4-machine-learning/' },
          { text: 'Machine Learning Fundamentals', link: '/a4-machine-learning/ml-fundamentals' },
          { text: 'Data, Features and Labels', link: '/a4-machine-learning/data-features-labels' },
          { text: 'Supervised Learning', link: '/a4-machine-learning/supervised-learning' },
          { text: 'Unsupervised Learning', link: '/a4-machine-learning/unsupervised-learning' },
          { text: 'Training, Testing and Validation', link: '/a4-machine-learning/training-testing-validation' },
          { text: 'Classification and Regression', link: '/a4-machine-learning/classification-regression' },
          { text: 'Model Evaluation', link: '/a4-machine-learning/model-evaluation' },
          { text: 'Overfitting and Underfitting', link: '/a4-machine-learning/overfitting-underfitting' },
          { text: 'Bias, Ethics and Privacy', link: '/a4-machine-learning/bias-ethics-privacy' },
          { text: 'ML Applications and Limitations', link: '/a4-machine-learning/ml-applications-limitations' }
        ]
      },

      {
        text: 'HL Programming Extension',
        collapsed: true,
        items: [
          { text: 'Overview', link: '/extension-hl-programming/' },
          { text: 'Advanced Arrays and 2D Arrays', link: '/extension-hl-programming/advanced-arrays-2d-arrays' },
          { text: 'ArrayList and Dynamic Lists', link: '/extension-hl-programming/arraylist-dynamic-lists' },
          { text: 'Recursion', link: '/extension-hl-programming/recursion' },
          { text: 'Stacks and Queues', link: '/extension-hl-programming/stacks-queues' },
          { text: 'Linked Lists', link: '/extension-hl-programming/linked-lists' },
          { text: 'Searching and Sorting Extension', link: '/extension-hl-programming/searching-sorting-extension' },
          { text: 'Inheritance and Polymorphism', link: '/extension-hl-programming/inheritance-polymorphism' },
          { text: 'Exception Handling and Robust Programs', link: '/extension-hl-programming/exception-handling-robust-programs' }
        ]
      },

      {
        text: 'Social Engineering Awareness',
        collapsed: true,
        items: [
          { text: 'Overview', link: '/extension-social-engineering/' },
          { text: 'What is Social Engineering?', link: '/extension-social-engineering/what-is-social-engineering' },
          { text: 'Human Factors and Trust', link: '/extension-social-engineering/human-factors-and-trust' },
          { text: 'Phishing and Spear Phishing', link: '/extension-social-engineering/phishing-and-spear-phishing' },
          { text: 'Pretexting, Baiting and Quid Pro Quo', link: '/extension-social-engineering/pretexting-baiting-quid-pro-quo' },
          { text: 'Tailgating and Physical Security', link: '/extension-social-engineering/tailgating-physical-security' },
          { text: 'OSINT and Digital Footprints', link: '/extension-social-engineering/osint-digital-footprints' },
          { text: 'Defending Against Social Engineering', link: '/extension-social-engineering/defending-against-social-engineering' },
          { text: 'Incident Response and Reporting', link: '/extension-social-engineering/incident-response-reporting' }
        ]
      },

      {
        text: 'Exam Practice',
        collapsed: true,
        items: [
          { text: 'Overview', link: '/exam-practice/' },
          { text: 'Paper 1 Overview', link: '/exam-practice/paper-1-overview' },
          { text: 'Command Terms', link: '/exam-practice/command-terms' },
          { text: 'Mark Scheme Skills', link: '/exam-practice/mark-scheme-skills' },
          { text: 'B1 Practice', link: '/exam-practice/b1-practice' },
          { text: 'B2 and B3 Practice', link: '/exam-practice/b2-b3-practice' },
          { text: 'A1 and A2 Practice', link: '/exam-practice/a1-a2-practice' },
          { text: 'A3 and A4 Practice', link: '/exam-practice/a3-a4-practice' },
          { text: 'Mini Mock Exam Bank', link: '/exam-practice/mini-mock-exam-bank' }
        ]
      },

      {
        text: 'IA Support',
        collapsed: true,
        items: [
          { text: 'Overview', link: '/ia-support/' },
          { text: 'IA Overview', link: '/ia-support/ia-overview' },
          { text: 'Problem Analysis', link: '/ia-support/problem-analysis' },
          { text: 'Design and Success Criteria', link: '/ia-support/design-and-success-criteria' },
          { text: 'Development and Testing', link: '/ia-support/development-and-testing' },
          { text: 'Evaluation and Reflection', link: '/ia-support/evaluation-and-reflection' },
          { text: 'IA Checklist', link: '/ia-support/ia-checklist' }
        ]
      },

      {
        text: 'Glossary',
        collapsed: true,
        items: [
          { text: 'Overview', link: '/glossary/' },
          { text: 'Core Vocabulary CN-EN', link: '/glossary/core-vocabulary-cn-en' },
          { text: 'Pseudocode and Java Cheatsheet', link: '/glossary/pseudocode-java-cheatsheet' },
          { text: 'Command Terms', link: '/glossary/command-terms' }
        ]
      }
    ],

    outline: {
      label: 'On this page',
      level: [2, 3]
    },

    search: {
      provider: 'local'
    },

    docFooter: {
      prev: 'Previous page',
      next: 'Next page'
    },

    footer: {
      message: 'IBDP Computer Science SL Course Website',
      copyright: 'Created for classroom teaching and student revision'
    }
  },

  markdown: {
    lineNumbers: true
  }
})
