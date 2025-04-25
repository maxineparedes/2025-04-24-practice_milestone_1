#' Clean Palmer Penguins Data by Dropping Missing Values
#'
#' Reads a CSV file, removes rows with any missing values, and writes the cleaned data to a new CSV file.
#'
#' @param input_path A string specifying the path to the input CSV file.
#' @param output_path A string specifying the path where the cleaned CSV file will be saved.
#'
#' @return A tibble containing the cleaned dataset (no `NA` values).
#'
#' @examples
#' clean_penguins_data("data/penguins_data.csv", "data/clean_penguins.csv")
#'
#' @export
clean_data <- function(input_path, output_path) {
  library(tidyverse)
  library(readr)

  data <- read_csv(input_path)
  penguins_clean <- data %>%
    drop_na()

  write_csv(penguins_clean, output_path)
  message("Data cleaned and saved successfully!")
  return(penguins_clean)
}
