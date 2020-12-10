#! /usr/bin/Rscript

# for loops are for each loops

x <- c("a", "b", "c", "d")

# like python, w/ using indexing
for (i in 1:4) {
    print(x[i])
}

# another more safe way
for (i in seq_along(x)) {
    print(x[i])
}

# like for each w/ iterator
for (letter in x) {
    print(letter)
}

# also, if the body contains one expression, you may omit the braces
for (i in 1:4) print(x[i])

# nested for, for data frames & matrices
x <- matrix(1:6, nrow = 2, ncol = 3)

for (i in 1:nrow(x)) { # one way to generate a sequence
    for (j in seq_len(ncol(x))) { # another way to generate a sequence
        print(x[i, j])
    }
}