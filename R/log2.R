#' log.2
#'
#' A robust log() function
#'
#' @param a any number
#' 
#'
#' @return log(a) or, if a < 0, message = "Error: negative input, NA introduced!"
#' @export
#'
#' @examples
#' a <- -1
#' log.2(-1)
#' 
#' \dontrun{
#' xxxxx
#' }
log.2 = function(x){
  if (x < 0) {
    rlang::abort(message = "Error: negative input, NA introduced!", 
                 .subclass ="sqrt.2_error", 
                 x = x)
  } else {
    log(x)
  }
}
}
