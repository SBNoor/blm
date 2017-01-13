context("deviance")

test_that("testing the deviance function",{

  x <- rnorm(3)
  y <- rnorm(3)

  model <- y ~ x

  fit <- blm(model,alpha = 1, beta =1)
  fit_lm <- lm(model)

  deviance_fit <- deviance(fit)
  deviance_fit_lm <- deviance(fit_lm)

  expect_equal(deviance_fit,deviance_fit_lm,tolerance = 1)

})