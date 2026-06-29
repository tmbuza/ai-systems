#!/usr/bin/env bash
set -euo pipefail

mkdir -p data/example

cat > data/example/ai-task-log.csv <<'CSV'
task_id,task_type,audience,ai_role,input_context,expected_output,accuracy_score,completeness_score,clarity_score,risk_level,review_status,human_decision
AI-001,Explanation,Beginner learner,Teaching assistant,Explain cross-validation in simple language,Short learner-friendly explanation,4,5,5,low,reviewed,accept
AI-002,Report drafting,Project team,Technical editor,Summarize a tidy model results table,One interpretation paragraph,4,4,4,medium,reviewed,revise
AI-003,Policy support,Training coordinator,Risk reviewer,Draft rules for classroom AI use,Checklist and boundaries,3,4,4,medium,reviewed,revise
AI-004,Code assistance,Data analyst,Programming helper,Create pandas data validation checks,Reusable Python script,4,3,4,medium,reviewed,revise
AI-005,Public communication,General audience,Communication assistant,Explain why AI output must be verified,Short public message,5,5,5,low,reviewed,accept
CSV

echo "Created: data/example/ai-task-log.csv"
