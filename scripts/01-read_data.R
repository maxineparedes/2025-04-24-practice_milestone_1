# 01-read_data.R

# author: Maxine Paredes
# date: 2025/04/24

library(tidyverse)
library(palmerpenguins)
library(readr)
library(docopt)
source("R/01-download_data.R")

"this script reads the data and loads
from the package palmerpenguins
Usage: scripts/01-read_data.R --output=<output>
" -> doc

opt <- docopt(doc)

download_data(opt$output)

head(data)

# cmd to run: Rscript scripts/01-read_data.R --output=data/penguins_data.csv
print("script 1 successful! :p")