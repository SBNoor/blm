context("blm")

test_that("we can fit blm objects", {

    x <- rnorm(100)

    a <- 1

    y <- x + a

    model <- y~x

    fit <- blm(model, alpha = 1, beta = 1)

    cof <- coefficients.blm(fit)
    names(cof) <- NULL

    expect_equal(cof[1], a, tolerance=0.1)


})