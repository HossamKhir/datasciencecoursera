#! /usr/bin/Rscript

# connection to files, or to urls, is how R interfaces w/ outside world
# the file function got an open argument, which may be:
# r: read only, w: writing (& initialising new file), a: appending
# for windows there is a binary mode: [rb, wb, ab]

con <- file(
    "/media/hossam/professional/courses/cs50_intro_to_ai/HossamKhir/small/movies.csv",
    open = "r"
)
data <- read.csv(con)
close(con)
# that was redundant, as it is exactly as: data <- read.csv(filepath)
# opening archives has specific functions, like: gzfile, bzfile

# connections can be made to websites
con <- url("https://google.com.eg", "r")
# url is what establishes a connection to a website
x <- readLines(con)
head(x) # to print a few starting elements of the object, to peek at it
close(con)