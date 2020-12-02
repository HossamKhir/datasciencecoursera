#! /usr/bin/Rscript
# every thing in R is an object
# 5 basic classes of objects
# character

# numeric (real number) 

# integer

# complex

# logical (true/false)

# most basic object is a vector
# vectors carry objects of same class
# the only exception is 'list' which is a vector which can have different 
# objects
# creating empty vectors is done through vector(), which takes 2 arguments, the
# type of the vector, and the length it should have
empty_vector <- vector('numeric', 16)
empty_vector

# by default, R uses double precision numbers for all numeric objects
# to specify that a numeric object should be an integer: use the 'L' suffix
integral <- 2L
integral

# R has a special number 'Inf'
special <- Inf 
special

# undefined values, like 0 / 0, are expressed using 'NaN' # not a number
undef <- NaN
undef 

# Attributes
# some objects in R can have attributes 
# attributes like:
# name, dimname (dimension name), dimensions, class, length, and user-defined 
# attributes/metadata
# to set or update an attribute of an R object use 'attribute()' function