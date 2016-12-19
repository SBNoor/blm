#' Prior Distribution
#'
#' Takes in a model and hyperparametr alpha and gives the prior distribution
#'
#' @param model A formula describing the model
#' @param alpha A hyperparameter
#' @return A list made of mean and sigma (the prior distribution)
make_prior <- function(model,alpha)
{
  model_matrix <- model.matrix(model)
  col_num <- ncol(model_matrix)

  mu = vector("numeric",length = col_num)
  sigma = (1/alpha) * diag(col_num)

  return(list(mu = mu,sigma = sigma))
}