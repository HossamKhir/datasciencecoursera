#! /usr/bin/Rscript

# all R objects can have a name attribute, not just data frames
x <- 1:3
names(x)

names(x) <- c("foo", "bar", "norf")
x
names(x)

# with lists
x <- list(a = 1, b = 2, c = 3)
x

# with matrices, they are called dimnames
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(
    c("a", "b"),
    c("c", "d")
)
m