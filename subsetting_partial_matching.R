#! /usr/bin/Rscript

# '$' looks for the objects in a list that would match the expression
x <- list(aardvark = 1:5)
x$a # would print the sequence as aardvark matches a
x[["a"]] # would return NULL
x[["a", exact = FALSE]] # to partially match, as exact match is false