#! /usr/bin/Rscript

# creating vectors
# using the 'c' function
x <- c(0.5, 0.6) # numeric
x <- c(TRUE, FALSE) # logical
x <- c(T, F) # logical, both 'T' & 'F' are short hands
x <- c("a", "b", "c") # character
x <- 9:29 # integer, ":" is called the colon operator
x <- c(1 + 0i, 2 + 4i) # complex

# using the 'vector' function
x <- vector("numeric", length = 10)
# the created vector will use the default value, which is 0 for integers
x

# since vectors require objects of the same type; on trying to use mixed types,
# coercion happens basically, all elements of vectors are made into the same
# type, which is selected by the least common denominator vector

y <- c(1.7, "a") ## LCD: character
y
y <- c(TRUE, 2) ## LCD: numeric
y
y <- c("a", TRUE) ## LCD: character
y

# ___
# Explicit coercion
# to explicitly call a method of 'as.*' to change the class of variables
x <- 0:6
x
class(x)
y <- as.numeric(x)
y
class(y)
y <- as.logical(x)
y
class(y)
y <- as.character(x)
y
class(y)
y <- as.complex(x)
y
class(y)

# nonsensical coercion results in NAs
x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)

# ___
# Lists
# lists like vectors, only they can hold different class objects
x <- list(1, "a", TRUE, 1 + 4i)
x