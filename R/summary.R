#' Summary
#'
#' This function prints how the fitting function was called, the fitted coefficients and the residuals of the fit.
#'
#' @param object A fit model obtained from blm function
#' @param ... optional parameters
#'
#' @export

summary.blm <- function(object, ...)
{
  cat('\nCall:\n')
  print(object$func_call)

  cat('\n')

  cat('\nResiduals:\n')
  print(residuals.blm(object))

  cat('\nCoefficients:\n')
  print(coefficients.blm(object))

}