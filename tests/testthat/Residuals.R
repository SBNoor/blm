context("residuals")

test_that("testing the residuals",{

  x <- rnorm(3)
  y <- rnorm(3)

  model <- y~x

  fit <- blm(model,alpha = 1, beta = 1)
  fit_lm <- lm(model)

  residuals_fit <- blm::residuals(fit)
  residuals_fit_lm <- stats::residuals(fit_lm)

  expect_equal(residuals_fit,residuals_fit_lm,tolerance = 1)

})