
#' Bayesian linear model.
#'
#' Fits a model, given as a formula, optionally with data provided through the "..." parameter.
#'
#' @param model   A formula describing the model.
#' @param alpha   A hyperparamter
#' @param beta    A precision parameter for prior distribution
#' @param ...     Additional data, for example a data frame. Feel free to add other options.
#'
#' @return A fitted model.
#' @export
blm <- function(model,alpha,beta,...)
{
  prior <- make_prior(model,alpha)
  #print(prior)
  update_res <- update(model,prior,beta)
  #print(update_res)

  structure(list(formula = model,
                 frame = model.frame(model),
                 alpha = alpha,
                 beta = beta,
                 mean = update_res$mu,
                 covar = update_res$sigma,
                 prior = prior,
                 posterior = update_res),
            class = "blm")

}
