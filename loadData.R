# load lib(s)
library(data.table)

# shortcut to call png() w/ assignment defaults
plotPng <- function (file) {
    png(filename = file, width = 480, height = 480, units = "px", bg = "white")
}

# function to load, clean and format data for graphing
loadData <- function () {
    # Read data file
    powerData <- fread("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", colClasses="character")

    # translate date col into Date obj
    powerData$Date <- as.Date(powerData$Date, format="%d/%m/%Y")

    # take subset of 2 days
    powerData <- data.frame(powerData[powerData$Date == '2007-02-01' | powerData$Date == '2007-02-02',])

    # format numeric cols
    for(col in 3:9) {
        powerData[,col] <- as.numeric(powerData[,col])
    }

    # create a handy DateTime column
    powerData$DateTime <- paste(powerData$Date, powerData$Time)
    powerData$DateTime <- strptime(powerData$DateTime, format = "%Y-%m-%d %H:%M:%S")

    return(powerData)
}


