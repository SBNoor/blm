context("update")

test_that ("Beta is Poistive", {

  x <- rnorm(3)
  y <- rnorm(3)
  model <- y ~ x

  expect_error(update(model,prior,beta = -1))
  expect_error(update(model,prior,beta = 0))
})