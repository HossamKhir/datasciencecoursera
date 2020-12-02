#! /usr/bin/Rscript

# factors represent categorical data
# can be ordered or unordered
# like an integer vector where each integer has a label
# could it be like enums?
f <- factor(c("yes", "no", "no", "yes", "no"))
f

# table function returns the frequency of each element
table(f)

# unclass strips away the factor
unclass(f)

# setting order of levels
f <- factor(
    c("yes", "no", "no", "yes", "no"),
    levels = c("yes", "no")
)
f