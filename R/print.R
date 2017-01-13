#' Print
#'
#' This function prints how the fitting function was called and what the fitted coefficients are.
#'
#' @param x A fit model obtained from blm function
#' @param ... Additional data
#' @export
print.blm <- function(x,...)
{
  cat('\nCall:\n')
  print(x$func_call)

  cat('\nCoefficients:\n')
  print(x$mean)

}