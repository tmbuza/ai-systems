#!/usr/bin/env python3
"""Create a CDI-style 4:5 cover placeholder using matplotlib.
Replace with a designed cover image when available."""

from pathlib import Path
import matplotlib.pyplot as plt

out = Path("assets/images/cover/ai-systems-cover.png")
out.parent.mkdir(parents=True, exist_ok=True)

fig = plt.figure(figsize=(8, 10), dpi=300)
ax = fig.add_axes([0, 0, 1, 1])
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.axis("off")

ax.add_patch(plt.Rectangle((0, 0), 1, 1, color="#071827"))
for x in [i / 20 for i in range(21)]:
    ax.plot([x, x], [0, 1], color="#123447", linewidth=0.5, alpha=0.45)
for y in [i / 25 for i in range(26)]:
    ax.plot([0, 1], [y, y], color="#123447", linewidth=0.5, alpha=0.45)

ax.text(0.08, 0.92, "COMPLEX DATA INSIGHTS", color="#7dd3fc", fontsize=16, weight="bold")
ax.text(0.08, 0.78, "AI", color="white", fontsize=78, weight="bold")
ax.text(0.08, 0.69, "SYSTEMS", color="#99f6e4", fontsize=48, weight="bold")
ax.text(0.08, 0.62, "From AI Literacy to Applied\nIntelligent Workflows", color="#d8f3ff", fontsize=21)

steps = ["Frame", "Ground", "Generate", "Evaluate", "Review", "Document"]
x0, y0 = 0.08, 0.42
for i, step in enumerate(steps):
    y = y0 - i * 0.052
    ax.add_patch(plt.Circle((x0, y), 0.015, color="#2dd4bf"))
    ax.text(x0 + 0.04, y - 0.01, step, color="#e0f2fe", fontsize=18)
    if i < len(steps) - 1:
        ax.plot([x0, x0], [y - 0.018, y - 0.036], color="#38bdf8", linewidth=2)

ax.text(0.08, 0.08, "CDI Systems Guide", color="#7dd3fc", fontsize=16, weight="bold")
ax.text(0.08, 0.045, "Teresia Mrema Buza | Complex Data Insights", color="#cbd5e1", fontsize=12)

fig.savefig(out, bbox_inches="tight", pad_inches=0)
plt.close(fig)
print(f"Wrote: {out}")
