#' Print
#'
#' This function prints how the fitting function was called and what the fitted coefficients are.
#'
#' @param object A fit model obtained from blm function
#' @export
prints <- function(object)
{
  cat('\nCall:\n')
  print(object$func_call)

  cat('\nCoefficients:\n')
  print(object$mean)

}