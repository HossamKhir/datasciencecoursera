#! /usr/bin/Rscript

complete <- function(directory, id = 1:332) {
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

# complete("specdata", 1)
# complete("specdata", c(2, 4, 8, 10, 12))
# complete("specdata", 30:25)
# complete("specdata", 3)