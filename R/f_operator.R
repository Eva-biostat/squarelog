#' f_operator
#'
#' catches error conditions for input functions
#'
#' @param f A function sqrt_2 or log_2
#'
#'
#' @return a function that can catch error condition and keep going
#' @export
#'
#' @examples
#' sqrt_3 = f_operator(sqrt_2)
#' set.seed(2)
#' (y = lapply(runif(2,-10,10), sqrt_3))
#'
f_operator = function(f){
  force(f)
  fn = function(x){
    if (x <= 0) {
      rlang::catch_cnd(rlang::abort(message = "Error: negative input, NA introduced!",
                      .subclass ="invalid_input",
                      invalid_input = x))
    } else {
      f(x)
    }
  }
  return (fn)
}

