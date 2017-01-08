context("plot")

test_that("testing the plot function",{

  x <- rnorm(3)
  y <- rnorm(3)

  model <- y ~ x

  fit <- blm(model,alpha = 1, beta = 1)

  blm::plots(fit)

})