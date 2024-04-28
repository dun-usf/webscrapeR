#' Fetch HTML content from a URL
#'
#' This function fetches HTML content from a given URL using the `httr` package.
#'
#' @param url The URL to fetch HTML content from.
#' @return The fetched HTML content as a character string.
#' @export
fetch_html <- function(url) {
  # Load required library
  library(httr)

  # Make GET request to fetch HTML content
  response <- GET(url)

  # Check if request was successful
  if (http_type(response) == "text/html") {
    # Extract HTML content from response
    html_content <- content(response, as = "text")
    return(html_content)
  } else {
    stop("Failed to fetch HTML content. Check the URL and try again.")
  }
}
