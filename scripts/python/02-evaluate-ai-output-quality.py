#!/usr/bin/env python3
"""Summarize AI task quality scores from a CDI AI Systems task log."""

from __future__ import annotations

import sys
from pathlib import Path
import pandas as pd


def main() -> None:
    if len(sys.argv) < 3:
        raise SystemExit("Usage: python scripts/python/02-evaluate-ai-output-quality.py <task_log.csv> <output_dir>")

    input_path = Path(sys.argv[1])
    output_dir = Path(sys.argv[2])
    output_dir.mkdir(parents=True, exist_ok=True)

    if not input_path.exists():
        raise FileNotFoundError(f"Input file not found: {input_path}")

    df = pd.read_csv(input_path)
    required = ["accuracy_score", "completeness_score", "clarity_score", "risk_level", "human_decision"]
    missing = [col for col in required if col not in df.columns]
    if missing:
        raise ValueError(f"Missing required columns: {missing}")

    score_cols = ["accuracy_score", "completeness_score", "clarity_score"]
    df["mean_quality_score"] = df[score_cols].mean(axis=1).round(2)

    summary = (
        df.groupby(["risk_level", "human_decision"], dropna=False)
        .agg(
            tasks=("task_id", "count"),
            mean_accuracy=("accuracy_score", "mean"),
            mean_completeness=("completeness_score", "mean"),
            mean_clarity=("clarity_score", "mean"),
            mean_quality_score=("mean_quality_score", "mean"),
        )
        .reset_index()
    )

    numeric_cols = ["mean_accuracy", "mean_completeness", "mean_clarity", "mean_quality_score"]
    summary[numeric_cols] = summary[numeric_cols].round(2)

    detailed_output = output_dir / "ai-task-log-scored.csv"
    summary_output = output_dir / "ai-evaluation-summary.csv"

    df.to_csv(detailed_output, index=False)
    summary.to_csv(summary_output, index=False)

    print(f"Wrote: {detailed_output}")
    print(f"Wrote: {summary_output}")


if __name__ == "__main__":
    main()
