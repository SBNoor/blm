context("Fitted")

test_that("Testing the fitted function",{

  x <- rnorm(3)
  y <- rnorm(3)

  model <- y~x

  fit_blm <- blm(model, alpha = 1,beta = 1)
  fit_lm <- lm(model)

  fitted_fit_blm <- blm::fitted(fit_blm)
  fitted_fit_lm <- stats::fitted(fit_lm)

  expect_equal(fitted_fit_blm, fitted_fit_lm, tolerance=1)

  })