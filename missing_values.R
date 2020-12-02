#! /usr/bin/Rscript

# NA: Not Applicable
# NaN: Not a Number
# NaN is used for mathematical operations, NA for everything else
# NaN is NA, but not the contrary
x <- c(1, 2, NA, 10, 3)
is.na(x) # since x is a vector the returned value is logical vector
is.nan(x)

y <- c(1, 2, NaN, NA, 4)
is.na(y)
is.nan(y)