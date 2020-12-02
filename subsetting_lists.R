#! /usr/bin/Rscript

# lists can use any of '[', '[[' or '$'' for subsets
x <- list(foo = 1:4, bar = 0.6)
x[1] # that returns a list
x[[1]] # that returns a vector

# subset by $
x$bar # returns a numeric object
x[["bar"]] # returns a numeric object
x["bar"] # returns a list

# to retrieve several objects, use '['
y <- list(foo = 1:4, bar = 0.6, baz = "Hello")
x[c(1, 3)] # to return lists at positions 1 & 3

# neither '[[' nor '$' can help w/ multiple elements in list subset

# '$' only accepts literal names
# '[[' can accept computed indices
name <- "foo"
x[[name]] # would work
x$foo # would work
# x$name # would fail

# '[[' can accept integer sequence
x <- list(
    a = list(10, 12, 14),
    b = c(3.14159, 2.81)
)
# like multidimensional array
x[[c(1, 3)]]
x[[1]][[3]]
x[[c(2, 1)]]