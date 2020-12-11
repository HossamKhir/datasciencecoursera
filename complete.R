#! /usr/bin/Rscript

# special case function
complete2 <- function(directory, id = 1:332) {
    cases <- data.frame()

    for (i in id) {
        path <- paste(directory, sprintf("%03d.csv", i), sep = "/")
        record <- read.csv(path)
        complete_record <-
            record[!(is.na(record$sulfate) | is.na(record$nitrate)), ]
        cases <- rbind(cases, c(i, length(complete_record$ID)))
    }

    colnames(cases) <- c("id", "nobs")
    cases
}

# generic function
complete <- function(directory, id = 1:332) {
    paths <- paste(directory, dir(directory), sep = "/")

    complete_records <- data.frame()
    for (path in paths) {
        record <- read.csv(path)
        if (!(record$ID[1] %in% id)) {
            next
        }
        missing_sulfate <- is.na(record$sulfate)
        missing_nitrate <- is.na(record$nitrate)
        record <- record[!(missing_sulfate | missing_nitrate), ]
        complete_records <-
            rbind(
                complete_records,
                c(record$ID[1], length(record$ID))
            )
    }
    colnames(complete_records) <- c("id", "nobs")
    complete_records
}

# complete("specdata", 1)
# complete("specdata", c(2, 4, 8, 10, 12))
# complete("specdata", 30:25)
# complete("specdata", 3)
# complete2("specdata", 3)