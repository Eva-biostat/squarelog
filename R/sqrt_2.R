#' sqrt_2
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
#' sqrt_2(-1)
#'
sqrt_2 = function(x){
  if (x < 0) {
    rlang::abort(message = "Error: negative input, NA introduced!",
                 .subclass ="sqrt_2_error",
                 x = x)
  } else {
    sqrt(x)
  }
}

