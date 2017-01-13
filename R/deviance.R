#' Deviance
#'
#' This function just computes the sum of squared distances from the predicted response variables to the observed
#'
#' @param object  A fiited model
#' @param ...     Additional data, for example a data frame. Feel free to add other options.
#'
#' @return Deviance
#' @export
deviance.blm <- function(object, ...)
{

  obj_frame <- object$frame[,1]
  fitted_var <- fitted.blm(object)

  sq_dist <- sum((obj_frame - fitted_var)^2)

  return(sq_dist)

}