#' Residuals
#'
#' This function returns the residuals of the fit.
#'
#' @param object     A fitted model
#' @param ...     Additional data, for example a data frame. Feel free to add other options.
#'
#' @return Residuals of the fit
#' @export
residuals.blm <- function(object, ...)
{

  resid_frame <- object$frame[,1]
  resid_pred <- fitted.blm(object,...)

  resid_fit <- resid_frame - resid_pred

  return(resid_fit)
}