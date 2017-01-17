#' Plotting the variables
#'
#' This function plots the residuals against the fitted values
#'
#' @param x A fitted model obtained from blm function
#' @param ... Additional data, for example a data frame. Feel free to add other options.
#'
#' @import graphics
#' @export
plot.blm <- function(x,...){

  variables = names(coefficients.blm(x))

  for(i in 2:length(variables)){
    plot(x$frame[,i],x$frame[,1], xlab = variables[i], ylab = "y")
  }



}