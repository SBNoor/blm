context("summary")

test_that("testing the summary function",{

  x <- rnorm(3)
  y <- rnorm(3)

  model <- y~x

  fit_blm <- blm(model, alpha = 1, beta = 1)
  fit_lm <- lm(model)

})