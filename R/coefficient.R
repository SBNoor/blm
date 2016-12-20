#' Fitted Parameters of the model
#'
#' This function returns the fitted parameters of the models
#'
#' @param object A fit model obtained from blm function
#' @return Fitted parameters of the model
#' @export

#coefficient <- function(object) UseMethod("coefficient")
coefficient <- function(object)
{
  estimates <- as.vector(object$mean)

  ###extracting the names of the parameters
  nameOfParameters <- rownames(object$mean)
  names(estimates) <- nameOfParameters

  return(estimates)
}