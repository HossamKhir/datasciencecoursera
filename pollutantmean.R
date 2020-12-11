#! /usr/bin/Rscript

pollutantmean <- function(directory, pollutant, id = 1:332) {
    # prepare one long column for collecting records for mean calculation
    cpollutant <- numeric(0)
    for (i in id) { # for each id given
        # get the path for the file
        # https://stackoverflow.com/questions/5812493/how-to-add-leading-zeros
        path <- paste(directory, sprintf("%03d.csv", i), sep = "/")
        # read the csv file
        record <- read.csv(path)
        # append all the valid data into our column
        cpollutant <- c(
            cpollutant,
            record[!is.na(record[, pollutant]), pollutant]
        )
    }
    # return the mean for the pollutant
    mean(cpollutant)
}

# print(pollutantmean("specdata", "sulfate", 1:10))
# print(pollutantmean("specdata", "nitrate", 70:72))
# print(pollutantmean("specdata", "nitrate", 23))