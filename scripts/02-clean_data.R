#' 02-clean_data.R
#'
#' author: Maxine Paredes
#' date: 2025/04/24
#'
library(tidyverse)
library(docopt)
source("R/clean_data.R")

"clean data and remove any rows with missing values
Usage: scripts/02-clean_data.R --input=<input> --output=<output>
" -> doc

opt <- docopt(doc)

clean_data(opt$input, opt$output)

# cmd to run: Rscript scripts/02-clean_data.R --input=data/penguins_data.csv --output=data/clean_penguins.csv
