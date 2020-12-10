#! /usr/bin/Rscript

# dates are calculated as days from 01 Jan 1970
# times are calculated as seconds form 01 Jan 1970

x <- as.Date("1970-01-01")
x

unclass(x)

x <- as.Date("1970-01-02")
unclass(x)

# times are stored in either POSIXct or POSIXlt

x <- Sys.time()
x
unclass(x)

p <- as.POSIXlt(x)
names(unclass(p))
p$sec

# strptime works w/ formatted strings
datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")

x <- as.POSIXlt(x)
x - y

# times can hold time zones
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT")

# time zones handle time difference
x <- as.POSIXct("2012-10-25")
y - x