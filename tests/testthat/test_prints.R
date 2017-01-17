context("prints")

test_that("testing the print function",{

  x <- rnorm(3)
  y <- rnorm(3)

  model <- y~x

  fit <- blm(model, alpha = 1, beta = 1)

  print.blm(fit)

  #expect_warning(print(fit), regexp = NA)


})