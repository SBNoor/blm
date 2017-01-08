#' Summary
#'
#' This function prints how the fitting function was called, the fitted coefficients and the residuals of the fit.
#'
#' @param object A fit model obtained from blm function
#'
#' @export

Summary <- function(object)
{
  cat('\nCall:\n')
  print(object$func_call)

  cat('\n')

  cat('\nResiduals:\n')
  print(blm::residuals(object))

  cat('\nCoefficients:\n')
  print(blm::coefficient(object))

}