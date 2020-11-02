#' Return current time
#'
#' @return A character string
#' @export
#'
#' @examples
#' what_time()
what_time <- function() {
  time <- format(Sys.time(), "%H:%M")
  sprintf("It is %s now!", time)
}
