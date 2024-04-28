#' Parse HTML content
#'
#' This function parses HTML content using the `rvest` package.
#'
#' @param html_content The HTML content to parse.
#' @return A parsed HTML document object.
#' @export
parse_html <- function(html_content) {
  # Load required library
  library(rvest)

  # Parse HTML content
  parsed_html <- read_html(html_content)

  return(parsed_html)
}
