# AI Systems

**From AI Foundations to Reusable Agents and Applied Workflows**

**Author:** Teresia Mrema Buza | Complex Data Insights

---

## Overview

**AI Systems** is a Complex Data Insights guide for learning how to use artificial intelligence as a structured, human-led system rather than as a casual tool.

The guide moves from AI foundations into practical AI workflow design, reusable AI agent templates, and applied agents for research, learning, career growth, data analysis, communication, and reporting.

The central idea is simple:

```text
Human frames the problem
        ↓
AI assists with generation, reasoning, analysis, or automation
        ↓
Human evaluates, decides, documents, and acts
```

AI is treated as part of a broader system of thinking, evidence, judgment, documentation, and responsible action.

---

## Guide Architecture

The guide follows four connected parts.

```text
Part I: AI Foundations
        ↓
Part II: AI Systems
        ↓
Part III: Reusable AI Agent Template
        ↓
Part IV: Applied AI Agents
```

This structure helps learners move from understanding AI to designing repeatable workflows and then applying agentic patterns to real work.

---

## Book Structure

```text
index.qmd

Part I: AI Foundations
├── 00-preface.qmd
├── 01-ai-system-overview.qmd
├── 02-thinking-with-ai.qmd
├── 03-human-ai-human-framework.qmd
└── 04-prompting-as-system-design.qmd

Part II: AI Systems
├── 05-ai-workflow-design.qmd
├── 06-context-and-knowledge-systems.qmd
├── 07-ai-output-evaluation.qmd
├── 08-ai-safety-boundaries-and-human-judgment.qmd
└── 09-ai-operating-system-for-work.qmd

Part III: Reusable AI Agent Template
├── 10-agent-purpose-and-scope.qmd
├── 11-agent-inputs-context-and-memory.qmd
├── 12-agent-workflow-and-decision-logic.qmd
├── 13-agent-output-standards-and-review.qmd
└── 14-agent-improvement-and-maintenance.qmd

Part IV: Applied AI Agents
├── 15-research-and-learning-agent.qmd
├── 16-career-and-portfolio-agent.qmd
├── 17-data-analysis-support-agent.qmd
└── 18-communication-and-reporting-agent.qmd

Appendices
├── 999-appendix.qmd
└── 999-references.qmd
```

---

## What This Guide Teaches

By the end of this guide, learners should be able to:

- explain AI as part of a human-led system,
- distinguish casual AI use from structured AI workflows,
- design prompts as part of a broader workflow,
- build context and knowledge systems for better AI outputs,
- evaluate AI outputs for quality, risk, and usefulness,
- define safety boundaries and human review points,
- design reusable AI agent templates,
- document agent inputs, workflows, outputs, and review standards,
- apply agents to research, learning, career, data analysis, and reporting workflows,
- and communicate AI-supported work responsibly.

---

## Repository Layout

A typical project layout is:

```text
ai-systems/
├── index.qmd
├── 00-preface.qmd
├── 01-ai-system-overview.qmd
├── 02-thinking-with-ai.qmd
├── 03-human-ai-human-framework.qmd
├── 04-prompting-as-system-design.qmd
├── 05-ai-workflow-design.qmd
├── 06-context-and-knowledge-systems.qmd
├── 07-ai-output-evaluation.qmd
├── 08-ai-safety-boundaries-and-human-judgment.qmd
├── 09-ai-operating-system-for-work.qmd
├── 10-agent-purpose-and-scope.qmd
├── 11-agent-inputs-context-and-memory.qmd
├── 12-agent-workflow-and-decision-logic.qmd
├── 13-agent-output-standards-and-review.qmd
├── 14-agent-improvement-and-maintenance.qmd
├── 15-research-and-learning-agent.qmd
├── 16-career-and-portfolio-agent.qmd
├── 17-data-analysis-support-agent.qmd
├── 18-communication-and-reporting-agent.qmd
├── 999-appendix.qmd
├── 999-references.qmd
├── assets/
├── data/
├── scripts/
├── library/
├── docs/
├── _quarto.yml
└── README.md
```

---

## Requirements

This guide is built with [Quarto](https://quarto.org/).

Recommended tools:

```text
Quarto
Git
A text editor such as VS Code or Positron
Optional: Python and R for future reproducible workflow examples
```

---

## Render the Book

From the project root, run:

```bash
quarto render
```

The rendered website is written to:

```text
docs/
```

Expected output includes:

```text
docs/index.html
```

---

## Local Preview

To preview the book locally:

```bash
quarto preview
```

---

## Git Workflow

After editing chapters, use:

```bash
git status
git add .
git commit -m "Update AI Systems guide"
git push
```

If GitHub Pages is configured to publish from the `docs/` folder, the public site will update after the push.

---

## Publication Notes

This project is designed for GitHub Pages publishing using the rendered `docs/` directory.

The `_quarto.yml` configuration uses:

```yaml
project:
  type: book
  output-dir: docs
```

This keeps the source files and rendered public website in the same repository.

---

## Complex Data Insights Positioning

This guide belongs to the broader **Complex Data Insights** ecosystem of system guides.

It connects naturally with:

- Data Science Foundations System,
- Applied Data Science System,
- Career System,
- Clinical & Medical Data Systems,
- Omics Systems,
- and other CDI guides where structured thinking, reproducible workflows, and responsible communication are required.

AI Systems provides the reusable AI reasoning and workflow layer that can support these other pathways.

---

## Core Principle

AI should not replace human responsibility.

It should support better questions, stronger workflows, clearer communication, faster iteration, and more disciplined review.

The goal of this guide is to help learners and professionals move from isolated AI use to responsible, reproducible, human-led AI systems.

