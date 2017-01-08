context("coefficient")

test_that("testing coefficients", {
  #x <- stats::rnorm(1000, 10, 1)
  #y<- stats::rnorm(1000, x, 1)

  x <- rnorm(4)
  y <- rnorm(4)

  model <- y ~ x

  fit_blm <- blm(model,alpha = 1,beta = 1)
  fit_lm <- lm(y~x)

  coef_fit_blm <- blm::coefficient(fit_blm)
  coef_fit_lm <- stats::coefficients(fit_lm)

  expect_equal(coef_fit_blm, coef_fit_lm, tolerance=1)

})