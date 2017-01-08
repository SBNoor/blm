#' Bayesian linear model.
#'
#' Fits a model, given as a formula, optionally with data provided through the "..." parameter.
#'
#' @param model   A formula describing the model.
#' @param alpha   A hyperparamter
#' @param beta    A precision parameter for prior distribution
#' @param ...     Additional data, for example a data frame. Feel free to add other options.
#'
#' @import stats
#' @return A fitted model.
#' @export
blm <- function(model,alpha,beta,...)
{
  prior <- make_prior(model,alpha)

  update_res <- update(model,prior,beta)

  structure(list(terms = model,
                 frame = model.frame(model),
                 alpha = alpha,
                 beta = beta,
                 mean = update_res$mu,
                 covar = update_res$sigma,
                 prior = prior,
                 posterior = update_res,
                 func_call = sys.call()),
                 class = "blm")

}