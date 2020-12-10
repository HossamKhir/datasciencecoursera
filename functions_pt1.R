#! /usr/bin/Rscript

# functions are build by the 'function' directive
# f <- function(<arguments>) {
#     # body of function
# }

# functions are objects of class 'function', they can be passed as arguments
# function can be nested, it is possible to define a function within another
# function

# function args can be matched positionally or by name
my_data <- rnorm(100)
sd(my_data) # standard deviation, positional
sd(x = my_data) # by name
sd(x = my_data, na.rm = FALSE)
sd(na.rm = FALSE, x = my_data)
sd(na.rm = FALSE, my_data)
# notice the difference from python once one is specified, it is removed from
# the argument list, and we can resume using positional arguments