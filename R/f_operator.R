#' f_operator
#'
#' catches error conditions for input functions
#'
#' @param a function sqrt.2 or log.2
#' 
#'
#' @return a function that can catch error condition and keep going
#' @export
#'
#' @examples
#' sqrt.3 = f_operator(sqrt.2)
#' set.seed(2)
#' (y = lapply(runif(2,-10,10), sqrt.3))
#' 
#' \dontrun{
#' xxxxx
#' }
f_operator = function(f){
  force(f)
  fn = function(x){
    if (x <= 0) {
      catch_cnd(abort(message = "Error: negative input, NA introduced!", 
                      .subclass ="invalid_input", 
                      invalid_input = x))
    } else {
      f(x)
    }
  }
  return (fn)
}

