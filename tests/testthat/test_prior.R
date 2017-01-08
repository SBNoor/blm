context("make_prior")

test_that ("Alpha is Poistive", {

  x <- rnorm(3)
  y <- rnorm(3)
  model <- y ~ x

  expect_error(make_prior(model,alpha = -1))
  expect_error(make_prior(model,alpha = 0))
})