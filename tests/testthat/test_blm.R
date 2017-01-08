context("blm")

test_that("we can fit blm objects", {
  # Put some initial tests here.
    ## Generating data
    n <- 1000
    x <- rnorm(n, 40, 10)
    a <- 0.6; b <- 1;
    y <- 0.6*x+b
    fit <- blm(y ~ x, 1, 1)
    cof <- coefficient(fit)
    names(cof) <- NULL

    expect_equal(cof[2], a, tolerance=1e-1)
    expect_equal(cof[1], b, tolerance=1e-1)
    expect_equal(nrow(fit$frame), n)

})