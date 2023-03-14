#' sqrt.2
#'
#' A robust square root function
#'
#' @param x A numeric value
#'
#'
#' @return a number or, if x < 0, message = "Error: negative input, NA introduced!"
#' @export
#'
#' @examples
#' sqrt.2(-1)
#'
sqrt.2 = function(x){
  if (x < 0) {
    rlang::abort(message = "Error: negative input, NA introduced!",
                 .subclass ="sqrt.2_error",
                 x = x)
  } else {
    sqrt(x)
  }
}

