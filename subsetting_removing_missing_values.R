#! /usr/bin/Rscript

# to remove missing elements, one would need a logical vector that refers to
# valid data, or
x <- c(1, 2, NA, 4, NA, 6)
bad <- is.na(x)
x[!bad] # the not operator is applied to each element in the logical vector
# so the result is the values which are not 'NA'

# w/ multiple objects, which have the missing elements in corresponding indices
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
x[good]
y[good]