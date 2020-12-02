#! /usr/bin/Rscript

# to store tabular data, use data frames
# they can be viewed as special type of list where every element must be of
# the same length
# data frames have special attribute namely row.names
# usually constructed by read.table() or read.csv()
# can be converted to matrix through data.matrix()
x <- data.frame(
    foo = 1:4,
    bar = c(T, T, F, T)
)
x
nrow(x)
ncol(x)