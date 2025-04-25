# 01-read_data.R

# author: Maxine Paredes
# date: 2025/04/24

library(tidyverse)
library(palmerpenguins)
library(readr)
library(docopt)

"this script reads the data and loads
from the package palmerpenguins
Usage: scripts/01-read_data.R --output=<output>
" -> doc

opt <- docopt(doc)

data <- penguins

write_csv(data, opt$output)

head(data)

# cmd to run: Rscript scripts/01-read_data.R --output=data/penguins_data.csv
print("script 1 successful! :p")