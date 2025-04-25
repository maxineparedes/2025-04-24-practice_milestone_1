#' 03-figures.R
#'
#' author: Maxine Paredes
#' date: 2025/04/24
#'
library(ggplot2)
library(docopt)
library(readr)
source("R/create_viz.R")

" creates a scatterplot for bill and flipper length of penguins
Usage: scripts/03-figures.R --input=<input> --figure=<figure>
" -> doc

opt <- docopt(doc)

create_viz(opt$input, opt$figure)

# cmd to run: Rscript scripts/03-figures.R --input=data/clean_penguins.csv --figure=results/scatterplot.png
print("figure is saved to results!")