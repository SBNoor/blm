#' Plotting the variables
#'
#' This function plots the response variable and each of the predictor variable one by one.
#'
#' @param object A fitted model obtained from blm function
#' @param ... Additional data, for example a data frame. Feel free to add other options.
#'
#' @import graphics
#' @export
plots <- function(object,...){
  variables = names(coefficient(object))

  for(i in 2:length(variables)){
    plot(object$frame[,i],object$frame[,1], xlab = variables[i], ylab = "y")
  }

}