context("plot")

test_that("testing the plot function",{

  x <- rnorm(30)
  y <- rnorm(30)

  model <- y ~ x

  fit <- blm(model,alpha = 1, beta = 1)

  plot(fit)

})