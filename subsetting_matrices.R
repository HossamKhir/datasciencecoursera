#! /usr/bin/Rscript

# matrices use [i,j] type indices for subsets
x <- matrix(1:6, nrow = 2, ncol = 3)
x
x[1, 2]
x[2, 1]

# on omitting a dimensional index, that would be requesting for the other
# dimension completely (either the whole row, or column)
x[1, ]
x[, 2]

# in subset basics, '[' had an exception, which is w/ matrices
# instead of returning a matrix, the returned value is a vector of length 1
# this behaviour is altered by setting drop flag to FALSE
x[1, 2]
x[1, 2, drop = FALSE]
# drop by default is TRUE, which means it drops the dimension, returning a
# 1D object

# the drop is also applied on single rows/columns, and can be altered similarly
x[1, ]
x[1, , drop = FALSE]