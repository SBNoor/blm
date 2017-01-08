#' Predict
#'
#' This function makes prediction based on the fitted model.
#'
#' @param object   A formula describing the model.
#' @param ...     Additional data, for example a data frame. Feel free to add other options.
#'
#' @return A mean vector
#' @import stats
#' @export
predict <- function(object,...){

  #phi<- model_matrix(model)

  responseless.formula <- delete.response(terms(object$terms))
  frame <- model.frame(responseless.formula,...)
  phi = model.matrix(responseless.formula, frame)

  mean <- object$mean

  means_vect = vector(length=nrow(phi))

  for(i in seq_along(means_vect)){
    means_vect[i] = t(mean) %*% phi[i,]
  }

  names(means_vect) = seq(1, length(means_vect))
  return(means_vect)
}