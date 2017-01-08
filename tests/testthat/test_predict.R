context("predict")

test_that("testingss predict function",{

  x <- rnorm(3)
  y <- rnorm(3)

  model <- y~x

  fit_blm <- blm(model, alpha = 1, beta = 1)
  fit_lm <- lm(model)

  predict_fit_blm <- blm::predict(fit_blm)
  predict_fit_lm <- stats::predict(fit_lm)

  expect_equal(predict_fit_blm,predict_fit_lm,tolerance = 1)


})