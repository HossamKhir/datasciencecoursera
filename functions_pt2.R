#! /usr/bin/Rscript

# functions use a 'lazy evaluation', basically it is like running a script
# the function which takes positional arguments, and there are no default values
# as long as it doesn't encounter the latest args, it will not throw an error
# if that specific argument is missing

func_example <- function(a, b) { # note: no defaults
    a^2
}

func_example(2) # prints 4, as 2 is matched to a, b is not used

func_example <- function(a, b) {
    print(a)
    print(b)
}

# func_example(45)
# prints 45 then throws an error because no value was matched to b,
# and no defaults

# '...' argument: for varying length argument list
# usually used w/ generic functions, and extending functions
# that introduces some new rules:
#   all the following args to '...' must be named on function call
#   the following args cannot be partially matched
args(paste)
paste("a", "b", sep = ":")
paste("a", "b", se = ":")