#! /usr/bin/Rscript

source("complete.R")

corr <- function(directory, threshold = 0) {
    comp <- complete2(directory)
    comp <- comp$id[comp$nobs >= threshold]
    paths <- paste(directory, dir(directory), sep = "/")
    records <- data.frame()
    for (path in paths) {
        record <- read.csv(path)
        records <- rbind(records, record)
    }
    correlations <- numeric()
    for (id in comp) {
        record <- records[records$ID == id, ]
        correlations <- c(
            correlations,
            cor(record$sulfate, record$nitrate, use = "pairwise.complete.obs")
        )
    }
    correlations
}

# cr <- corr("specdata", 150)
# head(cr)
# summary(cr)

# cr <- corr("specdata", 400)
# head(cr)
# summary(cr)

# cr <- corr("specdata", 5000)
# summary(cr)
# length(cr)

# cr <- corr("specdata")
# summary(cr)
# length(cr)