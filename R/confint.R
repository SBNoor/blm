#' Confidence Interval for the fitted parameters
#'
#' This function gives the Confidence interval (2.5% and 97.5%) for the fitted parameters
#'
#' @param object   A fiited model obtained from the blm
#' @param level    A confidence level
#' @return Confidence Interval for each of the parameters
#'
#' @import stats
#' @export
confint<- function(object,level = 0.95)
{

  a = c((1 - level)/2, 1 - (1-level)/2)

  variables = names(coefficients.blm(object))

  m <- matrix(0,nrow = length(variables), ncol = 2)

  colnames(m) <- c(paste(a[1] * 100,"%"),paste(a[2]*100,"%"))
  rownames(m) = variables

  for(i in variables)
  {
    m[i,1] <- qnorm(a[1], mean = object$mean[i,1], sd = sqrt(object$covar[i,i]))
    m[i,2] <- qnorm(a[2], mean = object$mean[i,1], sd = sqrt(object$covar[i,i]))
  }


  return(m)
}
