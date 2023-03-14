#' log_2
#'
#' A robust log function
#'
#' @param x A numeric value
#'
#'
#' @return a number or, if x < 0, message = "Error: negative input, NA introduced!"
#' @export
#'
#' @examples
#' log_2(-1)
#'
log_2 = function(x){
  if (x < 0) {
    rlang::abort(message = "Error: negative input, NA introduced!",
                 .subclass ="log_2_error",
                 x = x)
  } else {
    log(x)
  }
}

