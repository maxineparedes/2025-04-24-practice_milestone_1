#' Read and Save Palmer Penguins Dataset
#'
#' Loads the `penguins` dataset from the `palmerpenguins` package and writes it to a CSV file.
#'
#' @param output_path A string specifying the file path where the CSV will be saved.
#'
#' @return A tibble containing the `penguins` dataset.
#' 
#' @examples
#' \dontrun{
#' read_and_save_penguins("data/penguins_data.csv")
#' }
#'
#' @export
download_data <- function(output_path) {
  library(tidyverse)
  library(palmerpenguins)
  library(readr)

  data <- palmerpenguins::penguins
  write_csv(data, output_path)

  message("script 1 successful! :p")
  return(data)
}
