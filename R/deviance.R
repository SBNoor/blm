
#' Deviance
#'
#' This function just computes the sum of squared distances from the predicted response variables to the observed
#'
#' @param object  A fiited model
#' @param ...     Additional data, for example a data frame. Feel free to add other options.
#'
#' @return Deviance
#' @export
deviance <- function(object, ...){
  sum((object$frame[,1] - fitted(object))^2)
}