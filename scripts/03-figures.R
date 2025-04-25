#' 03-figures.R
#'
#' author: Maxine Paredes
#' date: 2025/04/24
#'
library(ggplot2)
library(docopt)
library(readr)

" creates a scatterplot for bill and flipper length of penguins
Usage: scripts/03-figures.R --input=<input> --figure=<figure>
" -> doc

opt <- docopt(doc)

data <- read_csv(opt$input)

bill_vs_flipper_plot <- ggplot(data, aes(x = bill_length_mm, y = flipper_length_mm, color = species)) +
  geom_point(size = 2, alpha = 0.7) +
  theme_minimal() +
  labs(
    title = "Bill Length vs Flipper Length in Palmer Penguins",
    x = "Bill Length (mm)",
    y = "Flipper Length (mm)"
  )

ggsave(opt$figure, bill_vs_flipper_plot)

# cmd to run: Rscript scripts/03-figures.R --input=data/clean_penguins.csv --figure=results/scatterplot.png
print("figure is saved to results!")