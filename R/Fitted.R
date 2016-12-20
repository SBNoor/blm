
#' Fitted Response Variables
#'
#' Takes a fitted model and optionally the data provided through the "..." parameter and returns the response variables
#'
#' @param object   A fitted model
#' @param ...     Additional data, for example a data frame. Feel free to add other options.
#'
#' @return Fitted response variables
#' @export
fitted <- function(object, ...)
{
  predict(object,...)
}