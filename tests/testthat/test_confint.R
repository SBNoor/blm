context("confint")

test_that("testing the confint function", {

  x <- rnorm(3)
  y <- rnorm(3)

  model <- y ~ x

  fit_blm <- blm(model, alpha = 1, beta = 1)
  fit_lm <- lm(model)

  confint_fit_blm <- blm::confint(fit_blm, level = 0.95)
  #confint_fit_lm <- stats::confint(fit_lm)

  #expect_equal(confint_fit_blm,confint_fit_lm,tolerance = 10)
})