#' Return current time
#'
#' @param language language to use (either "en" or "fr")
#'
#' @return A character string
#' @export
#'
#' @examples
#' what_time()
what_time <- function(language = "fr") {

  if (!language %in% c("fr", "en")) {
    stop("Either choose fr or en as a language.")
  }

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    fr = sprintf("%s! Il est maintenant %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time)
  )
}

