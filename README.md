# AI Systems

**From AI Literacy to Applied Intelligent Workflows**  
Teresia Mrema Buza | Complex Data Insights

This CDI guide treats AI as a system: human judgment, context, data, model behavior, evaluation, governance, and reproducible documentation.

## How to run locally

```bash
bash scripts/bash/00-check-environment.sh
bash scripts/bash/01-create-example-ai-task-log.sh
python scripts/python/02-evaluate-ai-output-quality.py data/example/ai-task-log.csv data/results
python scripts/python/03-build-prompt-registry.py data/example/ai-task-log.csv data/results
Rscript scripts/R/04-plot-evaluation-summary.R data/results/ai-evaluation-summary.csv data/reports
quarto render
```

Expected outputs:

```text
data/example/ai-task-log.csv
data/results/ai-evaluation-summary.csv
data/results/prompt-registry.tsv
data/reports/ai-evaluation-summary.png
docs/
```

## Publishing

This scaffold is ready for GitHub Pages using the included workflow:

```bash
git init
git add .
git commit -m "Initialize AI Systems guide"
git branch -M main
git remote add origin https://github.com/<username>/ai-systems.git
git push -u origin main
```

Then enable GitHub Pages from the `gh-pages` branch in repository settings.
