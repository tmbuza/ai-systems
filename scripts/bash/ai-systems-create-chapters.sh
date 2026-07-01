#!/usr/bin/env bash
set -euo pipefail

# Create AI Systems chapter files without overwriting existing content.
# Run from the root of the ai-systems Quarto project.

chapters=(
  "01-ai-system-overview.qmd|AI-001|AI System Overview|AI systems connect human goals, AI assistance, evaluation, and documentation"
  "02-thinking-with-ai.qmd|AI-002|Thinking with AI|AI can strengthen human reasoning when used for questioning, reflection, and explanation"
  "03-human-ai-human-framework.qmd|AI-003|Human-AI-Human Framework|Responsible AI workflows begin and end with human judgment"
  "04-prompting-as-system-design.qmd|AI-004|Prompting as System Design|Prompts are small workflow designs that connect goals, context, constraints, and review"
  "05-ai-workflow-design.qmd|AI-005|AI Workflow Design|AI work becomes reliable when tasks, inputs, outputs, and reviews are intentionally designed"
  "06-context-and-knowledge-systems.qmd|AI-006|Context and Knowledge Systems|AI outputs improve when they are grounded in clear context, documents, data, and examples"
  "07-ai-output-evaluation.qmd|AI-007|AI Output Evaluation|AI-assisted work requires structured review for accuracy, usefulness, completeness, and risk"
  "08-ai-safety-boundaries-and-human-judgment.qmd|AI-008|AI Safety, Boundaries, and Human Judgment|Responsible AI systems define where AI can assist and where humans must decide"
  "09-ai-operating-system-for-work.qmd|AI-009|AI Operating System for Work|AI can support daily work when it is organized into repeatable routines and review loops"
  "10-agent-purpose-and-scope.qmd|AI-010|Agent Purpose and Scope|A useful AI agent starts with a clear purpose, audience, boundaries, and success criteria"
  "11-agent-inputs-context-and-memory.qmd|AI-011|Agent Inputs, Context, and Memory|Reusable agents depend on well-defined inputs, context packages, and memory rules"
  "12-agent-workflow-and-decision-logic.qmd|AI-012|Agent Workflow and Decision Logic|Agent behavior should follow explicit steps, decisions, checks, and escalation points"
  "13-agent-output-standards-and-review.qmd|AI-013|Agent Output Standards and Review|Agent outputs need consistent formats, quality standards, and human review procedures"
  "14-agent-improvement-and-maintenance.qmd|AI-014|Agent Improvement and Maintenance|Reusable agents must be tested, updated, documented, and improved over time"
  "15-research-and-learning-agent.qmd|AI-015|Research and Learning Agent|AI agents can support reading, synthesis, questioning, and structured learning"
  "16-career-and-portfolio-agent.qmd|AI-016|Career and Portfolio Agent|AI agents can help learners organize skills, evidence, projects, and professional communication"
  "17-data-analysis-support-agent.qmd|AI-017|Data Analysis Support Agent|AI agents can support analysis planning, code review, interpretation, and reproducible reporting"
  "18-communication-and-reporting-agent.qmd|AI-018|Communication and Reporting Agent|AI agents can help transform work into clear messages, reports, summaries, and presentations"
)

created=0
skipped=0

for item in "${chapters[@]}"; do
  IFS='|' read -r file id title theme <<< "$item"

  if [[ -f "$file" ]]; then
    echo "SKIP: $file already exists"
    skipped=$((skipped + 1))
    continue
  fi

  cat > "$file" <<CHAPTER
# $title {#${file%.qmd}}

:::cdi-message
- **ID:** $id
- **Type:** System Guide
- **Audience:** Learners, analysts, researchers, educators, data scientists, and professionals building responsible AI-enabled workflows
- **Theme:** $theme
:::

## Purpose

This chapter explains how this part of the AI Systems guide supports responsible, reproducible, and human-led AI work.

## Core Idea

AI should be used as part of a structured system that includes human framing, clear context, AI assistance, output evaluation, documentation, and human decision-making.

## System Pattern

\`\`\`text
Human goal
  ↓
Context and constraints
  ↓
AI assistance
  ↓
Human review
  ↓
Documented output
\`\`\`

## Practical Application

Use this chapter to connect AI concepts to practical workflows that can be explained, repeated, evaluated, and improved.

## Reflection Questions

1. What problem is the AI workflow trying to support?
2. What context does the AI need before producing useful output?
3. How will the human reviewer evaluate the output?
4. What should be documented so the workflow can be repeated or improved?

## Looking Ahead

The next chapter continues the AI Systems progression from foundations toward reusable agents and applied workflows.
CHAPTER

  echo "CREATE: $file"
  created=$((created + 1))
done

echo
echo "AI Systems chapter scaffold complete."
echo "Created: $created"
echo "Skipped: $skipped"
echo
echo "Next steps:"
echo "  quarto render"
echo "  git status"
