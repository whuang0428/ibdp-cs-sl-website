# AGENTS.md

面向在本仓库工作的 AI 编码代理的项目规则。先遵守本文件，再遵守用户当前请求中的更具体要求。

## 项目概览

这是一个 VitePress 静态学习网站，主题是 IBDP Computer Science SL。

- 项目根目录：`D:\ibdp-cs-sl-website`
- 学生可见内容根目录：`docs/`
- VitePress 配置：`docs/.vitepress/config.mts`
- 主题入口：`docs/.vitepress/theme/index.ts`
- 全局样式：`docs/.vitepress/theme/style.css`
- 主题组件：`docs/.vitepress/theme/components/`
- 互动演示 Vue 组件：`docs/.vitepress/components/demos/`
- 链接检查脚本：`tools/check-vitepress-links.ps1`
- 链接检查报告：`link-check-report.md`

主要内容是面向学生的 Markdown 页面。互动演示页面在 Markdown 中使用 Vue 组件，例如 `<TraceTableSimulator />`，组件文件在 `docs/.vitepress/components/demos/`。

## 当前课程结构

主要学生页面分布：

- `docs/index.md`：首页
- `docs/roadmap.md`：学习路线
- `docs/assessment/`：Assessment Overview
- `docs/a1-computer-fundamentals/`：A1 Computer Fundamentals
- `docs/a2-networks/`：A2 Networks
- `docs/a3-databases/`：A3 Databases
- `docs/a4-machine-learning/`：A4 Machine Learning
- `docs/b1-computational-thinking/`：B1 Computational Thinking
- `docs/b2-programming/`：B2 Programming
- `docs/b3-oop/`：B3 Object-Oriented Programming
- `docs/exam-practice/`：Exam Practice
- `docs/ia-support/`：IA Support
- `docs/interactive-demos/`：Interactive Demos
- `docs/glossary/`：Glossary
- `docs/extension-hl-programming/`：HL Programming Extension
- `docs/extension-software-engineering/`：Software Engineering extension

根目录的 `ib-official-alignment-audit.md`、`ia-support-official-refactor-plan.md`、`ia-support-old-pages-cleanup-plan.md` 是内部规划文件，不要移动到 `docs/`，也不要作为学生页面发布。

## 常用命令

在 PowerShell 中优先使用 `npm.cmd`。直接运行 `npm` 可能受本机执行策略影响。

```powershell
npm.cmd run docs:dev
npm.cmd run docs:build
npm.cmd run docs:preview
```

检查内部链接：

```powershell
powershell -ExecutionPolicy Bypass -File tools/check-vitepress-links.ps1
```

基本 Git 检查：

```powershell
git status --short
git diff
```

## 编辑前规则

编辑前必须先检查工作区：

```powershell
git status --short
```

如果工作区已有用户改动，不要覆盖、还原或清理，除非用户明确要求。当前项目经常会有这些本地变化：

- `link-check-report.md` 可能由链接检查脚本生成或修改。
- `docs/.vitepress/cache/` 和 `docs/.vitepress/dist/` 是生成目录，通常不要手动编辑。
- 根目录规划文档是内部文件，通常不要加入导航。

不要提交代码，除非用户明确要求。

## 删除规则

禁止批量删除文件或目录。

不要使用：

```powershell
del /s
rd /s
rmdir /s
Remove-Item -Recurse
rm -rf
```

如果必须删除文件，只能一次删除一个明确路径的文件，例如：

```powershell
Remove-Item "D:\ibdp-cs-sl-website\path\to\file.txt"
```

如果需要批量删除，停止操作并让用户手动处理。若用户明确列出多个可删除文件，也要逐个明确路径删除，不要使用递归或通配批量删除。

## 不要创建的文件

不要创建或提交：

- `*.backup-*`
- `student-facing-cleanup-audit.*`
- `_backups/`
- zip 压缩包
- 临时 package 文件夹
- 临时审计文件，除非用户明确要求

`.gitignore` 应继续包含：

```text
node_modules
docs/.vitepress/cache
docs/.vitepress/dist
*.backup-*
student-facing-cleanup-audit.*
_backups/
```

## 内容风格

默认读者是 IBDP / 高中 Computer Science 学生。

学生页面应当：

- student-facing
- practical
- clear
- beginner-friendly
- project-focused when appropriate
- written in simple English by default
- not university-level unless specifically requested

避免在学生页面中加入教师专用内容、课堂管理说明、网站维护说明或内部审计说明。

不要添加这些标题或短语，除非用户明确要求：

- `Teacher Notes`
- `Suggested Teacher Questions`
- `Classroom Activity`
- `Next Step`
- `Quality Review`
- `Module Audit`

常见 Markdown 页面模式：

- `#` 页面标题
- `## Learning Goals` 或清晰的编号章节
- 简短解释
- 清晰表格
- 原创例子
- `<details>` / `<summary>` 答案块
- 适量 VitePress admonitions，例如 `::: tip`、`::: warning`

不要复制官方 IB 试卷、题目、markscheme、截图或大段官方文字。可以用官方材料判断考纲方向、评估结构、技能重点和主题强调，但公开页面必须使用原创解释、原创例子和原创练习。

## Assessment 规则

Assessment 内容应帮助学生清楚区分 Paper 1、Paper 2 和 IA。

- `docs/assessment/` 用作 Assessment Overview。
- `docs/exam-practice/` 用作考试练习入口，当前重点是 Paper 1 技能和练习。
- Paper 2 应被说明为 option-based / applied paper，需要单独准备；不要把 Paper 2 混同为 Paper 1 练习。
- IA 应链接到 `docs/ia-support/`，不要在 Assessment 页面中重复 IA Support 的完整内部内容。

更新 Assessment navbar 时，至少保留：

- Assessment Overview
- Exam Practice
- IA Support
- Glossary

不要创建指向不存在 Paper 2 页面或未完成页面的死链接。

## IA Support 规则

IA Support 必须 official-file-led，并围绕新的 IA computational solution 结构和五个标准：

- Criterion A: Problem specification
- Criterion B: Planning
- Criterion C: System overview
- Criterion D: Development
- Criterion E: Evaluation

当前 IA Support 可见结构：

- `docs/ia-support/index.md`
- `docs/ia-support/computational-solution-overview.md`
- `docs/ia-support/choosing-a-suitable-problem.md`
- `docs/ia-support/criterion-a-problem-specification.md`
- `docs/ia-support/criterion-b-planning.md`
- `docs/ia-support/criterion-c-system-overview.md`
- `docs/ia-support/criterion-d-development.md`
- `docs/ia-support/criterion-e-evaluation.md`
- `docs/ia-support/ethics-and-academic-integrity.md`
- `docs/ia-support/submission-checklist.md`

不要重新添加旧的 generic IA 页面到侧边栏，例如：

- `ia-overview.md`
- `problem-analysis.md`
- `design-and-success-criteria.md`
- `development-and-testing.md`
- `evaluation-and-reflection.md`
- `ia-checklist.md`

IA 页面应覆盖 computational solution、report up to 2000 words、video up to 5 minutes、full source code appendix、student own work、external sources / libraries / AI acknowledgement、measurable success criteria、ethics and consent。不要发明与 Criteria A-E 竞争的替代 IA 结构。

## Markdown 和链接约定

Markdown 页面内部优先使用相对链接：

```markdown
[Topic Title](./topic-file)
```

VitePress 配置中使用无扩展名绝对路由：

```ts
{ text: 'Topic Title', link: '/folder/topic-file' }
```

`index.md` 映射到文件夹根路由：

```text
/folder/
```

新增需要出现在导航中的页面时，只更新 `docs/.vitepress/config.mts` 中对应的 sidebar group。不要创建重复 sidebar group，不要改无关 nav 或 sidebar。

## VitePress 配置规则

编辑 `docs/.vitepress/config.mts` 时：

- 只改相关 nav/sidebar group。
- 保持现有单引号风格。
- 保持对象、数组、逗号、括号和缩进正确。
- 不要创建重复 IA Support 或其他 sidebar group。
- 配置改动后运行：

```powershell
npm.cmd run docs:build
```

## 互动演示规则

互动演示页面在 `docs/interactive-demos/`，Vue 组件在：

```text
docs/.vitepress/components/demos/
```

编辑或新增互动演示时：

- 保持静态 VitePress 兼容，不要引入后端。
- 不要新增依赖，除非用户明确要求。
- 保持交互教育性强、易懂、适合高中学生。
- Markdown 页面中的组件标签要与 Vue 组件名称匹配。
- 新组件需要按项目现有自动组件使用模式放置在 demos 目录。
- 修改后运行 `npm.cmd run docs:build`。

## 主题和样式规则

主题入口只注册了 `LangBlock` 并引入 `style.css`。`LangBlock` 支持中文/英文切换，使用方式类似：

```markdown
<LangBlock>
<template #cn>

中文内容

</template>
<template #en>

English content

</template>
</LangBlock>
```

编辑 `docs/.vitepress/theme/style.css` 时：

- 只改相关样式。
- 注意 VitePress 默认类名如 `.VPDoc`、`.VPHome`、`.VPSidebarItem`。
- 保持表格、details、custom-block、LangBlock 等现有视觉风格一致。

## HL / SL 和扩展内容

本网站主要面向 SL 学生。HL-only 或 extension 内容必须清楚标注，避免让学生误以为是 SL core。相关目录包括：

- `docs/extension-hl-programming/`
- `docs/extension-software-engineering/`
- `docs/b3-oop/hl-multiple-classes.md`

Software Engineering 内容应保持实用、入门、项目导向，不要变成大学级软件工程课程。

## 验证规则

内容或配置改动后，通常运行：

```powershell
npm.cmd run docs:build
```

新增页面、修改链接或改 sidebar 后，也考虑运行：

```powershell
powershell -ExecutionPolicy Bypass -File tools/check-vitepress-links.ps1
```

链接检查会更新 `link-check-report.md`。如果用户没有要求修改该报告，并且任务不需要链接检查，可以只运行 build。若运行了链接检查，应在最终回复中说明 `link-check-report.md` 可能被更新。

## 工作范围

避免无关重构。按任务范围改文件：

- 内容任务通常只改相关 `.md` 文件。
- sidebar/nav 任务通常只改 `docs/.vitepress/config.mts`。
- 样式任务只改 `docs/.vitepress/theme/style.css`。
- 互动演示任务只改 `docs/interactive-demos/` 和相关 Vue 组件。
- 内部规划任务应放在项目根目录，不要放进 `docs/`。

最终回复应简洁说明：

- 改了哪些文件
- 改了什么
- 运行了哪些检查
- 是否有未处理风险或下一步建议
