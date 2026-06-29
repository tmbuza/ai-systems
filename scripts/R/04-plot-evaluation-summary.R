#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(readr)
  library(dplyr)
  library(ggplot2)
})

args <- commandArgs(trailingOnly = TRUE)
if (length(args) < 2) {
  stop("Usage: Rscript scripts/R/04-plot-evaluation-summary.R <ai-evaluation-summary.csv> <output_dir>", call. = FALSE)
}

input_path <- args[[1]]
output_dir <- args[[2]]
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)

summary <- read_csv(input_path, show_col_types = FALSE)

plot_data <- summary %>%
  mutate(group = paste(risk_level, human_decision, sep = " / "))

p <- ggplot(plot_data, aes(x = reorder(group, mean_quality_score), y = mean_quality_score)) +
  geom_col() +
  coord_flip() +
  labs(
    title = "AI Task Evaluation Summary",
    x = "Risk level / human decision",
    y = "Mean quality score"
  ) +
  theme_minimal(base_size = 12)

output_path <- file.path(output_dir, "ai-evaluation-summary.png")
ggsave(output_path, p, width = 8, height = 5, dpi = 300)
message("Wrote: ", output_path)
