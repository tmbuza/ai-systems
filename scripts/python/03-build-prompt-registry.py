#!/usr/bin/env python3
"""Create a reusable prompt registry from an AI task log."""

from __future__ import annotations

import sys
from pathlib import Path
import pandas as pd


def main() -> None:
    if len(sys.argv) < 3:
        raise SystemExit("Usage: python scripts/python/03-build-prompt-registry.py <task_log.csv> <output_dir>")

    input_path = Path(sys.argv[1])
    output_dir = Path(sys.argv[2])
    output_dir.mkdir(parents=True, exist_ok=True)

    df = pd.read_csv(input_path)
    required = ["task_id", "task_type", "audience", "ai_role", "input_context", "expected_output"]
    missing = [col for col in required if col not in df.columns]
    if missing:
        raise ValueError(f"Missing required columns: {missing}")

    registry = df[required].copy()
    registry["prompt_template"] = registry.apply(
        lambda row: (
            f"Act as a {row['ai_role']} for {row['audience']}. "
            f"Task type: {row['task_type']}. "
            f"Context: {row['input_context']}. "
            f"Produce: {row['expected_output']}. "
            "Keep the output clear, reviewable, and aligned with CDI standards."
        ),
        axis=1,
    )

    output_path = output_dir / "prompt-registry.tsv"
    registry.to_csv(output_path, sep="\t", index=False)
    print(f"Wrote: {output_path}")


if __name__ == "__main__":
    main()
