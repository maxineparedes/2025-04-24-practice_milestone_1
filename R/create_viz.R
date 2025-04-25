#' Create and Save a Scatterplot of Bill vs Flipper Length
#'
#' Reads cleaned penguin data from a CSV file and creates a scatterplot of bill length vs flipper length, colored by species. Saves the figure as a PNG.
#'
#' @param input_path A string specifying the path to the cleaned penguins data CSV.
#' @param figure_path A string specifying the path where the figure will be saved (e.g., `.png`).
#'
#' @return The ggplot object (invisibly).
#'
#' @examples
#' \dontrun{
#' plot_bill_vs_flipper("data/clean_penguins.csv", "results/scatterplot.png")
#' }
#'
#' @export
create_viz <- function(input_path, figure_path) {
  library(ggplot2)
  library(readr)

  data <- read_csv(input_path)

  bill_vs_flipper_plot <- ggplot(data, aes(x = bill_length_mm, y = flipper_length_mm, color = species)) +
    geom_point(size = 2, alpha = 0.7) +
    theme_minimal() +
    labs(
      title = "Bill Length vs Flipper Length in Palmer Penguins",
      x = "Bill Length (mm)",
      y = "Flipper Length (mm)"
    )

  ggsave(filename = figure_path, plot = bill_vs_flipper_plot)
  message("Figure saved to: ", figure_path)

  invisible(bill_vs_flipper_plot)
}
