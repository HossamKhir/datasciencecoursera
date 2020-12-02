#! /usr/bin/Rscript
# matrices are special vectors with dimension attributes, it is an
# integer vector of length of 2, denoting number of rows & columns
m <- matrix(nrow = 2, ncol = 3)
m
# to retrieve the dimension attribute of the matrix
dim(m)
# calling attributes function on a matrix
attributes(m)
# matrices are constructed column-wise, fills columns first
m <- matrix(1:6, nrow = 2, ncol = 3)
m

# constructing matrices from vectors?
m <- 1:10
m
dim(m) <- c(2, 5)
# dim gets the pointer to dim attribute
# then it is assigned the value of the new integer vector
m

# constructing matrices by binding
x <- 1:3
y <- 10:12
# column-binding
m <- cbind(x, y)
m
# row-binding
m <- rbind(x, y)
m