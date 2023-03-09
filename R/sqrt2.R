#' sqrt.2
#'
#' A robust sqrt() function
#'
#' @param a any number
#' 
#'
#' @return sqrt(a) or, if a < 0, message = "Error: negative input, NA introduced!"
#' @export
#'
#' @examples
#' a <- -1
#' sqrt.2(-1)
#' 
#' \dontrun{
#' xxxxx
#' }
sqrt.2 = function(x){
  if (x < 0) {
    rlang::abort(message = "Error: negative input, NA introduced!", 
                 .subclass ="sqrt.2_error", 
                 x = x)
  } else {
    sqrt(x)
  }
}
}
