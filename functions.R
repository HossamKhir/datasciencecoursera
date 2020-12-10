#! /usr/bin/Rscript

# functions by default return the value of the last expression in them
# they don't really need return

# for training purposes
add2 <- function(x, y) {
    x + y
}

add2(3, 5) # this should print 8 in the console

above10 <- function(x) {
    x[x > 10]
}

# let's use a default argument
above <- function(x, n = 10) {
    x[x > n]
}

x <- 1:20
above(x)
above(x, 12)

# let's work on matrices
columnmean <- function(y, removeNA = T) {
    nc <- ncol(y)
    means <- numeric(nc) # initially 0 filled vector of length = column number
    for (i in 1:nc) {
        means[i] <- mean(y[, i], na.rm = removeNA)
    }
    means # this is a return statement
}

columnmean(airquality)
columnmean(airquality, F)