# read file datas
source("loadData.R")
powerData <- loadData()

opt.title <- "Global Active Power"
opt.xlab <- "Global Active Power (kilowatts)"
opt.col <- "red"

plotPng("plot1.png")

hist(powerData$Global_active_power, col = opt.col, main = opt.title, xlab = opt.xlab)

dev.off()
