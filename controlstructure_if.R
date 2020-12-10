#! /usr/bin/Rscript

# using if statement is very much like C/C++
x <- 5

if (x > 3) {
    y <- 10
} else {
    y <- 0
}

# or another way
y <- if (x > 3) {
    10
} else {
    0
}

# R uses a next instead of continue
for (i in 1:100) {
    if (i <= 20) {
        next # skip 1st 20 iterations
    }
    if (i == 64) {
        break # exit the loop entirely
    }
    print(i)
}