library(tidyverse)
metrics_summary_SRR9280654 <- read_csv("/data/PRJNA548532/cellranger/SRR9280654/outs/metrics_summary.csv") %>% mutate(Run = "SRR9280654")
metrics_summary_SRR9280653 <- read_csv("/data/PRJNA548532/cellranger/SRR9280653/outs/metrics_summary.csv") %>% mutate(Run = "SRR9280653")
metrics_summary <-
    bind_rows(
        metrics_summary_SRR9280654,
        metrics_summary_SRR9280653)

metrics_summary |>
    select("Estimated Number of Cells", "Run")

write_tsv(metrics_summary, "/data/PRJNA548532/metrics_summary.tsv")

