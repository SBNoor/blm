#' Bayesian linear model.
#'
#' Fits a model, given as a formula, optionally with data provided through the "..." parameter.
#'
#' @param model   A formula describing the model.
#' @param ...     Additional data, for example a data frame. Feel free to add other options.
#'
#' @return A fitted model.
#' @export
predict <- function(object,...){

  #phi<- model_matrix(model)

  responseless.formula <- delete.response(terms(object$formula))
  frame <- model.frame(responseless.formula,...)
  phi = model.matrix(responseless.formula, frame)



  mean <- object$mean

  means_vect = vector(length=nrow(phi))

  for(i in seq_along(means_vect)){
    means_vect[i] = t(mean) %*% phi[i,]
  }

  return(means_vect = means_vect)
}