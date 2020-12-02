#! /usr/bin/Rscript

# textual format adheres to the Unix philosophy
# can be reproducible, easy to locate errors
# works well w/ version control (like git)
# maintains meta data, which saves time for reading

y <- data.frame(a = 1, b = "a")

dput(y) # o/p to the console the result of dputting the variable y

# it is useful to write these into a file
dput(y, file = "dput.R")

new.y <- dget("dput.R") # the loading operation for dput files
new.y

# the difference between dput and dump, is that dput handles a single object
# dump can handle multiple objects
x <- "foo"
dump(
    c("x", "y"), # notice that it takes a vector representing objects' names
    file = "data.R"
)

# let's remove the objects now
rm(x, y)

# to reload the objects back, use source
source("data.R")
y
x