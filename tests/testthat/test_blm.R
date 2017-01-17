context("blm")

test_that("we can fit blm objects", {

    x <- rnorm(100)

    a <- 1

    y <- x + a

    model <- y~x

    fit <- blm(model, alpha = 1, beta = 1)

    expect_error(blm(model,alpha=0,beta))
    expect_error(blm(model,alpha,beta=-1))


})