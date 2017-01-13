#' Fitted Response Variables
#'
#' This function gives the fitted response variables.
#'
#' @param object   A fitted model
#' @param ...     Additional data, for example a data frame. Feel free to add other options.
#'
#' @return Fitted response variables
#' @export
fitted.blm <- function(object, ...)
{
  prediction <- predict(object,...)
  return(prediction)
}