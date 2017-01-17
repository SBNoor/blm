#' Posterior Distribution
#'
#' Takes in a model, prior distribution and the precision parameter and returns the updated posterior distribution
#'
#' @param model A formula describing the model
#' @param prior Prior Distribution
#' @param beta A precision parameter
#' @param ... Additional data
#'
#' @import stats
#' @return A list made of mean and sigma (the prior distribution)
update <- function(model,prior,beta,...)
{

  if(beta > 0)
  {
    phi <- model.matrix(model,...)
    s_xy <- (prior$sigma) + (beta * t(phi) %*% phi)

    sxy <- solve(s_xy)

    y <- model.frame(model)
    m_xy <- beta * sxy %*% t(phi) %*% y[,1]

    return(list(mu = m_xy,sigma = sxy))
  }
  else{
    print("Beta must be positive")
    break
  }
}