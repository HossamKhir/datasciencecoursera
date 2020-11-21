# syntax for defining a paramter-less function, (check javascript)
myfunction <- function() {
	# defining a variable, by assigning the output of a function
	x <- rnorm(100)
	# rnorm(num) returns series of random normal numbers of length of num
	mean(x)
	# return the mean of the given series
}

# syntax for a parameterised function
second <- function(x) {
	# adds some noise to the given series
	x + rnorm(length(x))
	# length returns the length of a given series
}

# loading files w/ function definitions into R console
# source("file_path")
# ls(): lists all functions defined in the current R session
