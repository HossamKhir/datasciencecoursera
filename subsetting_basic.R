#! /usr/bin/Rscript

# to subset, 3 operators are used

# '[' is used w/ vectors, with 1 exception, and returns subset of same type

# '[[' is used w/ lists & data sets, and the returned value may or may not be
# of the same type

# '$' used to subset by name
x <- c("a", "b", "c", "c", "d", "a")
# a single element subset
x[1]
x[2]

# sequenced subset
x[1:3]

# subset by logical operators
x[x > "a"] # that means we need all elements which are greater than 'a'

# create a vector through expression on other vector
u <- x > "a"
# each element in x is compared to 'a', then adds a corresponding logical
u
x[u] # using a logical vector to retrieve another character vector