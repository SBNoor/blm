predictfunc <- function(object,...) UseMethod("predict")
predict.blm <- function(object,...){

  #phi<- model_matrix(model)

  responseless.formula <- delete.response(terms(object$formula))
  frame <- model.frame(responseless.formula,...)
  phi = model.matrix(responseless.formula, frame)



  mean <- object$mean

  means_vect = vector(length=nrow(phi))

  for(i in seq_along(means)){
    means_vect[i] = t(mean) %*% phi[i,]
  }

  return(means_vect = means_vect)
}