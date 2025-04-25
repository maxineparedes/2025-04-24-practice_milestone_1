#' 02-clean_data.R
#'
#' author: Maxine Paredes
#' date: 2025/04/24
#'
library(tidyverse)
library(docopt)

"clean data and remove any rows with missing values
Usage: scripts/02-clean_data.R --input=<input> --output=<output>
" -> doc

opt <- docopt(doc)

data <- read_csv(opt$input)

penguins_clean <- data %>%
  drop_na()

write_csv(penguins_clean, opt$output)

# cmd to run: Rscript scripts/02-clean_data.R --input=data/penguins_data.csv --output=data/clean_penguins.csv
