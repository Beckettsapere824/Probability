# Probability Knowledge Tree / 概率论知识前置树

This repository hosts a structured prerequisite tree for a probability theory course (STAT2601 Exam 2 focus). Each knowledge node is a minimal teaching unit with formulas, steps, common pitfalls, examples, and one practice problem.

本仓库存放概率论课程（以 STAT2601 Exam 2 为重点）的结构化前置知识树。每个知识节点是最小教学单元，包含公式、步骤、易错点、例子和一道练习题。

## Structure / 结构

- `data/prerequisite_tree.yaml`: Full machine-readable prerequisite tree (nodes, prereqs, content outlines, study order).
- `nodes/`: One Markdown file per knowledge node. Bilingual (English paragraph followed by Chinese paragraph). Top links to prereqs, bottom links to dependents. Includes examples and one real problem.
- Future: diagrams via Mermaid, more worked examples, progressive refinement.

- `data/prerequisite_tree.yaml`：完整的机器可读前置树（节点、前置、内容大纲、学习顺序）。
- `nodes/`：每个知识节点一个 Markdown 文件。中英双语（一段英文一段中文）。顶部链接前置，底部链接后置。含例子和一道真实题目。
- 后续：用 Mermaid 做图示、更多例题、逐步优化。

## How to study / 如何学习

Follow the topological order in `study_order`. Do not skip prereqs. Each page is self-contained for one concept.

按 `study_order` 中的拓扑顺序学习。不要跳过前置。每个页面只解释一个知识点。

## Notes on GitHub / 关于 GitHub 使用说明

GitHub renders Markdown and Mermaid diagrams directly in the browser. HTML preview usually requires downloading or GitHub Pages. We prioritize Markdown + Mermaid diagrams + examples for clarity.

GitHub 可直接在浏览器渲染 Markdown 和 Mermaid 图示。HTML 预览通常需要下载或开启 GitHub Pages。我们优先使用 Markdown + Mermaid 图示 + 例子来帮助理解。

## Modules / 模块

- M0: Mathematical foundations and notation / 数学与记号基础
- M1: Probability basics and conditional probability / 概率基础与条件概率
- M2: Combinatorial counting and sampling models / 组合计数与抽样模型
- M3: Discrete random variables: expectation, variance, transforms / 离散随机变量：期望、方差、变换
- M4: Common discrete distributions and properties / 常见离散分布与性质
- M5: Conditioning, Bayes, and conditional counting / 条件、贝叶斯与条件计数专题
- M6: Stochastic processes and long-run frequency / 随机过程与长期频率
- M7: Application models and integrated problems / 应用模型与综合题

Start with [M0.1 Sets and Event Language](nodes/M0.1.md).

从 [M0.1 集合与事件语言](nodes/M0.1.md) 开始。
