#' Indicate what time it is
#'
#' @description Here we would put more details
#'
#' @param language string indicating the language
#'
#' @return A string with a sentence
#' @export
#'
#' @examples
#' what_time()
#' what_time(language = "en")
what_time <- function(language = "fr") {

  rlang::arg_match0(language, c("fr", "en"))

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    fr = sprintf("%s! Il est maintenant %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time)
  )
}
